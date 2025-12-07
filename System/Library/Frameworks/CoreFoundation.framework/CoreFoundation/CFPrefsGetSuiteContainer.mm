@interface CFPrefsGetSuiteContainer
@end

@implementation CFPrefsGetSuiteContainer

void ___CFPrefsGetSuiteContainer_block_invoke(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  Mutable = *(a2 + 16);
  if (Mutable)
  {
    Value = CFDictionaryGetValue(Mutable, *(a1 + 48));
    if (Value)
    {
      if (Value != &__kCFNull)
      {
        *(*(*(a1 + 40) + 8) + 24) = CFURLGetFileSystemRepresentation(Value, 1u, *(a1 + 56), *(a1 + 64)) != 0;
        return;
      }

      goto LABEL_12;
    }
  }

  _CFPrefsGetEntitlementForMessageWithLockedContext(*(a1 + 32), 0, a2);
  v6 = *(a2 + 40);
  if (!v6 || (v7 = CFRetain(v6)) == 0)
  {
LABEL_12:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    return;
  }

  v8 = v7;
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *(a2 + 16) = Mutable;
  }

  v9 = *(a1 + 80);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v15 = ___CFPrefsGetSuiteContainer_block_invoke_2;
  v16 = &unk_1E6DD2160;
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  v17 = *(a1 + 32);
  v18 = v10;
  v19 = *(a1 + 48);
  v20 = v11;
  v21 = Mutable;
  if (!v19)
  {
    ___CFPrefsGetSuiteContainer_block_invoke_cold_1();
  }

  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    Count = CFArrayGetCount(v8);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = ___CFPrefsIfClientIsInSecurityApplicationGroup_block_invoke;
    v22[3] = &unk_1E6DD1658;
    v22[4] = &v23;
    v22[5] = v19;
    CFArrayApply(v8, 0, Count, v22);
    if (v24[3])
    {
      v12 = v15(v14);
    }

    else
    {
      v12 = 0;
    }

    _Block_object_dispose(&v23, 8);
  }

  *(*(*(a1 + 40) + 8) + 24) = v12;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    CFDictionarySetValue(Mutable, *(a1 + 48), &__kCFNull);
  }

  CFRelease(v8);
}

BOOL ___CFPrefsGetSuiteContainer_block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  remote_connection = xpc_dictionary_get_remote_connection(v2);
  if (!remote_connection)
  {
    value = xpc_dictionary_get_value(v2, "connection");
    if (!value || (remote_connection = value, object_getClass(value) != MEMORY[0x1E69E9E68]))
    {
      ___CFPrefsGetSuiteContainer_block_invoke_2_cold_3();
    }
  }

  euid = xpc_connection_get_euid(remote_connection);
  if (!euid)
  {
    memset(buffer, 0, sizeof(buffer));
    v10 = *(a1 + 32);
    length = 0;
    v21 = 0u;
    v22 = 0u;
    data = xpc_dictionary_get_data(v10, "CFPreferencesAuditToken", &length);
    if (data && length == 32)
    {
      v12 = data[1];
      v21 = *data;
      v22 = v12;
    }

    else
    {
      if (!xpc_dictionary_get_remote_connection(v10))
      {
        v13 = xpc_dictionary_get_value(v10, "connection");
        if (!v13 || object_getClass(v13) != MEMORY[0x1E69E9E68])
        {
          ___CFPrefsGetSuiteContainer_block_invoke_2_cold_1();
        }
      }

      xpc_connection_get_audit_token();
    }

    v14 = DWORD1(v22);
    v15 = proc_name(SDWORD1(v22), buffer, 0x100u);
    v17 = _CFPrefsDaemonLog(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      ___CFPrefsGetSuiteContainer_block_invoke_2_cold_2(buffer, v14, v17);
    }

    return 0;
  }

  v6 = _CFCreateContainerURLForSecurityApplicationIdentifierGroupIdentifierAndUser(*(a1 + 40), *(a1 + 48), euid);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = CFURLGetFileSystemRepresentation(v6, 1u, *(a1 + 56), *(a1 + 64));
  v9 = v8 != 0;
  if (v8)
  {
    CFDictionarySetValue(*(a1 + 72), *(a1 + 48), v7);
  }

  CFRelease(v7);
  return v9;
}

void ___CFPrefsGetSuiteContainer_block_invoke_2_cold_2(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136446466;
  v4 = a1;
  v5 = 1026;
  v6 = a2;
  _os_log_error_impl(&dword_1830E6000, log, OS_LOG_TYPE_ERROR, "Process %{public}s (%{public}d) running as root is attempting to look up an app group container. That's not supported", &v3, 0x12u);
}

@end