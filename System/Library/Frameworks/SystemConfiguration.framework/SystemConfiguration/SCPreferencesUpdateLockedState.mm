@interface SCPreferencesUpdateLockedState
@end

@implementation SCPreferencesUpdateLockedState

uint64_t ____SCPreferencesUpdateLockedState_block_invoke()
{
  __SCPreferencesUpdateLockedState_lockedQueue = dispatch_queue_create("SCPreferences locked state queue", 0);
  __SCPreferencesUpdateLockedState_lockedState = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  return os_state_add_handler();
}

_DWORD *____SCPreferencesUpdateLockedState_block_invoke_2()
{
  v31 = *MEMORY[0x1E69E9840];
  v30 = 0;
  if (!CFDictionaryGetCount(__SCPreferencesUpdateLockedState_lockedState))
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(0, 0);
  CFDictionaryApplyFunction(__SCPreferencesUpdateLockedState_lockedState, appendLockedPreferences, Mutable);
  v1 = _SCSerialize(Mutable, &v30, 0, 0);
  CFRelease(Mutable);
  v2 = 0;
  v3 = 200;
  if (v1 && v30)
  {
    Length = CFDataGetLength(v30);
    v3 = Length + 200;
    if ((Length + 200) > 0x8000)
    {
      v5 = __log_SCPreferences_log;
      if (!__log_SCPreferences_log)
      {
        v5 = os_log_create("com.apple.SystemConfiguration", "SCPreferences");
        __log_SCPreferences_log = v5;
      }

      v6 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v5, v6))
      {
        v7 = _os_log_pack_size();
        v13 = &v30 - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
        v14 = __error();
        v15 = _os_log_pack_fill(v13, v7, *v14, &dword_1AD2AD000, "locked SCPreferences : state data too large (%zu > %zu)", v30, v31);
        *v15 = 134218240;
        *(v15 + 4) = v3;
        *(v15 + 12) = 2048;
        *(v15 + 14) = 0x8000;
        __SC_log_send(3, v5, v6, v13);
      }

      goto LABEL_18;
    }

    v2 = Length;
  }

  v17 = malloc_type_calloc(1uLL, v3, 0x73D83B14uLL);
  if (v17)
  {
    v16 = v17;
    *v17 = 1;
    v17[1] = v2;
    __strlcpy_chk();
    if (v2 >= 1)
    {
      BytePtr = CFDataGetBytePtr(v30);
      memcpy(v16 + 50, BytePtr, v2);
    }

    goto LABEL_19;
  }

  v19 = __log_SCPreferences_log;
  if (!__log_SCPreferences_log)
  {
    v19 = os_log_create("com.apple.SystemConfiguration", "SCPreferences");
    __log_SCPreferences_log = v19;
  }

  v20 = _SC_syslog_os_log_mapping(3);
  if (__SC_log_enabled(3, v19, v20))
  {
    v21 = _os_log_pack_size();
    v27 = &v30 - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = __error();
    *_os_log_pack_fill(v27, v21, *v28, &dword_1AD2AD000, "locked SCPreferences: could not allocate state data") = 0;
    __SC_log_send(3, v19, v20, v27);
  }

LABEL_18:
  v16 = 0;
LABEL_19:
  if (v30)
  {
    CFRelease(v30);
  }

  return v16;
}

void ____SCPreferencesUpdateLockedState_block_invoke_41(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = CFCopyDescription(*(a1 + 32));
    CFDictionarySetValue(__SCPreferencesUpdateLockedState_lockedState, *(a1 + 32), v2);

    CFRelease(v2);
  }

  else
  {
    v3 = __SCPreferencesUpdateLockedState_lockedState;
    v4 = *(a1 + 32);

    CFDictionaryRemoveValue(v3, v4);
  }
}

@end