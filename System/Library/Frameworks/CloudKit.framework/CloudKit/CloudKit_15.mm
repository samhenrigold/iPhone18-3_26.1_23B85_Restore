id sub_1885AADF8(id result, uint64_t a2)
{
  if (result)
  {
    v2.receiver = result;
    v2.super_class = CKContainerCallbackProxy;
    return objc_msgSendSuper2(&v2, sel_initWithWeakObject_callbackProtocol_, a2, &unk_1EFA892E8);
  }

  return result;
}

void sub_1885AB094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885AB0B0(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1885AB148;
  v4[3] = &unk_1E70BE760;
  v4[4] = *(a1 + 40);
  objc_msgSend_allClouddThrottlesWithCompletionHandler_(a2, a2, v4);
  return (*(*(a1 + 32) + 16))();
}

void sub_1885AB148(uint64_t a1, void *a2)
{
  if (!a2)
  {
    a2 = MEMORY[0x1E695E0F0];
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
}

void sub_1885AB308(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  if (v10)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (*(a1 + 48) == 1)
    {
      objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v10, v5, v7);
    }

    else
    {
      objc_msgSend_remoteObjectProxyWithErrorHandler_(v10, v5, v7);
    }
    v9 = ;
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1885AB61C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1885AB654(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = WeakRetained;
      _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_INFO, "Warn: Connection became invalid: %@", &v4, 0xCu);
    }

    objc_msgSend_setHasValidLogicalDeviceScopedDaemonProxyCreator_(WeakRetained, v3, 0);
  }
}

void sub_1885AB744(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    objc_sync_enter(v7);
    v12 = objc_msgSend_logicalDeviceScopedDaemonProxyCreator(*(a1 + 32), v8, v9);
    if (v12 && (hasValidLogicalDeviceScopedDaemonProxyCreator = objc_msgSend_hasValidLogicalDeviceScopedDaemonProxyCreator(*(a1 + 32), v10, v11), v12, (hasValidLogicalDeviceScopedDaemonProxyCreator & 1) != 0))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_ck;
      if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v15 = *(a1 + 32);
      v21 = 138412546;
      v22 = v15;
      v23 = 2112;
      v24 = v5;
      v16 = "Ignoring superfluous logical device proxy for %@: %@";
    }

    else
    {
      objc_msgSend_setLogicalDeviceScopedDaemonProxyCreator_(*(a1 + 32), v10, v5);
      objc_msgSend_setHasValidLogicalDeviceScopedDaemonProxyCreator_(*(a1 + 32), v17, 1);
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_ck;
      if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v18 = *(a1 + 32);
      v21 = 138412546;
      v22 = v18;
      v23 = 2112;
      v24 = v5;
      v16 = "Got a logical device proxy for %@: %@";
    }

    _os_log_impl(&dword_1883EA000, v14, OS_LOG_TYPE_INFO, v16, &v21, 0x16u);
LABEL_13:
    objc_sync_exit(v7);

    goto LABEL_18;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v19 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v20 = *(a1 + 32);
    v21 = 138412546;
    v22 = v20;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_1883EA000, v19, OS_LOG_TYPE_INFO, "Ignoring failed attempt to get logical device proxy for %@: %@", &v21, 0x16u);
  }

LABEL_18:
  (*(*(a1 + 40) + 16))();
}

void sub_1885AC530(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  if (v6)
  {
    if (objc_msgSend_isCancelled(v6, v3, v4))
    {
      v9 = @"op was cancelled";
    }

    else if (objc_msgSend_isFinished(*(a1 + 32), v7, v8))
    {
      v9 = @"op was finished";
    }

    else
    {
      v10 = *(a1 + 32);
      v9 = @"unknown";
      if (v10)
      {
        if (*(v10 + 282))
        {
          v9 = @"cloudd connection was interrupted";
        }

        else if (*(v10 + 283))
        {
          v9 = @"op was suspended";
        }
      }
    }
  }

  else
  {
    v9 = @"op was deallocated";
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v11 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 32);
    v20 = v11;
    v23 = objc_msgSend_operationID(v19, v21, v22);
    *buf = 134218498;
    v25 = v19;
    v26 = 2114;
    v27 = v23;
    v28 = 2114;
    v29 = v9;
    _os_log_debug_impl(&dword_1883EA000, v20, OS_LOG_TYPE_DEBUG, "Skipping callback invocation for %p %{public}@, %{public}@", buf, 0x20u);

    if (v5)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (!v5)
  {
LABEL_16:
    v14 = objc_msgSend_operationID(*(a1 + 32), v12, v13);
    v5 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v15, @"CKInternalErrorDomain", 1000, @"Not forwarding invocation to operation %@, no good reason why", v14);
  }

LABEL_17:
  v16 = *(a1 + 40);
  v17 = objc_msgSend_callbackProtocol(*(a1 + 48), v12, v13);
  objc_msgSend_CKInvokeAndNilOutReplyBlockWithError_forProtocol_(v16, v18, v5, v17);
}

void sub_1885AC75C(uint64_t a1, const char *a2, uint64_t a3)
{
  isCancelled = objc_msgSend_isCancelled(*(a1 + 32), a2, a3);
  v7 = *(a1 + 32);
  if ((isCancelled & 1) == 0)
  {
    if (v7 && ((v7[282] & 1) != 0 || (v7[283] & 1) != 0))
    {
      v8 = *(a1 + 48);
      v9 = (v8 + 16);
      goto LABEL_8;
    }

    isFinished = objc_msgSend_isFinished(v7, v4, v5);
    v7 = *(a1 + 32);
    if ((isFinished & 1) == 0)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v11 = sub_188416C9C(v7);
      os_activity_scope_enter(v11, &state);

      objc_msgSend_invokeWithTarget_(*(a1 + 40), v12, *(a1 + 32));
      os_activity_scope_leave(&state);
      return;
    }
  }

  v8 = *(a1 + 48);
  v9 = (v8 + 16);
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((v7[283] & 1) == 0)
  {
LABEL_10:
    v13 = objc_msgSend_error(v7, v4, v5);
    (*(v8 + 16))(v8, v13);
    goto LABEL_11;
  }

  v13 = sub_18860E438(v7);
  (*v9)(v8, v13);
LABEL_11:
}

void sub_1885ACC40(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138543618;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while granting access to bundle id %{public}@ containerIdentifiers %@, check your syslog", &v7, 0x16u);
  }
}

void sub_1885ACEEC(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138543618;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while revoking access to bundle id %{public}@ containerIdentifiers %@, check your syslog", &v7, 0x16u);
  }
}

void sub_1885AD17C(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while deleting account %@, check your syslog", &v7, 0xCu);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void sub_1885AD4D0(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while notifying about account change for account %@", &v6, 0xCu);
  }
}

void sub_1885AD740(uint64_t a1, void *a2)
{
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while fetching usability for test account credentials", v5, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1885AD8AC(uint64_t a1, void *a2)
{
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while wiping all caches, check your syslog", v4, 2u);
  }
}

void sub_1885AD9F0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while wiping server configurations, check your syslog", v4, 2u);
  }
}

void sub_1885ADB34(uint64_t a1, void *a2)
{
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while updating push tokens, check your syslog", v4, 2u);
  }
}

uint64_t sub_1885ADE58(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1885ADFA0(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  if (v10)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (*(a1 + 48) == 1)
    {
      objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v10, v5, v7);
    }

    else
    {
      objc_msgSend_remoteObjectProxyWithErrorHandler_(v10, v5, v7);
    }
    v9 = ;
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1885AE1A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_activity_scope_state_s state)
{
  objc_sync_exit(v11);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1885AE1C0(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error getting proxy for max inline mergeable delta size: %@", &v4, 0xCu);
  }
}

void sub_1885AE2B0(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  qword_1EA90C0E0 = a2;
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], a2, a3);
  qword_1EA9115E0 = v3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    v6 = qword_1EA90C0E0;
    _os_log_impl(&dword_1883EA000, v4, OS_LOG_TYPE_INFO, "Fetched max inline delta size from daemon: %ld", &v5, 0xCu);
  }
}

void sub_1885AE5BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 - 72));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1885AE5F4(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = WeakRetained;
      _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_INFO, "Warn: Connection became invalid: %@", &v4, 0xCu);
    }

    objc_msgSend_setHasValidProcessScopedDaemonProxyCreator_(WeakRetained, v3, 0);
  }
}

void sub_1885AE6E4(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    objc_sync_enter(v7);
    v12 = objc_msgSend_processScopedDaemonProxyCreator(*(a1 + 32), v8, v9);
    if (v12 && (hasValidProcessScopedDaemonProxyCreator = objc_msgSend_hasValidProcessScopedDaemonProxyCreator(*(a1 + 32), v10, v11), v12, (hasValidProcessScopedDaemonProxyCreator & 1) != 0))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_ck;
      if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v15 = *(a1 + 32);
      v21 = 138412546;
      v22 = v15;
      v23 = 2112;
      v24 = v5;
      v16 = "Ignoring superfluous process proxy for %@: %@";
    }

    else
    {
      objc_msgSend_setProcessScopedDaemonProxyCreator_(*(a1 + 32), v10, v5);
      objc_msgSend_setHasValidProcessScopedDaemonProxyCreator_(*(a1 + 32), v17, 1);
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_ck;
      if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v18 = *(a1 + 32);
      v21 = 138412546;
      v22 = v18;
      v23 = 2112;
      v24 = v5;
      v16 = "Got a process proxy for %@: %@";
    }

    _os_log_impl(&dword_1883EA000, v14, OS_LOG_TYPE_INFO, v16, &v21, 0x16u);
LABEL_13:
    objc_sync_exit(v7);

    goto LABEL_18;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v19 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v20 = *(a1 + 32);
    v21 = 138412546;
    v22 = v20;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_1883EA000, v19, OS_LOG_TYPE_INFO, "Ignoring failed attempt to get process proxy for %@: %@", &v21, 0x16u);
  }

LABEL_18:
  (*(*(a1 + 40) + 16))();
}

id sub_1885AEF1C(void *a1, _BYTE *a2)
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    if (a2)
    {
      v4 = v3[2];
      if (v4)
      {
        LOBYTE(v4) = *(v3 + 8);
      }

      *a2 = v4 & 1;
    }

    v5 = v3[2];
    objc_sync_exit(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1885AF0D4(void *a1, int a2, void *a3)
{
  v7 = a3;
  if (a1)
  {
    v8 = objc_msgSend_connection(a1, v5, v6);
    v10 = v8;
    if (v8)
    {
      if (a2)
      {
        objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v8, v9, v7);
      }

      else
      {
        objc_msgSend_remoteObjectProxyWithErrorHandler_(v8, v9, v7);
      }
      v14 = ;
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v11 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&dword_1883EA000, v11, OS_LOG_TYPE_ERROR, "Couldn't get connection to daemon", v16, 2u);
      }

      v13 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v12, @"CKErrorDomain", 1, @"Couldn't get connection to daemon");
      if (v7)
      {
        v7[2](v7, v13);
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_1885AF9DC(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_sync_enter(v4);
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v5 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v6 = *(*(*(a1 + 32) + 8) + 24);
        v11 = 138543618;
        v12 = v4;
        v13 = 2048;
        v14 = v6;
        _os_log_impl(&dword_1883EA000, v5, OS_LOG_TYPE_INFO, "Warn: %{public}@: NSXPCConnection %p was interrupted", &v11, 0x16u);
      }

      v4[8] = 0;
      *(*(*(a1 + 32) + 8) + 24) = 0;
      objc_sync_exit(v4);

      v9 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v7, v8);
      objc_msgSend_postNotificationName_object_(v9, v10, @"CKXPCConnectionInterrupted", v4);
    }

    else
    {
      objc_sync_exit(v4);
    }
  }
}

void sub_1885AFB58(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_sync_enter(v4);
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v5 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v6 = *(*(*(a1 + 40) + 8) + 24);
        *buf = 138543618;
        v29 = v4;
        v30 = 2048;
        v31 = v6;
        _os_log_impl(&dword_1883EA000, v5, OS_LOG_TYPE_INFO, "Warn: %{public}@: NSXPCConnection %p became invalid", buf, 0x16u);
      }

      v4[8] = 0;
      *(*(*(a1 + 40) + 8) + 24) = 0;
      objc_sync_exit(v4);

      v9 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v7, v8);
      objc_msgSend_postNotificationName_object_(v9, v10, @"CKXPCConnectionInvalidated", v4);

      v13 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v11, v12);
      objc_msgSend_postNotificationName_object_(v13, v14, @"CKXPCConnectionInterrupted", v4);

      v15 = *(a1 + 32);
      objc_sync_enter(v15);
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v16 = *(a1 + 32);
      if (v16)
      {
        v16 = v16[6];
      }

      v17 = v16;
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v23, v27, 16);
      if (v19)
      {
        v20 = *v24;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v24 != v20)
            {
              objc_enumerationMutation(v17);
            }

            (*(*(*(&v23 + 1) + 8 * i) + 16))(*(*(&v23 + 1) + 8 * i));
          }

          v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v22, &v23, v27, 16);
        }

        while (v19);
      }

      sub_1885AFDF4(*(a1 + 32), 0);
      objc_sync_exit(v15);
    }

    else
    {
      objc_sync_exit(v4);
    }
  }
}

void sub_1885AFDF4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

uint64_t sub_1885B00B4()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = qword_1ED4B62A0;
  qword_1ED4B62A0 = v0;

  v3 = qword_1ED4B62A0;

  return objc_msgSend_setName_(v3, v2, @"CKObjcClassCache");
}

uint64_t sub_1885B03C4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_name(a2, a2, a3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, *(a1 + 32));

  return isEqualToString;
}

id *sub_1885B0468(void *a1, void *a2, objc_property *a3)
{
  if (!a1)
  {
    return 0;
  }

  v85.receiver = a1;
  v85.super_class = CKObjCProperty;
  v5 = objc_msgSendSuper2(&v85, sel_init);
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(v5 + 1, a2);
    v7 = MEMORY[0x1E696AEC0];
    Name = property_getName(a3);
    v10 = objc_msgSend_stringWithUTF8String_(v7, v9, Name);
    v11 = v6[3];
    v6[3] = v10;

    if (!objc_msgSend_length(v6[3], v12, v13))
    {
      v74 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v14, v15);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v74, v75, sel_initWithClass_property_, v6, @"CKObjCProperty.m", 19, @"How'd you get a no-length property name in there?");
    }

    v16 = v6[3];
    v17 = MEMORY[0x1E696AEC0];
    v19 = objc_msgSend_substringToIndex_(v6[3], v18, 1);
    v22 = objc_msgSend_uppercaseString(v19, v20, v21);
    v24 = objc_msgSend_substringFromIndex_(v6[3], v23, 1);
    v26 = objc_msgSend_stringWithFormat_(v17, v25, @"set%@%@:", v22, v24);

    outCount = 0;
    v27 = property_copyAttributeList(a3, &outCount);
    v29 = v27;
    if (outCount)
    {
      v30 = 0;
      p_value = &v27->value;
      do
      {
        v32 = *p_value;
        v33 = **(p_value - 1);
        if (v33 > 0x51)
        {
          if (**(p_value - 1) <= 0x53u)
          {
            if (v33 != 82)
            {
              if (v33 == 83)
              {
                v6[4] = (v6[4] | 0x20);
                v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v28, v32);

                v26 = v35;
              }

              goto LABEL_28;
            }

            v34 = v6[4] | 1;
            goto LABEL_24;
          }

          if (v33 == 86)
          {
            v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v28, v32);
            v37 = v6[7];
            v6[7] = v39;
            goto LABEL_27;
          }

          if (v33 == 84)
          {
            v36 = objc_msgSend_typeForEncoding_(CKObjCType, v28, v32);
            v37 = v6[2];
            v6[2] = v36;
LABEL_27:
          }
        }

        else if (**(p_value - 1) > 0x46u)
        {
          if (v33 == 71)
          {
            v6[4] = (v6[4] | 0x10);
            v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v28, v32);

            v16 = v38;
            goto LABEL_28;
          }

          if (v33 == 78)
          {
            v34 = v6[4] | 8;
            goto LABEL_24;
          }
        }

        else
        {
          if (v33 == 38)
          {
            v34 = v6[4] | 4;
            goto LABEL_24;
          }

          if (v33 == 67)
          {
            v34 = v6[4] | 2;
LABEL_24:
            v6[4] = v34;
          }
        }

LABEL_28:
        ++v30;
        p_value += 2;
      }

      while (v30 < outCount);
    }

    free(v29);
    v40 = NSSelectorFromString(v16);
    v6[5] = v40;
    v42 = objc_msgSend_instanceMethodSignatureForSelector_(v6[1], v41, v40);
    v43 = objc_alloc(MEMORY[0x1E696AEC0]);
    v46 = objc_msgSend_methodReturnType(v42, v44, v45);
    v48 = objc_msgSend_initWithCString_encoding_(v43, v47, v46, 4);
    v51 = objc_msgSend_encoding(v6[2], v49, v50);
    v53 = objc_msgSend_caseInsensitiveCompare_(v51, v52, @"q");

    if (v53 | objc_msgSend_caseInsensitiveCompare_(v48, v54, @"q"))
    {
      v57 = objc_msgSend_encoding(v6[2], v55, v56);
      hasPrefix = objc_msgSend_hasPrefix_(v57, v58, v48);

      if ((hasPrefix & 1) == 0)
      {
        v60 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v55, v56);
        v63 = objc_msgSend_methodReturnType(v42, v61, v62);
        v66 = objc_msgSend_encoding(v6[2], v64, v65);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v60, v67, sel_initWithClass_property_, v6, @"CKObjCProperty.m", 79, @"Getter method signature return type doesn't match property type encoding (%s != %@)", v63, v66);
      }
    }

    v68 = objc_msgSend_methodReturnLength(v42, v55, v56);
    if (v68 != objc_msgSend_size(v6[2], v69, v70))
    {
      v76 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v71, v72);
      v79 = objc_msgSend_methodReturnLength(v42, v77, v78);
      v82 = objc_msgSend_size(v6[2], v80, v81);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v76, v83, sel_initWithClass_property_, v6, @"CKObjCProperty.m", 81, @"Getter method signature return length doesn't match property type size (%d != %d)", v79, v82);
    }

    v6[6] = NSSelectorFromString(v26);
  }

  return v6;
}

id *sub_1885B0A48(id *a1, void *a2)
{
  v2 = a1;
  v21[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1[2];
    v4 = a2;
    v7 = v21 - ((objc_msgSend_size(v3, v5, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = MEMORY[0x1E695DF50];
    v10 = objc_msgSend_instanceMethodSignatureForSelector_(v2[1], v9, v2[5]);
    v12 = objc_msgSend_invocationWithMethodSignature_(v8, v11, v10);

    objc_msgSend_setTarget_(v12, v13, v4);
    objc_msgSend_setSelector_(v12, v14, v2[5]);
    objc_msgSend_invoke(v12, v15, v16);
    objc_msgSend_getReturnValue_(v12, v17, v7);
    v2 = sub_1885B147C(v2[2], v7, v19, v18);
  }

  return v2;
}

void sub_1885B0B70(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v23 = v5;
  if (a1)
  {
    v6 = MEMORY[0x1E695DF50];
    v7 = a1[1];
    v8 = a1[6];
    v9 = a3;
    v11 = objc_msgSend_instanceMethodSignatureForSelector_(v7, v10, v8);
    v13 = objc_msgSend_invocationWithMethodSignature_(v6, v12, v11);

    objc_msgSend_setTarget_(v13, v14, v9);
    objc_msgSend_setSelector_(v13, v15, a1[6]);
    v18 = a1[2];
    if (v18 && v18[1] == 15)
    {
      objc_msgSend_setArgument_atIndex_(v13, v16, &v23, 2);
    }

    else
    {
      v21 = &v23 - ((objc_msgSend_size(v18, v16, v17, v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1885B166C(a1[2], v21, v5);
      objc_msgSend_setArgument_atIndex_(v13, v22, v21, 2);
    }

    objc_msgSend_invoke(v13, v19, v20, v23);

    v5 = v23;
  }
}

void *sub_1885B147C(void *a1, const char *a2, double a3, uint64_t a4)
{
  if (a1)
  {
    switch(a1[1])
    {
      case 0:
        a1 = objc_msgSend_numberWithChar_(MEMORY[0x1E696AD98], a2, *a2, a3);
        break;
      case 1:
        a1 = objc_msgSend_numberWithShort_(MEMORY[0x1E696AD98], a2, *a2, a3);
        break;
      case 2:
        a1 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], a2, *a2, a3);
        break;
      case 3:
        a1 = objc_msgSend_numberWithLong_(MEMORY[0x1E696AD98], a2, *a2, a3);
        break;
      case 4:
        a1 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], a2, *a2, a3);
        break;
      case 5:
        a1 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], a2, *a2, a3);
        break;
      case 6:
        a1 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], a2, *a2, a3);
        break;
      case 7:
        a1 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], a2, *a2, a3);
        break;
      case 8:
        a1 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], a2, *a2, a3);
        break;
      case 9:
        a1 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], a2, *a2, a3);
        break;
      case 0xALL:
        LODWORD(a3) = *a2;
        a1 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], a2, a4, a3);
        break;
      case 0xBLL:
        a1 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, a4, *a2);
        break;
      case 0xCLL:
        a1 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, *a2, a3);
        break;
      case 0xFLL:
        a1 = *a2;
        break;
      default:
        v5 = MEMORY[0x1E695DF30];
        v6 = *MEMORY[0x1E695D930];
        v7 = objc_msgSend_name(a1, a2, a4, a3);
        objc_msgSend_raise_format_(v5, v8, v6, @"Unsupported boxing type: %@", v7);

        a1 = 0;
        break;
    }

    v4 = vars8;
  }

  return a1;
}

void sub_1885B166C(void *a1, uint64_t a2, void *a3)
{
  v11 = a3;
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_getValue_(v11, v5, a2);
    }

    else
    {
      v7 = MEMORY[0x1E695DF30];
      v8 = *MEMORY[0x1E695D930];
      v9 = objc_msgSend_name(a1, v5, v6);
      objc_msgSend_raise_format_(v7, v10, v8, @"Unsupported unboxing type: %@", v9);
    }
  }
}

CKTuple2 *sub_1885B1B90(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_name(v3, v4, v5);
  v7 = sub_1885B0A48(v3, *(a1 + 32));

  if (!v7)
  {
    v13 = [CKTuple2 alloc];
    v14 = objc_msgSend_null(MEMORY[0x1E695DFB0], v16, v17);
    goto LABEL_5;
  }

  v9 = objc_msgSend_conformsToProtocol_(v7, v8, &unk_1EFAA0830);
  v10 = [CKTuple2 alloc];
  v13 = v10;
  if (v9)
  {
    v14 = objc_msgSend_dictionaryPropertyEncoding(v7, v11, v12);
LABEL_5:
    v18 = v14;
    v19 = objc_msgSend_initWithObject1_object2_(v13, v15, v6, v14);

    goto LABEL_7;
  }

  v19 = objc_msgSend_initWithObject1_object2_(v10, v11, v6, v7);
LABEL_7:

  return v19;
}

void *sub_1885B1F38(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885B211C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885B2134(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885B22C4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885B24A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885B24C0(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885B324C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885B3430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885B3448(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885B35D8(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885B37BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885B37D4(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885B43FC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885B45E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885B45F8(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885B4788(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885B496C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885B4984(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885B6004(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885B61E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885B6200(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885B6390(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885B6574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885B658C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885B671C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885B6900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885B6918(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t sub_1885B7428(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_metadata(a2, a2, a3);
  v7 = objc_msgSend_identifier(v4, v5, v6);
  isEqual = objc_msgSend_isEqual_(v7, v8, *(a1 + 32));

  return isEqual;
}

void *sub_1885B7D80(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885B7F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885B7F7C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885B96F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

uint64_t sub_1885B9754(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885B98E4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

uint64_t sub_1885B9948(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885B9AD8(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 528) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 528);
    *(v7 + 528) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

uint64_t sub_1885B9B3C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 528));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885B9CCC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 536) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 536);
    *(v7 + 536) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885B9EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885B9EC8(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 536));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t sub_1885BA8C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 32);
  if (v4)
  {
    *(v4 + 584) += a2;
    v5 = *(result + 32);
    if (v5)
    {
      *(v5 + 592) += a3;
      v6 = *(result + 32);
      if (v6)
      {
        *(v6 + 600) += a4;
      }
    }
  }

  return result;
}

void *sub_1885BC09C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885BC280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885BC298(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885BD458(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885BD63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885BD654(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885BEBA0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885BED84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885BED9C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885BEF2C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885BF110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885BF128(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C06E4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C08C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C08E0(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C0A70(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C0C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C0C6C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C0DFC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 528) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 528);
    *(v7 + 528) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C0FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C0FF8(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 528));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C1188(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 536) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 536);
    *(v7 + 536) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C136C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C1384(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 536));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C36C4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C38A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C38C0(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C3A50(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C3C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C3C4C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C3DDC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 528) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 528);
    *(v7 + 528) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C3FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C3FD8(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 528));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C4168(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 536) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 536);
    *(v7 + 536) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C434C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C4364(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 536));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C44F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 544) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 544);
    *(v7 + 544) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C46D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C46F0(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 544));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C6DD4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C6FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C6FD0(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C7160(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 528) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 528);
    *(v7 + 528) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C7344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C735C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 528));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C74EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 536) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 536);
    *(v7 + 536) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C76D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C76E8(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 536));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C7878(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 544) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 544);
    *(v7 + 544) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C7A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C7A74(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 544));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t sub_1885C8D08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 32);
  if (v4)
  {
    *(v4 + 568) += a2;
    v5 = *(result + 32);
    if (v5)
    {
      *(v5 + 576) += a3;
      v6 = *(result + 32);
      if (v6)
      {
        *(v6 + 584) += a4;
      }
    }
  }

  return result;
}

void *sub_1885CA890(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885CAA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885CAA8C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885CAC1C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885CAE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885CAE18(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885CC35C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885CC540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885CC558(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885CC6E8(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885CC8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885CC8E4(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885CCA74(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 528) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 528);
    *(v7 + 528) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885CCC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885CCC70(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 528));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885CCE00(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 536) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 536);
    *(v7 + 536) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885CCFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885CCFFC(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 536));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885CD18C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 544) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 544);
    *(v7 + 544) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885CD370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885CD388(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 544));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885CD518(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 552) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 552);
    *(v7 + 552) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885CD6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885CD714(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 552));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885CD8A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 560) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 560);
    *(v7 + 560) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885CDA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885CDAA0(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 560));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885CDC30(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 568) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 568);
    *(v7 + 568) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885CDE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885CDE2C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 568));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t sub_1885CEF14(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 32);
  if (v4)
  {
    *(v4 + 640) += a2;
    v5 = *(result + 32);
    if (v5)
    {
      *(v5 + 648) += a3;
      v6 = *(result + 32);
      if (v6)
      {
        *(v6 + 656) += a4;
      }
    }
  }

  return result;
}

CKTuple2 *sub_1885D00C0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_zoneID(v3, v4, v5), v6 = objc_claimAutoreleasedReturnValue(), isEqual = objc_msgSend_isEqual_(v6, v7, *(a1 + 32)), v6, (isEqual) || (objc_opt_class(), (objc_opt_isKindOfClass()) && objc_msgSend_isEqual_(v3, v9, *(a1 + 32)))
  {
    v10 = [CKTuple2 alloc];
    v13 = objc_msgSend_perItemErrors(*(a1 + 40), v11, v12);
    v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, v3);
    v17 = objc_msgSend_initWithObject1_object2_(v10, v16, v3, v15);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

CKTuple2 *sub_1885D1694(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = objc_msgSend_objectForKeyedSubscript_(v2, v4, v3);
  v8 = objc_msgSend_zoneConfiguration(v5, v6, v7);
  v9 = [CKTuple2 alloc];
  v11 = objc_msgSend_initWithObject1_object2_(v9, v10, v3, v8);

  return v11;
}

CKTuple2 *sub_1885D17FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = objc_msgSend_configurationsByRecordZoneID(v2, v4, v5);
  v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, v3);

  v9 = [CKTuple2 alloc];
  v10 = [CKFetchRecordZoneChangesOptions alloc];
  v12 = objc_msgSend_initWithZoneConfiguration_(v10, v11, v8);
  v14 = objc_msgSend_initWithObject1_object2_(v9, v13, v3, v12);

  return v14;
}

void *sub_1885D2978(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885D2B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885D2B74(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885D417C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885D4360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885D4378(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885D4508(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885D46EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885D4704(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885D4894(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885D4A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885D4A90(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885D64C0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885D66A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885D66BC(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885D684C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885D6A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885D6A48(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885D6BD8(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 528) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 528);
    *(v7 + 528) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885D6DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885D6DD4(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 528));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885D6F64(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 536) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 536);
    *(v7 + 536) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885D7148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885D7160(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 536));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885D72F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 544) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 544);
    *(v7 + 544) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885D74D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885D74EC(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 544));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885D767C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 552) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 552);
    *(v7 + 552) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885D7860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885D7878(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 552));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t sub_1885D9520(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = objc_msgSend_configuration(*(a1 + 32), v6, v7);
  v11 = objc_msgSend_container(v8, v9, v10);
  v14 = objc_msgSend_options(v11, v12, v13);
  v17 = objc_msgSend_useAnonymousToServerShareParticipants(v14, v15, v16);

  if (v17)
  {
    v20 = 0;
    if (a3)
    {
      v21 = @"Assets not permitted when using anonymous to server share participants: %@";
LABEL_12:
      v46 = objc_msgSend_recordID(*(a1 + 40), v18, v19);
      *a3 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v47, @"CKErrorDomain", 12, v21, v46);
    }
  }

  else
  {
    v22 = objc_msgSend_assetReference(v5, v18, v19);

    if (v22)
    {
      v25 = objc_msgSend_configuration(*(a1 + 32), v23, v24);
      v28 = objc_msgSend_container(v25, v26, v27);
      v31 = objc_msgSend_options(v28, v29, v30);
      if (objc_msgSend_bypassPCSEncryption(v31, v32, v33))
      {
        v36 = 1;
      }

      else
      {
        v37 = objc_msgSend_configuration(*(a1 + 32), v34, v35);
        v40 = objc_msgSend_container(v37, v38, v39);
        v43 = objc_msgSend_options(v40, v41, v42);
        v36 = objc_msgSend_useClearAssetEncryption(v43, v44, v45);
      }

      v20 = v36 ^ 1u;
      if (a3 && v36)
      {
        v21 = @"Invalid CKAssetReference on record %@";
        goto LABEL_12;
      }
    }

    else
    {
      v20 = 1;
    }
  }

  return v20;
}

void sub_1885D9B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1885D9BEC(uint64_t a1, uint64_t a2, void *a3)
{
  v78 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_msgSend_addObject_(*(a1 + 32), v5, v4);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v60 = v4;
      v6 = v4;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v9 = objc_msgSend_deltasToSave(v6, v7, v8);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v71, v77, 16);
      if (v11)
      {
        v14 = v11;
        v15 = *v72;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v72 != v15)
            {
              objc_enumerationMutation(v9);
            }

            v17 = *(*(&v71 + 1) + 8 * i);
            v18 = objc_msgSend_asset(v17, v12, v13);

            if (v18)
            {
              v19 = *(a1 + 32);
              v20 = objc_msgSend_asset(v17, v12, v13);
              objc_msgSend_addObject_(v19, v21, v20);

              ++*(*(*(a1 + 40) + 8) + 24);
            }
          }

          v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v71, v77, 16);
        }

        while (v14);
      }

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v59 = v6;
      obj = objc_msgSend_pendingReplacementRequests(v6, v22, v23);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v67, v76, 16);
      if (v25)
      {
        v28 = v25;
        v62 = *v68;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v68 != v62)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(*(&v67 + 1) + 8 * j);
            v63 = 0u;
            v64 = 0u;
            v65 = 0u;
            v66 = 0u;
            v31 = objc_msgSend_replacementDeltas(v30, v26, v27);
            v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v63, v75, 16);
            if (v33)
            {
              v36 = v33;
              v37 = *v64;
              do
              {
                for (k = 0; k != v36; ++k)
                {
                  if (*v64 != v37)
                  {
                    objc_enumerationMutation(v31);
                  }

                  v39 = *(*(&v63 + 1) + 8 * k);
                  v40 = objc_msgSend_asset(v39, v34, v35);

                  if (v40)
                  {
                    v43 = *(a1 + 32);
                    v44 = objc_msgSend_asset(v39, v41, v42);
                    objc_msgSend_addObject_(v43, v45, v44);

                    ++*(*(*(a1 + 40) + 8) + 24);
                  }

                  v46 = objc_msgSend_replacementDeltas(v30, v41, v42);
                  *(*(*(a1 + 48) + 8) + 24) += objc_msgSend_count(v46, v47, v48);

                  v51 = objc_msgSend_deltaIdentifiersToReplace(v30, v49, v50);
                  *(*(*(a1 + 56) + 8) + 24) += objc_msgSend_count(v51, v52, v53);
                }

                v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v34, &v63, v75, 16);
              }

              while (v36);
            }
          }

          v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v67, v76, 16);
        }

        while (v28);
      }

      ++*(*(*(a1 + 64) + 8) + 24);
      v56 = objc_msgSend_deltasToSave(v59, v54, v55);
      *(*(*(a1 + 72) + 8) + 24) += objc_msgSend_count(v56, v57, v58);

      v4 = v60;
    }
  }
}

id sub_1885DA188(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a2;
  v4 = [v2 alloc];
  v7 = objc_msgSend_recordID(v3, v5, v6);
  v10 = objc_msgSend_recordChangeTag(v3, v8, v9);

  v12 = objc_msgSend_initWithFormat_(v4, v11, @"%@ etag=%@", v7, v10);

  return v12;
}

void *sub_1885DD484(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885DD668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885DD680(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885DD810(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885DD9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885DDA0C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885DDB9C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885DDD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885DDD98(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885DFB04(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885DFCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885DFD00(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885DFE90(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885E0074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885E008C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885E021C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885E0400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885E0418(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t sub_1885E0CB8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_assetReference(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_assetReference(v4, v8, v9);
    if (objc_msgSend_databaseScope(v10, v11, v12) == 2 || objc_msgSend_databaseScope(v10, v13, v14) == 3)
    {
      v15 = objc_msgSend_database(*(a1 + 32), v13, v14);
      if (objc_msgSend_databaseScope(v15, v16, v17) == 2)
      {

LABEL_8:
        v27 = objc_msgSend_configuration(*(a1 + 32), v20, v21);
        v30 = objc_msgSend_container(v27, v28, v29);
        v33 = objc_msgSend_options(v30, v31, v32);
        if (objc_msgSend_bypassPCSEncryption(v33, v34, v35))
        {
          v22 = 1;
        }

        else
        {
          v38 = objc_msgSend_configuration(*(a1 + 32), v36, v37);
          v41 = objc_msgSend_container(v38, v39, v40);
          v44 = objc_msgSend_options(v41, v42, v43);
          v22 = objc_msgSend_useClearAssetEncryption(v44, v45, v46);
        }

        goto LABEL_13;
      }

      v23 = objc_msgSend_database(*(a1 + 32), v18, v19);
      v26 = objc_msgSend_databaseScope(v23, v24, v25);

      if (v26 == 3)
      {
        goto LABEL_8;
      }
    }

    v22 = 1;
LABEL_13:

    goto LABEL_14;
  }

  v22 = 0;
LABEL_14:

  return v22;
}

CKTuple2 *sub_1885E1104(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CKTuple2 alloc];
  v6 = objc_msgSend_sourceRecordID(v2, v4, v5);
  v8 = objc_msgSend_initWithObject1_object2_(v3, v7, v6, v2);

  return v8;
}

CKTuple2 *sub_1885E1184(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CKTuple2 alloc];
  v6 = objc_msgSend_destinationRecord(v2, v4, v5);
  v9 = objc_msgSend_recordID(v6, v7, v8);
  v11 = objc_msgSend_initWithObject1_object2_(v3, v10, v9, v2);

  return v11;
}

void sub_1885E2E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885E2E2C(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a4 = 1;
  return result;
}

void sub_1885E34D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1885E34F0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = a3;
  v11 = objc_msgSend_objectForKey_(v8, v10, v7);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1885E3618;
  v17[3] = &unk_1E70BED50;
  v18 = v11;
  v19 = v7;
  v24 = *(a1 + 56);
  v20 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v21 = v12;
  v22 = v13;
  v23 = a4;
  v14 = v11;
  v15 = v7;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v9, v16, v17);
}

void sub_1885E3618(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v67 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = v7;
  v10 = v8;
  v13 = objc_msgSend_assetContent(v10, v11, v12);

  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = *(a1 + 32);
      if (objc_msgSend_integerValue(v9, v15, v16) < 0 || (v19 = objc_msgSend_integerValue(v9, v17, v18), v19 >= objc_msgSend_count(v14, v20, v21)))
      {
        v38 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v17, @"CKErrorDomain", 1, @"arrayIndex out of bounds");

        if (v38)
        {
          v25 = 0;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      v23 = objc_msgSend_integerValue(v9, v17, v22);
      v25 = objc_msgSend_objectAtIndexedSubscript_(v14, v24, v23);

      if (!v25)
      {
LABEL_17:
        v38 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v26, @"CKInternalErrorDomain", 1, @"Record has orphaned asset content for field %@", *(a1 + 40));
        v25 = 0;
        if (!v38)
        {
          goto LABEL_30;
        }

        goto LABEL_25;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_17;
      }

      v28 = *(a1 + 32);
      if (!v28)
      {
        goto LABEL_17;
      }

      v25 = v28;
    }

    v29 = objc_msgSend_signature(v25, v26, v27);
    v32 = v29;
    if ((*(a1 + 80) & 1) == 0)
    {

      v32 = 0;
    }

    v33 = objc_msgSend_verificationKey(v25, v30, v31);
    v62 = 0;
    v35 = objc_msgSend_assetContentWithExpectedSignature_verificationKey_error_(v10, v34, v32, v33, &v62);
    v38 = v62;
    if (__sTestOverridesAvailable == 1 && objc_msgSend_shouldFailInMemoryAssets(*(a1 + 48), v36, v37))
    {
      objc_msgSend_setAssetContent_(v25, v36, 0);

      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v39, @"CKErrorDomain", 4, &stru_1EFA32970);
      v38 = v35 = v38;
    }

    else
    {
      if (!v35)
      {
        goto LABEL_24;
      }

      v40 = objc_msgSend_length(v35, v36, v37);
      if (v40 == objc_msgSend_size(v25, v41, v42))
      {
        v45 = objc_msgSend_assetContent(v10, v43, v44);
        objc_msgSend_setAssetContent_(v25, v46, v45);
      }

      else
      {
        v60 = objc_msgSend_size(v25, v43, v44);
        v49 = objc_msgSend_assetContent(v25, v47, v48);
        v52 = objc_msgSend_length(v49, v50, v51);
        v61 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v53, @"CKInternalErrorDomain", 1, @"asset size differs got %llu expected %lu", v60, v52);;

        v38 = v61;
      }
    }

LABEL_24:
    if (!v38)
    {
LABEL_30:

      goto LABEL_31;
    }

LABEL_25:
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v54 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v55 = *(a1 + 56);
      v56 = v54;
      v59 = objc_msgSend_recordID(v55, v57, v58);
      *buf = 138412546;
      v64 = v59;
      v65 = 2112;
      v66 = v38;
      _os_log_error_impl(&dword_1883EA000, v56, OS_LOG_TYPE_ERROR, "Error wiring up asset content for recordID %@: %@", buf, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v38);
    **(a1 + 72) = 1;
    *a4 = 1;
    goto LABEL_30;
  }

LABEL_31:
}

void *sub_1885E3C38(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885E3E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885E3E34(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885E3FC4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885E41A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885E41C0(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885E5B3C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885E5D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885E5D38(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_1885E6558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1885E6570(void *a1, objc_class *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = a1;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v16, v20, 16);
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = NSStringFromClass(a2);
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          v10 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v14, @"CKInternalErrorDomain", 1017, @"Wrong class for %@: %@", v11, v13, v16);

          goto LABEL_11;
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v9, &v16, v20, 16);
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

id sub_1885E66F8(uint64_t a1, void *a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v3 = a2;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v61, v65, 16);
  if (!v5)
  {
    v49 = 0;
    goto LABEL_33;
  }

  v8 = v5;
  v9 = *v62;
  v10 = off_1E70BA000;
  v59 = a1;
  while (2)
  {
    v11 = 0;
    v60 = v8;
    do
    {
      if (*v62 != v9)
      {
        objc_enumerationMutation(v3);
      }

      v12 = *(*(&v61 + 1) + 8 * v11);
      v13 = *(a1 + 32);
      v14 = objc_msgSend_recordID(v12, v6, v7);
      v16 = objc_msgSend_objectForKeyedSubscript_(v13, v15, v14);

      v19 = objc_msgSend_fieldName(v12, v17, v18);
      v21 = objc_msgSend_objectForKeyedSubscript_(v16, v20, v19);

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v12;
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;
      v26 = v23;
      if (v21)
      {
        if (v23)
        {
          if ((objc_msgSend_listIndex(v23, v24, v25) & 0x8000000000000000) == 0)
          {
            if (objc_msgSend_count(v21, v24, v25))
            {
              v29 = objc_msgSend_listIndex(v26, v27, v28);
              if (!objc_msgSend_containsIndex_(v21, v30, v29))
              {
                goto LABEL_14;
              }

              v51 = objc_msgSend_fieldName(v26, v24, v25);
              v58 = objc_msgSend_listIndex(v26, v54, v55);
              objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v56, @"CKInternalErrorDomain", 1017, @"Duplicate metadata for field %@ and index %ld", v51, v58);
            }

            else
            {
              v51 = objc_msgSend_fieldName(v26, v27, v28);
              objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v53, @"CKInternalErrorDomain", 1017, @"Duplicate metadata for field %@", v51);
            }
            v49 = ;
LABEL_32:

            goto LABEL_33;
          }

          v50 = v12;
        }

        else
        {
          v50 = 0;
        }

        v51 = objc_msgSend_fieldName(v12, v24, v25);
        v49 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v52, @"CKInternalErrorDomain", 1017, @"Duplicate metadata for field %@", v51);
        v12 = v50;
        goto LABEL_32;
      }

LABEL_14:
      if (v16)
      {
        if (v21)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v31 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v24, v25);
        v32 = v10;
        v33 = v9;
        v34 = *(a1 + 32);
        objc_msgSend_recordID(v12, v35, v36);
        v38 = v37 = v3;
        v39 = v34;
        v9 = v33;
        v10 = v32;
        v16 = v31;
        v8 = v60;
        objc_msgSend_setObject_forKeyedSubscript_(v39, v40, v16, v38);

        v3 = v37;
        a1 = v59;
        if (v21)
        {
LABEL_16:
          if (!v26)
          {
            goto LABEL_22;
          }

          goto LABEL_20;
        }
      }

      v21 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v24, v25);
      v43 = objc_msgSend_fieldName(v12, v41, v42);
      objc_msgSend_setObject_forKeyedSubscript_(v16, v44, v21, v43);

      if (!v26)
      {
        goto LABEL_22;
      }

LABEL_20:
      if ((objc_msgSend_listIndex(v26, v24, v25) & 0x8000000000000000) == 0)
      {
        v47 = objc_msgSend_listIndex(v26, v45, v46);
        objc_msgSend_addIndex_(v21, v48, v47);
      }

LABEL_22:

      ++v11;
    }

    while (v8 != v11);
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v61, v65, 16);
    v49 = 0;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_33:

  return v49;
}

BOOL sub_1885E6AA4(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v13 = 0;
  v3 = *MEMORY[0x1E695DB50];
  v12 = 0;
  objc_msgSend_getResourceValue_forKey_error_(v2, v4, &v13, v3, &v12);
  v5 = v13;
  v8 = v12;
  if (v5)
  {
    v9 = objc_msgSend_unsignedIntegerValue(v5, v6, v7) == 0;
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = v2;
      v16 = 2112;
      v17 = v8;
      _os_log_error_impl(&dword_1883EA000, v10, OS_LOG_TYPE_ERROR, "Could not get size for file %@: %@", buf, 0x16u);
    }

    v9 = 1;
  }

  return v9;
}

void sub_1885E6BF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24) == 1)
  {
    *(v6 + 24) = 1;
  }

  else
  {
    v12 = v3;
    v9 = objc_msgSend_fileURL(v3, v4, v5);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = objc_msgSend_fileURL(v12, v7, v8);
      *(*(*(a1 + 40) + 8) + 24) = (*(v10 + 16))(v10, v11);
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_size(v12, v7, v8) == 0;
    }

    v3 = v12;
  }
}

void *sub_1885E8284(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 496) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 496);
    *(v7 + 496) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885E8468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885E8480(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 496));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885E8610(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885E87F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885E880C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885EA24C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 496) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 496);
    *(v7 + 496) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885EA430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885EA448(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 496));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885EB828(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 496) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 496);
    *(v7 + 496) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885EBA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885EBA24(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 496));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885EBBB4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885EBD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885EBDB0(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885ED364(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885ED548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885ED560(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885ED6F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885ED8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885ED8EC(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885EF36C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885EF550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885EF568(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885EF6F8(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885EF8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885EF8F4(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885F0D24(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 496) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 496);
    *(v7 + 496) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885F0F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885F0F20(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 496));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885F10B0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885F1294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885F12AC(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_1885F1710(uint64_t a1, void *a2)
{
  v45[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v6 = objc_msgSend_userInfo(v3, v4, v5);
  v9 = objc_msgSend_allKeys(v6, v7, v8);
  v11 = objc_msgSend_containsObject_(v9, v10, @"CKRetryAfter");

  if (!v11)
  {
LABEL_19:
    (*(*(a1 + 72) + 16))();
    goto LABEL_20;
  }

  if (!*(a1 + 88))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v31 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v41 = v3;
      _os_log_debug_impl(&dword_1883EA000, v31, OS_LOG_TYPE_DEBUG, "Got a retryable error %@, but no more retries left, reporting it", buf, 0xCu);
    }

    goto LABEL_19;
  }

  v14 = objc_msgSend_userInfo(v3, v12, v13);
  v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, @"CKRetryAfter");
  objc_msgSend_doubleValue(v16, v17, v18);
  v20 = v19;

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v21 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138544130;
    v41 = @"CKRetryAfter";
    v42 = 2048;
    v43 = v20;
    v44 = 1024;
    LODWORD(v45[0]) = 0;
    WORD2(v45[0]) = 1024;
    *(v45 + 6) = 60;
    _os_log_debug_impl(&dword_1883EA000, v21, OS_LOG_TYPE_DEBUG, "Got a retryable error, found a %{public}@ header with a value %.1f, will now clip it to [%d, %d] range", buf, 0x22u);
  }

  v22 = 0.0;
  if (v20 >= 0.0)
  {
    v22 = v20;
    if (v20 > 60.0)
    {
      v22 = 60.0;
    }
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v23 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v32 = *(a1 + 88);
    *buf = 134218498;
    v41 = *&v22;
    v42 = 2048;
    v43 = v32;
    v44 = 2112;
    v45[0] = v3;
    _os_log_debug_impl(&dword_1883EA000, v23, OS_LOG_TYPE_DEBUG, "Got a retryable error, delay is %.1f seconds, retries left %lu, scheduling retry. The error was %@", buf, 0x20u);
  }

  v24 = dispatch_time(0, (v22 * 1000000000.0));
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1885F1B0C;
  v33[3] = &unk_1E70BEE68;
  v25 = *(a1 + 32);
  v26 = *(a1 + 40);
  v27 = *(a1 + 48);
  v28 = *(a1 + 56);
  *&v29 = v27;
  *(&v29 + 1) = v28;
  *&v30 = v25;
  *(&v30 + 1) = v26;
  v34 = v30;
  v35 = v29;
  v39 = *(a1 + 88);
  v36 = *(a1 + 64);
  v37 = *(a1 + 80);
  v38 = *(a1 + 72);
  dispatch_after(v24, MEMORY[0x1E69E96A0], v33);

LABEL_20:
}

void sub_1885F1B0C(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v7 = a1[4];
    v8 = 138412290;
    v9 = v7;
    _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "Calling into a retry block for operation %@", &v8, 0xCu);
  }

  v3 = [CKInitiateParticipantVettingOperation alloc];
  v5 = objc_msgSend_initWithShareMetadata_participantID_address_(v3, v4, a1[5], a1[6], a1[7]);
  objc_msgSend_retryTimes_container_participantVettingInitiatedBlock_participantVettingInitiationCompletionBlock_(v5, v6, a1[11], a1[8], a1[9], a1[10]);
}

void *sub_1885F2B74(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885F2D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885F2D70(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885F2F00(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885F30E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885F30FC(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885F4B54(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 528) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 528);
    *(v7 + 528) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885F4D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885F4D50(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 528));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885F4EE0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 536) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 536);
    *(v7 + 536) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885F50C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885F50DC(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 536));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885F5738(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 496) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 496);
    *(v7 + 496) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885F591C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885F5934(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 496));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885F5AC4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885F5CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885F5CC0(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885F6F70(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885F7154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885F716C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885F72FC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885F74E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885F74F8(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885F8A24(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

uint64_t sub_1885F8A88(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885F8C18(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885F8DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885F8E14(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885F8FA4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

uint64_t sub_1885F9008(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885FAA44(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885FAC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885FAC40(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885FBD7C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885FBF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885FBF78(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885FC108(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885FC2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885FC304(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885FDEA4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885FE088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885FE0A0(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885FE230(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885FE414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885FE42C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885FE5BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 528) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 528);
    *(v7 + 528) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885FE7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885FE7B8(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 528));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885FE948(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 536) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 536);
    *(v7 + 536) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

uint64_t sub_1885FE9AC(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 536));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885FEB3C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 544) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 544);
    *(v7 + 544) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

uint64_t sub_1885FEBA0(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 544));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885FED30(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 552) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 552);
    *(v7 + 552) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885FEF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885FEF2C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 552));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885FF0BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 560) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 560);
    *(v7 + 560) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885FF2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885FF2B8(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 560));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_188601478(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_18860165C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188601674(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_188601804(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1886019E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188601A00(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1886031F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1886033D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1886033EC(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_18860357C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_188603760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188603778(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_188603908(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 528) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 528);
    *(v7 + 528) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_188603AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188603B04(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 528));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_188606400(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 496) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 496);
    *(v7 + 496) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1886065E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1886065FC(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 496));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_18860700C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1886071F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188607208(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_188607CA0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_188607E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188607E9C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_188608C60(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 496) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 496);
    *(v7 + 496) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_188608E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188608E5C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 496));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1886098A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 496) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 496);
    *(v7 + 496) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_188609A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188609A9C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 496));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_188609C2C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_188609E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188609E28(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_18860AA90(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 496) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 496);
    *(v7 + 496) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_18860AC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18860AC8C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 496));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_18860AE1C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_18860B000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18860B018(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_18860C010(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 496) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 496);
    *(v7 + 496) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_18860C1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18860C20C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 496));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_18860C39C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_18860C580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18860C598(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_18860C728(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_18860C90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18860C924(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

BOOL CKOperationExecutionStateIsFinished(_DWORD *a1)
{
  os_unfair_lock_lock(&unk_1ED4B6780);
  v2 = *a1 == 2;
  os_unfair_lock_unlock(&unk_1ED4B6780);
  return v2;
}

BOOL CKOperationExecutionStateIsExecuting(_DWORD *a1)
{
  os_unfair_lock_lock(&unk_1ED4B6780);
  v2 = *a1 == 1;
  os_unfair_lock_unlock(&unk_1ED4B6780);
  return v2;
}

void *sub_18860E050(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 344) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 344);
    *(v7 + 344) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_18860E230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18860E248(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 344));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_18860E3D4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 352) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 352);
    *(v7 + 352) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

id sub_18860E438(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v4 = v1[42];
    if (!v4)
    {
      v5 = objc_msgSend_operationID(v1, v2, v3);
      v7 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v6, @"CKErrorDomain", 20, @"Operation %@ was cancelled internally by CloudKit", v5);
      v8 = v1[42];
      v1[42] = v7;

      v4 = v1[42];
    }

    v9 = v4;
    objc_sync_exit(v1);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_18860E568(void *a1, void *a2)
{
  v10 = a2;
  if (a1)
  {
    v5 = objc_msgSend_configuration(a1, v3, v4);
    v8 = objc_msgSend_container(v5, v6, v7);

    if (v8)
    {
      objc_msgSend_performBlock_(v8, v9, v10);
    }

    else
    {
      v10[2](v10, 0);
    }
  }
}

void sub_18860E5FC(uint64_t a1, const char *a2, uint64_t a3)
{
  v182 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_transitionToExecuting(*(a1 + 32), a2, a3) & 1) == 0)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = objc_msgSend_operationID(*(a1 + 32), v4, v5);
    objc_msgSend_raise_format_(v6, v9, v7, @"You can't restart an executing or finished CKOperation: %@", v8);
  }

  if (objc_msgSend_isCancelled(*(a1 + 32), v4, v5))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_op;
    if (os_log_type_enabled(ck_log_facility_op, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = *(a1 + 32);
      v19 = objc_msgSend_ckShortDescription(v16, v17, v18);
      *buf = 138543874;
      v173 = v15;
      v174 = 2048;
      v175 = v16;
      v176 = 2114;
      v177 = v19;
      _os_log_impl(&dword_1883EA000, v13, OS_LOG_TYPE_DEFAULT, "Not starting already cancelled operation <%{public}@: %p; %{public}@>", buf, 0x20u);
    }

    v20 = *(a1 + 32);
    v21 = sub_18860E438(v20);
    objc_msgSend_finishWithError_(v20, v22, v21);
LABEL_66:

    return;
  }

  if (!*(a1 + 40))
  {
    v33 = objc_msgSend_resolvedConfiguration(*(a1 + 32), v10, v11);
    v21 = objc_msgSend_backgroundTask(v33, v34, v35);

    if (!v21)
    {
LABEL_58:
      v123 = objc_msgSend_deviceContext(*(a1 + 32), v36, v37);
      v126 = objc_msgSend_throttleManager(v123, v124, v125);
      v127 = *(a1 + 32);
      v171 = 0;
      v129 = objc_msgSend_enforcedThrottleForCriteria_willSendRequest_outThrottleError_(v126, v128, v127, 1, &v171);
      v130 = v171;

      if (v129)
      {
        v133 = *(a1 + 32);
        v134 = objc_msgSend_CKClientSuitableError(v130, v131, v132);
        objc_msgSend_finishWithError_(v133, v135, v134);
      }

      else
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v136 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
        {
          loga = v136;
          v139 = objc_opt_class();
          v140 = NSStringFromClass(v139);
          v141 = *(a1 + 32);
          v144 = objc_msgSend_ckShortDescription(v141, v142, v143);
          v168 = objc_msgSend_configuration(*(a1 + 32), v145, v146);
          v149 = objc_msgSend_container(v168, v147, v148);
          v152 = objc_msgSend_configuration(*(a1 + 32), v150, v151);
          v155 = objc_msgSend_container(v152, v153, v154);
          v158 = objc_msgSend_implementation(v155, v156, v157);
          *buf = 138544386;
          v173 = v140;
          v174 = 2048;
          v175 = v141;
          v176 = 2114;
          v177 = v144;
          v178 = 2048;
          v179 = v149;
          v180 = 2048;
          v181 = v158;
          _os_log_impl(&dword_1883EA000, loga, OS_LOG_TYPE_INFO, "Invoking main for operation <%{public}@: %p; %{public}@> on CKContainer/CKContainerImplementation %p / %p", buf, 0x34u);
        }

        objc_msgSend_main(*(a1 + 32), v137, v138);
      }

      goto LABEL_66;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v38 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v41 = v38;
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      v44 = *(a1 + 32);
      v47 = objc_msgSend_ckShortDescription(v44, v45, v46);
      *buf = 138544130;
      v173 = v43;
      v174 = 2048;
      v175 = v44;
      v176 = 2114;
      v177 = v47;
      v178 = 2112;
      v179 = v21;
      _os_log_impl(&dword_1883EA000, v41, OS_LOG_TYPE_INFO, "Found background task for operation <%{public}@: %p; %{public}@>: %@", buf, 0x2Au);
    }

    v48 = objc_msgSend_identifier(v21, v39, v40);
    sub_18860F170(*(a1 + 32), v48);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = *(a1 + 32);
      if (!v51)
      {
        goto LABEL_27;
      }

      v52 = 1;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v51 = *(a1 + 32);
      if ((isKindOfClass & 1) == 0 || !v51)
      {
LABEL_27:
        v54 = objc_msgSend_operationMetric(v51, v49, v50);
        v57 = objc_msgSend_identifier(v21, v55, v56);
        objc_msgSend_setObject_forKeyedSubscript_(v54, v58, v57, @"xpcActivity_identifier");

        v61 = objc_msgSend_priority(v21, v59, v60);
        v62 = CKBackgroundTaskPriorityDescription(v61);
        objc_msgSend_setObject_forKeyedSubscript_(v54, v63, v62, @"xpcActivity_priority");

        if (objc_msgSend_requiresSignificantUserInactivity(v21, v64, v65))
        {
          objc_msgSend_setObject_forKeyedSubscript_(v54, v66, MEMORY[0x1E695E118], @"xpcActivity_criteria_requireSignificantUserInactivity");
        }

        if ((objc_msgSend_requiresNetworkConnectivity(v21, v66, v67) & 1) == 0)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v54, v68, MEMORY[0x1E695E110], @"xpcActivity_criteria_requireNetworkConnectivity");
        }

        v70 = MEMORY[0x1E696AD98];
        objc_msgSend_interval(v21, v68, v69);
        v73 = objc_msgSend_numberWithDouble_(v70, v71, v72);
        objc_msgSend_setObject_forKeyedSubscript_(v54, v74, v73, @"xpcActivity_interval");

        v77 = objc_msgSend_requiresInexpensiveNetworkConnectivity(v21, v75, v76);
        v80 = objc_msgSend_configuration(*(a1 + 32), v78, v79);
        v83 = objc_msgSend_allowsExpensiveNetworkAccess(v80, v81, v82);

        if (v77)
        {
          if (v83)
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v86 = ck_log_facility_ck;
            if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
            {
              log = v86;
              v87 = objc_opt_class();
              v88 = NSStringFromClass(v87);
              v89 = *(a1 + 32);
              v167 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v89, v90, 1, 0, 0);
              v93 = objc_msgSend_CKPropertiesStyleString(v167, v91, v92);
              v95 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(*(a1 + 32), v94, 0, 1, 0);
              v98 = objc_msgSend_CKPropertiesStyleString(v95, v96, v97);
              *buf = 138544130;
              v173 = v88;
              v174 = 2048;
              v175 = v89;
              v176 = 2114;
              v177 = v93;
              v178 = 2112;
              v179 = v98;
              v99 = "BUG IN CLIENT OF CLOUDKIT: Operation configuration does not match background task request. \n Background task has disabled allows expensive network access. \n Operation has enabled allows expensive network access. \n<%{public}@: %p; %{public}@, %@>";
LABEL_68:
              _os_log_fault_impl(&dword_1883EA000, log, OS_LOG_TYPE_FAULT, v99, buf, 0x2Au);
            }
          }
        }

        else if ((v83 & 1) == 0)
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v100 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
          {
            log = v100;
            v159 = objc_opt_class();
            v88 = NSStringFromClass(v159);
            v160 = *(a1 + 32);
            v167 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v160, v161, 1, 0, 0);
            v93 = objc_msgSend_CKPropertiesStyleString(v167, v162, v163);
            v95 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(*(a1 + 32), v164, 0, 1, 0);
            v98 = objc_msgSend_CKPropertiesStyleString(v95, v165, v166);
            *buf = 138544130;
            v173 = v88;
            v174 = 2048;
            v175 = v160;
            v176 = 2114;
            v177 = v93;
            v178 = 2112;
            v179 = v98;
            v99 = "BUG IN CLIENT OF CLOUDKIT: Operation configuration does not match XPC Activity Criteria. \n Background task has enabled allows expensive network access. \n Operation has disabled allows expensive network access. \n<%{public}@: %p; %{public}@, %@>";
            goto LABEL_68;
          }
        }

        isDataBudgeted = objc_msgSend_isDataBudgeted(v21, v84, v85);
        v102 = *(a1 + 32);
        if (isDataBudgeted)
        {
          if (v102)
          {
            *(v102 + 376) = 1;
          }

          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v103 = ck_log_facility_ck;
          if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
          {
            goto LABEL_55;
          }

          v104 = v103;
          v105 = objc_opt_class();
          v106 = NSStringFromClass(v105);
          v107 = *(a1 + 32);
          v110 = objc_msgSend_ckShortDescription(v107, v108, v109);
          *buf = 138544130;
          v173 = v106;
          v174 = 2048;
          v175 = v107;
          v176 = 2114;
          v177 = v110;
          v178 = 2112;
          v179 = v21;
          v111 = "Setting duetPreClearedMode KOperationDuetPreClearedModeWithBudgeting for operation <%{public}@: %p; %{public}@> for background task %@";
        }

        else
        {
          if (v102)
          {
            *(v102 + 376) = 2;
          }

          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v112 = ck_log_facility_ck;
          if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
          {
            goto LABEL_55;
          }

          v104 = v112;
          v113 = objc_opt_class();
          v106 = NSStringFromClass(v113);
          v114 = *(a1 + 32);
          v110 = objc_msgSend_ckShortDescription(v114, v115, v116);
          *buf = 138544130;
          v173 = v106;
          v174 = 2048;
          v175 = v114;
          v176 = 2114;
          v177 = v110;
          v178 = 2112;
          v179 = v21;
          v111 = "Setting duetPreClearedMode CKOperationDuetPreClearedModeWithoutBudgeting for operation <%{public}@: %p; %{public}@> for background task %@";
        }

        _os_log_impl(&dword_1883EA000, v104, OS_LOG_TYPE_INFO, v111, buf, 0x2Au);

LABEL_55:
        v117 = *(a1 + 32);
        v118 = NSStringFromSelector(sel_state);
        objc_msgSend_addObserver_forKeyPath_options_context_(v21, v119, v117, v118, 0, qword_1EA910878);

        if (objc_msgSend_state(v21, v120, v121) != 1)
        {
          objc_msgSend__handleBackgroundTaskExpiration_(*(a1 + 32), v122, v21);
        }

        goto LABEL_58;
      }

      v52 = 3;
    }

    v51[49] = v52;
    v51 = *(a1 + 32);
    goto LABEL_27;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v23 = ck_log_facility_op;
  if (os_log_type_enabled(ck_log_facility_op, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v23;
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = *(a1 + 32);
    v31 = objc_msgSend_ckShortDescription(v28, v29, v30);
    v32 = *(a1 + 40);
    *buf = 138544130;
    v173 = v27;
    v174 = 2048;
    v175 = v28;
    v176 = 2114;
    v177 = v31;
    v178 = 2112;
    v179 = v32;
    _os_log_impl(&dword_1883EA000, v25, OS_LOG_TYPE_DEFAULT, "Not starting operation due to error <%{public}@: %p; %{public}@>: %@", buf, 0x2Au);
  }

  objc_msgSend_finishWithError_(*(a1 + 32), v24, *(a1 + 40));
}

void sub_18860F170(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 400), a2);
  }
}

void sub_18860F874(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_18860F958;
  aBlock[3] = &unk_1E70BC388;
  aBlock[4] = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  v5 = v2;
  if (__sTestOverridesAvailable == 1)
  {
    v6 = objc_msgSend_invokePlaceholderOperationFinishedCallback(*(a1 + 32), v3, v4);
    objc_msgSend_setPlaceholderOperationFinishedCallback_(*(a1 + 32), v7, 0);
    objc_msgSend_takeActionOnOperation_proceedBlock_(v6, v8, *(a1 + 32), v5);
  }

  else
  {
    (*(v2 + 2))(v2);
  }
}

void sub_18860F958(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend__finishDiscretionaryOperation(*(a1 + 32), a2, a3);
  v5 = *(a1 + 32);
  if (v5)
  {

    objc_setProperty_atomic(v5, v4, 0, 440);
  }
}

void sub_18860F9B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_callbackQueue(*(a1 + 32), v4, v5);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18860FA68;
  v8[3] = &unk_1E70BEEC0;
  v8[4] = *(a1 + 32);
  v9 = v3;
  v7 = v3;
  dispatch_async(v6, v8);
}

id sub_18860FA7C(void *a1, void *a2)
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v6 = objc_msgSend_configuration(a1, v3, v4);
    v9 = objc_msgSend_container(v6, v7, v8);
    v12 = objc_msgSend_discretionaryXPCConnection(v9, v10, v11);

    if (!v12)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v30 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        v42 = v30;
        v45 = objc_msgSend_operationID(a1, v43, v44);
        v48 = objc_msgSend_configuration(a1, v46, v47);
        v51 = objc_msgSend_container(v48, v49, v50);
        *buf = 138543618;
        v66 = v45;
        v67 = 2112;
        v68 = v51;
        _os_log_error_impl(&dword_1883EA000, v42, OS_LOG_TYPE_ERROR, "Couldn't get a discretionary connection for operation %{public}@ and container %@", buf, 0x16u);
      }

      v33 = objc_msgSend_operationID(a1, v31, v32);
      v36 = objc_msgSend_configuration(a1, v34, v35);
      v39 = objc_msgSend_container(v36, v37, v38);
      v29 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v40, @"CKInternalErrorDomain", 2005, @"Couldn't get a discretionary connection for operation %@ and container %@", v33, v39);

      if (v5)
      {
        v5[2](v5, v29);
      }

      v18 = 0;
      goto LABEL_18;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_188612678;
    aBlock[3] = &unk_1E70BC540;
    v13 = v5;
    v64 = v13;
    v14 = _Block_copy(aBlock);
    v18 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v12, v15, v14);
    if (v18)
    {
LABEL_10:

      v29 = v64;
LABEL_18:

      goto LABEL_19;
    }

    v62 = v5;
    v19 = objc_msgSend_operationID(a1, v16, v17);
    v22 = objc_msgSend_configuration(a1, v20, v21);
    v25 = objc_msgSend_container(v22, v23, v24);
    v27 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v26, @"CKInternalErrorDomain", 2005, @"Couldn't get a discretionary connection for operation %@ and container %@", v19, v25);

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v28 = ck_log_facility_ck;
    v5 = v62;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v52 = v28;
      v55 = objc_msgSend_operationID(a1, v53, v54);
      v58 = objc_msgSend_configuration(a1, v56, v57);
      v61 = objc_msgSend_container(v58, v59, v60);
      *buf = 138543618;
      v66 = v55;
      v67 = 2112;
      v68 = v61;
      _os_log_error_impl(&dword_1883EA000, v52, OS_LOG_TYPE_ERROR, "Couldn't get a discretionary connection for operation %{public}@ and container %@", buf, 0x16u);

      if (!v13)
      {
        goto LABEL_9;
      }
    }

    else if (!v13)
    {
LABEL_9:

      goto LABEL_10;
    }

    v13[2](v13, v27);
    goto LABEL_9;
  }

  v18 = 0;
LABEL_19:

  return v18;
}

void sub_18860FEA4()
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v0 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_debug_impl(&dword_1883EA000, v0, OS_LOG_TYPE_DEBUG, "Queuing discretionary operation finished scheduling phase.", v1, 2u);
  }
}

void sub_188610098(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1886100B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = objc_getProperty(WeakRetained, v2, 440, 1);
  }

  sub_188435294(WeakRetained);
}

void sub_18861010C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = sub_18861022C;
    v15 = &unk_1E70BC2E8;
    v3 = *(a1 + 32);
    v16 = WeakRetained;
    v17 = v3;
    v4 = _Block_copy(&v12);
    v9 = __ROR8__(objc_msgSend_qualityOfService(WeakRetained, v5, v6, v12, v13, v14, v15) - 9, 3);
    if (v9 <= 3)
    {
      v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, (8 * v9 + 9), 0, v4);

      v4 = v10;
    }

    v11 = objc_msgSend_callbackQueue(WeakRetained, v7, v8);
    ck_call_or_dispatch_async_if_not_key(v11, kCKOperationCallbackQueueName, v4);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_18861022C(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 440, 1);
  }

  sub_188435294(Property);
}

void sub_188610D68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_188610DD8;
  v2[3] = &unk_1E70BC048;
  v2[4] = v1;
  sub_18860E568(v1, v2);
}

void sub_188610DD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  v4 = sub_188416C9C(*(a1 + 32));
  os_activity_scope_enter(v4, &v9);

  v7 = *(a1 + 32);
  if (v7)
  {
    if (*(v7 + 276) != 1 || (*(v7 + 277) & 1) != 0 || (objc_msgSend__finishDiscretionaryOperation(*(a1 + 32), v5, v6, v9.opaque[0], v9.opaque[1]), (v7 = *(a1 + 32)) != 0))
    {
      if (*(v7 + 288))
      {
        objc_msgSend__cancelDaemonOperation(v7, v5, v6);
        v7 = *(a1 + 32);
      }
    }
  }

  v8 = sub_18860E438(v7);
  sub_188610EC8(v7, v8);

  os_activity_scope_leave(&v9);
}

void sub_188610EC8(_BYTE *a1, void *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v6 = objc_msgSend_callbackQueue(a1, v3, v4);
    dispatch_assert_queue_V2(v6);

    if (__sTestOverridesAvailable == 1 && (objc_msgSend_unitTestOverrides(a1, v7, v8), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v9, v10, @"SkipCheckingExecuting"), v11 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend_BOOLValue(v11, v12, v13), v11, v9, (v14 & 1) != 0) || (objc_msgSend_isExecuting(a1, v7, v8) & 1) != 0)
    {
      if (!v5)
      {
        if (objc_msgSend_isCancelled(a1, v7, v8))
        {
          v5 = sub_18860E438(a1);
        }

        else
        {
          v5 = 0;
        }
      }

      v21 = objc_msgSend_error(a1, v7, v8);

      if (!v21)
      {
        objc_msgSend_setError_(a1, v22, v5);
      }

      v24 = objc_msgSend_error(a1, v22, v23);
      isCloudCoreSessionNoLongerValidError = objc_msgSend_isCloudCoreSessionNoLongerValidError(v24, v25, v26);

      if (isCloudCoreSessionNoLongerValidError)
      {
        v30 = objc_msgSend_configuration(a1, v28, v29);
        v33 = objc_msgSend_container(v30, v31, v32);
        v36 = objc_msgSend_implementation(v33, v34, v35);
        v39 = objc_msgSend_error(a1, v37, v38);
        objc_msgSend_noteSessionInvalidation_(v36, v40, v39);
      }

      if ((objc_msgSend_isFinished(a1, v28, v29) & 1) == 0)
      {
        a1[281] = 1;
        v46 = objc_msgSend_error(a1, v41, v42);
        objc_msgSend__finishOnCallbackQueueWithError_(a1, v47, v46);

        a1[281] = 0;
        goto LABEL_24;
      }

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v43 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v16 = v43;
        v19 = objc_msgSend_operationID(a1, v44, v45);
        v48 = 138543362;
        v49 = v19;
        v20 = "Ignoring _finishInternalOnCallbackQueue invocation on already-finished operation %{public}@";
        goto LABEL_22;
      }
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v15 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v16 = v15;
        v19 = objc_msgSend_operationID(a1, v17, v18);
        v48 = 138543362;
        v49 = v19;
        v20 = "The operation %{public}@ didn't start or is already finished";
LABEL_22:
        _os_log_debug_impl(&dword_1883EA000, v16, OS_LOG_TYPE_DEBUG, v20, &v48, 0xCu);
      }
    }
  }

LABEL_24:
}

void sub_1886112BC(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v9 = objc_msgSend_operationID(v5, v7, v8);
    v12 = objc_msgSend_configuration(*(a1 + 32), v10, v11);
    v15 = objc_msgSend_container(v12, v13, v14);
    v16 = 138543874;
    v17 = v9;
    v18 = 2112;
    v19 = v15;
    v20 = 2112;
    v21 = v3;
    _os_log_error_impl(&dword_1883EA000, v6, OS_LOG_TYPE_ERROR, "Couldn't get a connection in order to cancel operation %{public}@ on container %@: %@", &v16, 0x20u);
  }
}

void sub_18861140C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = objc_msgSend_operationID(v3, v5, v6);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1886114BC;
  v9[3] = &unk_1E70BC388;
  v9[4] = *(a1 + 32);
  objc_msgSend_cancelOperationWithIdentifier_completionHandler_(v4, v8, v7, v9);
}

void sub_1886114BC(uint64_t a1, const char *a2, uint64_t a3)
{
  if (__sTestOverridesAvailable == 1)
  {
    v7 = objc_msgSend_invokeDaemonOperationDidCancelCallback(*(a1 + 32), a2, a3);
    objc_msgSend_setDaemonOperationDidCancelCallback_(*(a1 + 32), v5, 0);
    objc_msgSend_takeActionOnOperation_proceedBlock_(v7, v6, *(a1 + 32), &unk_1EFA2F588);
  }
}

void sub_188611544(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v9 = objc_msgSend_operationID(v5, v7, v8);
    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = v3;
    _os_log_debug_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEBUG, "Error finishing discretionary operation %@: %@", &v10, 0x16u);
  }
}

void sub_1886117F8(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if ((objc_msgSend_isFinished(WeakRetained, v3, v4) & 1) == 0)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v6 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v7 = v6;
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v11 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v5, v10, 1, 0, 0);
        v14 = objc_msgSend_CKPropertiesStyleString(v11, v12, v13);
        v16 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v5, v15, 0, 1, 0);
        v19 = objc_msgSend_CKPropertiesStyleString(v16, v17, v18);
        v20 = CKDescriptionForTimeInterval(*(a1 + 40));
        v38 = 138544386;
        v39 = v9;
        v40 = 2048;
        v41 = v5;
        v42 = 2114;
        v43 = v14;
        v44 = 2112;
        v45 = v19;
        v46 = 2112;
        v47 = v20;
        _os_log_impl(&dword_1883EA000, v7, OS_LOG_TYPE_INFO, "Warn: ======================= Operation <%{public}@: %p; %{public}@, %@> has been running for %@.", &v38, 0x34u);

        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }
      }

      v21 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v24 = v21;
        v27 = objc_msgSend_configuration(v5, v25, v26);
        v30 = objc_msgSend_container(v27, v28, v29);
        v31 = sub_1886CEDB0(v30);
        v38 = 138412290;
        v39 = v31;
        _os_log_impl(&dword_1883EA000, v24, OS_LOG_TYPE_INFO, "Timeout status report: %@", &v38, 0xCu);
      }

      v32 = objc_msgSend_configuration(v5, v22, v23);
      v35 = objc_msgSend_container(v32, v33, v34);
      objc_msgSend_dumpDaemonStatusReport(v35, v36, v37);
    }

    sub_1884350BC(v5);
  }
}

void sub_188612578(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

BOOL sub_18861259C(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_isOutstandingOperation(*(a1 + 32), a2, a3))
  {
    return 0;
  }

  v6 = objc_msgSend_configuration(*(a1 + 32), v4, v5);
  isLongLived = objc_msgSend_isLongLived(v6, v7, v8);

  if (isLongLived)
  {
    return 0;
  }

  v11 = *(a1 + 32);
  return !v11 || *(v11 + 288) == 0;
}

void sub_18861261C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleRemoteProxyFailureWithError_(WeakRetained, v4, v3);
}

void sub_188612678(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Error connecting to CloudKit Discretionary daemon: %@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void sub_188613DD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_188613E60;
  v2[3] = &unk_1E70BE848;
  v2[4] = v1;
  v3 = *(a1 + 40);
  sub_18860E568(v1, v2);
}

void sub_188613E60(uint64_t a1, void *a2)
{
  v3 = a2;
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  v4 = sub_188416C9C(*(a1 + 32));
  os_activity_scope_enter(v4, &v7);

  v5 = *(a1 + 32);
  if (v5)
  {
    *(v5 + 282) = 1;
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  sub_188610EC8(v6, *(a1 + 40));
  os_activity_scope_leave(&v7);
}

void sub_188613FB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_188614048;
  v2[3] = &unk_1E70BE848;
  v2[4] = v1;
  v3 = *(a1 + 40);
  sub_18860E568(v1, v2);
}

void sub_188614048(uint64_t a1, void *a2)
{
  v3 = a2;
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  v4 = sub_188416C9C(*(a1 + 32));
  os_activity_scope_enter(v4, &v5);

  sub_188610EC8(*(a1 + 32), *(a1 + 40));
  os_activity_scope_leave(&v5);
}

uint64_t sub_188615CE8(uint64_t result)
{
  if (result)
  {
    return *(result + 488);
  }

  return result;
}

void sub_188615CFC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 488), a2);
  }
}

void sub_1886166C4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_188618000(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_errorInducerID(a2, a2, a3);
  LODWORD(a1) = objc_msgSend_isEqualToString_(v4, v5, *(a1 + 32));

  return a1 ^ 1;
}

uint64_t sub_1886181DC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_testResultOverlayID(a2, a2, a3);
  LODWORD(a1) = objc_msgSend_isEqualToString_(v4, v5, *(a1 + 32));

  return a1 ^ 1;
}

uint64_t CKOperationGroupTransferSizeForBytes(unint64_t a1)
{
  v1 = HIDWORD(a1);
  v2 = 6;
  v3 = a1 >> 31;
  v4 = 5;
  v5 = a1 >> 30;
  v6 = 4;
  v7 = a1 >> 22;
  v8 = 3;
  v9 = a1 >> 21;
  v10 = a1 >> 20 == 0;
  v11 = 1;
  if (!v10)
  {
    v11 = 2;
  }

  if (v9 <= 4)
  {
    v8 = v11;
  }

  if (v7 <= 0x18)
  {
    v6 = v8;
  }

  if (!v5)
  {
    v4 = v6;
  }

  if (v3 <= 4)
  {
    v2 = v4;
  }

  if (v1 <= 0x18)
  {
    return v2;
  }

  else
  {
    return 7;
  }
}

uint64_t sub_1886194E4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if ((a2 - 1) > 6)
    {
      return -1;
    }

    else
    {
      return qword_1886FE7C0[a2 - 1];
    }
  }

  return result;
}

id sub_1886198B8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v7 = objc_msgSend_unsignedIntegerValue(a3, v5, v6);
  v8 = MEMORY[0x1E696AEC0];
  isUplink = objc_msgSend_isUplink(v4, v9, v10);
  v14 = objc_msgSend_allowsCellularAccess(v4, v12, v13);

  v15 = CKStringForNetworkServiceType(v7);
  v17 = objc_msgSend_stringWithFormat_(v8, v16, @"(uplink:%d, allowsCellularAccess:%d, ServiceType: %@)", isUplink, v14, v15);

  return v17;
}

id sub_18861AF10(id a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v31.receiver = a1;
    v31.super_class = CKPlaceholderOperation;
    a1 = objc_msgSendSuper2(&v31, sel_init);
    if (a1)
    {
      v9 = objc_msgSend_date(MEMORY[0x1E695DF00], v7, v8);
      v10 = *(a1 + 33);
      *(a1 + 33) = v9;

      v11 = dispatch_group_create();
      dispatch_group_enter(v11);
      v12 = *(a1 + 31);
      *(a1 + 31) = v11;
      v13 = v11;

      *(a1 + 260) = 0;
      v16 = objc_msgSend_operationID(v5, v14, v15);
      v17 = *(a1 + 34);
      *(a1 + 34) = v16;

      v20 = objc_msgSend_copy(v6, v18, v19);
      v21 = *(a1 + 35);
      *(a1 + 35) = v20;

      v24 = objc_msgSend_qualityOfService(v5, v22, v23);
      objc_msgSend_setQualityOfService_(a1, v25, v24);
      v28 = objc_msgSend_queuePriority(v5, v26, v27);
      objc_msgSend_setQueuePriority_(a1, v29, v28);
    }
  }

  return a1;
}

uint64_t CKDPDistributedTimestampsReadFrom(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v43) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v43) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v43, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v43 & 0x7F) << v10;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPSiteIdentifier);
        objc_msgSend_addSiteIdentifiers_(a1, v33, v32);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !CKDPSiteIdentifierReadFrom(v32, a2, v34))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v39 = objc_msgSend_position(a2, v37, v38);
      if (v39 >= objc_msgSend_length(a2, v40, v41))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = objc_alloc_init(CKDPDistributedTimestampsSiteVersionVectors);
    objc_msgSend_addSiteVersionVectors_(a1, v35, v32);
    v43 = 0;
    v44 = 0;
    if (!PBReaderPlaceMark() || !CKDPDistributedTimestampsSiteVersionVectorsReadFrom(v32, a2, v36))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPDistributedTimestampsSiteVersionVectorsReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v42[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v42[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42[0] & 0x7F) << v10;
        if ((v42[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v33 = objc_alloc_init(CKDPDistributedTimestampsVersionVector);
          v34 = 32;
        }

        else
        {
          if (v32 != 4)
          {
LABEL_24:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              return 0;
            }

            goto LABEL_31;
          }

          v33 = objc_alloc_init(CKDPDistributedTimestampsVersionVector);
          v34 = 16;
        }
      }

      else if (v32 == 1)
      {
        v33 = objc_alloc_init(CKDPDistributedTimestampsVersionVector);
        v34 = 24;
      }

      else
      {
        if (v32 != 2)
        {
          goto LABEL_24;
        }

        v33 = objc_alloc_init(CKDPDistributedTimestampsVersionVector);
        v34 = 8;
      }

      objc_storeStrong((a1 + v34), v33);
      v42[0] = 0;
      v42[1] = 0;
      if (!PBReaderPlaceMark() || !CKDPDistributedTimestampsVersionVectorReadFrom(v33, a2, v37))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_31:
      v38 = objc_msgSend_position(a2, v35, v36);
    }

    while (v38 < objc_msgSend_length(a2, v39, v40));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPDistributedTimestampsVersionVectorReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_position(a2, a2, a3);
  if (v4 < objc_msgSend_length(a2, v5, v6))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v7, v8))
      {
        return objc_msgSend_hasError(a2, v7, v8) ^ 1;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v234) = 0;
        v12 = objc_msgSend_position(a2, v7, v8) + 1;
        if (v12 >= objc_msgSend_position(a2, v13, v14) && (v17 = objc_msgSend_position(a2, v15, v16) + 1, v17 <= objc_msgSend_length(a2, v18, v19)))
        {
          v20 = objc_msgSend_data(a2, v15, v16);
          v23 = objc_msgSend_position(a2, v21, v22);
          objc_msgSend_getBytes_range_(v20, v24, &v234, v23, 1);

          v27 = objc_msgSend_position(a2, v25, v26);
          objc_msgSend_setPosition_(a2, v28, v27 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v15, v16);
        }

        v11 |= (v234 & 0x7F) << v9;
        if ((v234 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v29 = v10++ >= 9;
        if (v29)
        {
          v30 = 0;
          goto LABEL_15;
        }
      }

      v30 = objc_msgSend_hasError(a2, v7, v8) ? 0 : v11;
LABEL_15:
      if (objc_msgSend_hasError(a2, v7, v8))
      {
        return objc_msgSend_hasError(a2, v7, v8) ^ 1;
      }

      v8 = v30 & 7;
      if (v8 == 4)
      {
        return objc_msgSend_hasError(a2, v7, v8) ^ 1;
      }

      v31 = (v30 >> 3);
      if ((v30 >> 3) > 3)
      {
        if (v31 == 4)
        {
          if (v8 != 2)
          {
            v211 = 0;
            v212 = 0;
            v213 = 0;
            while (1)
            {
              LOBYTE(v234) = 0;
              v214 = objc_msgSend_position(a2, v31, v8) + 1;
              if (v214 >= objc_msgSend_position(a2, v215, v216) && (v219 = objc_msgSend_position(a2, v217, v218) + 1, v219 <= objc_msgSend_length(a2, v220, v221)))
              {
                v222 = objc_msgSend_data(a2, v217, v218);
                v225 = objc_msgSend_position(a2, v223, v224);
                objc_msgSend_getBytes_range_(v222, v226, &v234, v225, 1);

                v229 = objc_msgSend_position(a2, v227, v228);
                objc_msgSend_setPosition_(a2, v230, v229 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v217, v218);
              }

              v213 |= (v234 & 0x7F) << v211;
              if ((v234 & 0x80) == 0)
              {
                break;
              }

              v211 += 7;
              v29 = v212++ >= 9;
              if (v29)
              {
                goto LABEL_126;
              }
            }

            objc_msgSend_hasError(a2, v31, v8);
LABEL_126:
            PBRepeatedInt32Add();
            goto LABEL_127;
          }

          v234 = 0;
          v235 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v124 = objc_msgSend_position(a2, v122, v123);
            if (v124 >= objc_msgSend_length(a2, v125, v126) || (objc_msgSend_hasError(a2, v127, v128) & 1) != 0)
            {
              break;
            }

            v131 = 0;
            v132 = 0;
            v133 = 0;
            while (1)
            {
              v236 = 0;
              v134 = objc_msgSend_position(a2, v129, v130) + 1;
              if (v134 >= objc_msgSend_position(a2, v135, v136) && (v139 = objc_msgSend_position(a2, v137, v138) + 1, v139 <= objc_msgSend_length(a2, v140, v141)))
              {
                v142 = objc_msgSend_data(a2, v137, v138);
                v145 = objc_msgSend_position(a2, v143, v144);
                objc_msgSend_getBytes_range_(v142, v146, &v236, v145, 1);

                v149 = objc_msgSend_position(a2, v147, v148);
                objc_msgSend_setPosition_(a2, v150, v149 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v137, v138);
              }

              v133 |= (v236 & 0x7F) << v131;
              if ((v236 & 0x80) == 0)
              {
                break;
              }

              v131 += 7;
              v29 = v132++ >= 9;
              if (v29)
              {
                goto LABEL_83;
              }
            }

            objc_msgSend_hasError(a2, v129, v130);
LABEL_83:
            PBRepeatedInt32Add();
          }

LABEL_84:
          PBReaderRecallMark();
          goto LABEL_127;
        }

        if (v31 == 5)
        {
          if (v8 != 2)
          {
            v171 = 0;
            v172 = 0;
            v173 = 0;
            while (1)
            {
              LOBYTE(v234) = 0;
              v174 = objc_msgSend_position(a2, v31, v8) + 1;
              if (v174 >= objc_msgSend_position(a2, v175, v176) && (v179 = objc_msgSend_position(a2, v177, v178) + 1, v179 <= objc_msgSend_length(a2, v180, v181)))
              {
                v182 = objc_msgSend_data(a2, v177, v178);
                v185 = objc_msgSend_position(a2, v183, v184);
                objc_msgSend_getBytes_range_(v182, v186, &v234, v185, 1);

                v189 = objc_msgSend_position(a2, v187, v188);
                objc_msgSend_setPosition_(a2, v190, v189 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v177, v178);
              }

              v173 |= (v234 & 0x7F) << v171;
              if ((v234 & 0x80) == 0)
              {
                break;
              }

              v171 += 7;
              v29 = v172++ >= 9;
              if (v29)
              {
                goto LABEL_124;
              }
            }

            objc_msgSend_hasError(a2, v31, v8);
LABEL_124:
            PBRepeatedUInt32Add();
            goto LABEL_127;
          }

          v234 = 0;
          v235 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v64 = objc_msgSend_position(a2, v62, v63);
            if (v64 >= objc_msgSend_length(a2, v65, v66) || (objc_msgSend_hasError(a2, v67, v68) & 1) != 0)
            {
              goto LABEL_84;
            }

            v71 = 0;
            v72 = 0;
            v73 = 0;
            while (1)
            {
              v236 = 0;
              v74 = objc_msgSend_position(a2, v69, v70) + 1;
              if (v74 >= objc_msgSend_position(a2, v75, v76) && (v79 = objc_msgSend_position(a2, v77, v78) + 1, v79 <= objc_msgSend_length(a2, v80, v81)))
              {
                v82 = objc_msgSend_data(a2, v77, v78);
                v85 = objc_msgSend_position(a2, v83, v84);
                objc_msgSend_getBytes_range_(v82, v86, &v236, v85, 1);

                v89 = objc_msgSend_position(a2, v87, v88);
                objc_msgSend_setPosition_(a2, v90, v89 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v77, v78);
              }

              v73 |= (v236 & 0x7F) << v71;
              if ((v236 & 0x80) == 0)
              {
                break;
              }

              v71 += 7;
              v29 = v72++ >= 9;
              if (v29)
              {
                goto LABEL_51;
              }
            }

            objc_msgSend_hasError(a2, v69, v70);
LABEL_51:
            PBRepeatedUInt32Add();
          }
        }
      }

      else
      {
        if (v31 == 2)
        {
          if (v8 != 2)
          {
            v191 = 0;
            v192 = 0;
            v193 = 0;
            while (1)
            {
              LOBYTE(v234) = 0;
              v194 = objc_msgSend_position(a2, v31, v8) + 1;
              if (v194 >= objc_msgSend_position(a2, v195, v196) && (v199 = objc_msgSend_position(a2, v197, v198) + 1, v199 <= objc_msgSend_length(a2, v200, v201)))
              {
                v202 = objc_msgSend_data(a2, v197, v198);
                v205 = objc_msgSend_position(a2, v203, v204);
                objc_msgSend_getBytes_range_(v202, v206, &v234, v205, 1);

                v209 = objc_msgSend_position(a2, v207, v208);
                objc_msgSend_setPosition_(a2, v210, v209 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v197, v198);
              }

              v193 |= (v234 & 0x7F) << v191;
              if ((v234 & 0x80) == 0)
              {
                goto LABEL_112;
              }

              v191 += 7;
              v29 = v192++ >= 9;
              if (v29)
              {
                goto LABEL_113;
              }
            }
          }

          v234 = 0;
          v235 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v95 = objc_msgSend_position(a2, v93, v94);
            if (v95 >= objc_msgSend_length(a2, v96, v97) || (objc_msgSend_hasError(a2, v98, v99) & 1) != 0)
            {
              goto LABEL_84;
            }

            v102 = 0;
            v103 = 0;
            v104 = 0;
            while (1)
            {
              v236 = 0;
              v105 = objc_msgSend_position(a2, v100, v101) + 1;
              if (v105 >= objc_msgSend_position(a2, v106, v107) && (v110 = objc_msgSend_position(a2, v108, v109) + 1, v110 <= objc_msgSend_length(a2, v111, v112)))
              {
                v113 = objc_msgSend_data(a2, v108, v109);
                v116 = objc_msgSend_position(a2, v114, v115);
                objc_msgSend_getBytes_range_(v113, v117, &v236, v116, 1);

                v120 = objc_msgSend_position(a2, v118, v119);
                objc_msgSend_setPosition_(a2, v121, v120 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v108, v109);
              }

              v104 |= (v236 & 0x7F) << v102;
              if ((v236 & 0x80) == 0)
              {
                break;
              }

              v102 += 7;
              v29 = v103++ >= 9;
              if (v29)
              {
                goto LABEL_68;
              }
            }

            objc_msgSend_hasError(a2, v100, v101);
LABEL_68:
            PBRepeatedUInt64Add();
          }
        }

        if (v31 == 3)
        {
          if (v8 != 2)
          {
            v151 = 0;
            v152 = 0;
            v153 = 0;
            while (1)
            {
              LOBYTE(v234) = 0;
              v154 = objc_msgSend_position(a2, v31, v8) + 1;
              if (v154 >= objc_msgSend_position(a2, v155, v156) && (v159 = objc_msgSend_position(a2, v157, v158) + 1, v159 <= objc_msgSend_length(a2, v160, v161)))
              {
                v162 = objc_msgSend_data(a2, v157, v158);
                v165 = objc_msgSend_position(a2, v163, v164);
                objc_msgSend_getBytes_range_(v162, v166, &v234, v165, 1);

                v169 = objc_msgSend_position(a2, v167, v168);
                objc_msgSend_setPosition_(a2, v170, v169 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v157, v158);
              }

              v153 |= (v234 & 0x7F) << v151;
              if ((v234 & 0x80) == 0)
              {
                break;
              }

              v151 += 7;
              v29 = v152++ >= 9;
              if (v29)
              {
                goto LABEL_113;
              }
            }

LABEL_112:
            objc_msgSend_hasError(a2, v31, v8);
LABEL_113:
            PBRepeatedUInt64Add();
            goto LABEL_127;
          }

          v234 = 0;
          v235 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v35 = objc_msgSend_position(a2, v33, v34);
            if (v35 >= objc_msgSend_length(a2, v36, v37) || (objc_msgSend_hasError(a2, v38, v39) & 1) != 0)
            {
              goto LABEL_84;
            }

            v42 = 0;
            v43 = 0;
            v44 = 0;
            while (1)
            {
              v236 = 0;
              v45 = objc_msgSend_position(a2, v40, v41) + 1;
              if (v45 >= objc_msgSend_position(a2, v46, v47) && (v50 = objc_msgSend_position(a2, v48, v49) + 1, v50 <= objc_msgSend_length(a2, v51, v52)))
              {
                v53 = objc_msgSend_data(a2, v48, v49);
                v56 = objc_msgSend_position(a2, v54, v55);
                objc_msgSend_getBytes_range_(v53, v57, &v236, v56, 1);

                v60 = objc_msgSend_position(a2, v58, v59);
                objc_msgSend_setPosition_(a2, v61, v60 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v48, v49);
              }

              v44 |= (v236 & 0x7F) << v42;
              if ((v236 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v29 = v43++ >= 9;
              if (v29)
              {
                goto LABEL_34;
              }
            }

            objc_msgSend_hasError(a2, v40, v41);
LABEL_34:
            PBRepeatedUInt64Add();
          }
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_127:
      v231 = objc_msgSend_position(a2, v91, v92);
    }

    while (v231 < objc_msgSend_length(a2, v232, v233));
  }

  return objc_msgSend_hasError(a2, v7, v8) ^ 1;
}

uint64_t CKDPLocationCoordinateReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v162[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v162[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v162, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v162[0] & 0x7F) << v10;
        if ((v162[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) <= 4)
      {
        break;
      }

      if (v32 <= 6)
      {
        if (v32 == 5)
        {
          *(a1 + 72) |= 0x40u;
          v162[0] = 0;
          v69 = objc_msgSend_position(a2, v32, v9) + 8;
          if (v69 >= objc_msgSend_position(a2, v70, v71) && (v74 = objc_msgSend_position(a2, v72, v73) + 8, v74 <= objc_msgSend_length(a2, v75, v76)))
          {
            v104 = objc_msgSend_data(a2, v72, v73);
            v107 = objc_msgSend_position(a2, v105, v106);
            objc_msgSend_getBytes_range_(v104, v108, v162, v107, 8);

            v111 = objc_msgSend_position(a2, v109, v110);
            objc_msgSend_setPosition_(a2, v112, v111 + 8);
          }

          else
          {
            objc_msgSend__setError(a2, v72, v73);
          }

          v102 = v162[0];
          v103 = 56;
          goto LABEL_68;
        }

        if (v32 == 6)
        {
          *(a1 + 72) |= 2u;
          v162[0] = 0;
          v43 = objc_msgSend_position(a2, v32, v9) + 8;
          if (v43 >= objc_msgSend_position(a2, v44, v45) && (v48 = objc_msgSend_position(a2, v46, v47) + 8, v48 <= objc_msgSend_length(a2, v49, v50)))
          {
            v140 = objc_msgSend_data(a2, v46, v47);
            v143 = objc_msgSend_position(a2, v141, v142);
            objc_msgSend_getBytes_range_(v140, v144, v162, v143, 8);

            v147 = objc_msgSend_position(a2, v145, v146);
            objc_msgSend_setPosition_(a2, v148, v147 + 8);
          }

          else
          {
            objc_msgSend__setError(a2, v46, v47);
          }

          v102 = v162[0];
          v103 = 16;
          goto LABEL_68;
        }

LABEL_52:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_69;
      }

      if (v32 == 7)
      {
        *(a1 + 72) |= 0x20u;
        v162[0] = 0;
        v85 = objc_msgSend_position(a2, v32, v9) + 8;
        if (v85 >= objc_msgSend_position(a2, v86, v87) && (v90 = objc_msgSend_position(a2, v88, v89) + 8, v90 <= objc_msgSend_length(a2, v91, v92)))
        {
          v122 = objc_msgSend_data(a2, v88, v89);
          v125 = objc_msgSend_position(a2, v123, v124);
          objc_msgSend_getBytes_range_(v122, v126, v162, v125, 8);

          v129 = objc_msgSend_position(a2, v127, v128);
          objc_msgSend_setPosition_(a2, v130, v129 + 8);
        }

        else
        {
          objc_msgSend__setError(a2, v88, v89);
        }

        v102 = v162[0];
        v103 = 48;
        goto LABEL_68;
      }

      if (v32 != 8)
      {
        goto LABEL_52;
      }

      v59 = objc_alloc_init(CKDPDate);
      objc_storeStrong((a1 + 64), v59);
      v162[0] = 0;
      v162[1] = 0;
      if (!PBReaderPlaceMark() || !CKDPDateReadFrom(v59, a2, v60))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_69:
      v158 = objc_msgSend_position(a2, v41, v42);
      if (v158 >= objc_msgSend_length(a2, v159, v160))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    if (v32 > 2)
    {
      if (v32 == 3)
      {
        *(a1 + 72) |= 4u;
        v162[0] = 0;
        v77 = objc_msgSend_position(a2, v32, v9) + 8;
        if (v77 >= objc_msgSend_position(a2, v78, v79) && (v82 = objc_msgSend_position(a2, v80, v81) + 8, v82 <= objc_msgSend_length(a2, v83, v84)))
        {
          v113 = objc_msgSend_data(a2, v80, v81);
          v116 = objc_msgSend_position(a2, v114, v115);
          objc_msgSend_getBytes_range_(v113, v117, v162, v116, 8);

          v120 = objc_msgSend_position(a2, v118, v119);
          objc_msgSend_setPosition_(a2, v121, v120 + 8);
        }

        else
        {
          objc_msgSend__setError(a2, v80, v81);
        }

        v102 = v162[0];
        v103 = 24;
        goto LABEL_68;
      }

      if (v32 == 4)
      {
        *(a1 + 72) |= 1u;
        v162[0] = 0;
        v51 = objc_msgSend_position(a2, v32, v9) + 8;
        if (v51 >= objc_msgSend_position(a2, v52, v53) && (v56 = objc_msgSend_position(a2, v54, v55) + 8, v56 <= objc_msgSend_length(a2, v57, v58)))
        {
          v149 = objc_msgSend_data(a2, v54, v55);
          v152 = objc_msgSend_position(a2, v150, v151);
          objc_msgSend_getBytes_range_(v149, v153, v162, v152, 8);

          v156 = objc_msgSend_position(a2, v154, v155);
          objc_msgSend_setPosition_(a2, v157, v156 + 8);
        }

        else
        {
          objc_msgSend__setError(a2, v54, v55);
        }

        v102 = v162[0];
        v103 = 8;
        goto LABEL_68;
      }
    }

    else
    {
      if (v32 == 1)
      {
        *(a1 + 72) |= 8u;
        v162[0] = 0;
        v61 = objc_msgSend_position(a2, v32, v9) + 8;
        if (v61 >= objc_msgSend_position(a2, v62, v63) && (v66 = objc_msgSend_position(a2, v64, v65) + 8, v66 <= objc_msgSend_length(a2, v67, v68)))
        {
          v93 = objc_msgSend_data(a2, v64, v65);
          v96 = objc_msgSend_position(a2, v94, v95);
          objc_msgSend_getBytes_range_(v93, v97, v162, v96, 8);

          v100 = objc_msgSend_position(a2, v98, v99);
          objc_msgSend_setPosition_(a2, v101, v100 + 8);
        }

        else
        {
          objc_msgSend__setError(a2, v64, v65);
        }

        v102 = v162[0];
        v103 = 32;
        goto LABEL_68;
      }

      if (v32 == 2)
      {
        *(a1 + 72) |= 0x10u;
        v162[0] = 0;
        v33 = objc_msgSend_position(a2, v32, v9) + 8;
        if (v33 >= objc_msgSend_position(a2, v34, v35) && (v38 = objc_msgSend_position(a2, v36, v37) + 8, v38 <= objc_msgSend_length(a2, v39, v40)))
        {
          v131 = objc_msgSend_data(a2, v36, v37);
          v134 = objc_msgSend_position(a2, v132, v133);
          objc_msgSend_getBytes_range_(v131, v135, v162, v134, 8);

          v138 = objc_msgSend_position(a2, v136, v137);
          objc_msgSend_setPosition_(a2, v139, v138 + 8);
        }

        else
        {
          objc_msgSend__setError(a2, v36, v37);
        }

        v102 = v162[0];
        v103 = 40;
LABEL_68:
        *(a1 + v103) = v102;
        goto LABEL_69;
      }
    }

    goto LABEL_52;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPOneTimeFullTokenInfoReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v61 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v61, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v61 & 0x7F) << v10;
        if ((v61 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 3)
      {
        v33 = PBReaderReadData();
        v34 = 16;
      }

      else
      {
        if (v32 == 2)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v62 = 0;
            v38 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
            {
              v46 = objc_msgSend_data(a2, v41, v42);
              v49 = objc_msgSend_position(a2, v47, v48);
              objc_msgSend_getBytes_range_(v46, v50, &v62, v49, 1);

              v53 = objc_msgSend_position(a2, v51, v52);
              objc_msgSend_setPosition_(a2, v54, v53 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v41, v42);
            }

            v37 |= (v62 & 0x7F) << v35;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v30 = v36++ >= 9;
            if (v30)
            {
              v55 = 0;
              goto LABEL_37;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v55 = 0;
          }

          else
          {
            v55 = v37;
          }

LABEL_37:
          *(a1 + 24) = v55;
          goto LABEL_38;
        }

        if (v32 != 1)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_38;
        }

        v33 = PBReaderReadData();
        v34 = 8;
      }

      v56 = *(a1 + v34);
      *(a1 + v34) = v33;

LABEL_38:
      v58 = objc_msgSend_position(a2, v32, v9);
    }

    while (v58 < objc_msgSend_length(a2, v59, v60));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPSiteIdentifierReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v42 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42 & 0x7F) << v10;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 1)
      {
        break;
      }

      if ((v31 >> 3) == 2)
      {
        v32 = &OBJC_IVAR___CKDPSiteIdentifier__modifier;
LABEL_21:
        v33 = PBReaderReadData();
        v34 = *v32;
        v35 = *(a1 + v34);
        *(a1 + v34) = v33;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v38 = objc_msgSend_position(a2, v36, v37);
      if (v38 >= objc_msgSend_length(a2, v39, v40))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = &OBJC_IVAR___CKDPSiteIdentifier__identifier;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_18862538C(uint64_t a1, const char *a2)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = sub_1883EE124;
  v37[4] = sub_1883EF754;
  v38 = 0;
  v3 = objc_msgSend_createRepairOperationGroupWithName_(*(a1 + 56), a2, @"Touch Repair Zone");
  v6 = objc_msgSend_repairZoneID(*(a1 + 32), v4, v5);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [CKRecordZoneID alloc];
    v8 = objc_msgSend_initWithZoneName_ownerName_(v9, v10, @"RepairZone", @"__defaultOwner__");
  }

  v11 = v8;

  v14 = objc_msgSend_container(*(a1 + 40), v12, v13);
  v16 = objc_msgSend_createRepairContainerFromContainer_withOverrides_(*(a1 + 56), v15, v14, *(a1 + 32));
  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  v18 = [CKModifyRecordZonesOperation alloc];
  v39[0] = v11;
  v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v19, v39, 1);
  v22 = objc_msgSend_initWithRecordZonesToSave_recordZoneIDsToDelete_(v18, v21, 0, v20);

  objc_msgSend_setGroup_(v22, v23, v3);
  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = sub_188625638;
  v34 = &unk_1E70BF1F0;
  v36 = v37;
  v24 = v17;
  v35 = v24;
  objc_msgSend_setModifyRecordZonesCompletionBlock_(v22, v25, &v31);
  v28 = objc_msgSend_privateCloudDatabase(v16, v26, v27, v31, v32, v33, v34);
  objc_msgSend_addOperation_(v28, v29, v22);

  dispatch_group_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
  v30 = objc_opt_self();

  (*(*(a1 + 48) + 16))();
  _Block_object_dispose(v37, 8);
}

void sub_188625608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188625638(uint64_t a1, int a2, int a3, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v6 = obj;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_188627AD4(id *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_count(a1[4], a2, a3))
  {
    v6 = 0;
    do
    {
      v7 = objc_msgSend_objectAtIndexedSubscript_(a1[4], v4, v6);
      v11 = objc_msgSend_objectAtIndexedSubscript_(a1[5], v8, v6);
      v12 = a1[6];
      if (v12)
      {
        objc_msgSend_operations(v12[13], v9, v10);
      }

      else
      {
        objc_msgSend_operations(0, v9, v10);
      }
      v13 = ;
      v16 = objc_msgSend_firstObject(v13, v14, v15);

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = objc_msgSend_includedMetadata(v16, v17, v18);
        if (objc_msgSend_containsObject_(v19, v20, v7))
        {
          v22 = objc_msgSend_objectForKeyedSubscript_(*(a1[6] + 1), v21, v7);

          if (v22 != v11)
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v23 = ck_log_facility_data_repair;
            if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
            {
              v30[0] = 0;
              _os_log_debug_impl(&dword_1883EA000, v23, OS_LOG_TYPE_DEBUG, "Attempted to change upload request callback while operation was already running", v30, 2u);
            }
          }
        }

        else
        {
        }
      }

      v24 = _Block_copy(v11);
      v25 = sub_188627CB8(a1[6]);
      objc_msgSend_setObject_forKeyedSubscript_(v25, v26, v24, v7);

      ++v6;
    }

    while (v6 < objc_msgSend_count(a1[4], v27, v28));
  }

  return objc_msgSend_tickle(a1[6], v4, v5);
}

dispatch_queue_t *sub_188627CB8(dispatch_queue_t *a1)
{
  if (a1)
  {
    v2 = a1;
    dispatch_assert_queue_V2(a1[10]);
    a1 = v2[1];
    v1 = vars8;
  }

  return a1;
}

void sub_188627E10(uint64_t a1)
{
  v97 = *MEMORY[0x1E69E9840];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v2 = sub_188628470(*(a1 + 32));
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v88, v96, 16);
  if (!v4)
  {
    goto LABEL_65;
  }

  v7 = v4;
  v8 = *v89;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v89 != v8)
      {
        objc_enumerationMutation(v2);
      }

      v10 = *(*(&v88 + 1) + 8 * i);
      v11 = objc_msgSend_repairZoneRecordID(v10, v5, v6);
      isEqual = objc_msgSend_isEqual_(v11, v12, *(a1 + 40));

      if (isEqual)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v14 = ck_log_facility_data_repair;
        if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v95 = v10;
          _os_log_debug_impl(&dword_1883EA000, v14, OS_LOG_TYPE_DEBUG, "Attempting to cancel repairs for: %@", buf, 0xCu);
        }

        v17 = objc_msgSend_allRemainingRequestableAssets(*(a1 + 32), v15, v16);
        v19 = objc_msgSend_containsObject_(v17, v18, v10);

        if (v19)
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v20 = ck_log_facility_data_repair;
          if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_1883EA000, v20, OS_LOG_TYPE_DEBUG, "Operation not yet started, cancelling", buf, 2u);
          }

          v21 = sub_188627CB8(*(a1 + 32));
          objc_msgSend_setObject_forKeyedSubscript_(v21, v22, 0, v10);

          v24 = *(a1 + 32);
          if (v24)
          {
            objc_msgSend_removeObjectForKey_(*(v24 + 128), v23, v10);
          }

          else
          {
            objc_msgSend_removeObjectForKey_(0, v23, v10);
          }

          goto LABEL_65;
        }

        v25 = sub_1886284F0(*(a1 + 32));
        v27 = objc_msgSend_containsObject_(v25, v26, v10);

        if (v27)
        {
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v30 = *(a1 + 32);
          if (v30)
          {
            objc_msgSend_operations(*(v30 + 96), v28, v29, v2);
          }

          else
          {
            objc_msgSend_operations(0, v28, v29, v2);
          }
          obj = ;
          v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v84, v93, 16);
          if (v32)
          {
            v33 = v32;
            v34 = *v85;
            while (2)
            {
              for (j = 0; j != v33; ++j)
              {
                if (*v85 != v34)
                {
                  objc_enumerationMutation(obj);
                }

                v36 = *(*(&v84 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v39 = objc_msgSend_metadata(v36, v37, v38);
                  v42 = objc_msgSend_repairZoneRecordID(v39, v40, v41);
                  v45 = objc_msgSend_repairZoneRecordID(v10, v43, v44);
                  v47 = objc_msgSend_isEqual_(v42, v46, v45);

                  if (v47)
                  {
                    if (ck_log_initialization_predicate != -1)
                    {
                      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
                    }

                    v2 = v78;
                    v71 = ck_log_facility_data_repair;
                    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 0;
                      _os_log_debug_impl(&dword_1883EA000, v71, OS_LOG_TYPE_DEBUG, "Found operation in request queue, cancelling", buf, 2u);
                    }

                    objc_msgSend_cancel(v36, v72, v73);

                    goto LABEL_65;
                  }
                }
              }

              v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v37, &v84, v93, 16);
              if (v33)
              {
                continue;
              }

              break;
            }
          }
        }

        else
        {
          v48 = sub_188628534(*(a1 + 32));
          v50 = objc_msgSend_containsObject_(v48, v49, v10);

          if (!v50)
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v74 = ck_log_facility_data_repair;
            if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1883EA000, v74, OS_LOG_TYPE_ERROR, "Could not find operation for cancellation", buf, 2u);
            }

            goto LABEL_65;
          }

          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v53 = *(a1 + 32);
          if (v53)
          {
            objc_msgSend_operations(*(v53 + 104), v51, v52, v2);
          }

          else
          {
            objc_msgSend_operations(0, v51, v52, v2);
          }
          v54 = ;
          v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v55, &v80, v92, 16);
          if (v56)
          {
            v57 = v56;
            v58 = *v81;
            while (2)
            {
              for (k = 0; k != v57; ++k)
              {
                if (*v81 != v58)
                {
                  objc_enumerationMutation(v54);
                }

                v60 = *(*(&v80 + 1) + 8 * k);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v63 = objc_msgSend_includedMetadata(v60, v61, v62);
                  if (objc_msgSend_count(v63, v64, v65) == 1)
                  {
                    v68 = objc_msgSend_includedMetadata(v60, v66, v67);
                    v70 = objc_msgSend_containsObject_(v68, v69, v10);

                    if (v70)
                    {
                      if (ck_log_initialization_predicate != -1)
                      {
                        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
                      }

                      v2 = v78;
                      v75 = ck_log_facility_data_repair;
                      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 0;
                        _os_log_debug_impl(&dword_1883EA000, v75, OS_LOG_TYPE_DEBUG, "Found operation in upload queue, cancelling", buf, 2u);
                      }

                      objc_msgSend_cancel(v60, v76, v77);

                      goto LABEL_65;
                    }
                  }

                  else
                  {
                  }
                }
              }

              v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v61, &v80, v92, 16);
              if (v57)
              {
                continue;
              }

              break;
            }
          }
        }

        v2 = v78;
        goto LABEL_65;
      }
    }

    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v88, v96, 16);
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_65:
}

id sub_188628470(dispatch_queue_t *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E695DFD8];
    v2 = sub_188627CB8(a1);
    v5 = objc_msgSend_allKeys(v2, v3, v4);
    v7 = objc_msgSend_setWithArray_(v1, v6, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

dispatch_queue_t *sub_1886284F0(dispatch_queue_t *a1)
{
  if (a1)
  {
    v2 = a1;
    dispatch_assert_queue_V2(a1[10]);
    a1 = v2[4];
    v1 = vars8;
  }

  return a1;
}

dispatch_queue_t *sub_188628534(dispatch_queue_t *a1)
{
  if (a1)
  {
    v2 = a1;
    dispatch_assert_queue_V2(a1[10]);
    a1 = v2[5];
    v1 = vars8;
  }

  return a1;
}

dispatch_queue_t *sub_188628578(dispatch_queue_t *a1)
{
  if (a1)
  {
    v2 = a1;
    dispatch_assert_queue_V2(a1[10]);
    a1 = v2[2];
    v1 = vars8;
  }

  return a1;
}

id sub_1886285BC(dispatch_queue_t *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E695DFD8];
    v2 = sub_188628578(a1);
    v5 = objc_msgSend_allKeys(v2, v3, v4);
    v7 = objc_msgSend_setWithArray_(v1, v6, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

dispatch_queue_t *sub_18862863C(dispatch_queue_t *a1)
{
  if (a1)
  {
    v2 = a1;
    dispatch_assert_queue_V2(a1[10]);
    a1 = v2[3];
    v1 = vars8;
  }

  return a1;
}

void sub_18862868C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v7 = *(a1 + 80);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_18862874C;
    v8[3] = &unk_1E70BF240;
    v8[4] = a1;
    v10 = a2;
    v9 = v5;
    ck_call_or_dispatch_sync_if_not_key(v7, (a1 + 80), v8);
  }
}

void sub_18862874C(uint64_t a1)
{
  v161 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
  {
    v125 = v2;
    v126 = objc_opt_class();
    v128 = objc_msgSend_nameForEvent_(v126, v127, *(a1 + 48));
    v129 = v128;
    v130 = *(a1 + 40);
    v131 = @"with object ";
    v132 = v130 == 0;
    if (!v130)
    {
      v131 = &stru_1EFA32970;
      v130 = &stru_1EFA32970;
    }

    *from = 138544130;
    *&from[4] = v128;
    *&from[12] = 2114;
    *&from[14] = v131;
    if (v132)
    {
      v133 = &stru_1EFA32970;
    }

    else
    {
      v133 = @" ";
    }

    *&from[22] = 2112;
    v159 = v130;
    LOWORD(v160) = 2112;
    *(&v160 + 2) = v133;
    _os_log_debug_impl(&dword_1883EA000, v125, OS_LOG_TYPE_DEBUG, "Received %{public}@ event %{public}@%@%@in repair scheduler", from, 0x2Au);
  }

  v5 = *(a1 + 48);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v44 = *(a1 + 40);
      if (objc_msgSend_errorIsRetriableInNearFuture_(CKAssetRepairOperationUtilities, v45, v44))
      {
        v47 = *(a1 + 32);
        if (v47 && ((v48 = *(v47 + 120)) == 0 || (dispatch_source_cancel(v48), sub_188629480(*(a1 + 32), 0), (v47 = *(a1 + 32)) != 0)))
        {
          objc_msgSend_setSuspended_(*(v47 + 104), v46, 1);
        }

        else
        {
          objc_msgSend_setSuspended_(0, v46, 1);
        }

        v51 = objc_msgSend_userInfo(v44, v49, v50);
        v53 = objc_msgSend_objectForKeyedSubscript_(v51, v52, @"CKRetryAfter");
        objc_msgSend_doubleValue(v53, v54, v55);
        v59 = v58;
        if (v58 == 0.0)
        {
          objc_msgSend_defaultSuspensionTime(*(a1 + 32), v56, v57);
          v59 = v60;
        }

        objc_initWeak(&location, *(a1 + 32));
        v61 = *(a1 + 32);
        if (v61)
        {
          v62 = *(v61 + 80);
        }

        else
        {
          v62 = 0;
        }

        v63 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v62);
        v64 = dispatch_time(0, (v59 * 1000000000.0));
        dispatch_source_set_timer(v63, v64, (v59 * 1000000000.0), 0x3B9ACA00uLL);
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = sub_188629490;
        handler[3] = &unk_1E70BC680;
        objc_copyWeak(&v147, &location);
        dispatch_source_set_event_handler(v63, handler);
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v65 = ck_log_facility_data_repair;
        if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
        {
          *from = 134217984;
          *&from[4] = v59;
          _os_log_debug_impl(&dword_1883EA000, v65, OS_LOG_TYPE_DEBUG, "Suspending upload queue for %f", from, 0xCu);
        }

        dispatch_resume(v63);
        sub_188629480(*(a1 + 32), v63);
        objc_destroyWeak(&v147);

        objc_destroyWeak(&location);
      }
    }

    else if (v5 == 3)
    {
      v22 = *(a1 + 32);
      if (v22)
      {
        objc_msgSend_cancelAllOperations(*(v22 + 104), v3, v4);
      }

      else
      {
        objc_msgSend_cancelAllOperations(0, v3, v4);
      }

      v25 = *(a1 + 32);
      if (v25)
      {
        objc_msgSend_cancelAllOperations(*(v25 + 96), v23, v24);
      }

      else
      {
        objc_msgSend_cancelAllOperations(0, v23, v24);
      }

      v26 = sub_1886284F0(*(a1 + 32));
      objc_msgSend_removeAllObjects(v26, v27, v28);

      v29 = sub_188628534(*(a1 + 32));
      objc_msgSend_removeAllObjects(v29, v30, v31);

      v32 = sub_188627CB8(*(a1 + 32));
      objc_msgSend_removeAllObjects(v32, v33, v34);

      v35 = sub_18862863C(*(a1 + 32));
      objc_msgSend_removeAllObjects(v35, v36, v37);

      v40 = *(a1 + 32);
      if (v40)
      {
        objc_msgSend_removeAllObjects(*(v40 + 128), v38, v39);
      }

      else
      {
        objc_msgSend_removeAllObjects(0, v38, v39);
      }

      v42 = *(a1 + 32);
      if (v42)
      {
        v43 = *(v42 + 104);
        *from = MEMORY[0x1E69E9820];
        *&from[8] = 3221225472;
        *&from[16] = sub_18862B45C;
        v159 = &unk_1E70BC388;
        *&v160 = v42;
        objc_msgSend_addOperationWithBlock_(v43, v41, from);
      }
    }
  }

  else
  {
    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_88;
      }

      v6 = *(a1 + 32);
      if (v6 && v6[14])
      {
        dispatch_source_cancel(v6[14]);
        sub_188629424(*(a1 + 32), 0);
        v6 = *(a1 + 32);
      }

      objc_msgSend_allRemainingUploadableAssets(v6, v3, v4);
      v152 = 0u;
      v153 = 0u;
      v151 = 0u;
      v7 = v150 = 0u;
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v150, v157, 16);
      if (v9)
      {
        v10 = 0;
        v11 = *v151;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v151 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v150 + 1) + 8 * i);
            v14 = objc_opt_class();
            v15 = sub_188628578(*(a1 + 32));
            v17 = objc_msgSend_objectForKeyedSubscript_(v15, v16, v13);
            v19 = objc_msgSend_estimatedSizeForAssetOrPackage_(v14, v18, v17);

            v10 += v19;
          }

          v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v20, &v150, v157, 16);
        }

        while (v9);
        v21 = v10 < 104857600;
      }

      else
      {
        v21 = 1;
      }

      v66 = sub_1886284F0(*(a1 + 32));
      if (objc_msgSend_count(v66, v67, v68))
      {
        v69 = *(a1 + 32);
        if (v69)
        {
          v69 = v69[13];
        }

        v70 = v69;
        if (objc_msgSend_operationCount(v70, v71, v72) || (v75 = objc_msgSend_count(v7, v73, v74), v75 >= objc_msgSend_repairBatchCountLimit(*(a1 + 32), v76, v77)))
        {
        }

        else
        {
          objc_opt_self();

          if (v21)
          {
            objc_initWeak(from, *(a1 + 32));
            v78 = *(a1 + 32);
            if (v78)
            {
              v79 = *(v78 + 80);
            }

            else
            {
              v79 = 0;
            }

            v80 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v79);
            objc_msgSend_requestTimeout(*(a1 + 32), v81, v82);
            v84 = dispatch_time(0, (v83 * 1000000000.0));
            objc_msgSend_requestTimeout(*(a1 + 32), v85, v86);
            dispatch_source_set_timer(v80, v84, (v87 * 1000000000.0), 0x3B9ACA00uLL);
            v148[0] = MEMORY[0x1E69E9820];
            v148[1] = 3221225472;
            v148[2] = sub_188629434;
            v148[3] = &unk_1E70BC680;
            objc_copyWeak(&v149, from);
            dispatch_source_set_event_handler(v80, v148);
            dispatch_resume(v80);
            sub_188629424(*(a1 + 32), v80);
            objc_destroyWeak(&v149);

            objc_destroyWeak(from);
          }
        }
      }

      else
      {
      }
    }

    v88 = *(a1 + 32);
    if (v88)
    {
      location.opaque[0] = 0;
      location.opaque[1] = &location;
      v155 = 0x2020000000;
      v156 = 0;
      v89 = *(v88 + 80);
      *from = MEMORY[0x1E69E9820];
      *&from[8] = 3221225472;
      *&from[16] = sub_18862CB94;
      v159 = &unk_1E70BF378;
      *&v160 = v88;
      *(&v160 + 1) = &location;
      ck_call_or_dispatch_sync_if_not_key(v89, (v88 + 80), from);

      v90 = *(location.opaque[1] + 24);
      _Block_object_dispose(&location, 8);
      v91 = *(a1 + 32);
      if (v91)
      {
        location.opaque[0] = 0;
        location.opaque[1] = &location;
        v155 = 0x2020000000;
        v156 = 0;
        v92 = *(v91 + 80);
        *from = MEMORY[0x1E69E9820];
        *&from[8] = 3221225472;
        *&from[16] = sub_18862CCD8;
        v159 = &unk_1E70BE500;
        *&v160 = v91;
        *(&v160 + 1) = &location;
        ck_call_or_dispatch_sync_if_not_key(v92, (v91 + 80), from);

        v91 = *(location.opaque[1] + 24);
        _Block_object_dispose(&location, 8);
        v93 = *(a1 + 32);
      }

      else
      {
        v93 = 0;
      }
    }

    else
    {
      v93 = 0;
      v90 = 0;
      v91 = 0;
    }

    v94 = sub_1886284F0(v93);
    v97 = objc_msgSend_count(v94, v95, v96);

    v100 = objc_msgSend_allRemainingUploadableAssets(*(a1 + 32), v98, v99);
    v103 = objc_msgSend_count(v100, v101, v102);

    v106 = objc_msgSend_repairBatchCountLimit(*(a1 + 32), v104, v105);
    if (v97 + v91 < objc_msgSend_cacheCountLimit(*(a1 + 32), v107, v108))
    {
      objc_opt_self();
      objc_opt_self();
      if (v90 <= 104857599)
      {
        v111 = objc_msgSend_cacheCountLimit(*(a1 + 32), v109, v110);
        v112 = *(a1 + 32);
        if (v112)
        {
          v113 = v106 - (v103 + v97);
          if (v113 <= 1)
          {
            v113 = 1;
          }

          if (v113 >= v111)
          {
            v114 = v111;
          }

          else
          {
            v114 = v113;
          }

          v115 = _os_activity_create(&dword_1883EA000, "client/data-repair-enqueue-requests", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
          location.opaque[0] = 0;
          location.opaque[1] = 0;
          os_activity_scope_enter(v115, &location);
          v116 = *(v112 + 80);
          *from = MEMORY[0x1E69E9820];
          *&from[8] = 3221225472;
          *&from[16] = sub_1886295BC;
          v159 = &unk_1E70BF2B8;
          *&v160 = v112;
          *(&v160 + 1) = v114;
          ck_call_or_dispatch_sync_if_not_key(v116, (v112 + 80), from);

          os_activity_scope_leave(&location);
        }
      }
    }

    v117 = *(a1 + 32);
    if (!v117)
    {
      goto LABEL_99;
    }

    v118 = *(v117 + 112);
    if (v118)
    {

      goto LABEL_88;
    }

    v119 = *(a1 + 32);
    if (v119)
    {
      v120 = objc_msgSend_operationCount(*(v119 + 104), v109, v110);
    }

    else
    {
LABEL_99:
      v120 = objc_msgSend_operationCount(0, v109, v110);
    }

    if (!v120)
    {
      v121 = *(a1 + 32);
      if (v121)
      {
        v122 = _os_activity_create(&dword_1883EA000, "client/data-repair-enqueue-uploads", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
        location.opaque[0] = 0;
        location.opaque[1] = 0;
        os_activity_scope_enter(v122, &location);
        WeakRetained = objc_loadWeakRetained((v121 + 64));
        if (WeakRetained)
        {
          v124 = *(v121 + 80);
          *from = MEMORY[0x1E69E9820];
          *&from[8] = 3221225472;
          *&from[16] = sub_188629F30;
          v159 = &unk_1E70BEEC0;
          *&v160 = v121;
          *(&v160 + 1) = WeakRetained;
          ck_call_or_dispatch_sync_if_not_key(v124, (v121 + 80), from);
        }

        else
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v134 = ck_log_facility_data_repair;
          if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
          {
            *from = 0;
            _os_log_debug_impl(&dword_1883EA000, v134, OS_LOG_TYPE_DEBUG, "Not scheduling upload batch due to nil container", from, 2u);
          }
        }

        os_activity_scope_leave(&location);
      }
    }
  }

LABEL_88:
  v135 = sub_188628470(*(a1 + 32));
  if (objc_msgSend_count(v135, v136, v137))
  {
  }

  else
  {
    v140 = objc_msgSend_delegate(*(a1 + 32), v138, v139);
    v141 = v140 == 0;

    if (!v141)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v142 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        *from = 0;
        _os_log_debug_impl(&dword_1883EA000, v142, OS_LOG_TYPE_DEBUG, "Completed all enqueued repairs", from, 2u);
      }

      v143 = *(a1 + 32);
      if (v143)
      {
        v144 = *(v143 + 88);
      }

      else
      {
        v144 = 0;
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_188629568;
      block[3] = &unk_1E70BC388;
      block[4] = v143;
      dispatch_async(v144, block);
    }
  }
}

void sub_188629424(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 112), a2);
  }
}

void sub_188629434(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_188629424(WeakRetained, 0);
  objc_msgSend_tickle(WeakRetained, v1, v2);
}