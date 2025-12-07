uint64_t ckb_sendRedirectCallbackOnRequestWithBossMutex(const void *a1, const void *a2, void *a3, NSObject *a4, uint64_t a5)
{
  v12[16] = *MEMORY[0x1E69E9840];
  if (dword_1EAF16CF0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  __copy_assignment_8_8_t0w8_pa0_16609_8_pa0_37959_16_pa0_51628_24(v12, a3);
  result = ckb_sendStatusCallbackDispatchWithBossMutex(a1, a2, v12, a4, a5, 0);
  if (result)
  {
    return FigUserCrashWithMessage("[💥 CKB assert]: { noErr == err } : There was an error notifying the bossFromAsset client to start using the client-managed boss to process requests moving forward");
  }

  return result;
}

uint64_t ckb_getExistingKeyIfAnyWithBossMutex(uint64_t a1, uint64_t a2, const void *a3, int a4, uint64_t *a5, void *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  if (!a5)
  {
    ckb_getExistingKeyIfAnyWithBossMutex_cold_3(&v24);
    return v24;
  }

  if (!a6)
  {
    ckb_getExistingKeyIfAnyWithBossMutex_cold_2(&v24);
    return v24;
  }

  v12 = *(DerivedStorage + 104);
  if (!a4)
  {
    Value = CFDictionaryGetValue(v12, a3);
    if (Value)
    {
      ValueAtIndex = Value;
      ContentKey = ckg_getContentKey(Value, a2, &v23);
      if (ContentKey)
      {
        return ContentKey;
      }

      v19 = v23;
      if (!v23)
      {
        return ContentKey;
      }

      v13 = 0;
LABEL_15:
      ContentKey = 0;
      *a5 = v19;
      *a6 = ValueAtIndex;
      if (!v13)
      {
        return ContentKey;
      }

      goto LABEL_16;
    }

    ckb_getExistingKeyIfAnyWithBossMutex_cold_1(&v24);
    return v24;
  }

  v13 = FigCFDictionaryCopyArrayOfValues();
  Count = CFArrayGetCount(v13);
  if (Count < 1)
  {
LABEL_9:
    ContentKey = 0;
    if (!v13)
    {
      return ContentKey;
    }

    goto LABEL_16;
  }

  v15 = Count;
  v16 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v13, v16);
    v18 = ckg_getContentKey(ValueAtIndex, a2, &v23);
    if (v18)
    {
      break;
    }

    v19 = v23;
    if (v23)
    {
      goto LABEL_15;
    }

    if (v15 == ++v16)
    {
      goto LABEL_9;
    }
  }

  ContentKey = v18;
  if (v13)
  {
LABEL_16:
    CFRelease(v13);
  }

  return ContentKey;
}

uint64_t ckb_registerAndGetNewRequestWithBossMutex(const void *a1, uint64_t *a2, void *a3, const void *a4, const void *a5, const void *a6, char a7, uint64_t *a8)
{
  v51 = *MEMORY[0x1E69E9840];
  v16 = FigAtomicIncrement64();
  cf = a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v45 = a3;
  if (!a3)
  {
    ckb_registerAndGetNewRequestWithBossMutex_cold_2(context);
    return context[0];
  }

  if (!a8)
  {
    ckb_registerAndGetNewRequestWithBossMutex_cold_1(context);
    return context[0];
  }

  v18 = DerivedStorage;
  v44 = a8;
  v19 = CFGetAllocator(cf);
  v20 = v45[2];
  v43 = *(v18 + 152);
  *context = xmmword_1E747EF10;
  if (ckr_getTypeID_once != -1)
  {
    dispatch_once_f(&ckr_getTypeID_once, context, ckbutil_registerClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v22 = a2[2];
    if (v22)
    {
      v22 = CFRetain(v22);
    }

    *(Instance + 16) = v22;
    *(Instance + 24) = CFRetain(a2);
    *(Instance + 32) = v16;
    *(Instance + 48) = v20;
    *(Instance + 72) = a7;
    v23 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(Instance + 40) = v23;
    if (v23)
    {
      v24 = a4 ? CFRetain(a4) : 0;
      *(Instance + 136) = v24;
      v25 = a5 ? CFRetain(a5) : 0;
      *(Instance + 160) = v25;
      v26 = a6 ? CFRetain(a6) : 0;
      *(Instance + 168) = v26;
      *(Instance + 80) = 1;
      Mutable = CFDictionaryCreateMutable(v19, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(Instance + 120) = Mutable;
      if (Mutable)
      {
        v28 = CMBaseObjectGetDerivedStorage();
        v29 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s/%llu_%@", "CKR", v16, *(v28 + 184));
        v30 = v44;
        if (!v29)
        {
          FigUserCrashWithMessage("[💥 CKB assert]: { NULL != loggingIdentifier } : Failed to allocate a logging identifier for a new FigContentKeyRequest");
        }

        *(Instance + 248) = v29;
        *(Instance + 256) = v43;
        FigCFDictionarySetBoolean();
        *(Instance + 216) = 0;
        *(Instance + 224) = Instance + 216;
        v48 = 0;
        v49 = 0;
        v47 = 0;
        v31 = ckbutil_keyGroupID_copyLoggingDescription(*(Instance + 48));
        FigCFDictionaryGetBooleanIfPresent();
        ckbutil_contentKeySpecifier_copyLoggingArguments(*(Instance + 16), &v49, &v48, &v47);
        if (dword_1EAF16CF0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (v31)
        {
          CFRelease(v31);
        }

        v33 = v45;
        if (v47)
        {
          CFRelease(v47);
        }

        goto LABEL_27;
      }
    }

    v30 = v44;
  }

  else
  {
    v30 = v44;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, v41, v42);
  v35 = v37;
  if (v37)
  {
    v48 = 0;
    v49 = 0;
    v47 = 0;
    ckbutil_contentKeySpecifier_copyLoggingArguments(a2[2], &v49, &v48, &v47);
    v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
    v39 = v47;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (v39)
    {
      CFRelease(v39);
    }

    v30 = v44;
  }

  if (Instance)
  {
    CFRelease(Instance);
  }

  v33 = v45;
  if (!v35)
  {
    Instance = 0;
LABEL_27:
    v34 = CMBaseObjectGetDerivedStorage();
    v35 = ckg_setRequest(v33, Instance);
    if (v35)
    {
      if (Instance)
      {
        CFRelease(Instance);
      }
    }

    else
    {
      CFDictionarySetValue(*(v34 + 112), *(Instance + 32), v33);
      CFRelease(Instance);
      *v30 = Instance;
    }
  }

  return v35;
}

void ckb_transitionRequestToTerminalStateWithOSStatusWithBossMutex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  cf = 0;
  if (a4)
  {
    FigCreateErrorForOSStatus(a4, &cf);
    v7 = cf;
  }

  ckb_transitionRequestToTerminalStateWithBossMutex(a1, a2, a3, v7);
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t ckb_startRequestWithMutexWithBossMutex(const void *a1, const void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      *(a3 + 232) = CFAbsoluteTimeGetCurrent();
      ckb_processRequestViaNextHandlerWithBossMutex(a1, a2, a3);
      return 0;
    }

    else
    {
      ckb_startRequestWithMutexWithBossMutex_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    ckb_startRequestWithMutexWithBossMutex_cold_2(&v8);
    return v8;
  }
}

void ckg_finalize(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = FigCFDictionaryCopyArrayOfValues();
  v19 = a1;
  v3 = FigCFDictionaryCopyArrayOfValues();
  if (dword_1EAF16CF0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = v19[4];
  if (v5)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v6)
    {
      v6(v5);
    }

    v7 = v19[4];
    if (v7)
    {
      CFRelease(v7);
    }
  }

  if (CFArrayGetCount(v3) >= 1)
  {
    v8 = 0;
    do
    {
      CFArrayGetValueAtIndex(v3, v8);
      if (dword_1EAF16CF0)
      {
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      ++v8;
    }

    while (v8 < CFArrayGetCount(v3));
  }

  v10 = v19[5];
  if (v10)
  {
    CFRelease(v10);
  }

  if (CFArrayGetCount(v2) >= 1)
  {
    v11 = 0;
    do
    {
      CFArrayGetValueAtIndex(v2, v11);
      if (dword_1EAF16CF0)
      {
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      ++v11;
    }

    while (v11 < CFArrayGetCount(v2));
  }

  v13 = v19[6];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = v19[7];
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = v19[9];
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = v19[3];
  if (v16)
  {
    CFRelease(v16);
  }

  if (dword_1EAF16CF0)
  {
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v18 = v19[10];
  if (v18)
  {
    CFRelease(v18);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t ckg_getRequestByKeySpecifier(uint64_t a1, const void *a2, void *a3)
{
  if (a1)
  {
    if (a3)
    {
      Value = CFDictionaryGetValue(*(a1 + 56), a2);
      result = 0;
      *a3 = Value;
    }

    else
    {
      ckg_getRequestByKeySpecifier_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    ckg_getRequestByKeySpecifier_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t ckb_sendStatusCallbackDispatchWithBossMutex(const void *a1, const void *a2, void *a3, NSObject *a4, uint64_t a5, const void *a6)
{
  if (!a2 || !a4)
  {
    ckb_sendStatusCallbackDispatchWithBossMutex_cold_2(&v22);
    return v22;
  }

  if (!a5)
  {
    ckb_sendStatusCallbackDispatchWithBossMutex_cold_1(&v21);
    return v21;
  }

  v12 = malloc_type_calloc(1uLL, 0xD8uLL, 0x10E0040C5177DA7uLL);
  if (!v12)
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { rec != NULL } : Failed to create rec to send status callbacks.");
    if (a1)
    {
      goto LABEL_6;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  if (!a1)
  {
    goto LABEL_8;
  }

LABEL_6:
  v13 = CFRetain(a1);
LABEL_9:
  *v12 = v13;
  v12[2] = CFRetain(a2);
  __copy_assignment_8_8_t0w8_pa0_16609_8_pa0_37959_16_pa0_51628_24(v12 + 3, a3);
  v12[14] = CFRetain(a5);
  if (a6)
  {
    v14 = CFRetain(a6);
  }

  else
  {
    v14 = 0;
  }

  v12[17] = v14;
  if (_os_feature_enabled_impl())
  {
    *(v12 + 8) = *(CMBaseObjectGetDerivedStorage() + 192);
    *(v12 + 128) = *(a5 + 257);
    v15 = *(a5 + 176);
    if (v15)
    {
      v15 = CFRetain(v15);
    }

    v12[18] = v15;
    v16 = *(a5 + 16);
    if (v16)
    {
      v16 = CFRetain(v16);
    }

    v12[21] = v16;
    v12[15] = *(a5 + 32);
    v17 = *(a5 + 64);
    if (v17)
    {
      v12[22] = CFRetain(v17);
      v18 = v17[9];
      if (v18)
      {
        v18 = CFRetain(v18);
      }

      v12[25] = v18;
      v19 = v17[12];
      if (v19)
      {
        v19 = CFRetain(v19);
      }

      v12[23] = v19;
    }
  }

  dispatch_async_f(a4, v12, ckb_sendStatusCallbackOnQueue);
  return 0;
}

void ckb_sendStatusCallbackOnQueue(void *a1)
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    if (*(a1 + 128))
    {
      if (*(a1 + 8))
      {
        ckb_sendUpdateBossCallbackOnQueue(a1);
      }
    }

    else if (*(a1 + 8))
    {
      ckb_sendUpdateBossCallbackOnQueue(a1);
      goto LABEL_11;
    }

    ckb_sendSuccessOrFailCallbackOnQueue(a1);
  }

  else
  {
    v9 = a1[14];
    if (v9[22])
    {
      v10 = a1[5];
      if (v10)
      {
        v10(a1[2], *a1, v9[2], v9[4]);
      }
    }

    else
    {
      v19 = v9[8];
      if (v19)
      {
        if (*(v19 + 72) || (KeySystem = FigContentKeySpecifierGetKeySystem(*(v19 + 16)), KeySystem == 3))
        {
          v28 = a1[4];
          if (v28)
          {
            v28(a1[2], *a1, *(a1[14] + 16), *(a1[14] + 32), *(v19 + 72), a1[17]);
          }
        }

        else
        {
          ckb_sendStatusCallbackOnQueue_cold_1(KeySystem, v21, v22, v23, v24, v25, v26, v27, v29, v30, SHIDWORD(v30), vars0);
        }
      }

      else
      {
        ckb_sendStatusCallbackOnQueue_cold_2(v2, v3, v4, v5, 0, v6, v7, v8, v29, v30, SHIDWORD(v30), vars0);
      }
    }
  }

LABEL_11:
  if (*a1)
  {
    CFRelease(*a1);
  }

  v11 = a1[14];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[2];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[17];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a1[21];
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = a1[18];
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = a1[22];
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = a1[25];
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = a1[23];
  if (v18)
  {
    CFRelease(v18);
  }

  free(a1);
}

void ckb_sendUpdateBossCallbackOnQueue(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { FigFeatureFlagsIsContentKeyBossPerformanceOptimizationEnabled() } : Content key boss performance feature flag must be enabled to execute this method");
  }

  if (!*(DerivedStorage + 160))
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { NULL != storage->clientManagedBossWeak } : Weak-reference to client-managed boss on the stale bossFromAsset is null.");
  }

  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v11 = v3;
    (*(a1 + 48))(v3, *(a1 + 16));

    CFRelease(v11);
  }

  else
  {
    ckb_sendUpdateBossCallbackOnQueue_cold_1(0, v4, v5, v6, v7, v8, v9, v10, v12, v13, SHIDWORD(v13), vars0);
  }
}

uint64_t ckb_sendSuccessOrFailCallbackOnQueue(uint64_t *a1)
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { FigFeatureFlagsIsContentKeyBossPerformanceOptimizationEnabled() } : Content key boss performance feature flag must be enabled to execute this method");
  }

  if (a1[18])
  {
    v2 = a1[5];
    v3 = a1[2];
    v4 = *a1;
    v5 = a1[21];
    v6 = a1[15];

    return v2(v3, v4, v5, v6);
  }

  else
  {
    if (!a1[22])
    {
      FigUserCrashWithMessage("[💥 CKB assert]: { NULL != rec->key } : Can't issue the didSucceed callback because the key was unexpectedly NULL");
    }

    if (!a1[25] && FigContentKeySpecifierGetKeySystem(a1[21]) != 3)
    {
      FigUserCrashWithMessage("[💥 CKB assert]: { NULL != rec->cryptor || FigContentKeySpecifierGetKeySystem(rec->keySpecifier) == kFigContentKeySystem_AuthorizationToken } : Can not issue the didSucceed callback because the cryptor on this key %@ was unexpectedly NULL. This key system requires a cryptor for decryption; we should have set one up.", a1[23]);
    }

    v8 = a1[4];
    v9 = a1[2];
    v10 = *a1;
    v11 = a1[21];
    v12 = a1[15];
    v13 = a1[25];
    v14 = a1[17];

    return v8(v9, v10, v11, v12, v13, v14);
  }
}

uint64_t ckg_getContentKey(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    if (a3)
    {
      if (a2)
      {
        v4 = *(a1 + 40);
        Identifier = FigContentKeySpecifierGetIdentifier(a2);
        Value = CFDictionaryGetValue(v4, Identifier);
        result = 0;
        *a3 = Value;
      }

      else
      {
        ckg_getContentKey_cold_1(&v8);
        return v8;
      }
    }

    else
    {
      ckg_getContentKey_cold_2(&v9);
      return v9;
    }
  }

  else
  {
    ckg_getContentKey_cold_3(&v10);
    return v10;
  }

  return result;
}

void ck_persistentKeyUpdatedCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v21[29] = *MEMORY[0x1E69E9840];
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v7)
  {
    v8 = v7;
    Value = CFDictionaryGetValue(a5, *MEMORY[0x1E6961080]);
    if (Value)
    {
      v10 = Value;
      if (dword_1EAF16CF0)
      {
        LODWORD(v21[0]) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v12 = a2[2];
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v14 = FigSimpleMutexLock();
      if (v12)
      {
        if (*(DerivedStorage + 24) && *(DerivedStorage + 88) && *(DerivedStorage + 56))
        {
          v15 = malloc_type_calloc(1uLL, 0xD8uLL, 0x10E0040C5177DA7uLL);
          if (v15)
          {
            v16 = v15;
            *v15 = CFRetain(v8);
            v16[21] = CFRetain(v12);
            v16[24] = CFRetain(v10);
            v17 = FigCFWeakReferenceHolderCopyReferencedObject();
            v16[2] = v17;
            if (v17)
            {
              *type = 0;
              v21[0] = 0;
              cf = 0;
              ckbutil_contentKeySpecifier_copyLoggingArguments(v12, v21, type, &cf);
              if (dword_1EAF16CF0)
              {
                v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              if (cf)
              {
                CFRelease(cf);
              }

              dispatch_async_f(*(DerivedStorage + 88), v16, ckb_sendDidUpdatePersistableKeyOnQueueWithBossMutex);
            }

            else
            {
              ck_persistentKeyUpdatedCallback_cold_1(v16, v16 + 21, v16 + 24, v16 + 2);
            }
          }

          else
          {
            ck_persistentKeyUpdatedCallback_cold_2();
          }
        }

        else
        {
          ck_persistentKeyUpdatedCallback_cold_3(v14);
        }
      }

      else
      {
        ck_persistentKeyUpdatedCallback_cold_4(v14);
      }

      FigSimpleMutexUnlock();
    }

    CFRelease(v8);
  }
}

void ck_externalProtectionStateChangedCallback(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    v5 = a2[2];
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = FigSimpleMutexLock();
    if (v5)
    {
      if (*(DerivedStorage + 24) && *(DerivedStorage + 88) && *(DerivedStorage + 80))
      {
        v15 = malloc_type_calloc(1uLL, 0xD8uLL, 0x10E0040C5177DA7uLL);
        if (v15)
        {
          v23 = v15;
          *v15 = CFRetain(v4);
          v23[21] = CFRetain(v5);
          v24 = FigCFWeakReferenceHolderCopyReferencedObject();
          v23[2] = v24;
          if (v24)
          {
            if (dword_1EAF16CF0)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            dispatch_async_f(*(DerivedStorage + 88), v23, ckb_sendDidExternalProtectionStatusChangeOnQueueWithBossMutex);
          }

          else
          {
            ck_externalProtectionStateChangedCallback_cold_1(v23, v23 + 21, v23 + 2);
          }
        }

        else
        {
          ck_externalProtectionStateChangedCallback_cold_2(0, v16, v17, v18, v19, v20, v21, v22, v26, v27, SHIDWORD(v27), v28);
        }
      }
    }

    else
    {
      ck_externalProtectionStateChangedCallback_cold_3(v7, v8, v9, v10, v11, v12, v13, v14, v26, v27, SHIDWORD(v27), v28);
    }

    FigSimpleMutexUnlock();
    CFRelease(v4);
  }
}

void ckb_sendDidUpdatePersistableKeyOnQueueWithBossMutex(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  (*(DerivedStorage + 56))(a1[2], *a1, a1[21], a1[24]);
  if (*a1)
  {
    CFRelease(*a1);
  }

  v3 = a1[21];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[24];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

void ckb_sendDidExternalProtectionStatusChangeOnQueueWithBossMutex(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  (*(DerivedStorage + 80))(a1[2], *a1, a1[21]);
  if (*a1)
  {
    CFRelease(*a1);
  }

  v3 = a1[21];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

void ckr_finalize(void *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  cf = FigCFWeakReferenceHolderCopyReferencedObject();
  v2 = a1[16];
  if (v2)
  {
    v3 = a1[11];
    if (v3)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v4)
      {
        v4(v2, v3);
      }
    }
  }

  v5 = a1[2];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[3];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[8];
  v8 = &unk_1EAF16000;
  v9 = &unk_1EAF16000;
  if (v7 && dword_1EAF16CF0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v7 = a1[8];
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v11 = a1[16];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[17];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[18];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a1[19];
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = a1[20];
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = a1[12];
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = a1[21];
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = a1[22];
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = a1[23];
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = a1[24];
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = a1[25];
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = a1[14];
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = a1[15];
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = a1[5];
  if (v24)
  {
    CFRelease(v24);
  }

  ckr_cancelAndReleaseRequestTimer(a1);
  v25 = a1[27];
  if (v25)
  {
    do
    {
      v26 = *v25;
      v27 = FigCFWeakReferenceHolderCopyReferencedObject();
      v28 = v27;
      v29 = *v25;
      v30 = v25[1];
      v31 = (*v25 + 8);
      if (!*v25)
      {
        v31 = a1 + 28;
      }

      *v31 = v30;
      *v30 = v29;
      if (v27)
      {
        v32 = v8[828] == 0;
      }

      else
      {
        v32 = 1;
      }

      if (!v32)
      {
        v33 = v8;
        v34 = v9;
        v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
        v9 = v34;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v8 = v33;
      }

      v36 = v25[7];
      if (v36)
      {
        dispatch_release(v36);
      }

      v37 = v25[2];
      if (v37)
      {
        CFRelease(v37);
      }

      free(v25);
      if (v28)
      {
        CFRelease(v28);
      }

      v25 = v26;
    }

    while (v26);
  }

  if (v8[828])
  {
    v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v39 = a1[31];
  if (v39)
  {
    CFRelease(v39);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void ckbutil_cancelAndReleaseTimer(dispatch_object_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      dispatch_source_cancel(v2);
      if (*a1)
      {
        dispatch_release(*a1);
        *a1 = 0;
      }
    }
  }
}

uint64_t ckg_setRequest(uint64_t a1, const void **a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    ckg_setRequest_cold_4(v7);
    return v7[0];
  }

  if (!a2)
  {
    ckg_setRequest_cold_3(v7);
    return v7[0];
  }

  if (CFDictionaryContainsKey(*(a1 + 48), a2[4]))
  {
    ckg_setRequest_cold_1(v7);
    return v7[0];
  }

  if (CFDictionaryContainsKey(*(a1 + 56), a2[2]))
  {
    ckg_setRequest_cold_2(v7);
    return v7[0];
  }

  CFDictionarySetValue(*(a1 + 48), a2[4], a2);
  CFDictionarySetValue(*(a1 + 56), a2[2], a2);
  v4 = ckbutil_keyGroupID_copyLoggingDescription(*(a1 + 16));
  if (dword_1EAF16CF0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t ckbutil_errorIsKeyCallbacksExistSentinel(__CFError *a1)
{
  CFErrorGetDomain(a1);
  result = FigCFEqual();
  if (result)
  {
    return CFErrorGetCode(a1) == -17297;
  }

  return result;
}

uint64_t ckb_removeRequestReferencesWithBossMutex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFDictionaryRemoveValue(*(DerivedStorage + 112), *(a3 + 32));

  return ckg_removeRequest(a2, a3);
}

uint64_t ckg_removeRequest(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    ckg_removeRequest_cold_2(v7);
    return v7[0];
  }

  if (!a2)
  {
    ckg_removeRequest_cold_1(v7);
    return v7[0];
  }

  v4 = ckbutil_keyGroupID_copyLoggingDescription(*(a1 + 16));
  if (dword_1EAF16CF0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v4)
  {
    CFRelease(v4);
  }

  CFDictionaryRemoveValue(*(a1 + 48), *(a2 + 32));
  CFDictionaryRemoveValue(*(a1 + 56), *(a2 + 16));
  return 0;
}

void ckb_processRequestViaNextHandlerWithBossMutex(const void *a1, const void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    ckb_processRequestViaNextHandlerWithBossMutex_cold_3(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v17, v18, SHIDWORD(v18), v19);
    return;
  }

  if (!a3)
  {
    ckb_processRequestViaNextHandlerWithBossMutex_cold_2(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v17, v18, SHIDWORD(v18), v19);
    return;
  }

  v14 = DerivedStorage;
  if (_os_feature_enabled_impl() && *(v14 + 176))
  {
    v15 = a3[10];
    if (v15 > 3)
    {
      if (v15 != 4 || !ckb_canKeyRequestBeSatisfiedViaRequestHandlingCallbacksWithBossMutex(a1, a3))
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v15 != 1)
      {
        if (v15 == 2)
        {
          goto LABEL_8;
        }

LABEL_37:

        ckb_completeProcessingRequestWithBossMutex(a1, a2, a3);
        return;
      }

      if (ckb_canRequestBeSatisfiedViaHTTPWithBossMutex(a1, a3))
      {
        goto LABEL_24;
      }

      if (!ckb_canKeyRequestBeSatisfiedViaRequestHandlingCallbacksWithBossMutex(a1, a3))
      {
LABEL_8:
        if (!ckb_canRequestBeSatisfiedViaCustomURLLoaderWithBossMutex(a1, a3))
        {
          goto LABEL_37;
        }

        goto LABEL_17;
      }
    }
  }

  else
  {
    v16 = a3[10];
    if (v16 == 1)
    {
      if (ckb_canRequestBeSatisfiedViaHTTPWithBossMutex(a1, a3))
      {
        a3[10] = 2;
LABEL_24:

        ckb_sendKeyRequestViaHTTPWithBossMutex(a1, a2, a3);
        return;
      }

      v16 = a3[10];
    }

    if (v16 <= 3)
    {
      if (ckb_canRequestBeSatisfiedViaCustomURLLoaderWithBossMutex(a1, a3))
      {
        a3[10] = 4;
LABEL_17:

        ckb_sendKeyRequestViaCustomURLLoaderWithBossMutex(a1, a2, a3);
        return;
      }

      v16 = a3[10];
    }

    if (v16 > 7 || !ckb_canKeyRequestBeSatisfiedViaRequestHandlingCallbacksWithBossMutex(a1, a3))
    {
      ckb_processRequestViaNextHandlerWithBossMutex_cold_1(a3, a1, a2);
      return;
    }

    a3[10] = 8;
  }

  ckb_sendKeyRequestViaDelegateCallbacksWithBossMutex(a1, a2, a3);
}

BOOL ckb_canRequestBeSatisfiedViaHTTPWithBossMutex(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  AllocatorForMedia = FigGetAllocatorForMedia();
  Identifier = FigContentKeySpecifierGetIdentifier(*(a2 + 16));
  v6 = CFURLCreateWithString(AllocatorForMedia, Identifier, 0);
  if (!v6)
  {
    ckb_canRequestBeSatisfiedViaHTTPWithBossMutex_cold_3(0, v7, v8, v9, v10, v11, v12, v13, v32, v33, v34[0], v34[1]);
    return 0;
  }

  v14 = v6;
  if (!FigCFHTTPIsHTTPBasedURL(v6) || (*(DerivedStorage + 16) & 2) == 0)
  {
    goto LABEL_26;
  }

  GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
  if (GlobalNetworkBufferingQueue)
  {
    v16 = GlobalNetworkBufferingQueue;
    v17 = *(a2 + 152);
    if (v17 && *(a2 + 128))
    {
      goto LABEL_26;
    }

    v18 = *(a2 + 136);
    if (!v18)
    {
      goto LABEL_26;
    }

    if (*(a2 + 144))
    {
      if (v17)
      {
LABEL_26:
        v30 = *(a2 + 152) != 0;
        goto LABEL_27;
      }
    }

    else
    {
      Value = CFDictionaryGetValue(v18, @"FHRP_StorageSession");
      if (!Value)
      {
        *(a2 + 144) = 0;
        goto LABEL_26;
      }

      v20 = CFRetain(Value);
      *(a2 + 144) = v20;
      if (*(a2 + 152) || !v20)
      {
        goto LABEL_26;
      }
    }

    v21 = FigGetAllocatorForMedia();
    MutableCopy = CFDictionaryCreateMutableCopy(v21, 0, *(a2 + 136));
    if (MutableCopy)
    {
      v23 = MutableCopy;
      FigCFDictionarySetInt16();
      v24 = *(a2 + 144);
      v25 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v25)
      {
        v26 = v25(v24, v16, v23, a2 + 152);
        if (v26)
        {
LABEL_20:
          LODWORD(v27) = v26;
          goto LABEL_22;
        }

        v27 = *(a2 + 168);
        if (!v27)
        {
LABEL_22:
          CFRelease(v23);
          goto LABEL_23;
        }

        v28 = *(a2 + 152);
        v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v29)
        {
          v26 = v29(v28, 0x1F0B5F698, v27);
          goto LABEL_20;
        }
      }

      LODWORD(v27) = -12782;
      goto LABEL_22;
    }

    ckb_canRequestBeSatisfiedViaHTTPWithBossMutex_cold_1(&v33);
    LODWORD(v27) = v33;
  }

  else
  {
    ckb_canRequestBeSatisfiedViaHTTPWithBossMutex_cold_2(v34);
    LODWORD(v27) = v34[0];
  }

LABEL_23:
  if (!v27)
  {
    goto LABEL_26;
  }

  v30 = 0;
LABEL_27:
  CFRelease(v14);
  return v30;
}

void ckb_sendKeyRequestViaHTTPWithBossMutex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v26 = 4297;
LABEL_15:
    ckb_sendKeyRequestViaHTTPWithBossMutex_cold_2(v26, cf);
    v11 = 0;
    v24 = cf[0];
    goto LABEL_16;
  }

  if (!a3)
  {
    v26 = 4298;
    goto LABEL_15;
  }

  v7 = DerivedStorage;
  if (dword_1EAF16CF0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(a3 + 80) = 2;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Identifier = FigContentKeySpecifierGetIdentifier(*(a3 + 16));
  v11 = CFURLCreateWithString(AllocatorForMedia, Identifier, 0);
  if (!v11)
  {
    ckb_sendKeyRequestViaHTTPWithBossMutex_cold_1(cf);
    v24 = cf[0];
    goto LABEL_10;
  }

  v12 = *(a3 + 152);
  v13 = CFGetAllocator(a3);
  v14 = *(a3 + 160);
  v15 = *(a3 + 136);
  v16 = *(v7 + 168);
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v17)
  {
    v24 = -12782;
LABEL_10:
    if (v24 && dword_1EAF16CF0)
    {
      v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_17:
      cf[0] = 0;
      FigCreateErrorForOSStatus(v24, cf);
      ckb_processErrorForRequestWithBossMutex(a1, a2, a3, cf[0]);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

LABEL_19:
      if (!v11)
      {
        return;
      }

      goto LABEL_20;
    }

LABEL_16:
    if (!v24)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v29 = 0u;
  v30 = 0u;
  *cf = 0u;
  v28 = 0u;
  v31 = 0x800000000;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  v18 = v17(v12, v13, 0, v11, 0, v14, v15, 1, cf, 0, 0, 0, ckb_httpReadCallback, v16, a3 + 96, a3 + 104);
  if (v18)
  {
    v24 = v18;
    goto LABEL_10;
  }

  CFDictionaryAddValue(*(v7 + 128), *(a3 + 104), *(a3 + 32));
  ckb_startRequestTimerWithBossMutex(a1, a2, a3, v19, v20, v21, v22, v23);
LABEL_20:
  CFRelease(v11);
}

BOOL ckb_canKeyRequestBeSatisfiedViaRequestHandlingCallbacksWithBossMutex(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(DerivedStorage + 16) & 8) == 0 || !*(DerivedStorage + 24))
  {
    return 0;
  }

  if (*(a2 + 72) && *(DerivedStorage + 48))
  {
    return 1;
  }

  return *(DerivedStorage + 40) != 0;
}

void ckb_sendKeyRequestViaDelegateCallbacksWithBossMutex(const void *a1, const void *a2, uint64_t a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16CF0)
  {
    v50 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(a3 + 80) = 8;
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v8)
  {
    __copy_assignment_8_8_t0w8_pa0_18803_8_pa0_11926_16_pa0_32929_24_pa0_16857_32_pa0_23185_40_pa0_3293_48(&v40, DerivedStorage + 4);
    if (a2)
    {
      v9 = DerivedStorage[11];
      if (v9)
      {
        v10 = malloc_type_calloc(1uLL, 0xD8uLL, 0x10E0040C5177DA7uLL);
        if (v10)
        {
          if (a1)
          {
LABEL_8:
            v11 = CFRetain(a1);
LABEL_17:
            *v10 = v11;
            v10[2] = CFRetain(v8);
            __copy_assignment_8_8_t0w8_pa0_18803_8_pa0_11926_16_pa0_32929_24_pa0_16857_32_pa0_23185_40_pa0_3293_48(v10 + 7, &v40);
            v10[14] = CFRetain(a3);
            v10[26] = CFRetain(a2);
            if (_os_feature_enabled_impl())
            {
              v19 = *(a3 + 16);
              if (v19)
              {
                v19 = CFRetain(v19);
              }

              v10[21] = v19;
              v20 = CFRetain(*(a3 + 24));
              v21 = *(a3 + 24);
              v10[20] = v20;
              v22 = *(v21 + 72);
              if (v22)
              {
                v22 = CFRetain(v22);
              }

              v10[19] = v22;
              v10[15] = *(a3 + 32);
              *(v10 + 129) = *(a3 + 72);
            }

            if (dword_1EAF16CF0)
            {
              v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            dispatch_async_f(v9, v10, ckb_sendKeyRequestCallbackOnQueue);
            goto LABEL_26;
          }
        }

        else
        {
          FigUserCrashWithMessage("[💥 CKB assert]: { rec != NULL } : Failed to create rec to send key request callbacks.");
          if (a1)
          {
            goto LABEL_8;
          }
        }

        v11 = 0;
        goto LABEL_17;
      }
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, v36, v39);
    if (!v29)
    {
LABEL_26:
      ckb_startRequestTimerWithBossMutex(a1, a2, a3, v24, v25, v26, v27, v28);
LABEL_27:
      CFRelease(v8);
      return;
    }

    v13 = v29;
    if (dword_1EAF16CF0)
    {
      v50 = 0;
      v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v31 = v50;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v31;
      }

      else
      {
        v32 = v31 & 0xFFFFFFFE;
      }

      if (v32)
      {
        v33 = DerivedStorage[23];
        v34 = *(a3 + 248);
        v40 = 136316162;
        v41 = "ckb_sendKeyRequestViaDelegateCallbacksWithBossMutex";
        v42 = 2114;
        v43 = v33;
        v44 = 2114;
        v45 = v34;
        v46 = 2114;
        v47 = @"Callbacks to AVContentKeySession";
        v48 = 1024;
        v49 = v13;
        LODWORD(v38) = 48;
        _os_log_send_and_compose_impl(v32, 0, cf, 128, &dword_1962D5000, v30, 0, " %s: ⏮️ [%{public}@ =[RESTARTING REQUEST]=> %{public}@ ATTEMPTED VIA %{public}@]: Couldn't send a key request callback; hit error %d", &v40, v38);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, v36, v39);
    v13 = v12;
    if (dword_1EAF16CF0)
    {
      v50 = 0;
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v15 = v50;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v17 = DerivedStorage[23];
        v18 = *(a3 + 248);
        v40 = 136315906;
        v41 = "ckb_sendKeyRequestViaDelegateCallbacksWithBossMutex";
        v42 = 2114;
        v43 = v17;
        v44 = 2114;
        v45 = v18;
        v46 = 2114;
        v47 = @"Callbacks to AVContentKeySession";
        LODWORD(v37) = 42;
        _os_log_send_and_compose_impl(v16, 0, cf, 128, &dword_1962D5000, v14, 0, " %s: ⏮️ [%{public}@ =[RESTARTING REQUEST]=> %{public}@ ATTEMPTED VIA %{public}@]: Couldn't send a key request callback to the application; since our handle to communicate with it became NULL!", &v40, v37);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (!v13)
    {
      return;
    }
  }

  cf[0] = 0;
  FigCreateErrorForOSStatus(v13, cf);
  ckb_processErrorForRequestWithBossMutex(a1, a2, a3, cf[0]);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v8)
  {
    goto LABEL_27;
  }
}

BOOL ckb_canRequestBeSatisfiedViaCustomURLLoaderWithBossMutex(uint64_t a1, void *a2)
{
  if ((*(CMBaseObjectGetDerivedStorage() + 16) & 4) != 0)
  {
    v7 = 0;
    v8 = 0;
    v3 = a2[22];
    if (!v3 || !FigStreamingNetworkErrorGetRecommendedAction(v3, &v8, &v7))
    {
      v4 = a2[17];
      if (v4)
      {
        if (!a2[16])
        {
          Value = CFDictionaryGetValue(v4, @"FHRP_CustomURLLoader");
          if (Value)
          {
            Value = CFRetain(Value);
          }

          a2[16] = Value;
        }
      }
    }
  }

  return a2[16] != 0;
}

void ckb_sendKeyRequestViaCustomURLLoaderWithBossMutex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  key = 0;
  v40 = 0;
  if (!a2)
  {
    v34 = 4538;
LABEL_32:
    ckb_sendKeyRequestViaHTTPWithBossMutex_cold_2(v34, cf);
    v16 = 0;
    v12 = 0;
    v19 = 0;
    v18 = cf[0];
    goto LABEL_33;
  }

  if (!a3)
  {
    v34 = 4539;
    goto LABEL_32;
  }

  v7 = DerivedStorage;
  if (dword_1EAF16CF0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(a3 + 80) = 4;
  v9 = ckg_ensureContentKeyForRequest(a2, a3, a1, *(v7 + 152));
  if (v9)
  {
    v18 = v9;
    v16 = 0;
    v12 = 0;
    goto LABEL_48;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Identifier = FigContentKeySpecifierGetIdentifier(*(a3 + 16));
  v12 = CFURLCreateWithString(AllocatorForMedia, Identifier, 0);
  if (!v12)
  {
    goto LABEL_46;
  }

  FigGetAllocatorForMedia();
  Mutable = FigCustomURLRequestInfoCreateMutable();
  if (Mutable)
  {
    goto LABEL_47;
  }

  Mutable = FigCustomURLRequestInfoSetCryptor();
  if (Mutable)
  {
    goto LABEL_47;
  }

  Mutable = FigCustomURLRequestInfoSetIsRenewalRequest();
  if (Mutable)
  {
    goto LABEL_47;
  }

  if (FigContentKeySpecifierGetKeySystem(*(a3 + 16)) != 1)
  {
    v16 = 0;
    goto LABEL_17;
  }

  v14 = FigGetAllocatorForMedia();
  v15 = CFArrayCreateMutable(v14, 0, MEMORY[0x1E695E9C0]);
  if (!v15)
  {
LABEL_46:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, v36, v37);
LABEL_47:
    v18 = Mutable;
    v16 = 0;
    goto LABEL_48;
  }

  v16 = v15;
  CFArrayAppendValue(v15, @"com.apple.streamingkeydelivery.contentkey");
  if (*(*(a3 + 24) + 64))
  {
    CFArrayAppendValue(v16, @"com.apple.streamingkeydelivery.persistentcontentkey");
  }

  v17 = FigCustomURLRequestInfoSetAllowedUniversalTypeIdentifiers();
  if (v17)
  {
    v18 = v17;
LABEL_48:
    v19 = 0;
    goto LABEL_26;
  }

LABEL_17:
  v19 = FigCFHTTPCreateUserAgent();
  v20 = FigCustomURLRequestInfoSetUserAgent();
  if (v20 || *(*(a3 + 24) + 28) == 2 && (v20 = FigCustomURLRequestInfoSetCryptorKeyRequestID()) != 0)
  {
    v18 = v20;
    goto LABEL_26;
  }

  v21 = *(a3 + 128);
  v22 = v7;
  v23 = *(v7 + 168);
  GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
  v25 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v25)
  {
    v18 = -12782;
LABEL_26:
    if (v18 && dword_1EAF16CF0)
    {
      v38 = a2;
      v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
      a2 = v38;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_34:
      cf[0] = 0;
      FigCreateErrorForOSStatus(v18, cf);
      ckb_processErrorForRequestWithBossMutex(a1, a2, a3, cf[0]);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

LABEL_36:
      if (!v12)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

LABEL_33:
    if (!v18)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v26 = v25(v21, v40, v23, GlobalNetworkBufferingQueue, ckb_customURLReadCallback, &key);
  if (v26)
  {
    v18 = v26;
    goto LABEL_26;
  }

  v32 = key;
  if (key)
  {
    *(a3 + 88) = key;
    CFDictionaryAddValue(*(v22 + 120), v32, *(a3 + 32));
  }

  ckb_startRequestTimerWithBossMutex(a1, a2, a3, v27, v28, v29, v30, v31);
LABEL_37:
  CFRelease(v12);
LABEL_38:
  if (v19)
  {
    CFRelease(v19);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v16)
  {
    CFRelease(v16);
  }
}

__CFString *ckbutil_requestHandlerType_getLoggingDescription(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      return @"HTTP";
    case 8:
      return @"Callbacks to AVContentKeySession";
    case 4:
      return @"CustomURL";
  }

  FigUserCrashWithMessage("[💥 CKB assert]: { false } : %s was passed an illegal request handler type { %llu }", "ckbutil_requestHandlerType_getLoggingDescription", a1);
  FigUserCrashWithMessage("[💥 CKB assert]: { NULL != descriptionOut } : Failed to create a description of a key loading mechanisms");
  return 0;
}

void ckb_startRequestTimerWithBossMutex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    ckb_startRequestTimerWithBossMutex_cold_4(a1, 0, a3, a4, a5, a6, a7, a8, v28, v29, SHIDWORD(v29), v30);
    return;
  }

  if (!a3)
  {
    ckb_startRequestTimerWithBossMutex_cold_3(a1, a2, 0, a4, a5, a6, a7, a8, v28, v29, SHIDWORD(v29), v30);
    return;
  }

  v9 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
  if (!v9)
  {
    ckb_startRequestTimerWithBossMutex_cold_2(0, v10, v11, v12, v13, v14, v15, v16, v28, v29, SHIDWORD(v29), v30);
    return;
  }

  v17 = v9;
  *v9 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v17[1] = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v17[2] = FigCFWeakReferenceHolderCreateWithReferencedObject();
  GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
  if (GlobalNetworkBufferingQueue)
  {
    v26 = GlobalNetworkBufferingQueue;
    ckr_cancelAndReleaseRequestTimer(a3);
    if (!ckbutil_createAndStartTimer(20, v17, ckb_requestTimerEventHandler, ckb_requestTimerFinalizer, v26, (a3 + 208)))
    {
      if (dword_1EAF16CF0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return;
    }
  }

  else
  {
    ckb_startRequestTimerWithBossMutex_cold_1(0, v19, v20, v21, v22, v23, v24, v25, v28, v29, SHIDWORD(v29), v30);
  }

  ckb_requestTimerFinalizer(v17);
}

double ckb_processErrorForRequestWithBossMutex(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return ckb_processErrorForRequestWithBossMutex_cold_2(DerivedStorage, v9, v10, v11, v12, v13, v14, v15, v22, v23, SHIDWORD(v23), v24);
  }

  if (!a3)
  {
    return ckb_processErrorForRequestWithBossMutex_cold_1(DerivedStorage, v9, v10, v11, v12, v13, v14, v15, v22, v23, SHIDWORD(v23), v24);
  }

  if (a4)
  {
    v16 = *(a3 + 80);
    if (v16 == 8)
    {
      *(a3 + 200) = CFRetain(a4);
    }

    else
    {
      v17 = DerivedStorage;
      if (v16 == 4)
      {
        *(a3 + 184) = CFRetain(a4);
        v18 = *(a3 + 128);
        if (v18)
        {
          v19 = *(a3 + 88);
          if (v19)
          {
            v20 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (v20)
            {
              v20(v18, v19);
            }
          }
        }

        CFDictionaryRemoveValue(*(v17 + 120), *(a3 + 88));
      }

      else if (v16 == 2)
      {
        CFDictionaryRemoveValue(*(DerivedStorage + 128), *(a3 + 104));
        *(a3 + 192) = CFRetain(a4);
      }
    }
  }

  ckb_processRequestViaNextHandlerWithBossMutex(a1, a2, a3);
  return result;
}

uint64_t ckb_copyBossFromRetainProxy(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      FigRetainProxyLockMutex();
      if (FigRetainProxyIsInvalidated())
      {
        ckb_copyBossFromRetainProxy_cold_1(&v6);
        v4 = v6;
      }

      else
      {
        Owner = FigRetainProxyGetOwner();
        if (Owner)
        {
          Owner = CFRetain(Owner);
        }

        v4 = 0;
        *a2 = Owner;
      }
    }

    else
    {
      ckb_copyBossFromRetainProxy_cold_2(&v7);
      v4 = v7;
    }
  }

  else
  {
    ckb_copyBossFromRetainProxy_cold_3(&v8);
    v4 = v8;
  }

  FigRetainProxyUnlockMutex();
  return v4;
}

uint64_t ckb_copyGroupAndRequestFromIDWithBossMutex(uint64_t a1, const void *a2, CFTypeRef *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(DerivedStorage + 112), a2);
  if (Value)
  {
    v9 = Value;
    v10 = CFDictionaryGetValue(Value[6], a2);
    if (v10 || ckb_copyGroupAndRequestFromIDWithBossMutex_cold_1(&v13))
    {
      if (a3)
      {
        *a3 = CFRetain(v9);
      }

      if (a4)
      {
        if (v10)
        {
          v11 = CFRetain(v10);
        }

        else
        {
          v11 = 0;
        }

        result = 0;
        *a4 = v11;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return v13;
    }
  }

  else
  {
    ckb_copyGroupAndRequestFromIDWithBossMutex_cold_2(&v14);
    return v14;
  }

  return result;
}

void ckb_renewalTimerFinalizer(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

uint64_t ckbutil_createAndStartTimer(int a1, void *a2, void (__cdecl *a3)(void *), void (__cdecl *a4)(void *), dispatch_queue_t queue, NSObject **a6)
{
  v16 = 0;
  if (a3 && a4 && queue)
  {
    v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, queue);
    v16 = v11;
    if (v11)
    {
      v12 = v11;
      if (a2)
      {
        dispatch_set_context(v11, a2);
      }

      dispatch_source_set_event_handler_f(v12, a3);
      dispatch_set_finalizer_f(v12, a4);
      v13 = dispatch_time(0x8000000000000000, 1000000000 * a1);
      dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      dispatch_resume(v12);
      v14 = 0;
      *a6 = v12;
      return v14;
    }

    ckbutil_createAndStartTimer_cold_1(&v17);
  }

  else
  {
    ckbutil_createAndStartTimer_cold_2(&v17);
  }

  v14 = v17;
  if (v17)
  {
    ckbutil_cancelAndReleaseTimer(&v16);
  }

  return v14;
}

CFStringRef ck_keyResponseParams_copyLoggingArguments(uint64_t a1, __CFString **a2, CFStringRef *a3)
{
  v6 = *(a1 + 16);
  if (v6 >= 3)
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { NULL != descriptionOut } : %s was unable to allocate a description for response type %d", "ckbutil_keyResponseType_getLoggingDescription", v6);
    v7 = 0;
  }

  else
  {
    v7 = off_1E747EF48[v6];
  }

  *a2 = v7;
  if (*(a1 + 24))
  {
    result = FigCFCopyCompactDescription();
  }

  else
  {
    result = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Renewal is not configured");
  }

  v9 = result;
  if (!result)
  {
    result = FigUserCrashWithMessage("[💥 CKB assert]: { NULL != descriptionOut } : Failed to allocate a description for a content key's renewal policy");
  }

  *a3 = v9;
  return result;
}

void ckb_requestTimerFinalizer(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

void ckb_sendKeyRequestCallbackOnQueue(void *a1)
{
  if (_os_feature_enabled_impl())
  {
    if (*(a1 + 129) && (v2 = a1[9]) != 0 || (v2 = a1[8]) != 0)
    {
      v2(a1[2], *a1, a1[21], a1[15], *(a1[20] + 64), a1[19]);
    }
  }

  else
  {
    v3 = a1[14];
    if (*(v3 + 72) && (v4 = a1[9]) != 0 || (v4 = a1[8]) != 0)
    {
      v4(a1[2], *a1, *(v3 + 16), *(v3 + 32), *(*(v3 + 24) + 64), *(*(v3 + 24) + 72));
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v5 = a1[26];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[14];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[2];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[21];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[20];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[19];
  if (v10)
  {
    CFRelease(v10);
  }

  free(a1);
}

void *ck_copySupportedProtocolVersionsForKeyRequestData(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  SupportedProtocolVersions = FigContentKeySpecifierGetSupportedProtocolVersions(*(a1 + 16));
  if (v2 && CFArrayGetCount(v2) >= 1)
  {
    v4 = v2;
LABEL_7:
    v5 = CFRetain(v4);
    goto LABEL_12;
  }

  if (SupportedProtocolVersions && CFArrayGetCount(SupportedProtocolVersions) >= 1)
  {
    v4 = SupportedProtocolVersions;
    goto LABEL_7;
  }

  v6 = *MEMORY[0x1E695E480];
  values = FigCFNumberCreateUInt64();
  if (!values)
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { NULL != defaultSupportedProtocolVersion } : Failed to allocate space for a supported key exchange protocol version number");
  }

  v5 = CFArrayCreate(v6, &values, 1, MEMORY[0x1E695E9C0]);
  if (values)
  {
    CFRelease(values);
  }

LABEL_12:
  if (!v5)
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { NULL != supportedVersionsOut } : Failed to initialize array of supported key exchange protocol versions");
  }

  return v5;
}

void ck_keyRequestDataParams_copyLoggingArguments(uint64_t a1, uint64_t a2, CFStringRef *a3, CFStringRef *a4, _BYTE *a5, CFDataRef *a6)
{
  EncryptionMethod = FigContentKeySpecifierGetEncryptionMethod(*(a1 + 16));
  v13 = ck_copySupportedProtocolVersionsForKeyRequestData(a1, a2);
  v14 = *MEMORY[0x1E695E480];
  LoggingDescription = ckbutil_encryptionMethod_getLoggingDescription(EncryptionMethod);
  Copy = CFStringCreateCopy(v14, LoggingDescription);
  *a3 = Copy;
  if (!Copy)
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { NULL != *encryptionMethodDescriptionOut } : Failed to copy encryption method logging description");
  }

  *a4 = ckbutil_supportedProtocolVersions_copyLoggingDescription(v13);
  *a5 = *(a2 + 62);
  v17 = *(a2 + 64);
  if (v17 && (v18 = CFDataCreateCopy(v14, v17), (*a6 = v18) == 0))
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { NULL != *deviceIdentifierRandomizationSeedOut } : Failed to copy device-identifier randomization seed for logging");
    if (!v13)
    {
      return;
    }
  }

  else if (!v13)
  {
    return;
  }

  CFRelease(v13);
}

void ckbutil_copyArrayOfKeysFromDictionary(CFDictionaryRef theDict, const void ***a2, size_t *a3)
{
  if (!theDict)
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { NULL != dict } : Can not copy keys from a null dictionary");
  }

  Count = CFDictionaryGetCount(theDict);
  v7 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
  if (!v7)
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { NULL != keysBuf } : Failed to allocate memory for keysBuf");
  }

  CFDictionaryGetKeysAndValues(theDict, v7, 0);
  *a2 = v7;
  *a3 = Count;
}

uint64_t OUTLINED_FUNCTION_5_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_23_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, char a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_24_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int16 a22, char a23, char a24, int a25)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_32_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_34_5(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_49_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int16 a20, char a21, char a22, char a23)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_53_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int16 a26, char a27, char a28, int a29)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_54_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, int a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

double OUTLINED_FUNCTION_64_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

double OUTLINED_FUNCTION_68_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{

  return ckr_addStatusCallbacks(a24, v25, a15, v24);
}

BOOL OUTLINED_FUNCTION_70_3(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_type_t type, int a14, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_86_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_98_0(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{

  return ckb_sendStatusCallbackDispatchWithBossMutex(v30, v32, &a29, a4, v29, v31);
}

uint64_t OUTLINED_FUNCTION_99_1()
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_100_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, const void *a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);

  return ckb_registerAndGetNewRequestWithBossMutex(v24, v23, a3, a13, a14, a6, 0, va);
}

uint64_t OUTLINED_FUNCTION_102_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_117_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_118_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t *a29)
{
  v32 = *(v30 + 152);

  return ckg_ensureContentKeyForRequest(a17, a29, v29, v32);
}

BOOL OUTLINED_FUNCTION_119_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int16 a22, char a23, os_log_type_t type, int a25)
{

  return os_log_type_enabled(a1, type);
}

CFStringRef OUTLINED_FUNCTION_120_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, CFStringRef a15, __CFString *a16)
{
  a15 = 0;
  a16 = 0;

  return ck_keyResponseParams_copyLoggingArguments(v16, &a16, &a15);
}

uint64_t OUTLINED_FUNCTION_121_0(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  return CMBlockBufferCreateEmpty(a1, 0, 0, (a16 + 112));
}

BOOL OUTLINED_FUNCTION_123_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, os_log_type_t type, int a18)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_124_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, os_log_type_t type, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_125_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int16 a22, char a23, os_log_type_t type, int a25)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_126_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int16 a20, char a21, os_log_type_t type, int a23)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_127_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int16 a20, char a21, os_log_type_t type, int a23)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_128_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, v9, a8);
}

uint64_t OUTLINED_FUNCTION_129_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, v9, a8);
}

uint64_t FigVirtualDisplaySourceMovieCreate(const __CFAllocator *a1, const __CFString *a2, CFDictionaryRef theDict, CFTypeRef *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v41 = 0;
  cf = 0;
  v40 = 0;
  if (!a4)
  {
    FigVirtualDisplaySourceMovieCreate_cold_3();
    goto LABEL_7;
  }

  v5 = a2;
  if (a2 || !theDict)
  {
    if (!a2)
    {
LABEL_6:
      FigVirtualDisplaySourceMovieCreate_cold_2();
LABEL_7:
      v9 = 4294954516;
LABEL_23:
      free(v41);
      goto LABEL_38;
    }
  }

  else
  {
    Value = CFDictionaryGetValue(theDict, @"moviePath");
    if (!Value)
    {
      goto LABEL_6;
    }

    v5 = Value;
    TypeID = CFStringGetTypeID();
    if (TypeID != CFGetTypeID(v5))
    {
      goto LABEL_6;
    }
  }

  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  if (CStringPtrAndBufferToFree && access(CStringPtrAndBufferToFree, 4) < 0)
  {
    v9 = *__error();
    goto LABEL_23;
  }

  FigVirtualDisplaySourceGetClassID();
  v11 = CMDerivedObjectCreate();
  if (v11)
  {
    v9 = v11;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_23;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = 0;
  *(DerivedStorage + 16) = dispatch_queue_create("FigVirtualDisplaySourceMovieQueue", 0);
  *(DerivedStorage + 24) = dispatch_semaphore_create(0);
  *(DerivedStorage + 32) = CFRetain(v5);
  v13 = CFURLCreateWithFileSystemPath(a1, v5, kCFURLPOSIXPathStyle, 0);
  if (!v13)
  {
    FigVirtualDisplaySourceMovieCreate_cold_1();
    v9 = 4294954510;
    goto LABEL_23;
  }

  v14 = v13;
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"AssetReader_RequiresInProcessOperation", *MEMORY[0x1E695E4D0]);
  Current = CFRunLoopGetCurrent();
  v17 = FigAssetReaderCreateWithURLAndFormatReader(a1, v14, 0, Current, Mutable, (DerivedStorage + 96));
  if (v17)
  {
    v9 = v17;
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    goto LABEL_30;
  }

  v18 = *(DerivedStorage + 96);
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v19)
  {
    v9 = 4294954514;
LABEL_21:
    v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
LABEL_30:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_31:
    v24 = 0;
    v23 = 0;
    goto LABEL_32;
  }

  v20 = v19(v18, &v40);
  if (v20)
  {
    v9 = v20;
    goto LABEL_21;
  }

  if (!v40)
  {
    v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, v38, v39);
    v9 = v36;
    goto LABEL_31;
  }

  v21 = MEMORY[0x1E695E9D8];
  v22 = MEMORY[0x1E695E9E8];
  v23 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(v23, @"AssetReader_MatrixHandling", @"AssetReader_PreserveMatrix");
  v24 = CFDictionaryCreateMutable(a1, 0, v21, v22);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v25 = *(DerivedStorage + 96);
  v26 = v40;
  v27 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v27)
  {
    v9 = 4294954514;
    goto LABEL_25;
  }

  v43 = *MEMORY[0x1E6960C70];
  v44 = *(MEMORY[0x1E6960C70] + 16);
  v9 = v27(v25, v26, v24, 0, &v43, v23, DerivedStorage + 104);
  if (v9)
  {
LABEL_25:
    v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_32;
  }

  v28 = MEMORY[0x1E6960CC0];
  *(DerivedStorage + 40) = *MEMORY[0x1E6960CC0];
  *(DerivedStorage + 56) = *(v28 + 16);
  v29 = MEMORY[0x1E6960C88];
  *(DerivedStorage + 64) = *MEMORY[0x1E6960C88];
  *(DerivedStorage + 80) = *(v29 + 16);
  *a4 = cf;
  cf = 0;
LABEL_32:
  free(v41);
  CFRelease(v14);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v24)
  {
    CFRelease(v24);
  }

LABEL_38:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

void mov_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    mov_finalize_cold_1();
  }

  if (*DerivedStorage)
  {
    mov_finalize_cold_2();
  }

  v2 = *(DerivedStorage + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(DerivedStorage + 96);
  if (v3)
  {
    CFRelease(v3);
  }

  dispatch_release(*(DerivedStorage + 24));
  dispatch_release(*(DerivedStorage + 16));
}

uint64_t mov_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (!CFEqual(@"sourceType", a2))
  {
    return 4294954512;
  }

  v5 = CFRetain(@"Movie");
  result = 0;
  *a4 = v5;
  return result;
}

uint64_t mov_plugProcessor(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __mov_plugProcessor_block_invoke;
    block[3] = &unk_1E747EF78;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[4] = &v11;
    dispatch_sync(v4, block);
    v5 = *(v12 + 6);
  }

  else
  {
    v10 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v5 = 4294955226;
    *(v12 + 6) = -12070;
  }

  _Block_object_dispose(&v11, 8);
  return v5;
}

uint64_t mov_unplugProcessor(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __mov_unplugProcessor_block_invoke;
    block[3] = &unk_1E747EFA0;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[4] = &v11;
    dispatch_sync(v4, block);
    v5 = *(v12 + 6);
  }

  else
  {
    v10 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v5 = 4294955226;
    *(v12 + 6) = -12070;
  }

  _Block_object_dispose(&v11, 8);
  return v5;
}

uint64_t mov_start(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __mov_start_block_invoke;
  block[3] = &unk_1E747EFC8;
  block[4] = &v8;
  block[5] = DerivedStorage;
  block[6] = a2;
  dispatch_sync(v4, block);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t mov_stop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __mov_stop_block_invoke;
  block[3] = &__block_descriptor_tmp_13_0;
  block[4] = DerivedStorage;
  dispatch_sync(v2, block);
  dispatch_semaphore_wait(*(DerivedStorage + 24), 0xFFFFFFFFFFFFFFFFLL);
  return 0;
}

uint64_t mov_suspend(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __mov_suspend_block_invoke;
  block[3] = &__block_descriptor_tmp_14_1;
  block[4] = DerivedStorage;
  dispatch_sync(v2, block);
  return 0;
}

uint64_t mov_resume(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __mov_resume_block_invoke;
  v5[3] = &unk_1E747F058;
  v5[4] = &v6;
  v5[5] = DerivedStorage;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __mov_plugProcessor_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 8) || *v2)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
    *(*(*(a1 + 32) + 8) + 24) = v3;
  }

  else
  {
    CFRetain(*(a1 + 48));
    **(a1 + 40) = *(a1 + 48);
  }
}

void __mov_unplugProcessor_block_invoke(void *a1)
{
  v2 = a1[5];
  if (!*(v2 + 8) && (v3 = *v2, *v2 == a1[6]))
  {
    if (v3)
    {
      CFRelease(v3);
      *a1[5] = 0;
    }
  }

  else
  {
    *(*(a1[4] + 8) + 24) = -12070;
  }
}

void __mov_start_block_invoke(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  if (*(v2 + 2) || (v3 = *v2) == 0)
  {
    *(*(a1[4] + 8) + 24) = -12070;
    return;
  }

  v24 = 0;
  cf = 0;
  v23 = 0;
  v22 = *"";
  v21 = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4)
  {
    v11 = -12782;
LABEL_14:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_18:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_19;
  }

  v5 = v4(v3, &cf, &v24);
  if (v5)
  {
    v11 = v5;
    goto LABEL_14;
  }

  v6 = FigDisplayModes_LookupTimingModeIDByIndex(v24, 0, &v23);
  if (v6)
  {
    v11 = v6;
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    goto LABEL_18;
  }

  v7 = v23;
  v8 = *v2;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v9)
  {
    v11 = -12782;
LABEL_16:
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    goto LABEL_18;
  }

  v10 = v9(v8, v7, v7);
  if (v10)
  {
    v11 = v10;
    goto LABEL_16;
  }

  if (FigDisplayModes_ExtractDimensionsFromTimingMode(v24, v23, &v22))
  {
    v20 = v2;
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
LABEL_30:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v2 = v20;
    goto LABEL_12;
  }

  if (FigDisplayModes_ExtractOverscanInfoFromTimingMode(v24, v23, &v21))
  {
    v20 = v2;
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    goto LABEL_30;
  }

LABEL_12:
  v11 = 0;
  *(v2 + 192) = 0;
  *(v2 + 7) = v22;
  *(v2 + 193) = v21;
LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  *(*(a1[4] + 8) + 24) = v11;
  if (!*(*(a1[4] + 8) + 24))
  {
    v26 = 0;
    FigCFDictionaryGetBooleanIfPresent();
    if (v26)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    v16 = a1[5];
    v16[2] = v15;
    global_queue = dispatch_get_global_queue(2, 0);
    dispatch_async_f(global_queue, v16, mov_submitFrames);
  }
}

void mov_submitFrames(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2000000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2000000000;
  v39 = 0;
  sbuf = 0;
  memset(&v34, 0, sizeof(v34));
  memset(&v33, 0, sizeof(v33));
  v2 = *(a1 + 96);
  v44 = *(a1 + 40);
  v32 = *(a1 + 64);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v3)
  {
    v15 = -12782;
    *(v41 + 6) = -12782;
LABEL_16:
    LODWORD(v44.value) = 0;
    LOBYTE(v32.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = v44.value;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v18 = value;
    }

    else
    {
      v18 = value & 0xFFFFFFFE;
    }

    if (v18)
    {
      LODWORD(lhs.value) = 136315650;
      *(&lhs.value + 4) = "mov_submitFrames";
      LOWORD(lhs.flags) = 1024;
      *(&lhs.flags + 2) = 239;
      WORD1(lhs.epoch) = 1024;
      HIDWORD(lhs.epoch) = v15;
      _os_log_send_and_compose_impl(v18, 0, &rhs, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "<<<< FigVirtualDisplaySourceMovie >>>> %s: %d: got error %d", &lhs, 24, LODWORD(block[0]));
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_22;
  }

  rhs = v44;
  lhs = v32;
  v4 = v3(v2, &rhs, &lhs);
  *(v41 + 6) = v4;
  if (v4)
  {
    v15 = v4;
    goto LABEL_16;
  }

  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v34, HostTimeClock);
  CMTimeMake(&v33, 1, 2);
  v6 = v37 + 3;
  if (!*(v37 + 24))
  {
    while (1)
    {
      memset(&v32, 0, sizeof(v32));
      v7 = *(a1 + 96);
      v8 = *(a1 + 104);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (!v9)
      {
        v19 = -12782;
        *(v41 + 6) = -12782;
        goto LABEL_24;
      }

      v10 = v9(v7, v8, 1, v6, &sbuf);
      *(v41 + 6) = v10;
      if (v10)
      {
        break;
      }

      if (*(v37 + 24))
      {
        goto LABEL_30;
      }

      CMSampleBufferGetPresentationTimeStamp(&rhs, sbuf);
      lhs = v34;
      CMTimeAdd(&v32, &lhs, &rhs);
      type = v32;
      while (1)
      {
        v11 = CMClockGetHostTimeClock();
        CMClockGetTime(&lhs, v11);
        v44 = type;
        CMTimeSubtract(&rhs, &v44, &lhs);
        v12 = (CMTimeGetSeconds(&rhs) * 1000000.0);
        if (v12 < 1)
        {
          break;
        }

        usleep(v12);
      }

      v13 = *(a1 + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __mov_submitFrames_block_invoke;
      block[3] = &unk_1E747EFF0;
      block[6] = a1;
      block[7] = sbuf;
      v29 = v32;
      v30 = v33;
      block[4] = &v40;
      block[5] = &v36;
      dispatch_sync(v13, block);
      v14 = *(v41 + 6);
      if (v14)
      {
        LODWORD(v44.value) = 0;
        LOBYTE(type.value) = 0;
        v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v25 = v44.value;
        value_low = LOBYTE(type.value);
        if (os_log_type_enabled(v24, type.value))
        {
          v27 = v25;
        }

        else
        {
          v27 = v25 & 0xFFFFFFFE;
        }

        if (v27)
        {
          LODWORD(lhs.value) = 136315650;
          *(&lhs.value + 4) = "mov_submitFrames";
          LOWORD(lhs.flags) = 1024;
          *(&lhs.flags + 2) = 269;
          WORD1(lhs.epoch) = 1024;
          HIDWORD(lhs.epoch) = v14;
          _os_log_send_and_compose_impl(v27, 0, &rhs, 128, &dword_1962D5000, v24, value_low, "<<<< FigVirtualDisplaySourceMovie >>>> %s: %d: got error %d", &lhs, 24, LODWORD(block[0]));
        }

        goto LABEL_29;
      }

      if (sbuf)
      {
        CFRelease(sbuf);
        sbuf = 0;
      }

      v6 = v37 + 3;
      if (*(v37 + 24))
      {
        goto LABEL_22;
      }
    }

    v19 = v10;
LABEL_24:
    LODWORD(v44.value) = 0;
    LOBYTE(type.value) = 0;
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v21 = v44.value;
    v22 = LOBYTE(type.value);
    if (os_log_type_enabled(v20, type.value))
    {
      v23 = v21;
    }

    else
    {
      v23 = v21 & 0xFFFFFFFE;
    }

    if (v23)
    {
      LODWORD(lhs.value) = 136315650;
      *(&lhs.value + 4) = "mov_submitFrames";
      LOWORD(lhs.flags) = 1024;
      *(&lhs.flags + 2) = 251;
      WORD1(lhs.epoch) = 1024;
      HIDWORD(lhs.epoch) = v19;
      _os_log_send_and_compose_impl(v23, 0, &rhs, 128, &dword_1962D5000, v20, v22, "<<<< FigVirtualDisplaySourceMovie >>>> %s: %d: got error %d", &lhs, 24, LODWORD(block[0]));
    }

LABEL_29:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_30:
    if (sbuf)
    {
      CFRelease(sbuf);
    }
  }

LABEL_22:
  dispatch_semaphore_signal(*(a1 + 24));
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
}

void __mov_submitFrames_block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (!*(v2 + 2) || !*v2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    return;
  }

  v3 = *(a1 + 56);
  lhs = *(a1 + 64);
  rhs = *(a1 + 88);
  CMTimeAdd(&v39, &lhs, &rhs);
  if (!*(v2 + 192))
  {
    FormatDescription = CMSampleBufferGetFormatDescription(v3);
    v2[16] = 0;
    v2[17] = 0;
    *(v2 + 18) = CMVideoFormatDescriptionGetDimensions(FormatDescription).width;
    height = CMVideoFormatDescriptionGetDimensions(FormatDescription).height;
    *(v2 + 19) = height;
    if (*(v2 + 193))
    {
      v6 = *(v2 + 11);
    }

    else
    {
      v6 = 0.0;
    }

    v7 = *(v2 + 18);
    v8 = *(v2 + 14);
    v9 = *(v2 + 15);
    v10 = v8 / v7;
    if (v8 / v7 >= v9 / height)
    {
      v10 = v9 / height;
    }

    v11 = (1.0 - v6) * v10;
    v12 = v7 * v11;
    v13 = v11 * height;
    *(v2 + 20) = (v8 - v12) * 0.5;
    *(v2 + 21) = (v9 - v13) * 0.5;
    *(v2 + 22) = v12;
    *(v2 + 23) = v13;
    *(v2 + 192) = 1;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(v3);
  if (!ImageBuffer)
  {
    v41 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v33 = v41;
    v34 = type;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v35 = v33;
    }

    else
    {
      v35 = v33 & 0xFFFFFFFE;
    }

    if (v35)
    {
      LODWORD(rhs.value) = 136315394;
      *(&rhs.value + 4) = "mov_submitSampleBuffer";
      LOWORD(rhs.flags) = 1024;
      *(&rhs.flags + 2) = 218;
      _os_log_send_and_compose_impl(v35, 0, &lhs, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v34, "<<<< FigVirtualDisplaySourceMovie >>>> %s: %d: false condition", &rhs, 18);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, v38, LODWORD(v39.value));
    v27 = v36;
    goto LABEL_23;
  }

  if (*(v2 + 2) == 2)
  {
    v15 = ImageBuffer;
    v16 = *v2;
    lhs = v39;
    v17 = CMClockConvertHostTimeToSystemUnits(&lhs);
    v18 = *(v2 + 16);
    v19 = *(v2 + 17);
    v20 = *(v2 + 18);
    v21 = *(v2 + 19);
    v22 = *(v2 + 20);
    v23 = *(v2 + 21);
    v24 = *(v2 + 22);
    v25 = *(v2 + 23);
    v26 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (!v26)
    {
      v27 = -12782;
LABEL_17:
      v41 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v29 = v41;
      v30 = type;
      if (os_log_type_enabled(v28, type))
      {
        v31 = v29;
      }

      else
      {
        v31 = v29 & 0xFFFFFFFE;
      }

      if (v31)
      {
        LODWORD(rhs.value) = 136315650;
        *(&rhs.value + 4) = "mov_submitSampleBuffer";
        LOWORD(rhs.flags) = 1024;
        *(&rhs.flags + 2) = 224;
        WORD1(rhs.epoch) = 1024;
        HIDWORD(rhs.epoch) = v27;
        _os_log_send_and_compose_impl(v31, 0, &lhs, 128, &dword_1962D5000, v28, v30, "<<<< FigVirtualDisplaySourceMovie >>>> %s: %d: got error %d", &rhs, 24, LODWORD(v39.value));
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_23;
    }

    v27 = v26(v16, v15, v17, 0, 0, v18, v19, v20, v21, v22, v23, v24, v25);
    if (v27)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v27 = 0;
  }

LABEL_23:
  *(*(*(a1 + 32) + 8) + 24) = v27;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ++*(*(a1 + 48) + 108);
  }
}

uint64_t __mov_resume_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (*(v1 + 8) == 1)
  {
    *(v1 + 8) = 2;
  }

  else
  {
    *(*(*(result + 32) + 8) + 24) = -12070;
  }

  return result;
}

double OUTLINED_FUNCTION_0_34(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

uint64_t OUTLINED_FUNCTION_1_31@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, __int16 a6, char a7, char a8)
{
  *(v8 - 40) = a1;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t FigPlayerGetTypeID()
{
  MEMORY[0x19A8D3660](&FigPlayerGetClassID_sRegisterFigPlayerTypeOnce, RegisterFigPlayerType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigPlaybackItemGetTypeID()
{
  MEMORY[0x19A8D3660](&FigPlaybackItemGetClassID_sRegisterFigPlaybackItemTypeOnce, RegisterFigPlaybackItemType);

  return CMBaseClassGetCFTypeID();
}

uint64_t ExtraPrivatePlayerSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t ExtraPrivatePlayerCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t ExtraPrivatePlayerBeginInterruption(uint64_t a1)
{
  v2 = *(CMBaseObjectGetVTable() + 24);
  if (!v2)
  {
    return 4294954514;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(a1);
}

uint64_t ExtraPrivatePlayerEndInterruption(uint64_t a1, uint64_t a2)
{
  v4 = *(CMBaseObjectGetVTable() + 24);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(a1, a2);
}

const char *FigPlayerPlaythroughPredictionGetDescription(unsigned int a1)
{
  if (a1 > 3)
  {
    return "INVALID";
  }

  else
  {
    return off_1E7480BB0[a1];
  }
}

const char *FigPlayerPlaybackStateGetDescription(unsigned int a1)
{
  if (a1 > 6)
  {
    return "INVALID";
  }

  else
  {
    return off_1E7480BD0[a1];
  }
}

const char *FigPlaybackRateChangeReasonGetDescription(int a1)
{
  if ((a1 - 1) > 0x2A)
  {
    return "Unknown";
  }

  else
  {
    return off_1E7480C08[a1 - 1];
  }
}

const char *FigPlaybackItemSeekReasonGetDescription(int a1)
{
  if ((a1 - 1) > 6)
  {
    return "Unknown";
  }

  else
  {
    return off_1E7480D60[a1 - 1];
  }
}

uint64_t FigPlaybackGetActionAtEndForString(const void *a1)
{
  if (CFEqual(a1, @"Stop"))
  {
    return 1;
  }

  if (CFEqual(a1, @"Advance"))
  {
    return 0;
  }

  if (CFEqual(a1, @"None"))
  {
    return 2;
  }

  if (CFEqual(a1, @"StopAtEndOfQueue"))
  {
    return 3;
  }

  return 0;
}

uint64_t FigPlaybackGetEffectiveActionAtEnd(uint64_t result, uint64_t a2)
{
  v2 = a2 < 2;
  if (result != 3)
  {
    v2 = 0;
  }

  if (result >= 3)
  {
    return v2;
  }

  else
  {
    return result;
  }
}

uint64_t FigPlayerReevaluateRouteConfigurationForReason(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    Mutable = CFStringCreateMutableCopy(v5, 0, Value);
  }

  else
  {
    Mutable = CFStringCreateMutable(v5, 0);
  }

  v9 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"%@", a3);
  }

  FigCFDictionarySetValue();
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (!v10)
  {
    v11 = 4294954514;
    if (!MutableCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v11 = v10(a1, MutableCopy);
  if (MutableCopy)
  {
LABEL_10:
    CFRelease(MutableCopy);
  }

LABEL_11:
  if (v9)
  {
    CFRelease(v9);
  }

  return v11;
}

uint64_t FigPlaybackCoordinatorRemoteRetainCopiedPlaybackCoordinator(uint64_t a1, void *a2)
{
  if (!a1)
  {
    FigPlaybackCoordinatorRemoteRetainCopiedPlaybackCoordinator_cold_2(&v11);
    return v11;
  }

  if (!a2)
  {
    FigPlaybackCoordinatorRemoteRetainCopiedPlaybackCoordinator_cold_1(&v11);
    return v11;
  }

  v4 = FigXPCRemoteClientRetainCopiedObject();
  if (v4)
  {
    return v4;
  }

  v6 = *MEMORY[0x1E695E480];
  v11 = 0;
  FigPlaybackCoordinatorGetClassID(v4, v5);
  v7 = CMDerivedObjectCreate();
  if (!v7)
  {
    FigPlaybackCoordinatorGetCMBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 56) = CFDictionaryCreateMutable(v6, 0, 0, 0);
    v9 = v11;
    FigPlaybackCoordinatorGetCMBaseObject();
    *CMBaseObjectGetDerivedStorage() = a1;
    v7 = FigXPCRemoteClientAssociateObject();
    FigXPCRemoteClientKillServerOnTimeout();
    if (v7)
    {
      if (v9)
      {
        CFRelease(v9);
      }
    }

    else
    {
      v7 = 0;
      *a2 = v9;
    }
  }

  return v7;
}

uint64_t FigXPCPlaybackCoordinatorClientStartAsSubclient(uint64_t a1, uint64_t a2)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (gCoordinatorRemoteClient)
  {
    FigXPCPlaybackCoordinatorClientStartAsSubclient_cold_1(&v6);
    return v6;
  }

  if (!a1)
  {
    FigXPCPlaybackCoordinatorClientStartAsSubclient_cold_2(&v6);
    return v6;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigXPCPlaybackCoordinatorClientStartAsSubclient_block_invoke;
  block[3] = &__block_descriptor_tmp_20;
  block[4] = a1;
  block[5] = a2;
  if (FigXPCPlaybackCoordinatorClientStartAsSubclient_onceToken == -1)
  {
    return 0;
  }

  dispatch_once(&FigXPCPlaybackCoordinatorClientStartAsSubclient_onceToken, block);
  return 0;
}

uint64_t __FigXPCPlaybackCoordinatorClientStartAsSubclient_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  gCoordinatorRemoteClient = *(result + 32);
  gHostingServerDeathNoticeName = v1;
  return result;
}

uint64_t remoteXPCPlaybackCoordinator_Finalize(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigXPCRemoteClientDisassociateObject();
  if (!FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendAsyncMessage();
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  v3 = *(DerivedStorage + 56);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 56) = 0;
  }

  return FigXPCRelease();
}

__CFString *remoteXPCPlaybackCoordinator_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigPlaybackCoordinator_RemoteXPC %p>", a1);
  return Mutable;
}

uint64_t remoteXPCPlaybackCoordinator_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v5 = FigXPCSendStdCopyPropertyMessage();
  }

  else
  {
    remoteXPCPlaybackCoordinator_CopyProperty_cold_1(&v7);
    v5 = v7;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

uint64_t remoteXPCPlaybackCoordinator_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v4 = FigXPCSendStdSetPropertyMessage();
  }

  else
  {
    remoteXPCPlaybackCoordinator_SetProperty_cold_1(&v6);
    v4 = v6;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v4;
}

uint64_t remoteXPCPlaybackCoordinator_EndSuspension(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v4)
  {
    return 4294954514;
  }

  v6 = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 16);
  return v4(a1, a2, &v6);
}

uint64_t __copy_assignment_8_8_t0w16_pa0_12868_16_pa0_63777_24_pa0_904_32(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_18(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return FigXPCRemoteClientKillServerOnTimeout();
}

void OUTLINED_FUNCTION_7_11(uint64_t a1)
{

  FigPlaybackCoordinatorGetCMBaseObject();
}

uint64_t FigAudioFileStreamFormatReaderCreateFromStream(const void *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  FigAudioFileShouldNotUseAllowList(a1, a2);
  FigFormatReaderGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    return v6;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  number = 0;
  qmemcpy(inPropertyData, "CRYLe3dicdcsduolfmrppsfrofnpofnitraasfcv", sizeof(inPropertyData));
  if (sRegisterFigAudioFileStreamInfoTypeOnce != -1)
  {
    FigAudioFileStreamFormatReaderCreateFromStream_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v9 = MEMORY[0x1E695E480];
  if (!Instance)
  {
    FigAudioFileStreamFormatReaderCreateFromStream_cold_4(&v25);
    v19 = v25;
    if (v25)
    {
      return v19;
    }

    goto LABEL_20;
  }

  v10 = Instance;
  *(Instance + 16) = CFRetain(a1);
  *(v10 + 328) = -1;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
    v19 = 4294954514;
    goto LABEL_16;
  }

  v13 = v12(CMBaseObject, *MEMORY[0x1E695FF78], *v9, &number);
  if (v13)
  {
    goto LABEL_28;
  }

  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, (v10 + 24));
    CFRelease(number);
    AudioFileInfos = FigDetermineAudioFileTypeHintAndCreateAudioFileInfos(a1, 0, 0, 0);
    v15 = AudioFileStreamOpen(v10, AudioFileStream_FigPropertyListenerProc, AudioFileStream_FigPacketsProc, AudioFileInfos, (v10 + 48));
    if (!v15)
    {
      AudioFileStreamSetProperty(*(v10 + 48), 0x6F707470u, 0x28u, inPropertyData);
      *(v10 + 32) = FigReentrantMutexCreate();
      *(v10 + 40) = FigSimpleMutexCreate();
      *(v10 + 72) = 0x10000;
      while (1)
      {
        v13 = PushBytesThroughParser(v10);
        if (v13)
        {
          break;
        }

        if (*(v10 + 56))
        {
          v16 = *(v10 + 256);
          if (v16 >= 1 && (v17 = *(v10 + 224), v17))
          {
            v18 = v16 * v17;
          }

          else
          {
            v18 = 0x10000;
          }

          *(v10 + 72) = v18;
          *DerivedStorage = v10;
          goto LABEL_20;
        }
      }

LABEL_28:
      v19 = v13;
      goto LABEL_16;
    }

    v19 = v15;
    FigAudioFileStreamFormatReaderCreateFromStream_cold_2();
  }

  else
  {
    FigAudioFileStreamFormatReaderCreateFromStream_cold_3(&v25);
    v19 = v25;
  }

LABEL_16:
  CFRelease(v10);
  if (v19)
  {
    return v19;
  }

LABEL_20:
  v20 = *DerivedStorage;
  *inPropertyData = 0;
  FigTrackReaderGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    return v6;
  }

  v21 = CMBaseObjectGetDerivedStorage();
  if (v20)
  {
    v22 = CFRetain(v20);
  }

  else
  {
    v22 = 0;
  }

  v19 = 0;
  *v21 = v22;
  DerivedStorage[1] = *inPropertyData;
  *a4 = 0;
  return v19;
}

void FigAudioFileStreamFormatReaderFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigAudioFileStreamFormatReaderCopyDebugDescription(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = CFCopyDescription(v3);
    CFStringAppendFormat(Mutable, 0, @"\tFigAudioFileStreamFormatReader: stream<%@>", v4);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"\tFigAudioFileStreamFormatReader: stream<%@>", 0);
  }

  return Mutable;
}

uint64_t FigAudioFileStreamFormatReaderCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFArray **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    FigAudioFileStreamFormatReaderCopyProperty_cold_1(&v22);
    return v22;
  }

  v8 = *DerivedStorage;
  *a4 = 0;
  if (CFEqual(a2, @"Duration"))
  {
    v9 = v8;
    v10 = 0;
    v11 = 1;
    goto LABEL_9;
  }

  if (CFEqual(a2, @"NominalDuration"))
  {
    v9 = v8;
    v10 = 0;
LABEL_8:
    v11 = 0;
LABEL_9:
    if (CopyAudioFileStreamDuration(v9, v10, v11, a3, a4))
    {
      return 0;
    }

    else
    {
      return 4294954513;
    }
  }

  if (CFEqual(a2, @"EstimatedDuration"))
  {
    v9 = v8;
    v10 = 1;
    goto LABEL_8;
  }

  if (CFEqual(a2, @"Identifier"))
  {
    v14 = kFigFormatReaderIdentifier_AudioFileStream;
LABEL_21:
    GaplessInfoDictionary = *v14;
LABEL_22:
    GaplessInfoDictionary = CFRetain(GaplessInfoDictionary);
LABEL_23:
    v12 = 0;
LABEL_24:
    *a4 = GaplessInfoDictionary;
    return v12;
  }

  if (CFEqual(a2, @"SampleCursorTimeAccuracyIsExact"))
  {
    v14 = MEMORY[0x1E695E4C0];
    goto LABEL_21;
  }

  if (CFEqual(a2, @"AccurateDurationIsKnown"))
  {
    v14 = MEMORY[0x1E695E4D0];
    v15 = *(v8 + 276);
    goto LABEL_19;
  }

  if (CFEqual(a2, @"iTunesGaplessInfo"))
  {
    GaplessInfoDictionary = CreateGaplessInfoDictionary(v8);
    goto LABEL_23;
  }

  if (CFEqual(a2, @"iTunesSoundCheckVolumeNormalization"))
  {
    if (*(v8 + 408))
    {
      LODWORD(v22) = 0;
      ioPropertyDataSize = 4;
      if (!AudioFormatGetProperty(0x73636462u, 8u, (v8 + 408), &ioPropertyDataSize, &v22))
      {
        GaplessInfoDictionary = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &v22);
        if (GaplessInfoDictionary)
        {
          goto LABEL_23;
        }
      }
    }

    return 4294954512;
  }

  if (CFEqual(a2, @"SoundCheckInfo"))
  {
    GaplessInfoDictionary = *(v8 + 408);
    if (!GaplessInfoDictionary)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (CFEqual(a2, @"LyricsScanCompleted"))
  {
    v14 = MEMORY[0x1E695E4D0];
    v15 = *(v8 + 320);
LABEL_19:
    if (!v15)
    {
      v14 = MEMORY[0x1E695E4C0];
    }

    goto LABEL_21;
  }

  if (CFEqual(a2, @"Lyrics"))
  {
    GaplessInfoDictionary = *(v8 + 312);
    if (!GaplessInfoDictionary)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (CFEqual(a2, @"MetadataReaders"))
  {
    EnsureMetadataReaderCreated_0(v8, a3);
    if (!*(v8 + 336))
    {
      return 0;
    }

    Mutable = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(Mutable, *(v8 + 336));
    v12 = 0;
    *a4 = Mutable;
    return v12;
  }

  if (CFEqual(a2, @"MetadataReader") || CFEqual(a2, @"FormatSpecificMetadataReader"))
  {
    v12 = EnsureMetadataReaderCreated_0(v8, a3);
    GaplessInfoDictionary = *(v8 + 336);
    if (GaplessInfoDictionary)
    {
      GaplessInfoDictionary = CFRetain(GaplessInfoDictionary);
    }

    goto LABEL_24;
  }

  if (CFEqual(a2, @"ID3MetadataReader"))
  {
    EnsureMetadataReaderCreated_0(v8, a3);
    GaplessInfoDictionary = *(v8 + 336);
    if (!GaplessInfoDictionary)
    {
      goto LABEL_23;
    }

    if (*(v8 + 344))
    {
      goto LABEL_22;
    }

    goto LABEL_66;
  }

  if (!CFEqual(a2, @"ID3MetadataReaderBC"))
  {
    if (!CFEqual(a2, @"VorbisCommentMetadataReader"))
    {
      if (CFEqual(a2, @"Chapters"))
      {
        EnsureMetadataReaderCreated_0(v8, a3);
        v20 = *(v8 + 336);
        if (!v20)
        {
          v12 = 0;
          *a4 = 0;
          return v12;
        }

        if (*(v8 + 344))
        {
          GaplessInfoDictionary = FigID3MetadataCreateChapterArrayFromTopLevelTableOfContents(a3, v20);
        }

        else
        {
          GaplessInfoDictionary = FigVorbisCommentMetadataCreateChapterArray(a3, v20);
        }

        goto LABEL_23;
      }

      return 4294954512;
    }

    EnsureMetadataReaderCreated_0(v8, a3);
    GaplessInfoDictionary = *(v8 + 336);
    if (!GaplessInfoDictionary)
    {
      goto LABEL_23;
    }

    if (*(v8 + 346))
    {
      goto LABEL_22;
    }

LABEL_66:
    GaplessInfoDictionary = 0;
    goto LABEL_23;
  }

  v22 = 0;
  v17 = *(v8 + 328);
  if (v17 < 0)
  {
    v19 = 0;
    v12 = 0;
  }

  else
  {
    FigMetadataReaderCreateForID3WithBackwardCompatibility(a3, *(v8 + 16), v17, &v22);
    v12 = v18;
    v19 = v22;
  }

  *a4 = v19;
  return v12;
}

uint64_t FigAudioFileStreamFormatReaderSetProperty(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"MarkPacketOffsetFromEOF"))
  {
    return 4294954512;
  }

  CFNumberGetValue(a3, kCFNumberSInt32Type, (*DerivedStorage + 324));
  return 0;
}

uint64_t CopyAudioFileStreamDuration(uint64_t a1, int a2, int a3, const __CFAllocator *a4, CFDictionaryRef *a5)
{
  v18 = **&MEMORY[0x1E6960C70];
  GetAudioFileStreamPacketTableInfo(a1);
  if (*(a1 + 347))
  {
    v10 = *(a1 + 352);
    if (!a3)
    {
      v11 = *(a1 + 360);
      v12 = *(a1 + 364);
      if (((v11 + v12) ^ 0x7FFFFFFFFFFFFFFFLL) < v10)
      {
        CopyAudioFileStreamDuration_cold_1();
        return 0;
      }

      v10 += v12 + v11;
    }
  }

  else
  {
    if (!a2 && !*(a1 + 276))
    {
      return 0;
    }

    do
    {
      AudioFileStreamPacketAndFrameCount = GetAudioFileStreamPacketAndFrameCount(a1);
    }

    while (AudioFileStreamPacketAndFrameCount == 1836020325);
    if (AudioFileStreamPacketAndFrameCount)
    {
      return 0;
    }

    v10 = *(a1 + 296);
    if (a3)
    {
      DefaultEnhanced = FigGaplessInfoCreateDefaultEnhanced(*(a1 + 264));
      LODWORD(v17.value) = 0;
      if (FigCFDictionaryGetInt32IfPresent())
      {
        v10 = (v10 - SLODWORD(v17.value)) & ~((v10 - SLODWORD(v17.value)) >> 63);
      }

      if (DefaultEnhanced)
      {
        CFRelease(DefaultEnhanced);
      }
    }
  }

  CMTimeMake(&v18, v10, *(a1 + 252));
  v17 = v18;
  v13 = CMTimeCopyAsDictionary(&v17, a4);
  *a5 = v13;
  if (v13)
  {
    return 1;
  }

  CopyAudioFileStreamDuration_cold_2();
  return 0;
}

uint64_t GetAudioFileStreamPacketAndFrameCount(uint64_t a1)
{
  if (!*(a1 + 272))
  {
    ioPropertyDataSize = 0;
    if (*(a1 + 276))
    {
      LODWORD(v10) = 8;
      Property = AudioFileStreamGetProperty(*(a1 + 48), 0x70636E74u, &v10, (a1 + 288));
      if (Property)
      {
        return Property;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
      ioPropertyDataSize = 24;
      v10 = *(a1 + 24) - *(a1 + 304);
      v3 = AudioFileStreamGetProperty(*(a1 + 48), 0x6279706Bu, &ioPropertyDataSize, &v10);
      if (v3 == 1836020325)
      {
        FigSimpleMutexLock();
        Property = PushBytesThroughParser(a1);
        FigSimpleMutexUnlock();
        if (Property)
        {
          return Property;
        }

        v4 = AudioFileStreamGetProperty(*(a1 + 48), 0x6279706Bu, &ioPropertyDataSize, &v10);
        if (v4)
        {
          return v4;
        }
      }

      else
      {
        Property = v3;
        if (v3)
        {
          return Property;
        }
      }

      *(a1 + 288) = v11;
    }

    v5 = *(a1 + 228);
    v6 = *(a1 + 288);
    if (v5)
    {
      v7 = v6 * v5;
LABEL_21:
      *(a1 + 296) = v7;
      goto LABEL_22;
    }

    if (!v6)
    {
      *(a1 + 296) = 0;
LABEL_22:
      Property = 0;
      *(a1 + 272) = 1;
      return Property;
    }

    v10 = 0;
    v4 = MapPacketNumberToFrameNumber(a1, v6 - 1, &v10);
    if (!v4)
    {
      if (v6 < 2)
      {
        v8 = 0;
      }

      else
      {
        v8 = v10 / (v6 - 1);
      }

      v7 = v8 + v10;
      goto LABEL_21;
    }

    return v4;
  }

  return 0;
}

uint64_t MapPacketNumberToFrameNumber(uint64_t a1, int64_t a2, int64_t *a3)
{
  v4 = *(a1 + 228);
  if (v4)
  {
    v5 = *(a1 + 228);
  }

  else
  {
    v5 = 1;
  }

  if ((0x7FFFFFFFFFFEA06FLL / v5) <= a2)
  {
    Property = 0;
    *a3 = 0x7FFFFFFFFFFEA06FLL;
  }

  else
  {
    if (v4)
    {
      Property = 0;
      v7 = v4 * a2;
    }

    else
    {
      outPropertyData[0] = 0;
      outPropertyData[1] = a2;
      outPropertyData[2] = 0;
      ioPropertyDataSize = 24;
      Property = AudioFileStreamGetProperty(*(a1 + 48), 0x706B6672u, &ioPropertyDataSize, outPropertyData);
      if (Property)
      {
        MapPacketNumberToFrameNumber_cold_1();
        return Property;
      }

      v7 = outPropertyData[0];
    }

    *a3 = v7;
  }

  return Property;
}

uint64_t FigAudioFileStreamFormatReaderCopyTrackByIndex(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2)
  {
    return 4294954453;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v10 = *(DerivedStorage + 8);
    if (v10)
    {
      v10 = CFRetain(v10);
    }

    *a3 = v10;
  }

  if (a4)
  {
    *a4 = 1936684398;
  }

  result = 0;
  if (a5)
  {
    *a5 = 1;
  }

  return result;
}

double FigAudioFileStreamFormatReaderCopyTrackByID(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  if (a2 == 1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a3)
    {
      v9 = *(DerivedStorage + 8);
      if (v9)
      {
        v9 = CFRetain(v9);
      }

      *a3 = v9;
    }

    if (a4)
    {
      *a4 = 1936684398;
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954453, "-+= FFR_AudioFileStream =+-", 3315, v4);
  }

  return result;
}

uint64_t FigAudioFileStreamFormatReaderCopyTrackByType(uint64_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  result = 4294954453;
  if (!a2 && a3 == 1936684398)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a4)
    {
      v9 = *(DerivedStorage + 8);
      if (v9)
      {
        v9 = CFRetain(v9);
      }

      *a4 = v9;
    }

    result = 0;
    if (a5)
    {
      *a5 = 1;
    }
  }

  return result;
}

void FigAudioFileStreamTrackReaderFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigAudioFileStreamTrackReaderCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (*DerivedStorage)
  {
    v3 = *(*DerivedStorage + 16);
    if (v3)
    {
      v4 = CFCopyDescription(v3);
      CFStringAppendFormat(Mutable, 0, @"\tFigAudioFileStreamTrackReader: stream<%@> trackID %d", v4, 1);
      if (v4)
      {
        CFRelease(v4);
      }
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"\tFigAudioFileStreamTrackReader: stream<%@> trackID %d", 0, 1);
    }
  }

  return Mutable;
}

uint64_t FigAudioFileStreamTrackReaderCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    FigAudioFileStreamTrackReaderCopyProperty_cold_1(&v19);
    return v19;
  }

  v8 = *DerivedStorage;
  *a4 = 0;
  if (CFEqual(a2, @"TrackFormatDescriptionArray"))
  {
    if (!*(v8 + 264))
    {
      return 0;
    }

    v9 = CFArrayCreate(a3, (v8 + 264), 1, MEMORY[0x1E695E9C0]);
    goto LABEL_12;
  }

  if (!CFEqual(a2, @"TrackTimescale"))
  {
    if (CFEqual(a2, @"TrackEnabled"))
    {
      v14 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      if (!CFEqual(a2, @"LoudnessInfo"))
      {
        if (!CFEqual(a2, @"EstimatedDataRate"))
        {
          return 4294954512;
        }

        v16 = vcvtd_n_f64_u32(*(v8 + 424), 3uLL);
        v17 = v16;
        v10 = *MEMORY[0x1E695E480];
        p_valuePtr = &v17;
        v12 = kCFNumberFloat32Type;
        goto LABEL_7;
      }

      v14 = *(v8 + 416);
      if (!v14)
      {
        v15 = 0;
        goto LABEL_13;
      }
    }

    v9 = CFRetain(v14);
    goto LABEL_12;
  }

  valuePtr = *(v8 + 252);
  v10 = *MEMORY[0x1E695E480];
  p_valuePtr = &valuePtr;
  v12 = kCFNumberSInt32Type;
LABEL_7:
  v9 = CFNumberCreate(v10, v12, p_valuePtr);
LABEL_12:
  v15 = v9;
LABEL_13:
  result = 0;
  *a4 = v15;
  return result;
}

uint64_t FigAudioFileStreamTrackReaderGetTrackInfo(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a3)
  {
    *a3 = 1936684398;
  }

  if (a2)
  {
    *a2 = 1;
  }

  return 0;
}

uint64_t FigAudioFileStreamTrackReaderCopySampleCursorService(uint64_t a1, void *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigSampleCursorServiceGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    FigAudioFileStreamTrackReaderCopySampleCursorService_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (v3)
    {
      v6 = CFRetain(v3);
    }

    else
    {
      v6 = 0;
    }

    *DerivedStorage = v6;
    *a2 = 0;
  }

  return v4;
}

void FigAudioFileStreamCursorService_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigAudioFileStreamCursorService_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigFormatReader_AudioFileStream_CursorService %p>{ samplerate %d }", a1, *(*DerivedStorage + 252));
  return Mutable;
}

uint64_t createFigAudioPacketAccessor(const void *a1, void *a2)
{
  FigSampleCursorGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    createFigAudioPacketAccessor_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a1)
    {
      v6 = CFRetain(a1);
    }

    else
    {
      v6 = 0;
    }

    *DerivedStorage = v6;
    DerivedStorage[1] = 0;
    *a2 = 0;
  }

  return v4;
}

void FigAudioFileStreamCursor_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigAudioFileStreamCursor_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigFormatReader_AudioFile_SampleCursor %p>{ curPacketNum %lld }", a1, *(DerivedStorage + 8));
  return Mutable;
}

uint64_t FigAudioFileStreamCursor_copyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CMTimeValue *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    FigAudioFileStreamCursor_copyProperty_cold_1(&outPropertyData);
    return LODWORD(outPropertyData.value);
  }

  v9 = DerivedStorage;
  *a4 = 0;
  if (!CFEqual(a2, @"CursorPlayableThroughEndOfTrack"))
  {
    if (!CFEqual(a2, @"CursorPlayableHorizon"))
    {
      if (CFEqual(a2, @"ApproximateSampleLocation"))
      {
        v37 = CMBaseObjectGetDerivedStorage();
        v38 = *v37;
        LODWORD(v39) = *(*v37 + 228);
        if (v39 <= 1)
        {
          v39 = 1;
        }

        else
        {
          v39 = v39;
        }

        if (v37[1] >= (0x7FFFFFFFFFFEA06FLL / v39))
        {
          return 4294954454;
        }

        v40 = v37;
        if (!*(v38 + 280))
        {
          outPropertyData.value = 0;
          v58[0] = 8;
          AudioFileStreamGetProperty(*(v38 + 48), 0x646F6666u, v58, &outPropertyData);
          *(v38 + 280) = 1;
          *(v38 + 304) = *(v38 + 128) + outPropertyData.value;
        }

        v41 = *(v38 + 224);
        if (v41)
        {
          v42 = *(v38 + 304) + v40[1] * v41;
        }

        else
        {
          memset(&outPropertyData, 0, sizeof(outPropertyData));
          v58[0] = 24;
          *&outPropertyData.timescale = v40[1];
          p_outPropertyData = &outPropertyData;
          Property = AudioFileStreamGetProperty(*(v38 + 48), 0x706B6279u, v58, &outPropertyData);
          if (Property == 1836020325)
          {
            p_outPropertyData = (v38 + 88);
          }

          else
          {
            v27 = Property;
            if (Property)
            {
              return v27;
            }
          }

          v42 = *(v38 + 304) + p_outPropertyData->value;
        }

        outPropertyData.value = v42;
        value = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &outPropertyData);
        goto LABEL_67;
      }

      if (!CFEqual(a2, @"SampleDependencyAttributes"))
      {
        return 4294954512;
      }

      v44 = CMBaseObjectGetDerivedStorage();
      value = 0;
      outPropertyData.value = 0;
      *v58 = 0;
      if (!*(*v44 + 400))
      {
        goto LABEL_67;
      }

      SampleDependencyInfo = figAudioFileStreamCursor_getSampleDependencyInfo(a1, v58, &v58[1]);
      if (SampleDependencyInfo)
      {
        return SampleDependencyInfo;
      }

      v27 = FigPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary();
      value = outPropertyData.value;
      if (!v27)
      {
        goto LABEL_67;
      }

      if (outPropertyData.value)
      {
        CFRelease(outPropertyData.value);
      }

      return v27;
    }

    memset(&v52, 0, sizeof(v52));
    memset(&outPropertyData, 0, sizeof(outPropertyData));
    v62 = 24;
    v24 = *v9;
    v23 = v9[1];
    LODWORD(v25) = *(*v9 + 228);
    if (v25 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v25;
    }

    if (v23 >= (0x7FFFFFFFFFFEA06FLL / v25))
    {
      v52 = **&MEMORY[0x1E6960CC0];
      goto LABEL_66;
    }

    v61 = 0;
    *&outPropertyData.timescale = v23;
    v26 = AudioFileStreamGetProperty(*(v24 + 48), 0x706B6279u, &v62, &outPropertyData);
    v27 = v26;
    if (v26 == 1836020325)
    {
      FigSimpleMutexLock();
      v27 = PushBytesThroughParser(v24);
      FigSimpleMutexUnlock();
      if (v27)
      {
        return v27;
      }

      v27 = AudioFileStreamGetProperty(*(v24 + 48), 0x706B6279u, &v62, &outPropertyData);
      if (v27)
      {
        return v27;
      }
    }

    else if (v26)
    {
      return v27;
    }

    v28 = *(v24 + 16);
    v29 = outPropertyData.value;
    v30 = *(v24 + 304);
    v31 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v31 && (v32 = v31(v28, v30 + v29, &v61), v32 != -12782))
    {
      v27 = v32;
      if (v32)
      {
        goto LABEL_65;
      }

      v33 = v61 + outPropertyData.value;
    }

    else
    {
      v61 = *(v24 + 24) - (outPropertyData.value + *(v24 + 304));
      v33 = v61 + outPropertyData.value;
    }

    v59 = 0;
    v60 = 0;
    *ioPropertyDataSize = 0;
    v56 = 0;
    v57 = 0;
    *v58 = v33;
    v54 = 24;
    v34 = AudioFileStreamGetProperty(*(v24 + 48), 0x6279706Bu, &v54, v58);
    v27 = v34;
    if (v34 == 1836020325)
    {
      FigSimpleMutexLock();
      v27 = PushBytesThroughParser(v24);
      FigSimpleMutexUnlock();
      if (v27)
      {
        goto LABEL_65;
      }

      v27 = AudioFileStreamGetProperty(*(v24 + 48), 0x6279706Bu, &v54, v58);
      if (v27)
      {
        goto LABEL_65;
      }
    }

    else if (v34)
    {
      goto LABEL_65;
    }

    v35 = *(v24 + 228);
    if (v35)
    {
      v27 = 0;
      v36 = (v59 - v9[1]) * v35;
    }

    else
    {
      v53 = 24;
      v56 = v59;
      v27 = AudioFileStreamGetProperty(*(v24 + 48), 0x706B6672u, &v53, ioPropertyDataSize);
      v36 = *ioPropertyDataSize;
    }

    CMTimeMake(&v52, v36, *(v24 + 252));
LABEL_65:
    if (v27)
    {
      return v27;
    }

LABEL_66:
    outPropertyData = v52;
    value = CMTimeCopyAsDictionary(&outPropertyData, a3);
    goto LABEL_67;
  }

  v10 = CMBaseObjectGetDerivedStorage();
  v11 = *v10;
  v12 = *(*v10 + 16);
  v13 = *(*v10 + 304);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v14)
  {
    return 4294954514;
  }

  *v58 = 0;
  SampleDependencyInfo = v14(v12, v13, v58);
  if (SampleDependencyInfo)
  {
    return SampleDependencyInfo;
  }

  if (*v58 + *(v11 + 304) >= *(v11 + 24))
  {
    goto LABEL_37;
  }

  v16 = v10[1];
  v17 = *(v11 + 136);
  if (v16 >= v17 && v16 < *(v11 + 152) + v17)
  {
    v18 = *(v11 + 16);
    v19 = *(v11 + 88);
    v20 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v20)
    {
      SampleDependencyInfo = v20(v18, v19, v58);
      if (SampleDependencyInfo)
      {
        return SampleDependencyInfo;
      }

      if (*v58 + *(v11 + 88) < *(v11 + 24))
      {
        v16 = v10[1];
        goto LABEL_12;
      }

LABEL_37:
      v22 = MEMORY[0x1E695E4D0];
      goto LABEL_38;
    }

    return 4294954514;
  }

LABEL_12:
  outPropertyData.value = 0;
  ioPropertyDataSize[0] = 24;
  *&outPropertyData.timescale = v16;
  outPropertyData.epoch = 0;
  v21 = AudioFileStreamGetProperty(*(v11 + 48), 0x706B6279u, ioPropertyDataSize, &outPropertyData);
  if (v21 == 1836020325)
  {
    v22 = MEMORY[0x1E695E4C0];
LABEL_38:
    value = CFRetain(*v22);
LABEL_67:
    v27 = 0;
    *a4 = value;
    return v27;
  }

  v27 = v21;
  if (!v21)
  {
    v45 = *(v11 + 16);
    v46 = outPropertyData.value;
    v47 = *(v11 + 304);
    v48 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v48)
    {
      SampleDependencyInfo = v48(v45, v47 + v46, v58);
      if (!SampleDependencyInfo)
      {
        if (*(v11 + 304) + outPropertyData.value + *v58 >= *(v11 + 24))
        {
          v22 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v22 = MEMORY[0x1E695E4C0];
        }

        goto LABEL_38;
      }

      return SampleDependencyInfo;
    }

    return 4294954514;
  }

  return v27;
}

uint64_t FillPacketRequestFromCache(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  *a4 = 0;
  *a5 = 0;
  v6 = (a1 + 16);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v9 = *(a2 + 16);
  v10 = v9 + *a2;
  v11 = v10 - *a1;
  if (v10 >= *a1 && v10 < *a1 + v5)
  {
    v15 = *(a2 + 8) - v9;
    v16 = v5 - v11;
    if (v15 >= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    if (*(a1 + 56))
    {
      v18 = *(a1 + 64);
      v19 = v17 + v11 <= v18 || v18 < v11;
      v20 = !v19 && v15 < v16;
      if (v20 && v18 != v11)
      {
        v17 = v18 - v11;
        *a5 = 1;
      }
    }

    v22 = *(a1 + 32);
    if (v22)
    {
      v24 = *(a2 + 16);
      v23 = *(a2 + 24);
      v25 = (v22 + 16 * v11);
      DataLength = CMBlockBufferGetDataLength(*(a2 + 48));
      v27 = *v25;
      v28 = &v25[2 * v17];
      v29 = *(v28 - 2);
      v30 = *(v28 - 1);
      if (v17)
      {
        v31 = (v23 + 16 * v24);
        v32 = v17;
        do
        {
          v33 = *v25;
          v25 += 2;
          *v31 = v33;
          *v31++ += DataLength - v27;
          --v32;
        }

        while (v32);
      }

      if ((v27 & 0x8000000000000000) != 0)
      {
        FillPacketRequestFromCache_cold_1(&v48);
        return v48;
      }

      v34 = v29 - v27;
      if (*(a1 + 56))
      {
        v35 = *(a1 + 64);
        if (v17 + v11 > v35 && v35 >= v11)
        {
          *(a2 + 56) = 1;
          *(a2 + 64) = v35 - v11 + *(a2 + 16);
        }
      }

      v37 = *(a2 + 48);
      v38 = *(a1 + 24);
      v39 = v34 + v30;
    }

    else
    {
      v37 = *(a2 + 48);
      v38 = *(a1 + 24);
      v39 = v17 * a3;
      v27 = v11 * a3;
    }

    appended = CMBlockBufferAppendBufferReference(v37, v38, v27, v39, 0);
    v40 = *(a1 + 40);
    v41 = *(a2 + 16);
    if (v40 && v17)
    {
      v42 = (v40 + 8 * v11);
      v43 = (*(a2 + 32) + 8 * v41);
      v44 = v17;
      do
      {
        v45 = *v42++;
        *v43++ = v45;
        --v44;
      }

      while (v44);
      v41 = *(a2 + 16);
    }

    *(a2 + 16) = v41 + v17;
    *a4 = 1;
    v9 = *(a2 + 16);
  }

  else
  {
    appended = 0;
  }

  if (v9 < *(a2 + 8))
  {
    v46 = *(a1 + 24);
    if (v46)
    {
      CFRelease(v46);
    }

    *v6 = 0;
    v6[1] = 0;
    *a1 = xmmword_196E732D0;
    *(a1 + 56) = 0;
  }

  return appended;
}

uint64_t FigAudioFileStreamCursor_copy(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSampleCursorGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    FigAudioFileStreamCursor_copy_cold_1();
  }

  else
  {
    v5 = CMBaseObjectGetDerivedStorage();
    *v5 = *DerivedStorage;
    v6 = *v5;
    if (v6)
    {
      CFRetain(v6);
    }

    *a2 = 0;
  }

  return v4;
}

uint64_t FigAudioFileStreamCursor_compareInDecodeOrder(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  v5 = *(v3 + 8);
  v6 = v4 < v5;
  v7 = v4 > v5;
  if (v6)
  {
    return -1;
  }

  else
  {
    return v7;
  }
}

uint64_t FigAudioFileStreamCursor_copyFormatDescription(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(*DerivedStorage + 264);
    if (v4)
    {
      v4 = CFRetain(v4);
    }

    *a2 = v4;
  }

  return 0;
}

void AudioFileStream_FigPropertyListenerProc(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 > 1886283374)
  {
    if (a3 > 1919316847)
    {
      if (a3 != 1919316848)
      {
        if (a3 != 1935893603)
        {
          return;
        }

        v25[0] = 8;
        v7 = *(a1 + 48);
        v8 = (a1 + 408);
        v9 = 1935893603;
        goto LABEL_34;
      }

      v25[0] = 16;
      *(a1 + 376) = 0;
      if (!AudioFileStreamGetProperty(*(a1 + 48), 0x72667370u, v25, (a1 + 384)) && !*(a1 + 347))
      {
        *(a1 + 376) = 1;
      }

      return;
    }

    if (a3 == 1886547302)
    {
      v25[0] = 4;
      *(a1 + 368) = 0;
      if (!AudioFileStreamGetProperty(*(a1 + 48), 0x70726D66u, v25, (a1 + 372)) && !*(a1 + 347))
      {
        *(a1 + 368) = 1;
      }

      return;
    }

    if (a3 != 1919247481)
    {
      if (a3 == 1886283375)
      {

        GetAudioFileStreamPacketTableInfo(a1);
      }

      return;
    }

    if (*(a1 + 56))
    {
      return;
    }

    *(a1 + 56) = 1;
    v28 = 0;
    outPropertyDataSize = 0;
    outWritable = 0;
    ioPropertyDataSize = 40;
    *v25 = 0;
    v23 = 0;
    v24 = 8;
    v22 = 4;
    Property = AudioFileStreamGetProperty(*(a1 + 48), 0x64666D74u, &ioPropertyDataSize, (a1 + 208));
    if (Property)
    {
      v20 = Property;
      AudioFileStream_FigPropertyListenerProc_cold_1();
    }

    else
    {
      outPropertyData = 0;
      v21 = 4;
      AudioFileStreamGetProperty(*(a1 + 48), 0x72726170u, &v21, &outPropertyData);
      *(a1 + 400) = outPropertyData != 0;
      v5 = AudioFileStreamGetProperty(*(a1 + 48), 0x646F6666u, &v24, v25);
      if (!v5)
      {
        if (AudioFileStreamGetProperty(*(a1 + 48), 0x706B7562u, &v22, &v23))
        {
          v6 = *(a1 + 208);
          if (*(a1 + 216) == 778924083)
          {
            v23 = (64512000.0 / v6);
          }
        }

        else
        {
          v6 = *(a1 + 208);
        }

        *(a1 + 248) = v23;
        *(a1 + 280) = 1;
        *(a1 + 304) = *(a1 + 128) + *v25;
        if (v6 <= 0.0)
        {
          AudioFileStream_FigPropertyListenerProc_cold_4(&outPropertyData);
          v14 = 0;
        }

        else
        {
          *(a1 + 252) = v6;
          v10 = *(a1 + 228);
          if (v10)
          {
            v11 = v10 - (v10 & (v6 / 2));
            if ((v10 & (v6 / 2)) == 0)
            {
              v11 = 0;
            }

            v12 = v11 + v6 / 2;
            if (v10 > v12)
            {
              v13 = 1;
            }

            else
            {
              v13 = v12 / v10;
            }

            *(a1 + 256) = v13;
          }

          v14 = 0;
          if (AudioFileStreamGetPropertyInfo(*(a1 + 48), 0x6D676963u, &outPropertyDataSize, &outWritable) || !outPropertyDataSize)
          {
            goto LABEL_56;
          }

          v14 = malloc_type_malloc(outPropertyDataSize, 0x6EDA67AFuLL);
          if (v14)
          {
            v15 = AudioFileStreamGetProperty(*(a1 + 48), 0x6D676963u, &outPropertyDataSize, v14);
            if (!v15)
            {
LABEL_56:
              PropertyInfo = AudioFileStreamGetPropertyInfo(*(a1 + 48), 0x636D6170u, &v28, &outWritable);
              v17 = 0;
              v18 = v28;
              if (!PropertyInfo && v28)
              {
                v17 = malloc_type_malloc(v28, 0x83BF7582uLL);
                v19 = AudioFileStreamGetProperty(*(a1 + 48), 0x636D6170u, &v28, v17);
                if (v19)
                {
                  v20 = v19;
                  goto LABEL_70;
                }

                v18 = v28;
              }

              v20 = CMAudioFormatDescriptionCreate(*MEMORY[0x1E695E480], (a1 + 208), v18, v17, outPropertyDataSize, v14, 0, (a1 + 264));
              if (!v20)
              {
LABEL_61:
                free(v14);
                free(v17);
                *(a1 + 64) = v20;
                return;
              }

LABEL_70:
              FigFormatDescriptionRelease();
              *(a1 + 264) = 0;
              goto LABEL_61;
            }

            v20 = v15;
LABEL_65:
            v17 = 0;
            goto LABEL_70;
          }

          AudioFileStream_FigPropertyListenerProc_cold_3(&outPropertyData);
        }

        v17 = 0;
        v20 = outPropertyData;
        goto LABEL_70;
      }

      v20 = v5;
      AudioFileStream_FigPropertyListenerProc_cold_2();
    }

    v14 = 0;
    goto LABEL_65;
  }

  if (a3 <= 1768174436)
  {
    if (a3 != 1280922179)
    {
      if (a3 != 1651663220)
      {
        return;
      }

      v25[0] = 4;
      v7 = *(a1 + 48);
      v8 = (a1 + 424);
      v9 = 1651663220;
      goto LABEL_34;
    }

    v25[0] = 8;
    if (!*(a1 + 312) && !AudioFileStreamGetProperty(*(a1 + 48), 0x4C595243u, v25, (a1 + 312)) && *(a1 + 312))
    {
      *(a1 + 320) = 1;
    }
  }

  else
  {
    if (a3 != 1768174437)
    {
      if (a3 != 1819243876)
      {
        if (a3 == 1885564532 && !*(a1 + 272))
        {
          *(a1 + 276) = 1;
        }

        return;
      }

      v25[0] = 8;
      v7 = *(a1 + 48);
      v8 = (a1 + 416);
      v9 = 1819243876;
LABEL_34:
      AudioFileStreamGetProperty(v7, v9, v25, v8);
      return;
    }

    v25[0] = 0;
    outPropertyData = 4;
    if (*(a1 + 328) == -1 && !AudioFileStreamGetProperty(*(a1 + 48), 0x69643365u, &outPropertyData, v25))
    {
      *(a1 + 328) = *(a1 + 104) + *(a1 + 88) + v25[0];
    }
  }
}

uint64_t RegisterFigAudioFileStreamInfoType()
{
  result = _CFRuntimeRegisterClass();
  sFigAudioFileStreamInfoID = result;
  return result;
}

double InitFigAudioFileStreamInfo(uint64_t a1)
{
  *(a1 + 432) = 0;
  result = 0.0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void FinalizeFigAudioFileStreamInfo(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    CFRelease(v3);
  }

  free(*(a1 + 168));
  free(*(a1 + 176));
  FigFormatDescriptionRelease();
  v4 = *(a1 + 48);
  if (v4)
  {
    AudioFileStreamClose(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
  }

  FigSimpleMutexDestroy();
  FigSimpleMutexDestroy();
  v6 = *(a1 + 312);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 408);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 416);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 336);
  if (v9)
  {

    CFRelease(v9);
  }
}

uint64_t OUTLINED_FUNCTION_2_30()
{
  *(v0 - 144) = *(v0 - 176);
  *(v0 - 128) = *(v0 - 160);
  return v0 - 144;
}

void *OUTLINED_FUNCTION_4_26(size_t a1)
{

  return malloc_type_malloc(a1, 0x10000404A09149AuLL);
}

__n128 OUTLINED_FUNCTION_5_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a10, uint64_t a9, __n128 a11, unint64_t a12)
{
  result = a11;
  *v12 = a11;
  v12[1].n128_u64[0] = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_19()
{
  *(v0 + 432) = 0;
  *(v0 + 376) = 0;
  return *(v0 + 48);
}

CMTime *OUTLINED_FUNCTION_8_12(int64_t a1)
{
  v4 = *(v1 + 208);

  return CMTimeMake((v2 - 176), a1, v4);
}

__n128 OUTLINED_FUNCTION_11_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a31, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __n128 a32, uint64_t a33)
{
  result = a32;
  *(v33 - 144) = a32;
  *(v33 - 128) = a33;
  return result;
}

void *OUTLINED_FUNCTION_13_7(size_t a1)
{

  return malloc_type_malloc(a1, 0x1000040451B5BE8uLL);
}

uint64_t FigDataChannelResourceServer_CreateServedState(const void *a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a1)
  {
    FigDataChannelResourceServer_CreateServedState_cold_5(v11);
LABEL_13:
    v6 = 0;
LABEL_16:
    v9 = v11[0];
    goto LABEL_9;
  }

  if (!a2)
  {
    FigDataChannelResourceServer_CreateServedState_cold_4(v11);
    goto LABEL_13;
  }

  if (!a3)
  {
    FigDataChannelResourceServer_CreateServedState_cold_3(v11);
    goto LABEL_13;
  }

  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004023CB03E4uLL);
  if (!v6)
  {
    FigDataChannelResourceServer_CreateServedState_cold_2(v11);
    goto LABEL_16;
  }

  v7 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v6[2] = v7;
  if (!v7)
  {
    FigDataChannelResourceServer_CreateServedState_cold_1(v11);
    goto LABEL_16;
  }

  v6[1] = CFRetain(a1);
  if (dword_1EAF16D10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = 0;
  *a3 = v6;
  v6 = 0;
LABEL_9:
  FigDataChannelResourceServer_DisposeServedState(v6);
  return v9;
}

void AssureDefaultAttributes(uint64_t a1, const __CFAllocator *a2, CMFormatDescriptionRef desc)
{
  colorComponentsOut[4] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 40))
  {
    displayFlagsOut = 0;
    *verticalJustificationOut = 0;
    localFontIDOut = 0;
    *italicOut = 0;
    underlineOut = 0;
    fontNameOut = 0;
    fontSizeOut = 0.0;
    v49 = 0;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    v42 = 0u;
    v40 = 0;
    v39 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    if (desc)
    {
      if (CMFormatDescriptionGetMediaType(desc) == 1935832172 && CMFormatDescriptionGetMediaSubType(desc) == 1937010800 || CMFormatDescriptionGetMediaType(desc) == 1668310898 || CMFormatDescriptionGetMediaType(desc) == 1952807028 && CMFormatDescriptionGetMediaSubType(desc) == 1634301044)
      {
        v6 = *(MEMORY[0x1E695F058] + 16);
        *(a1 + 8) = *MEMORY[0x1E695F058];
        *(a1 + 24) = v6;
        v7 = *(a1 + 40);
        if (v7)
        {
          CFRelease(v7);
          *(a1 + 40) = 0;
        }

        *(a1 + 64) = 1;
      }

      else if (WebVTTIsFormatDescriptionForWebVTT(desc))
      {
        colorComponentsOut[0] = 0.0;
        v8 = *(MEMORY[0x1E695F058] + 16);
        *(a1 + 8) = *MEMORY[0x1E695F058];
        *(a1 + 24) = v8;
        v9 = *(a1 + 40);
        if (v9)
        {
          CFRelease(v9);
          *(a1 + 40) = 0;
        }

        *(a1 + 64) = 1;
        v10 = *(a1 + 48);
        if (v10)
        {
          CFRelease(v10);
          *(a1 + 48) = 0;
        }

        WebVTTCreateMetadataDictionaryFromFormatDescripton(desc, 1, colorComponentsOut);
        if (!v11 && *&colorComponentsOut[0])
        {
          *(a1 + 48) = colorComponentsOut[0];
        }
      }

      else if (!CMTextFormatDescriptionGetDisplayFlags(desc, &displayFlagsOut))
      {
        keys = *MEMORY[0x1E69631C0];
        v12 = *MEMORY[0x1E695E480];
        values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &displayFlagsOut);
        v13 = displayFlagsOut;
        *(a1 + 65) = (displayFlagsOut & 0x80000000) != 0;
        *(a1 + 64) = (v13 & 0x20000000) != 0;
        if (!CMTextFormatDescriptionGetDefaultTextBox(desc, 1u, 0.0, (a1 + 8)) && !CMTextFormatDescriptionGetJustification(desc, &verticalJustificationOut[1], verticalJustificationOut))
        {
          *&v42 = *MEMORY[0x1E69631C8];
          *&v33 = CFNumberCreate(v12, kCFNumberSInt8Type, &verticalJustificationOut[1]);
          *(&v42 + 1) = *MEMORY[0x1E69631D0];
          *(&v33 + 1) = CFNumberCreate(v12, kCFNumberSInt8Type, verticalJustificationOut);
          if (!CMTextFormatDescriptionGetDefaultStyle(desc, &localFontIDOut, &italicOut[1], italicOut, &underlineOut, &fontSizeOut, colorComponentsOut))
          {
            v14 = *MEMORY[0x1E695E4D0];
            v15 = *MEMORY[0x1E695E4C0];
            v16 = italicOut[1] ? *MEMORY[0x1E695E4D0] : *MEMORY[0x1E695E4C0];
            v17 = *MEMORY[0x1E69608A8];
            *&v43 = *MEMORY[0x1E69607D0];
            *(&v43 + 1) = v17;
            v18 = italicOut[0] ? v14 : v15;
            *&v34 = v16;
            *(&v34 + 1) = v18;
            v19 = *MEMORY[0x1E6960990];
            v20 = underlineOut ? v14 : v15;
            *&v35 = v20;
            v21 = *MEMORY[0x1E6960878];
            *&v44 = v19;
            *(&v44 + 1) = v21;
            *(&v35 + 1) = FigCreateCFArrayFromColorValues();
            *&v45 = *MEMORY[0x1E69631D8];
            *&v36 = CFNumberCreate(v12, kCFNumberCGFloatType, &fontSizeOut);
            if (!CMTextFormatDescriptionGetFontName(desc, localFontIDOut, &fontNameOut))
            {
              *(&v45 + 1) = *MEMORY[0x1E6960858];
              *(&v36 + 1) = CFRetain(fontNameOut);
              v22 = CFDictionaryCreate(a2, &keys, &values, 9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (v22)
              {
                *(a1 + 40) = v22;
                *a1 = FigFormatDescriptionRetain();
              }

              for (i = 0; i != 72; i += 8)
              {
                v24 = *(&values + i);
                if (v24)
                {
                  CFRelease(v24);
                }
              }
            }
          }
        }
      }
    }
  }
}

void FigTextSampleBufferTearDownState(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 56) = 0;
  }

  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 40) = 0;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 48) = 0;
  }
}

uint64_t FigByteFlumePostHostUnavailableNotification(uint64_t a1)
{
  FigRetainProxyGetOwner();
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  *(a1 + 16) = 0;
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  return 1;
}

uint64_t FigByteFlumePostHostAvailableNotification(uint64_t a1)
{
  FigRetainProxyGetOwner();
  if (*(a1 + 16))
  {
    return 0;
  }

  v2 = 1;
  *(a1 + 16) = 1;
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  return v2;
}

uint64_t FigByteFlumePostHostAvailableOnBetterInterfaceNotification(uint64_t a1)
{
  FigRetainProxyGetOwner();
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  return 1;
}

uint64_t FigByteFlumePostConnectionToHostLostNotification(uint64_t a1)
{
  v1 = *(a1 + 24);
  *(a1 + 18) = 1;
  if (v1)
  {
    v9 = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigByteFlumeNotificationPayload_LastError, (a1 + 24), 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v9)
    {
      FigByteFlumePostConnectionToHostLostNotification_cold_1(0, v2, v3, v4, v5, v6, v7, v8, v13, v14, SHIDWORD(v14), v15);
      return 0;
    }
  }

  else
  {
    v9 = 0;
  }

  Owner = FigRetainProxyGetOwner();
  if (Owner)
  {
    v12 = CFRetain(Owner);
  }

  else
  {
    v12 = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (v12)
  {
    CFRelease(v12);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return 1;
}

void FigByteFlumeBaseInvalidate(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if (v2 == dispatch_get_current_queue() || (dispatch_sync_f(v2, 0, fbf_notificationBarrierDQFunc), (v2 = *(a1 + 8)) != 0))
    {
      dispatch_release(v2);
      *(a1 + 8) = 0;
    }
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }
}

void FigByteFlumeBaseDispose(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }
}

uint64_t CreatePlaylistFileParserFromData(OpaqueCMBlockBuffer *a1, uint64_t a2, CFMutableArrayRef **a3)
{
  if (_os_feature_enabled_impl())
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __pfp_ensureClientEstablished_block_invoke;
    block[3] = &unk_1E7480E30;
    block[4] = &v10;
    if (pfp_ensureClientEstablished_sFigManifoldRemoteClientSetupOnce != -1)
    {
      dispatch_once(&pfp_ensureClientEstablished_sFigManifoldRemoteClientSetupOnce, block);
    }

    v5 = *(v11 + 6);
    _Block_object_dispose(&v10, 8);
    if (!v5)
    {
      if (xpc_dictionary_create(0, 0, 0))
      {
        v6 = FigXPCMessageSetBlockBuffer();
        if (!v6)
        {
          v6 = FigXPCMessageSetCFString();
          if (!v6)
          {
            v6 = FigXPCRemoteClientSendSyncMessageCreatingReply();
            if (!v6)
            {
              v6 = FigXPCMessageCopyCFArray();
            }
          }
        }

        v5 = v6;
      }

      else
      {
        CreatePlaylistFileParserFromData_cold_1(block);
        v5 = LODWORD(block[0]);
      }
    }

    FigXPCRelease();
    FigXPCRelease();
    if (!v5)
    {
      v7 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
      if (v7)
      {
        v5 = 0;
        *v7 = 0;
        *a3 = v7;
      }

      else
      {
        CreatePlaylistFileParserFromData_cold_2(block);
        return LODWORD(block[0]);
      }
    }

    return v5;
  }

  else
  {

    return CreatePlaylistFileParserFromDataInProcess(a1, a3);
  }
}

uint64_t CreatePlaylistFileParserFromDataInProcess(OpaqueCMBlockBuffer *a1, CFMutableArrayRef **a2)
{
  v4 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  if (!v4)
  {
    CreatePlaylistFileParserFromDataInProcess_cold_5(&__endptr);
    return __endptr;
  }

  v5 = v4;
  if (*v4 || (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]), (*v5 = Mutable) != 0))
  {
    v23 = 0;
    length = 0;
    do
    {
      v7 = pfp_CopyLine(a1, length, &v23, &length);
      if (!v7)
      {
        v11 = 0;
        v15 = 4294951106;
LABEL_28:
        free(v11);
        goto LABEL_29;
      }

      v8 = v7;
      v9 = strcasecmp(v7, "[Playlist]");
      free(v8);
    }

    while (v9);
    v10 = pfp_CopyLine(a1, length, &v23, &length);
    if (!v10)
    {
LABEL_46:
      CreatePlaylistFileParserFromDataInProcess_cold_2(&__endptr);
      goto LABEL_24;
    }

    v11 = v10;
    v12 = 0;
    v13 = 0;
    __endptr = 0;
    do
    {
      if (!strncasecmp(v11, "NumberOfEntries=", 0x10uLL))
      {
        v12 = 1;
      }

      else if (!strncasecmp(v11, "Version=", 8uLL))
      {
        v13 = 1;
      }

      else if (!strncasecmp(v11, "File", 4uLL))
      {
        strtol(v11 + 4, &__endptr, 0);
        if (*__endptr != 61 || (URL = pfp_MakeURL(__endptr + 1, v11 - (__endptr + 1) + v23)) == 0)
        {
          v15 = 4294951104;
          goto LABEL_28;
        }

        CFArrayAppendValue(*v5, URL);
      }

      free(v11);
      v11 = pfp_CopyLine(a1, length, &v23, &length);
    }

    while (v11);
    if (!(v12 | v13))
    {
      goto LABEL_46;
    }

    if (!*v5 || CFArrayGetCount(*v5) <= 0)
    {
      CreatePlaylistFileParserFromDataInProcess_cold_1(&__endptr);
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  CreatePlaylistFileParserFromDataInProcess_cold_3(&__endptr);
LABEL_24:
  v15 = __endptr;
  if (__endptr)
  {
LABEL_29:
    if (*v5)
    {
      CFRelease(*v5);
      *v5 = 0;
    }

    if (v15 == -16190)
    {
      length = 0;
      __endptr = 0;
      v17 = pfp_CopyLine(a1, 0, &length, &__endptr);
      if (v17)
      {
        v18 = *MEMORY[0x1E695E480];
        v19 = MEMORY[0x1E695E9C0];
        do
        {
          if (*v17 == 35 || (v20 = pfp_MakeURL(v17, length)) == 0)
          {
            free(v17);
          }

          else
          {
            v21 = v20;
            v22 = *v5;
            if (!*v5)
            {
              v22 = CFArrayCreateMutable(v18, 0, v19);
              *v5 = v22;
              if (!v22)
              {
                CreatePlaylistFileParserFromDataInProcess_cold_4(v21);
                break;
              }
            }

            CFArrayAppendValue(v22, v21);
            free(v17);
            CFRelease(v21);
          }

          v17 = pfp_CopyLine(a1, __endptr, &length, &__endptr);
        }

        while (v17);
      }

      free(v17);
      if (*v5 && CFArrayGetCount(*v5))
      {
        goto LABEL_21;
      }

      v15 = 4294951106;
    }

    PlaylistFileParserDestroy(v5);
    return v15;
  }

LABEL_21:
  v15 = 0;
  *a2 = v5;
  return v15;
}

const __CFArray *PlaylistFileParserItemCount(const __CFArray **a1)
{
  result = *a1;
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

double PlaylistFileParserCopyItem(CFArrayRef *a1, CFIndex idx, void *a3)
{
  Count = *a1;
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= idx)
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294951105, "<Playlist>", 421, v3);
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*a1, idx);
    if (ValueAtIndex)
    {
      ValueAtIndex = CFRetain(ValueAtIndex);
    }

    *a3 = ValueAtIndex;
  }

  return result;
}

void PlaylistFileParserDestroy(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

uint64_t PlaylistFileParserServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __PlaylistFileParserServer_block_invoke;
  block[3] = &unk_1E7480E08;
  block[4] = &v3;
  if (PlaylistFileParserServer_sFigPlaylistFileParserServerSetupOnce != -1)
  {
    dispatch_once(&PlaylistFileParserServer_sFigPlaylistFileParserServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t __PlaylistFileParserServer_block_invoke(uint64_t a1)
{
  result = FigXPCServerStart();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

char *pfp_CopyLine(OpaqueCMBlockBuffer *a1, size_t a2, size_t *a3, void *a4)
{
  v6 = a2;
  v15 = 0;
  lengthAtOffsetOut = 0;
  if (CMBlockBufferGetDataPointer(a1, a2, &lengthAtOffsetOut, 0, &v15))
  {
    return 0;
  }

  v9 = 0;
  do
  {
    v10 = lengthAtOffsetOut;
    if (lengthAtOffsetOut)
    {
      v11 = v15;
      do
      {
        v13 = *v11++;
        v12 = v13;
        if (v13 == 13 || v12 == 10)
        {
          if (v9)
          {
            goto LABEL_16;
          }

          ++v6;
        }

        else
        {
          ++v9;
        }

        --v10;
      }

      while (v10);
    }
  }

  while (!CMBlockBufferGetDataPointer(a1, v9 + v6, &lengthAtOffsetOut, 0, &v15));
  if (!v9)
  {
    return 0;
  }

LABEL_16:
  v15 = malloc_type_malloc(v9 + 1, 0x100004077774924uLL);
  CMBlockBufferCopyDataBytes(a1, v6, v9, v15);
  v15[v9] = 0;
  *a3 = v9;
  *a4 = v6 + v9;
  return v15;
}

CFTypeRef pfp_MakeURL(UInt8 *URLBytes, CFIndex length)
{
  if (!length)
  {
    return 0;
  }

  v2 = length;
  v4 = MEMORY[0x1E69E9830];
  while (1)
  {
    v5 = URLBytes[v2 - 1];
    if ((v5 & 0x80000000) != 0)
    {
      break;
    }

    if ((*(v4 + 4 * v5 + 60) & 0x4000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (!--v2)
    {
      return 0;
    }
  }

  if (__maskrune(v5, 0x4000uLL))
  {
    goto LABEL_7;
  }

LABEL_9:
  v6 = CFURLCreateWithBytes(*MEMORY[0x1E695E480], URLBytes, v2, 0x201u, 0);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (CFURLCanBeDecomposed(v6))
  {
    v8 = CFURLGetString(v7);
    v9 = CFRetain(v8);
  }

  else
  {
    v9 = 0;
  }

  CFRelease(v7);
  return v9;
}

void __pfp_ensureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = Mutable;
    FigCFDictionarySetValue();
    *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();
    CFRelease(v3);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -12786;
  }
}

void printRegisteredFormatReaders()
{
  if (_MergedGlobals_29)
  {
    Count = CFArrayGetCount(_MergedGlobals_29);
    if (Count >= 1)
    {
      v1 = Count;
      for (i = 0; i != v1; ++i)
      {
        CFArrayGetValueAtIndex(_MergedGlobals_29, i);
        v3 = FigCFCopyCompactDescription();
        if (v3)
        {
          CFRelease(v3);
        }
      }
    }
  }
}

__CFSet *copySetOfRegistryEntryLabels(const __CFAllocator *a1, const void *a2)
{
  Mutable = CFSetCreateMutable(a1, 0, MEMORY[0x1E695E9F8]);
  if (CFArrayGetCount(_MergedGlobals_29) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(CFArrayGetValueAtIndex(_MergedGlobals_29, v4) + 1);
      if (v5)
      {
        Value = CFDictionaryGetValue(v5, a2);
        if (Value)
        {
          v7 = Value;
          Count = CFArrayGetCount(Value);
          if (Count >= 1)
          {
            v9 = Count + 1;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v7, v9 - 2);
              CFSetAddValue(Mutable, ValueAtIndex);
              --v9;
            }

            while (v9 > 1);
          }
        }
      }

      ++v4;
    }

    while (v4 < CFArrayGetCount(_MergedGlobals_29));
  }

  return Mutable;
}

void FFRExpandRepresentativeMIMETypes(const void *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      if (qword_1ED4CA6E8)
      {
        v4 = CFGetTypeID(a1);
        if (v4 == CFStringGetTypeID())
        {
          value = 0;
          if (CFDictionaryGetValueIfPresent(qword_1ED4CA6E8, a1, &value))
          {
            if (value)
            {
              v5 = CFGetTypeID(value);
              if (v5 == CFArrayGetTypeID())
              {
                v6 = value;
                v8.length = CFArrayGetCount(value);
                v8.location = 0;
                CFArrayApplyFunction(v6, v8, FFRAddMIMETypeIfAbsent, a2);
              }
            }
          }
        }
      }
    }
  }
}

void AttemptMIMETypeInstantiation(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef cf, const __CFArray *a5, uint64_t a6)
{
  if (cf)
  {
    v11 = CFRetain(cf);
    cfa = v11;
    if (v11)
    {
LABEL_7:
      AttemptInstantiationForMatchingLabel(a2, a3, @"public.mime-type", 2, v11, 1, a5, a6);
      if (cfa)
      {
        CFRelease(cfa);
      }

      return;
    }
  }

  else
  {
    cfa = 0;
  }

  CMBaseObject = CMByteStreamGetCMBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v13(CMBaseObject, *MEMORY[0x1E6960DE0], a1, &cfa);
    v11 = cfa;
    if (cfa)
    {
      goto LABEL_7;
    }
  }
}

void AttemptUTIInstantiation(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef cf, const __CFArray *a5, uint64_t a6)
{
  if (cf)
  {
    v11 = CFRetain(cf);
    cfa = v11;
    if (v11)
    {
LABEL_7:
      AttemptInstantiationForMatchingLabel(a2, a3, @"com.apple.uti", 4, v11, 1, a5, a6);
      if (cfa)
      {
        CFRelease(cfa);
      }

      return;
    }
  }

  else
  {
    cfa = 0;
  }

  CMBaseObject = CMByteStreamGetCMBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v13(CMBaseObject, *MEMORY[0x1E6960E38], a1, &cfa);
    v11 = cfa;
    if (cfa)
    {
      goto LABEL_7;
    }
  }
}

void AttemptSuggestedFileNameInstantiation(const __CFAllocator *a1, uint64_t a2, uint64_t a3, const __CFArray *a4, uint64_t a5)
{
  theString = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(CMBaseObject, *MEMORY[0x1E6960E30], a1, &theString);
    if (theString)
    {
      v12 = CFStringFind(theString, @".", 4uLL);
      if (v12.length >= 1)
      {
        Length = CFStringGetLength(theString);
        v17.location = v12.location + 1;
        v17.length = Length + ~v12.location;
        v14 = CFStringCreateWithSubstring(a1, theString, v17);
        if (v14)
        {
          v15 = v14;
          AttemptInstantiationForMatchingLabel(a2, a3, @"public.filename-extension", 3, v14, 1, a4, a5);
          CFRelease(v15);
        }
      }

      if (theString)
      {
        CFRelease(theString);
      }
    }
  }
}

__CFString *FigGetNotifyingObjectForSupportedFormatsChanged(uint64_t a1, uint64_t a2)
{
  if (FigGetNotifyingObjectForSupportedFormatsChanged_onceToken != -1)
  {
    FigGetNotifyingObjectForSupportedFormatsChanged_cold_1();
  }

  return @"SupportedFormatChanged";
}

uint64_t registerSupportedFormatsChangedNotificationBarrierOnce(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterRegisterForBarrierSupport();
}

uint64_t FigFormatReaderGetTypeID()
{
  MEMORY[0x19A8D3660](&FigFormatReaderGetClassID_sRegisterFigFormatReaderOnce, RegisterFigFormatReader);

  return CMBaseClassGetCFTypeID();
}

uint64_t FFRFindRepresentativeMIMEType(uint64_t result, CFTypeRef cf, uint64_t a3)
{
  if (cf)
  {
    if (!*(a3 + 8))
    {
      v5 = result;
      v6 = CFGetTypeID(cf);
      result = CFArrayGetTypeID();
      if (v6 == result)
      {
        v7.length = CFArrayGetCount(cf);
        v7.location = 0;
        result = CFArrayContainsValue(cf, v7, *a3);
        if (result)
        {
          *(a3 + 8) = v5;
        }
      }
    }
  }

  return result;
}

uint64_t FigFormatReaderUtilityConvertCodecElementsToMediaSubType(uint64_t a1, int a2, char *a3, uint64_t a4, _DWORD *a5, int *a6, int *a7)
{
  if (FigCFEqual())
  {

    return AVIFormatReaderConvertCodecElementsToMediaSubType(a2, a3, a4, a5, a6, a7);
  }

  if (FigCFEqual())
  {
    v14 = 1463899717;
LABEL_15:

    return FigAudioFormatReaderConvertCodecElementsToMediaSubType(v14, a2, a3, a4, a5, a6, a7);
  }

  if (FigCFEqual())
  {
    v14 = 1095321155;
    goto LABEL_15;
  }

  if (FigCFEqual())
  {
    v14 = 1667327590;
    goto LABEL_15;
  }

  if (FigCFEqual())
  {
    v14 = 1297106739;
    goto LABEL_15;
  }

  if (FigCFEqual())
  {
    v14 = 1332176742;
    goto LABEL_15;
  }

  if (a7)
  {
    *a7 = 1;
  }

  return 0;
}

uint64_t FigFormatReaderUtilityEstablishCombinedDataRateProfileForTracks(uint64_t a1, const __CFArray *a2, void *a3, uint64_t a4, CMTime *a5)
{
  if (*(*(CMBaseObjectGetVTable() + 16) + 72))
  {
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v10)
    {

      return v10(a1, a2, a3, a4, a5);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {

    return FigFormatReaderUtilityEstablishCombinedDataRateProfileForTracksCommon(a1, a2, a3, a4, a5);
  }
}

uint64_t InstantiateAVIFormatReader(const void *a1, uint64_t a2, const __CFAllocator *a3, uint64_t a4, CFTypeRef *a5, void *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  return AVIFormatReaderCreateFromStream(a1, a3, a5);
}

uint64_t InstantiateAudioFileFormatReader(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5, void *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  return FigAudioFileFormatReaderCreateFromStream(a1, a3, a4, a5);
}

uint64_t InstantiateAudioFileStreamFormatReader(const void *a1, int a2, uint64_t a3, CFDictionaryRef theDict, CFTypeRef *a5, void *a6)
{
  if (!theDict)
  {
    v12 = FigAudioFileStreamFormatReaderCreateFromStream;
    if (!a6)
    {
      return v12(a1, a3, theDict, a5);
    }

    goto LABEL_8;
  }

  value = 0;
  ValueIfPresent = CFDictionaryGetValueIfPresent(theDict, @"Instantiation_PreferPreciseDurationAndTiming", &value);
  v12 = FigAudioFileStreamFormatReaderCreateFromStream;
  if (value == *MEMORY[0x1E695E4D0])
  {
    v13 = FigAudioFileFormatReaderCreateFromStream;
  }

  else
  {
    v13 = FigAudioFileStreamFormatReaderCreateFromStream;
  }

  if (ValueIfPresent)
  {
    v12 = v13;
  }

  if (a6)
  {
LABEL_8:
    *a6 = 0;
  }

  return v12(a1, a3, theDict, a5);
}

double InstantiateWebVTTFormatReader(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  return FigWebVTTFormatReaderCreateFromStream(a1, a3, a5);
}

uint64_t InstantiateTTMLFormatReader(uint64_t a1, int a2, const __CFAllocator *a3, uint64_t a4, CFTypeRef *a5, void *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  return FigTTMLFormatReaderCreateFromStream(a1, a4, a3, a5);
}

void FFRAddMIMETypeIfAbsent(const void *a1, const __CFArray *a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFStringGetTypeID())
    {
      v6.length = CFArrayGetCount(a2);
      v6.location = 0;
      if (!CFArrayContainsValue(a2, v6, a1))
      {

        CFArrayAppendValue(a2, a1);
      }
    }
  }
}

void AttemptInstantiationForMatchingLabel(uint64_t a1, uint64_t a2, const void *a3, int a4, const __CFString *a5, int a6, const __CFArray *a7, uint64_t a8)
{
  cf = 0;
  v9 = &off_1ED4CA000;
  if (CFArrayGetCount(_MergedGlobals_29) < 1)
  {
    goto LABEL_37;
  }

  v10 = 0;
  v34 = *MEMORY[0x1E695E480];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v9[220], v10);
    v11 = *(ValueAtIndex + 1);
    if (!v11 || (Value = CFDictionaryGetValue(v11, a3)) == 0 || (v13 = Value, Count = CFArrayGetCount(Value), Count < 1))
    {
LABEL_22:
      ++v10;
      v9 = &off_1ED4CA000;
      continue;
    }

    v15 = Count;
    while (1)
    {
      v16 = CFArrayGetValueAtIndex(v13, v15 - 1);
      if (a6)
      {
        if (CFStringCompare(v16, a5, 1uLL))
        {
          goto LABEL_20;
        }
      }

      else if (!CFEqual(v16, a5))
      {
        goto LABEL_20;
      }

      if (!a7)
      {
        goto LABEL_23;
      }

      v17 = CFDictionaryGetValue(*(ValueAtIndex + 1), @"com.apple.uti");
      if (v17)
      {
        v18 = v17;
        v19 = CFArrayGetCount(v17);
        v20 = CFArrayGetCount(a7);
        v39 = v19;
        if (v19 >= 1)
        {
          break;
        }
      }

LABEL_20:
      if (v15-- <= 1)
      {
        goto LABEL_22;
      }
    }

    v21 = v20;
    v22 = 0;
    while (1)
    {
      v23 = CFArrayGetValueAtIndex(v18, v22);
      if (v21 >= 1)
      {
        break;
      }

LABEL_19:
      if (++v22 == v39)
      {
        goto LABEL_20;
      }
    }

    v24 = v23;
    v25 = 0;
    while (1)
    {
      v26 = CFArrayGetValueAtIndex(a7, v25);
      if (CFEqual(v24, v26))
      {
        break;
      }

      if (v21 == ++v25)
      {
        goto LABEL_19;
      }
    }

LABEL_23:
    v9 = &off_1ED4CA000;
    if (!ValueAtIndex)
    {
      break;
    }

    if (*(a8 + 8) == ValueAtIndex)
    {
      goto LABEL_33;
    }

    v43 = 0;
    v28 = (*ValueAtIndex)(a1, *(ValueAtIndex + 2), v34, a2, &v43, &cf);
    if (!v28)
    {
      *(a8 + 24) = v43;
      *(a8 + 32) = CFRetain(a5);
      *(a8 + 40) = a4;
      v31 = *a8;
      v32 = cf;
      *a8 = cf;
      if (v32)
      {
        CFRetain(v32);
      }

      if (v31)
      {
        CFRelease(v31);
      }

      *(a8 + 8) = 0;
      *(a8 + 16) = 0;
      break;
    }

    if (!*(a8 + 8))
    {
      *(a8 + 16) = v28;
      v29 = *a8;
      v30 = cf;
      *a8 = cf;
      *(a8 + 8) = ValueAtIndex;
      if (v30)
      {
        CFRetain(v30);
      }

      if (v29)
      {
        CFRelease(v29);
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

LABEL_33:
    if (v10 >= 0)
    {
      ++v10;
    }

    else
    {
      v10 = 0;
    }
  }

  while (v10 < CFArrayGetCount(v9[220]));
LABEL_37:
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t OUTLINED_FUNCTION_0_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CMTime *time2, uint64_t a20, CMTime *time1, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 time2a, uint64_t time2_16, uint64_t a29, __int128 time1a, uint64_t time1_16)
{
  time1a = *(v31 + 32);
  time1_16 = *(v32 - 208);
  time2a = *(v31 + 64);
  time2_16 = *(v32 - 176);

  return CMTimeCompare(&time1a, &time2a);
}

__n128 OUTLINED_FUNCTION_6_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a31, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __n128 a32, uint64_t a33)
{
  result = a32;
  v33[2] = a32;
  *(v34 - 208) = a33;
  return result;
}

__n128 OUTLINED_FUNCTION_9_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a19, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a20)
{
  *(v22 + 8 * v21) += v20;
  result = a20;
  v24[2] = a20;
  *(v25 - 208) = v23;
  return result;
}

Float64 OUTLINED_FUNCTION_11_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, CMTime *time, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 timea, uint64_t time_16)
{
  timea = *(v32 + 64);
  time_16 = *(v33 - 176);

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_12_11()
{

  return CMBaseObjectGetVTable();
}

double OUTLINED_FUNCTION_14_9()
{

  return ensureRegistryInitialized();
}

uint64_t AudioMentorSetModeToReversePlayback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6, const void *a7, const void *a8)
{
  v11 = *a3;
  v12 = *(a3 + 16);
  v9 = *a5;
  v10 = *(a5 + 16);
  return audioMentorSetModeToForwardOrReversePlayback(a1, a2, &v11, a4, &v9, a6, a7, a8, 2);
}

uint64_t AudioMentorSetModeToEmptyEdit(uint64_t a1, const void *a2, const __CFDictionary *a3, const void *a4, const void *a5)
{
  PolicyFromPrerollPolicy = audioMentorGetInitialReadPolicyFromPrerollPolicy(a3, 0);
  v11 = audioMentorGetModeChangePolicy(a3);
  if (v11)
  {
    ShouldSynchronouslyResetOutput = audioMentorShouldSynchronouslyResetOutput(a3);
  }

  else
  {
    ShouldSynchronouslyResetOutput = 0;
  }

  FigSimpleMutexLock();
  if (!*a1)
  {
    *(a1 + 192) = PolicyFromPrerollPolicy;
    *(a1 + 196) = v11;
    *(a1 + 238) = ShouldSynchronouslyResetOutput;
    v13 = *(a1 + 240);
    if (v13)
    {
      CFRelease(v13);
    }

    *(a1 + 240) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    v14 = *(a1 + 248);
    if (v14)
    {
      CFRelease(v14);
    }

    *(a1 + 248) = a4;
    if (a4)
    {
      CFRetain(a4);
    }

    v15 = *(a1 + 256);
    if (v15)
    {
      CFRelease(v15);
    }

    *(a1 + 256) = a5;
    if (a5)
    {
      CFRetain(a5);
    }

    *(a1 + 112) = 3;
    *(a1 + 116) = 1;
    FigMemoryBarrier();
  }

  FigSimpleMutexUnlock();
  FigSemaphoreSignal();
  if (ShouldSynchronouslyResetOutput)
  {
    FigSemaphoreWaitRelative();
  }

  return 0;
}

uint64_t audioMentorGetInitialReadPolicyFromPrerollPolicy(const __CFDictionary *a1, uint64_t a2)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"PrerollPolicy");
    if (Value)
    {
      v4 = Value;
      if (CFEqual(Value, @"PrerollUntilOutputReachesLowWater"))
      {
        return 1;
      }

      else if (CFEqual(v4, @"PrerollUntilOutputReachesLowWaterOrSampleNotImmediatelyAvailable"))
      {
        return 3;
      }

      else
      {
        return a2;
      }
    }
  }

  return a2;
}

BOOL audioMentorShouldSynchronouslyResetOutput(const __CFDictionary *a1)
{
  result = 0;
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"SynchronouslyResetOutput");
    if (Value)
    {
      if (CFEqual(*MEMORY[0x1E695E4D0], Value))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t AudioMentorSetClientPID(_BYTE *a1, uint64_t a2)
{
  if (a1 && !*a1)
  {
    return FigThreadSetProperty();
  }

  else
  {
    return 4294954511;
  }
}

uint64_t AudioMentorSetThrottleForBackground(_BYTE *a1, int a2)
{
  if (!a1 || *a1)
  {
    return 4294954511;
  }

  valuePtr = 16 * (a2 != 0);
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v3 = FigThreadSetProperty();
  if (a1[41])
  {
    FigSampleCursorServiceGetFigBaseObject();
    v7 = v6;
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v8)
    {
      v8(v7, @"PriorityOfConsistentThreadHandlingSampleCursors", v5);
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v3;
}

uint64_t audioMentorEnqueueBufferConsumedMarker(uint64_t a1, const void *a2)
{
  target = 0;
  v4 = CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &target);
  if (!v4)
  {
    CMSetAttachment(target, *MEMORY[0x1E6960500], a2, 1u);
    v5 = *(a1 + 24);
    v6 = target;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v7)
    {
      v4 = v7(v5, v6);
    }

    else
    {
      v4 = 4294954514;
    }

    CFRelease(target);
  }

  return v4;
}

uint64_t FigSampleCursorGetPresentationTimeStamp(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigSampleCursorStepInDecodeOrderAndReportStepsTaken(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 168);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t audioMentorGetDecodeWalkCatchupStatusForSteps(uint64_t a1, uint64_t a2)
{
  theDict = 0;
  FigSampleCursorGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = v5(v4, @"SampleDependencyAttributes", *MEMORY[0x1E695E480], &theDict);
  v7 = theDict;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = theDict == 0;
  }

  if (v8)
  {
    v9 = 2;
    if (!theDict)
    {
      return v9;
    }

    goto LABEL_19;
  }

  v10 = *MEMORY[0x1E695E4D0];
  if (v10 == CFDictionaryGetValue(theDict, *MEMORY[0x1E6960458]) || CFDictionaryContainsKey(theDict, *MEMORY[0x1E69603E0]))
  {
    Int64IfPresent = FigCFDictionaryGetInt64IfPresent();
    if (a2 < 0)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (Int64IfPresent)
    {
      v9 = v12;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
LABEL_17:
    v9 = 2;
  }

  v7 = theDict;
  if (theDict)
  {
LABEL_19:
    CFRelease(v7);
  }

  return v9;
}

uint64_t FigTTMLDocumentWriterCreateRegionAttributeInserter(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateRegionAttributeInserter_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateRegionAttributeInserter_cold_1(&v8);
    return v8;
  }

  FigTTMLDocumentWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigTTMLDocumentWriterGetCMBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    *a3 = 0;
  }

  return v5;
}

void figTTMLDocumentWriterRegionAttributeInserter_Finalize(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t figTTMLDocumentWriterRegionAttributeInserter_StartElement(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v3 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterStartElement(v3, a2);
}

uint64_t figTTMLDocumentWriterRegionAttributeInserter_EndElement(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v1 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterEndElement(v1);
}

uint64_t figTTMLDocumentWriterRegionAttributeInserter_SetAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v5 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterSetAttribute(v5, a2, a3);
}

uint64_t figTTMLDocumentWriterRegionAttributeInserter_Flush(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v1 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterFlush(v1);
}

const char *FigMentorPrerollCompletionReasonGetDescription(unsigned int a1)
{
  if (a1 > 2)
  {
    return "Invalid";
  }

  else
  {
    return off_1E7481018[a1];
  }
}

uint64_t audioRendererAirPlay_subRendererNotificationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void audioRendererAirPlay_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (*(DerivedStorage + 64))
  {
    SharedInstance = FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance(DerivedStorage, v3);
    v6 = *(v4 + 64);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v7)
    {
      v7(SharedInstance, a1, v6);
    }

    v8 = *(v4 + 64);
    if (v8)
    {
      CFRelease(v8);
      *(v4 + 64) = 0;
    }
  }

  if (*v4)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    if (*v4)
    {
      CFRelease(*v4);
      *v4 = 0;
    }
  }

  v9 = *(v4 + 32);
  if (v9)
  {
    CFRelease(v9);
  }

  audioRendererAirPlay_removeRoutingContextListeners(a1, *(v4 + 24));
  v10 = *(v4 + 24);
  if (v10)
  {
    CFRelease(v10);
  }

  audioRendererAirPlay_removeEndpointListeners(a1, *(v4 + 40));
  v11 = *(v4 + 40);
  if (v11)
  {
    if (!*(v4 + 48) || (FigEndpointRelinquishStreamResource(), (v11 = *(v4 + 40)) != 0))
    {
      CFRelease(v11);
    }
  }

  v12 = *(v4 + 48);
  if (v12)
  {
    CFRelease(v12);
  }

  audioRendererAirPlay_removeBufferedAirPlayOutputListeners(a1, *(v4 + 56));
  v13 = *(v4 + 56);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(v4 + 16);
  if (v14)
  {
    dispatch_release(v14);
    *(v4 + 16) = 0;
  }

  v15 = *(v4 + 8);
  if (v15)
  {
    dispatch_release(v15);
    *(v4 + 8) = 0;
  }
}

__CFString *audioRendererAirPlay_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  v6 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferAudioRendererAirPlay=%p retainCount=%d allocator=%p", a1, v5, v6);
  CFStringAppendFormat(Mutable, 0, @" subRenderer=%p", *DerivedStorage);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t audioRendererAirPlay_SetProperty(const void *a1, uint64_t a2, const void *a3)
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  v34 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    if (!a3 || (v7 = CFGetTypeID(a3), v7 == FigRoutingContextGetTypeID()))
    {
      v8 = DerivedStorage[2];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __audioRendererAirPlay_SetProperty_block_invoke;
      block[3] = &unk_1E74810B8;
      block[4] = &v31;
      block[5] = a1;
      block[6] = a3;
      block[7] = DerivedStorage;
      v9 = block;
LABEL_5:
      dispatch_sync(v8, v9);
      goto LABEL_6;
    }

    goto LABEL_33;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      if (!a3 || (v18 = CFGetTypeID(a3), v18 == CFStringGetTypeID()))
      {
        v8 = DerivedStorage[2];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 0x40000000;
        v28[2] = __audioRendererAirPlay_SetProperty_block_invoke_3;
        v28[3] = &unk_1E7481108;
        v28[4] = &v31;
        v28[5] = a1;
        v28[6] = DerivedStorage;
        v28[7] = a3;
        v9 = v28;
        goto LABEL_5;
      }

      goto LABEL_33;
    }

    if (FigCFEqual())
    {
      if (a3)
      {
        v19 = CFGetTypeID(a3);
        if (v19 == CFBooleanGetTypeID())
        {
          Value = CFBooleanGetValue(a3);
          v37 = 0;
          v38 = &v37;
          v39 = 0x2000000000;
          v40 = 0;
          v21 = *(CMBaseObjectGetDerivedStorage() + 16);
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 0x40000000;
          v35[2] = __audioRendererAirPlay_setIsActiveAudioSessionApp_block_invoke;
          v35[3] = &unk_1E7481130;
          v35[4] = &v37;
          v35[5] = a1;
          v36 = Value;
          dispatch_sync(v21, v35);
          v22 = *(v38 + 6);
          _Block_object_dispose(&v37, 8);
          *(v32 + 6) = v22;
          goto LABEL_6;
        }
      }

      goto LABEL_33;
    }

    if (FigCFEqual())
    {
      if (!a3)
      {
        goto LABEL_33;
      }

      v23 = CFGetTypeID(a3);
      if (v23 != CFBooleanGetTypeID())
      {
        goto LABEL_33;
      }

      v24 = CFBooleanGetValue(a3);
      v25 = audioRendererAirPlay_setBufferedAirPlayAllowed(a1, v24);
    }

    else
    {
      v25 = CMBaseObjectSetProperty(*DerivedStorage, a2, a3);
    }

    *(v32 + 6) = v25;
    goto LABEL_6;
  }

  if (!a3 || (v12 = CFGetTypeID(a3), v12 != CFStringGetTypeID()))
  {
LABEL_33:
    v26 = v32;
    v27 = -16380;
LABEL_34:
    *(v26 + 6) = v27;
    goto LABEL_6;
  }

  v35[0] = 0;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    v26 = v32;
    v27 = -16382;
    goto LABEL_34;
  }

  v14 = MutableCopy;
  CFDictionarySetValue(MutableCopy, *MEMORY[0x1E69AF350], a3);
  v15 = FigRoutingContextRemoteCopyContextForUUID();
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v35[0];
    v35[0] = 0;
  }

  CFRelease(v14);
  if (v35[0])
  {
    CFRelease(v35[0]);
  }

  *(v32 + 6) = v15;
  if (!v15)
  {
    v17 = DerivedStorage[2];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 0x40000000;
    v29[2] = __audioRendererAirPlay_SetProperty_block_invoke_2;
    v29[3] = &unk_1E74810E0;
    v29[4] = &v31;
    v29[5] = a1;
    v29[6] = v16;
    v29[7] = DerivedStorage;
    dispatch_sync(v17, v29);
  }

  if (v16)
  {
    CFRelease(v16);
  }

LABEL_6:
  v10 = *(v32 + 6);
  _Block_object_dispose(&v31, 8);
  return v10;
}

uint64_t audioRendererAirPlay_routeToEndpointInternal(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = (DerivedStorage + 40);
  v5 = *(DerivedStorage + 40);
  if (v5)
  {
    v7 = CFRetain(v5);
  }

  else
  {
    v7 = 0;
  }

  v10 = *(DerivedStorage + 48);
  v9 = (DerivedStorage + 48);
  v8 = v10;
  if (v10)
  {
    v11 = CFRetain(v8);
  }

  else
  {
    v11 = 0;
  }

  if (*v6 != a2)
  {
    audioRendererAirPlay_routeToEndpointInternal_cold_1(a1, *v6, v6, a2);
  }

  if (*v9)
  {
    CFRelease(*v9);
    *v9 = 0;
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  if (v11 && FigEndpointContainsStream())
  {
    *v9 = CFRetain(v11);
LABEL_20:
    if (*v9 != v11)
    {
      audioRendererAirPlay_updateBufferedAirPlayOutput(a1);
      if (v11)
      {
        FigEndpointRelinquishStreamResource();
      }
    }

    v15 = 0;
    goto LABEL_24;
  }

  v12 = FigEndpointAcquireAndCopyStreamResource();
  if (v12)
  {
    v13 = v12 == -16725;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    goto LABEL_20;
  }

  v15 = v12;
  audioRendererAirPlay_removeEndpointListeners(a1, *v6);
  v16 = *v6;
  *v6 = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  audioRendererAirPlay_addEndpointListeners();
  v17 = *v9;
  if (*v9 != v11)
  {
    FigEndpointRelinquishStreamResource();
    v17 = *v9;
  }

  *v9 = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  if (v17)
  {
    CFRelease(v17);
  }

LABEL_24:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v15;
}

void audioRendererAirPlay_updateBufferedAirPlayOutput(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (*(DerivedStorage + 48) && *(DerivedStorage + 77))
  {
    v6 = 0;
    v5 = (DerivedStorage + 56);
    v4 = *(DerivedStorage + 56);
    if (!v4)
    {
      v7 = 0;
      v8 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v5 = (DerivedStorage + 56);
    v4 = *(DerivedStorage + 56);
    if (!v4)
    {
      return;
    }

    v6 = 1;
  }

  v8 = CFRetain(v4);
  v7 = *v5;
LABEL_9:
  audioRendererAirPlay_removeBufferedAirPlayOutputListeners(a1, v7);
  if (*v5)
  {
    CFRelease(*v5);
    *v5 = 0;
  }

  if ((v6 & 1) == 0)
  {
    if (FigBufferedAirPlayOutputCreate(0, *(v3 + 40), *(v3 + 48), v5))
    {
      goto LABEL_20;
    }

    audioRendererAirPlay_addBufferedAirPlayOutputListeners();
  }

  if (dword_1EAF16D70)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v10 = *v3;
  v11 = *(v3 + 56);
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v12 || v12(v10, @"BufferedAirPlayOutput", v11))
  {
LABEL_20:
    audioRendererAirPlay_updateBufferedAirPlayOutput_cold_1(v5, a1, v8);
    if (!v8)
    {
      return;
    }

LABEL_17:
    CFRelease(v8);
    return;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (v8)
  {
    goto LABEL_17;
  }
}

void *audioRendererAirPlay_bufferedAirPlayOutputEndpointPreemptedNotificationListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result[7] == a4 && *result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return FigDispatchAsyncPostNotification();
  }

  return result;
}

void audioRendererAirPlay_copyRoutingContext(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __audioRendererAirPlay_copyRoutingContext_block_invoke;
  v5[3] = &__block_descriptor_tmp_20;
  v5[4] = a2;
  v5[5] = DerivedStorage;
  dispatch_sync(v4, v5);
}

CFTypeRef __audioRendererAirPlay_copyRoutingContext_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 24);
  if (result)
  {
    result = CFRetain(result);
  }

  **(a1 + 32) = result;
  return result;
}

uint64_t audioRendererAirPlay_setBufferedAirPlayAllowed(uint64_t a1, char a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v4 = *(CMBaseObjectGetDerivedStorage() + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __audioRendererAirPlay_setBufferedAirPlayAllowed_block_invoke;
  block[3] = &unk_1E7481158;
  block[4] = &v9;
  block[5] = a1;
  v8 = a2;
  dispatch_sync(v4, block);
  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void audioRendererAirPlay_updateRoutingRegistryInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  v16 = 0;
  if (*(DerivedStorage + 72) && *(DerivedStorage + 77))
  {
    if (!*(DerivedStorage + 64))
    {
      v5 = *(DerivedStorage + 24);
      if (v5)
      {
        v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v6)
        {
          v7 = v6(v5, *MEMORY[0x1E69AF4E8], 0, &v16);
          if (v16)
          {
            *(v4 + 64) = v16;
            v16 = 0;
            SharedInstance = FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance(v7, v8);
            v10 = *(v4 + 64);
            v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v11)
            {
              v11(SharedInstance, a1, v10);
            }
          }
        }
      }
    }
  }

  else if (*(DerivedStorage + 64))
  {
    v12 = FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance(DerivedStorage, v3);
    v13 = *(v4 + 64);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v14)
    {
      v14(v12, a1, v13);
    }

    v15 = *(v4 + 64);
    if (v15)
    {
      CFRelease(v15);
      *(v4 + 64) = 0;
    }
  }
}

__CFString *audioRendererAirPlay_deviceRendererProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"FigSampleBufferAudioRenderer <FigSampleBufferAudioDeviceRendererProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t audioRendererAirPlay_DuckVolume(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigSampleBufferAudioDeviceRendererProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v11 = *(ProtocolVTable + 16);
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 8);
  if (!v12)
  {
    return 4294954514;
  }

  v9.n128_f32[0] = a3;
  v10.n128_f32[0] = a4;

  return v12(v7, a2, v9, v10);
}

uint64_t audioRendererAirPlay_SilentMute(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigSampleBufferAudioDeviceRendererProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t audioRendererAirPlay_QueueIsAboveHighWaterLevel(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2)
  {
    return 1;
  }

  return v2(v1);
}

uint64_t audioRendererAirPlay_EnqueueSampleBuffer(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t audioRendererAirPlay_Flush(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(v1);
}

uint64_t audioRendererAirPlay_AttachToSynchronizer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2, a3);
}

uint64_t audioRendererAirPlay_CopyClock(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t audioRendererAirPlay_SetRateAndTime(uint64_t a1, __int128 *a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  audioRendererAirPlay_saveRateAndUpdateRoutingRegistry(a1, a3);
  v7 = *DerivedStorage;
  v11 = *a2;
  v12 = *(a2 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v8)
  {
    v13 = v11;
    v14 = v12;
    v9 = v8(v7, &v13, a3);
    if (!v9)
    {
      return v9;
    }
  }

  else
  {
    v9 = 4294954514;
  }

  audioRendererAirPlay_saveRateAndUpdateRoutingRegistry(a1, 0.0);
  return v9;
}

uint64_t audioRendererAirPlay_FlushFromMediaTime(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  v11 = *a2;
  v12 = *(a2 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v8)
  {
    v13 = v11;
    v14 = v12;
    return v8(v7, &v13, a3, a4);
  }

  else
  {
    v9 = 4294954514;
    if (a3)
    {
      a3(4294954514, a4);
    }
  }

  return v9;
}

uint64_t audioRendererAirPlay_SetRateAndAnchorTime(uint64_t a1, __int128 *a2, __int128 *a3, float a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  audioRendererAirPlay_saveRateAndUpdateRoutingRegistry(a1, a4);
  v9 = *DerivedStorage;
  v15 = *a2;
  v16 = *(a2 + 2);
  v13 = *a3;
  v14 = *(a3 + 2);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v10)
  {
    v19 = v15;
    v20 = v16;
    v17 = v13;
    v18 = v14;
    v11 = v10(v9, &v19, &v17, a4);
    if (!v11)
    {
      return v11;
    }
  }

  else
  {
    v11 = 4294954514;
  }

  audioRendererAirPlay_saveRateAndUpdateRoutingRegistry(a1, 0.0);
  return v11;
}

void audioRendererAirPlay_saveRateAndUpdateRoutingRegistry(uint64_t a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __audioRendererAirPlay_saveRateAndUpdateRoutingRegistry_block_invoke;
  block[3] = &__block_descriptor_tmp_29;
  v7 = a2;
  block[4] = DerivedStorage;
  block[5] = a1;
  dispatch_sync(v5, block);
}

void __audioRendererAirPlay_saveRateAndUpdateRoutingRegistry_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(v3 + 72) = v1;
  audioRendererAirPlay_updateRoutingRegistryInternal(v2);
}

uint64_t RegisterFigSampleGeneratorBatchType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigSampleGeneratorBatchGetTypeID()
{
  MEMORY[0x19A8D3660](&FigSampleGeneratorBatchGetClassID_sRegisterFigSampleGeneratorBatchTypeOnce, RegisterFigSampleGeneratorBatchType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigSampleGeneratorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigSampleGeneratorGetClassID_sRegisterFigSampleGeneratorTypeOnce, RegisterFigSampleGeneratorType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigImageQueueConfigurationGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigImageQueueConfigurationGetTypeID_sRegisterImageQueueConfigurationTypeOnce != -1)
  {
    FigImageQueueConfigurationGetTypeID_cold_1();
  }

  return FigImageQueueConfigurationGetTypeID_sImageQueueConfigurationTypeID;
}

uint64_t __FigImageQueueConfigurationGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigImageQueueConfigurationGetTypeID_sImageQueueConfigurationTypeID = result;
  return result;
}

void imageQueueConfiguration_finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

CFStringRef imageQueueConfiguration_copyDebugDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  if (a1)
  {
    return CFStringCreateWithFormat(v2, 0, @"[ImageQueueConfiguration %p] array: %@", a1, *(a1 + 16));
  }

  else
  {
    return CFStringCreateWithFormat(v2, 0, @"[ImageQueueConfiguration %p]", 0);
  }
}

uint64_t FigImageQueueConfigurationCreate(const __CFAllocator *a1, uint64_t a2, uint64_t *a3)
{
  if (FigImageQueueConfigurationGetTypeID_sRegisterImageQueueConfigurationTypeOnce != -1)
  {
    FigImageQueueConfigurationGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
    v6[2] = Mutable;
    if (Mutable)
    {
      result = 0;
      *a3 = v6;
    }

    else
    {
      FigImageQueueConfigurationCreate_cold_2(v6, &v9);
      return v9;
    }
  }

  else
  {
    FigImageQueueConfigurationCreate_cold_3(&v10);
    return v10;
  }

  return result;
}

uint64_t FigImageQueueConfigurationAddFigImageQueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v5 = Mutable;
        FigCFDictionarySetValue();
        CFArrayAppendValue(*(a1 + 16), v5);
        CFRelease(v5);
        return 0;
      }

      else
      {
        FigImageQueueConfigurationAddFigImageQueue_cold_1(&v7);
        return v7;
      }
    }

    else
    {
      FigImageQueueConfigurationAddFigImageQueue_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    FigImageQueueConfigurationAddFigImageQueue_cold_3(&v9);
    return v9;
  }
}

uint64_t FigByteStreamCreateForByteFlume(const void *a1, const __CFAllocator *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  *&v38[1021] = *MEMORY[0x1E69E9840];
  anURL = 0;
  cf = 0;
  bzero(v38, 0x3FDuLL);
  qmemcpy(__src, "n/a", sizeof(__src));
  IsItOKToLogURLs = FigIsItOKToLogURLs();
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a1)
  {
    FigByteStreamCreateForByteFlume_cold_3(number);
    v26 = 0;
    v14 = LODWORD(number[0]);
    goto LABEL_31;
  }

  if (a4)
  {
    CMByteStreamGetClassID();
    v9 = CMDerivedObjectCreate();
    if (v9)
    {
      v14 = v9;
      goto LABEL_30;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a1);
    number[0] = 0;
    FigByteFlumeGetFigBaseObject();
    v12 = v11;
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v14 = v13(v12, @"FBF_EntireLength", a2, number);
      v15 = number[0];
      if (!v14 && number[0])
      {
        *valuePtr = 0;
        CFNumberGetValue(number[0], kCFNumberSInt64Type, valuePtr);
        if ((*valuePtr & 0x8000000000000000) != 0)
        {
          v14 = 4294954513;
        }

        else
        {
          v14 = 0;
          DerivedStorage[1] = *valuePtr;
        }

        v15 = number[0];
      }

      if (v15)
      {
        CFRelease(v15);
      }

      if (!v14)
      {
        FigByteStreamStatsSetupWorker();
        if (sFlumeStreamDestMutexOnce != -1)
        {
          FigByteStreamCreateForByteFlume_cold_1();
        }

        FigByteFlumeGetFigBaseObject();
        v17 = v16;
        v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v18)
        {
          v19 = v18(v17, @"FBF_URL", a2, &anURL);
          if (!v19)
          {
            v20 = DerivedStorage + 3;
            FigByteFlumeGetFigBaseObject();
            v22 = v21;
            v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v23)
            {
              v23(v22, @"FBF_ClientBundleIdentifier", *MEMORY[0x1E695E480], v20);
            }

            if (a3 && (v24 = *MEMORY[0x1E695E4D0], v24 == CFDictionaryGetValue(a3, @"DoNotLogURLs")) || !IsItOKToLogURLs)
            {
              v28 = CFURLCopyScheme(anURL);
              if (v28)
              {
                v29 = v28;
                v26 = CFStringCreateWithFormat(a2, 0, @"%@://<redacted>", v28);
                CFRelease(v29);
                if (!v26)
                {
LABEL_44:
                  if (dword_1EAF16D90)
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  v14 = 0;
                  *a4 = cf;
                  cf = 0;
LABEL_31:
                  if (*MEMORY[0x1E695FF58] != 1)
                  {
                    goto LABEL_33;
                  }

                  goto LABEL_32;
                }

LABEL_42:
                CFStringGetCString(v26, __src, 1024, 0x8000100u);
                goto LABEL_44;
              }
            }

            else
            {
              v25 = CFURLGetString(anURL);
              if (v25)
              {
                v26 = CFRetain(v25);
                if (!v26)
                {
                  goto LABEL_44;
                }

                goto LABEL_42;
              }
            }

            v26 = 0;
            goto LABEL_44;
          }

          v14 = v19;
        }

        else
        {
          v14 = 4294954514;
        }

        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D88, v14, "<<<< FlumeStream >>>>", 754, v4);
LABEL_30:
        v26 = 0;
        goto LABEL_31;
      }
    }

    else
    {
      v14 = 4294954514;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D88, v14, "<<<< FlumeStream >>>>", 748, v4);
    goto LABEL_30;
  }

  v31 = FigByteStreamCreateForByteFlume_cold_2(number);
  v14 = LODWORD(number[0]);
  if (!v31)
  {
    goto LABEL_35;
  }

  v26 = 0;
LABEL_32:
  strncpy(number, __src, 8uLL);
  kdebug_trace();
LABEL_33:
  if (v26)
  {
    CFRelease(v26);
  }

LABEL_35:
  if (anURL)
  {
    CFRelease(anURL);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

uint64_t flumeStream_setUpDestMutexOnce(uint64_t a1)
{
  result = FigSimpleMutexCreate();
  _MergedGlobals_30 = result;
  return result;
}

__n128 FigFlumeStreamFinalize(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (dword_1EAF16D90)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  FigByteStreamStatsTeardownWorker();
  result.n128_u64[0] = 0xF5F5F5F5F5F5F5F5;
  result.n128_u64[1] = 0xF5F5F5F5F5F5F5F5;
  *(DerivedStorage + 64) = result;
  *(DerivedStorage + 80) = result;
  *(DerivedStorage + 32) = result;
  *(DerivedStorage + 48) = result;
  *DerivedStorage = result;
  *(DerivedStorage + 16) = result;
  return result;
}

__CFString *FigFlumeStreamCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  CFStringAppendFormat(Mutable, 0, @"FigFlumeStream %p sourceFlume %@ entireLength %lld lastReadIssued %d", a1, *DerivedStorage, *(DerivedStorage + 8), *(DerivedStorage + 16));
  return Mutable;
}

uint64_t FigFlumeStreamCopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  if (CFEqual(a2, *MEMORY[0x1E695FF78]) || CFEqual(a2, *MEMORY[0x1E695FF70]))
  {
    SInt64 = FigCFNumberCreateSInt64();
LABEL_8:
    v11 = 0;
    *a4 = SInt64;
    goto LABEL_9;
  }

  if (CFEqual(a2, *MEMORY[0x1E695FFA0]))
  {
    FigByteFlumeGetFigBaseObject();
    v14 = v13;
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v15)
    {
      v11 = 4294954514;
      goto LABEL_9;
    }

    StatsDictionary = v15(v14, @"FBF_URL", a3, a4);
    goto LABEL_23;
  }

  if (CFEqual(a2, *MEMORY[0x1E6960DC8]))
  {
LABEL_19:
    v11 = 4294954512;
    goto LABEL_9;
  }

  if (CFEqual(a2, *MEMORY[0x1E6960DE0]))
  {
    FigByteFlumeGetFigBaseObject();
    v18 = kFigByteFlumeProperty_MIMEType;
LABEL_22:
    StatsDictionary = CMBaseObjectCopyProperty(v17, *v18, a3, a4);
LABEL_23:
    v11 = StatsDictionary;
    goto LABEL_9;
  }

  if (CFEqual(a2, *MEMORY[0x1E695FF80]))
  {
LABEL_25:
    SInt64 = CFRetain(*MEMORY[0x1E695E4D0]);
    goto LABEL_8;
  }

  if (CFEqual(a2, *MEMORY[0x1E6960E08]))
  {
    StatsDictionary = flumeStreamCreateReadStatsDictionary(a1, a3, a4);
    goto LABEL_23;
  }

  if (CFEqual(a2, *MEMORY[0x1E6960DA0]))
  {
    FigByteFlumeGetFigBaseObject();
    v18 = kFigByteFlumeProperty_AccessLog;
    goto LABEL_22;
  }

  if (!CFEqual(a2, *MEMORY[0x1E6960DD8]))
  {
    if (!CFEqual(a2, *MEMORY[0x1E6960DA8]))
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  if (*DerivedStorage)
  {
    FigByteFlumeGetFigBaseObject();
    v18 = kFigByteFlumeProperty_LastError;
    goto LABEL_22;
  }

  v11 = 4294954513;
LABEL_9:
  if (*v9 == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  return v11;
}

uint64_t FigFlumeStreamSetProperty(uint64_t a1, CFTypeRef cf)
{
  v2 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (cf)
    {
      CFHash(cf);
      kdebug_trace();
      if (*v2 == 1)
      {
        CFHash(cf);
LABEL_6:
        kdebug_trace();
      }
    }

    else
    {
      kdebug_trace();
      if (*v2 == 1)
      {
        goto LABEL_6;
      }
    }
  }

  return 4294954512;
}

uint64_t FigFlumeStreamRead(const void *a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = 0;
  CMBaseObjectGetDerivedStorage();
  FigGetUpTimeNanoseconds();
  v10 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v11 = flumeStream_issueReadAndWaitForCompletion(a1, a2, a3, a4, 0, &v13);
  if (a5)
  {
    *a5 = v13;
  }

  FigGetUpTimeNanoseconds();
  FigByteStreamStatsLogOneRead();
  if (*v10 == 1)
  {
    kdebug_trace();
  }

  return v11;
}

uint64_t FigFlumeStreamGetAvailableLengthAtOffset(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    AvailableLengthAtOffset_cold_3 = FigFlumeStreamGetAvailableLengthAtOffset_cold_3(&v15);
    v10 = v15;
    if (!AvailableLengthAtOffset_cold_3)
    {
      return v10;
    }

    goto LABEL_8;
  }

  if (a2 < 0)
  {
    FigFlumeStreamGetAvailableLengthAtOffset_cold_2(&v14);
    v10 = v14;
  }

  else
  {
    v7 = *(DerivedStorage + 8);
    v8 = v7 < a2;
    v9 = v7 - a2;
    if (v8)
    {
      FigFlumeStreamGetAvailableLengthAtOffset_cold_1(&v13);
      v10 = v13;
    }

    else
    {
      v10 = 0;
      *a3 = v9;
    }
  }

  if (*v5 == 1)
  {
LABEL_8:
    kdebug_trace();
  }

  return v10;
}

uint64_t FigFlumeStreamReadAndCreateBlockBuffer(const void *a1, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v13 = 0;
  CMBaseObjectGetDerivedStorage();
  *a4 = 0;
  FigGetUpTimeNanoseconds();
  v10 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v11 = flumeStream_issueReadAndWaitForCompletion(a1, a2, a3, 0, a4, &v13);
  if (a5)
  {
    *a5 = v13;
  }

  FigGetUpTimeNanoseconds();
  FigByteStreamStatsLogOneRead();
  if (*v10 == 1)
  {
    kdebug_trace();
  }

  return v11;
}

void flumeStream_incrementalReadCallback(uint64_t a1, int a2, int a3, uint64_t a4, CMBlockBufferRef theBuffer, char a6, int a7)
{
  v12 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a6)
    {
      v13 = "true";
    }

    else
    {
      v13 = "false";
    }

    strncpy(__dst, v13, 8uLL);
    kdebug_trace();
  }

  if (!a7)
  {
    DataLength = CMBlockBufferGetDataLength(theBuffer);
    if (DataLength)
    {
      FigSimpleMutexLock();
      v15 = *(a1 + 56);
      if (v15)
      {
        CMBlockBufferCopyDataBytes(theBuffer, 0, DataLength, (v15 + a4));
      }

      v16 = *(a1 + 64);
      if (v16)
      {
        CMBlockBufferAppendBufferReference(v16, theBuffer, 0, 0, 0);
      }

      FigSimpleMutexUnlock();
      *(a1 + 32) += DataLength;
    }
  }

  *(a1 + 80) = a7;
  if (*v12 == 1)
  {
    kdebug_trace();
  }

  if (a6)
  {
    dispatch_semaphore_signal(*(a1 + 72));
    CFRelease(a1);
  }
}

intptr_t flumeStream_abortWaitingForReadCompletion(dispatch_semaphore_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16D90)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  *(a1 + 3) = -12871;
  result = dispatch_semaphore_signal(*a1);
  if (*v3 == 1)
  {
    return kdebug_trace();
  }

  return result;
}

uint64_t figFlumeStreamReadRecord_RegisterType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

double figFlumeStreamReadRecord_Init(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void figFlumeStreamReadRecord_Finalize(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 72) = 0;
  }
}

__CFString *figFlumeStreamReadRecord_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"FigFlumeStreamReadRecordRef %p RC %d readIssue %d flumeReadID %lld start %lld length %lld bytesRead %lld reqResult %d", a1, v4, *(a1 + 40), *(a1 + 48), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 80));
  return Mutable;
}

uint64_t OUTLINED_FUNCTION_0_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t FigCaptionRendererCaptionArrayInputCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1 && a2 && a3)
  {
    if (a5)
    {
      *a5 = 0;
      FigCaptionRendererInputGetClassID();
      CMDerivedObjectCreate();
      FigCaptionRendererCaptionArrayInputCreate_cold_1(__str);
    }

    else
    {
      FigCaptionRendererCaptionArrayInputCreate_cold_2(__str);
    }
  }

  else
  {
    FigCaptionRendererCaptionArrayInputCreate_cold_3(__str);
  }

  return *__str;
}

uint64_t FigCaptionRendererCaptionArrayInputSetCaptionsArray(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  if (a2)
  {
    *DerivedStorage = CFRetain(a2);
  }

  return 0;
}

void figFCRCaptionArrayInput_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 32);
  if (v2)
  {
    dispatch_release(v2);
    *(DerivedStorage + 32) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 8) = 0;
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 24) = 0;
  }

  *(DerivedStorage + 56) = 0;
}

__CFString *figFCRCaptionArrayInput_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptionRendererCaptionArrayInput %p>", a1);
  return Mutable;
}

uint64_t ffcrcainput_start(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 32))
  {
    v3 = DerivedStorage;
    v4 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
    if (v4)
    {
      v5 = v4;
      *v4 = CFRetain(a1);
      dispatch_sync_f(*(v3 + 32), v5, startInputDoAsync);
    }
  }

  return 0;
}

void startInputDoAsync(const void **a1)
{
  v1 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context[0] = v1;
  context[1] = DerivedStorage;
  v3 = *DerivedStorage;
  cf.value = 0;
  *&v48 = 0.0;
  if (CFArrayGetCount(v3))
  {
    v4 = 0;
    v5 = *MEMORY[0x1E695E480];
    v6 = *MEMORY[0x1E6961268];
    while (1)
    {
      if (cf.value)
      {
        CFRelease(cf.value);
        cf.value = 0;
      }

      if (*&v48 != 0.0)
      {
        CFRelease(v48);
        *&v48 = 0.0;
      }

      CFArrayGetValueAtIndex(v3, v4);
      FigCaptionGetCMBaseObject();
      v8 = v7;
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v9 || v9(v8, @"CaptionData", v5, &cf) || (CMBaseObject = FigCaptionDataGetCMBaseObject(), (v11 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v11(CMBaseObject, v6, v5, &v48))
      {
LABEL_13:
        v12 = 0;
        goto LABEL_14;
      }

      if (FigCFArrayContainsValue())
      {
        break;
      }

      if (++v4 == CFArrayGetCount(v3))
      {
        goto LABEL_13;
      }
    }

    v12 = 1;
LABEL_14:
    if (*&v48 != 0.0)
    {
      CFRelease(v48);
    }

    if (cf.value)
    {
      CFRelease(cf.value);
    }
  }

  else
  {
    v12 = 0;
  }

  *(DerivedStorage + 16) = v12;
  v13 = *DerivedStorage;
  v52.length = CFArrayGetCount(*DerivedStorage);
  v52.location = 0;
  CFArrayApplyFunction(v13, v52, enumCaptions_applierFunc, context);
  Count = CFArrayGetCount(*(DerivedStorage + 8));
  if (Count < 1)
  {
LABEL_42:
    v33 = CFArrayGetCount(*(DerivedStorage + 8));
    if (v33 < 1)
    {
LABEL_53:
      CFArrayRemoveAllValues(*(DerivedStorage + 8));
    }

    else
    {
      v34 = v33;
      v35 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 8), v35);
        cf.value = 0;
        FigCaptionRendererBaseProtocolGetProtocolID();
        ProtocolVTable = CMBaseObjectGetProtocolVTable();
        if (!ProtocolVTable)
        {
          break;
        }

        v38 = *(ProtocolVTable + 16);
        if (!v38)
        {
          break;
        }

        v39 = *(v38 + 8);
        if (!v39 || v39(ValueAtIndex, &cf))
        {
          break;
        }

        value = cf.value;
        if (!cf.value || (v41 = strcmp(cf.value, "FigCaptionRendererPaintOnCaption"), v42 = (DerivedStorage + 40), v41) && (v43 = strcmp(value, "FigCaptionRendererCaption"), v42 = (DerivedStorage + 40), v43))
        {
          v42 = (DerivedStorage + 48);
        }

        (*v42)(ValueAtIndex, *(DerivedStorage + 56));
        if (v34 == ++v35)
        {
          goto LABEL_53;
        }
      }

      startInputDoAsync_cold_1();
    }
  }

  else
  {
    v15 = Count;
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v18 = CFArrayGetValueAtIndex(*(DerivedStorage + 8), v17);
      __s1 = 0;
      FigCaptionRendererBaseProtocolGetProtocolID();
      v19 = CMBaseObjectGetProtocolVTable();
      if (!v19)
      {
        break;
      }

      v20 = *(v19 + 16);
      if (!v20)
      {
        break;
      }

      v21 = *(v20 + 8);
      if (!v21 || v21(v18, &__s1))
      {
        break;
      }

      if (__s1 && !strcmp(__s1, "FigCaptionRendererPaintOnCaption"))
      {
        if (v16)
        {
          *&v48 = 0.0;
          v49 = 0.0;
          FigBytePumpGetFigBaseObject();
          v48 = v22;
          v49 = v23;
          FigCaptionRendererIntervalProtocolGetProtocolID();
          v24 = CMBaseObjectGetProtocolVTable();
          if (v24)
          {
            v25 = *(v24 + 16);
            if (v25)
            {
              v26 = *(v25 + 8);
              if (v26)
              {
                v26(v16, &v48);
              }
            }
          }

          v46 = 0.0;
          v47 = 0;
          FigBytePumpGetFigBaseObject();
          v46 = v27;
          v47 = v28;
          FigCaptionRendererIntervalProtocolGetProtocolID();
          v29 = CMBaseObjectGetProtocolVTable();
          if (v29)
          {
            v30 = *(v29 + 16);
            if (v30)
            {
              v31 = *(v30 + 8);
              if (v31)
              {
                v31(v18, &v46);
              }
            }
          }

          v32 = v46;
          if (v46 >= *&v48 + v49)
          {
            v32 = *&v48 + v49;
          }

          CMTimeMake(&cf, ((v32 - *&v48) * 1000.0), 1000);
          FigCaptionRendererPaintOnCaptionSetAnimationDuration(v16, &cf);
        }
      }

      else
      {
        v18 = v16;
      }

      ++v17;
      v16 = v18;
      if (v15 == v17)
      {
        goto LABEL_42;
      }
    }

    startInputDoAsync_cold_2();
  }

  if (v1)
  {
    CFRelease(v1);
  }

  free(a1);
}

void enumCaptions_applierFunc(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v155[0] = 0;
  memset(&v154, 0, sizeof(v154));
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v4)
  {
    v4(&v154, a1);
  }

  else
  {
    v5 = *(MEMORY[0x1E6960C98] + 16);
    *&v154.start.value = *MEMORY[0x1E6960C98];
    *&v154.start.epoch = v5;
    *&v154.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  }

  v152 = 0;
  v153 = 0;
  v150 = 0;
  v151 = 0;
  v149 = 0;
  FigCaptionGetCMBaseObject();
  v7 = v6;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8 || (v9 = *MEMORY[0x1E695E480], v8(v7, @"CaptionData", *MEMORY[0x1E695E480], &v153)))
  {
    enumCaptions_applierFunc_cold_1();
    goto LABEL_175;
  }

  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11 && !v11(CMBaseObject, *MEMORY[0x1E6961200], v9, &v149) && FigCFEqual())
  {
    FigCaptionRendererPaintOnCaptionCreate(v155);
    FigCaptionRendererPaintOnCaptionSetAnimationEnabled(v155[0], 1);
  }

  else
  {
    FigCaptionRendererCaptionCreate(v155);
  }

  *&time.start.value = *&v154.start.value;
  time.start.epoch = v154.start.epoch;
  CMTimeGetSeconds(&time.start);
  time = v154;
  CMTimeRangeGetEnd(&v140, &time);
  CMTimeGetSeconds(&v140);
  v12 = v155[0];
  FigBytePumpGetFigBaseObject();
  v14 = v13;
  v16 = v15;
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v18 = *(ProtocolVTable + 16);
    if (v18)
    {
      v19 = *(v18 + 16);
      if (v19)
      {
        v19(v12, v14, v16);
      }
    }
  }

  Mutable = CFStringCreateMutable(v9, 0);
  v21 = FigCaptionDataGetCMBaseObject();
  v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v22)
  {
    v22(v21, *MEMORY[0x1E6961270], v9, &v151);
  }

  if (v151 && CFStringGetLength(v151) >= 1)
  {
    CFStringAppend(Mutable, v151);
    v23 = CFAttributedStringCreate(v9, Mutable, 0);
    MutableCopy = CFAttributedStringCreateMutableCopy(v9, 0, v23);
    if (v23)
    {
      CFRelease(v23);
    }

    v25 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v26 = v155[0];
    FigCaptionRendererCaptionProtocolGetProtocolID();
    v27 = CMBaseObjectGetProtocolVTable();
    if (v27)
    {
      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = *(v28 + 8);
        if (v29)
        {
          v29(v26, v25);
        }
      }
    }

    time.start.value = 0;
    v30 = FigCaptionDataGetCMBaseObject();
    v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v31)
    {
      v31(v30, *MEMORY[0x1E6961278], v9, &time);
    }

    InitialValue = FigCaptionDynamicStyleGetInitialValue();
    if (InitialValue)
    {
      v33 = InitialValue;
      if (!CFEqual(InitialValue, *MEMORY[0x1E6961570]) && !CFEqual(v33, *MEMORY[0x1E6961558]) && !CFEqual(v33, *MEMORY[0x1E6961550]) && !CFEqual(v33, *MEMORY[0x1E6961560]))
      {
        CFEqual(v33, *MEMORY[0x1E6961568]);
      }
    }

    FigCFDictionarySetValue();
    if (time.start.value)
    {
      CFRelease(time.start.value);
    }

    v34 = copyRangedValuesOfStyleProperty(v153, *MEMORY[0x1E69614E8]);
    FigCFDictionarySetValue();
    time.start.value = *MEMORY[0x1E6960878];
    *&time.start.timescale = MutableCopy;
    v156.length = CFArrayGetCount(v34);
    v156.location = 0;
    CFArrayApplyFunction(v34, v156, stylePropertyRangeValueApplier, &time);
    if (v34)
    {
      CFRelease(v34);
    }

    v35 = copyRangedValuesOfStyleProperty(v153, *MEMORY[0x1E69614A0]);
    FigCFDictionarySetValue();
    time.start.value = *MEMORY[0x1E69607D0];
    *&time.start.timescale = MutableCopy;
    v157.length = CFArrayGetCount(v35);
    v157.location = 0;
    CFArrayApplyFunction(v35, v157, stylePropertyRangeValueApplier, &time);
    if (v35)
    {
      CFRelease(v35);
    }

    v36 = copyRangedValuesOfStyleProperty(v153, *MEMORY[0x1E6961480]);
    FigCFDictionarySetValue();
    time.start.value = *MEMORY[0x1E69608A8];
    *&time.start.timescale = MutableCopy;
    v158.length = CFArrayGetCount(v36);
    v158.location = 0;
    CFArrayApplyFunction(v36, v158, stylePropertyRangeValueApplier, &time);
    if (v36)
    {
      CFRelease(v36);
    }

    v37 = copyRangedValuesOfStyleProperty(v153, *MEMORY[0x1E6961460]);
    FigCFDictionarySetValue();
    time.start.value = *MEMORY[0x1E6960990];
    *&time.start.timescale = MutableCopy;
    v159.length = CFArrayGetCount(v37);
    v159.location = 0;
    CFArrayApplyFunction(v37, v159, stylePropertyRangeValueApplier, &time);
    if (v37)
    {
      CFRelease(v37);
    }

    v38 = copyRangedValuesOfStyleProperty(v153, *MEMORY[0x1E6961458]);
    FigCFDictionarySetValue();
    time.start.value = *MEMORY[0x1E6960810];
    *&time.start.timescale = MutableCopy;
    v160.length = CFArrayGetCount(v38);
    v160.location = 0;
    CFArrayApplyFunction(v38, v160, stylePropertyRangeValueApplier, &time);
    if (v38)
    {
      CFRelease(v38);
    }

    v39 = copyRangedValuesOfStyleProperty(v153, *MEMORY[0x1E69614E0]);
    FigCFDictionarySetValue();
    time.start.value = *MEMORY[0x1E6960930];
    *&time.start.timescale = MutableCopy;
    v161.length = CFArrayGetCount(v39);
    v161.location = 0;
    CFArrayApplyFunction(v39, v161, stylePropertyRangeValueApplier, &time);
    if (v39)
    {
      CFRelease(v39);
    }

    v40 = copyRangedValuesOfStyleProperty(v153, *MEMORY[0x1E69614F0]);
    FigCFDictionarySetValue();
    time.start.value = *MEMORY[0x1E6960890];
    *&time.start.timescale = MutableCopy;
    v162.length = CFArrayGetCount(v40);
    v162.location = 0;
    CFArrayApplyFunction(v40, v162, stylePropertyRangeValueApplier, &time);
    if (v40)
    {
      CFRelease(v40);
    }

    FigCFDictionarySetValue();
    if (*(DerivedStorage + 16))
    {
      FigCFDictionarySetValue();
      v41 = v155[0];
      FigCaptionRendererCaptionProtocolGetProtocolID();
      v42 = CMBaseObjectGetProtocolVTable();
      if (!v42)
      {
        goto LABEL_166;
      }

      v43 = *(v42 + 16);
      if (!v43)
      {
        goto LABEL_166;
      }

      v44 = *(v43 + 56);
      if (!v44 || v44(v41, @"ja-JP"))
      {
        goto LABEL_166;
      }
    }

    cf = 0;
    v45 = FigCaptionDataGetCMBaseObject();
    v46 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v46 || v46(v45, *MEMORY[0x1E6961240], v9, &cf))
    {
      goto LABEL_166;
    }

    if (!cf)
    {
LABEL_124:
      Copy = CFAttributedStringCreateCopy(v9, MutableCopy);
      v98 = v155[0];
      FigCaptionRendererCaptionProtocolGetProtocolID();
      v99 = CMBaseObjectGetProtocolVTable();
      if (v99)
      {
        v100 = *(v99 + 16);
        if (v100)
        {
          v101 = *(v100 + 24);
          if (v101)
          {
            v101(v98, Copy);
          }
        }
      }

      CFArrayAppendValue(*(DerivedStorage + 8), v155[0]);
      goto LABEL_167;
    }

    value = 0;
    v47 = FigCaptionRegionGetCMBaseObject();
    v48 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v48 || v48(v47, *MEMORY[0x1E6961338], v9, &v150))
    {
      goto LABEL_166;
    }

    if (v150)
    {
      v49 = CFStringCompare(v150, *MEMORY[0x1E6961368], 0);
      if (CFStringCompare(v150, *MEMORY[0x1E6961348], 0) == kCFCompareEqualTo)
      {
        v163.length = CFAttributedStringGetLength(MutableCopy);
        v163.location = 0;
        CFAttributedStringSetAttribute(MutableCopy, v163, *MEMORY[0x1E6960998], *MEMORY[0x1E6960C38]);
        FigCFDictionarySetValue();
        v61 = v155[0];
        FigCaptionRendererCaptionProtocolGetProtocolID();
        v62 = CMBaseObjectGetProtocolVTable();
        if (v62)
        {
          v63 = *(v62 + 16);
          if (v63)
          {
            v64 = *(v63 + 56);
            if (v64)
            {
              v64(v61, @"ja-JP");
            }
          }
        }

        v65 = 2;
        v66 = 1;
        v135 = 8;
        v136 = 50;
        v137 = 18;
        v53 = 15;
        v67 = 1;
        goto LABEL_93;
      }

      if (CFStringCompare(v150, *MEMORY[0x1E6961350], 0) == kCFCompareEqualTo)
      {
        v164.length = CFAttributedStringGetLength(MutableCopy);
        v164.location = 0;
        CFAttributedStringSetAttribute(MutableCopy, v164, *MEMORY[0x1E6960998], *MEMORY[0x1E6960C38]);
        FigCFDictionarySetValue();
        v68 = v155[0];
        FigCaptionRendererCaptionProtocolGetProtocolID();
        v69 = CMBaseObjectGetProtocolVTable();
        if (v69)
        {
          v70 = *(v69 + 16);
          if (v70)
          {
            v71 = *(v70 + 56);
            if (v71)
            {
              v71(v68, @"ja-JP");
            }
          }
        }

        v65 = 2;
        v67 = 3;
        v66 = 1;
        v135 = 92;
        v136 = 50;
        v137 = 18;
        v53 = 15;
        goto LABEL_93;
      }

      if (CFStringCompare(v150, *MEMORY[0x1E6961360], 0) == kCFCompareEqualTo)
      {
        v102 = v155[0];
        FigCaptionRendererCaptionProtocolGetProtocolID();
        v103 = CMBaseObjectGetProtocolVTable();
        if (v103)
        {
          v104 = *(v103 + 16);
          if (v104)
          {
            v105 = *(v104 + 40);
            if (v105)
            {
              v105(v102, 3);
            }
          }
        }

        FigCaptionRendererSRTRegionCreate(&value);
        FigCaptionRendererSRTRegionSetWritingMode(value, 0);
        FigCaptionRendererSRTRegionSetAlignment(value, 2, 3);
        v137 = 18;
        v53 = 100;
        v135 = 50;
        v136 = 50;
LABEL_98:
        v76 = value;
        v77 = v150;
        FigCaptionRendererRegionProtocolGetProtocolID();
        v78 = CMBaseObjectGetProtocolVTable();
        if (v78)
        {
          v79 = *(v78 + 16);
          if (v79)
          {
            v80 = *(v79 + 8);
            if (v80)
            {
              v80(v76, v77);
            }
          }
        }

        v81 = value;
        FigCaptionRendererRegionProtocolGetProtocolID();
        v82 = CMBaseObjectGetProtocolVTable();
        if (v82)
        {
          v83 = *(v82 + 16);
          if (v83)
          {
            v84 = *(v83 + 24);
            if (v84)
            {
              v84(v81, v53);
            }
          }
        }

        v85 = value;
        FigCaptionRendererRegionProtocolGetProtocolID();
        v86 = CMBaseObjectGetProtocolVTable();
        if (v86)
        {
          v87 = *(v86 + 16);
          if (v87)
          {
            v88 = *(v87 + 40);
            if (v88)
            {
              v88(v85, v137);
            }
          }
        }

        v89 = value;
        FigCaptionRendererRegionProtocolGetProtocolID();
        v90 = CMBaseObjectGetProtocolVTable();
        if (v90)
        {
          v91 = *(v90 + 16);
          if (v91)
          {
            v92 = *(v91 + 56);
            if (v92)
            {
              v92(v89, 50.0, 50.0);
            }
          }
        }

        v93 = value;
        FigCaptionRendererRegionProtocolGetProtocolID();
        v94 = CMBaseObjectGetProtocolVTable();
        if (v94)
        {
          v95 = *(v94 + 16);
          if (v95)
          {
            v96 = *(v95 + 72);
            if (v96)
            {
              v96(v93, v135, (100 - v136));
            }
          }
        }

        CFArrayAppendValue(*(DerivedStorage + 8), value);
        if (value)
        {
          CFRelease(value);
          value = 0;
        }

        FigCFDictionarySetValue();
        v60 = v150;
        if (!v150)
        {
          goto LABEL_122;
        }

        goto LABEL_121;
      }

      if (v152)
      {
        CFRelease(v152);
        v152 = 0;
      }

      v50 = FigCaptionRegionGetCMBaseObject();
      v51 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v51 && !v51(v50, *MEMORY[0x1E69613B0], v9, &v152))
      {
        if (v152)
        {
          FigCaptionDynamicStyleGetInitialValue();
          FigGeometryDimensionMakeFromDictionary();
          FigGeometryDimensionGetCGFloat();
          v53 = v52;
          if (v152)
          {
            CFRelease(v152);
            v152 = 0;
          }
        }

        else
        {
          v53 = 50;
        }

        v109 = FigCaptionRegionGetCMBaseObject();
        v110 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v110)
        {
          v110(v109, *MEMORY[0x1E6961328], v9, &v152);
        }

        if (v152)
        {
          FigCaptionDynamicStyleGetInitialValue();
          FigGeometryDimensionMakeFromDictionary();
          FigGeometryDimensionGetCGFloat();
          v112 = v111;
          if (v152)
          {
            CFRelease(v152);
            v152 = 0;
          }
        }

        else
        {
          v112 = 50;
        }

        v113 = FigCaptionRegionGetCMBaseObject();
        v114 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v114)
        {
          if (!v114(v113, *MEMORY[0x1E6961390], v9, &v152))
          {
            memset(&time, 0, 32);
            FigCaptionDynamicStyleGetInitialValue();
            FigGeometryPointMakeFromDictionary();
            v115 = *&time.start.value;
            v116 = *&time.start.epoch;
            v117 = (v112 / 5.33 + 0.5);
            if (v117 >= 18)
            {
              v117 = 18;
            }

            v137 = v117;
            if (v152)
            {
              CFRelease(v152);
              v152 = 0;
            }

            v118 = FigCaptionRegionGetCMBaseObject();
            v119 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v119)
            {
              if (!v119(v118, *MEMORY[0x1E69613B8], v9, &v152))
              {
                v135 = v115 + v53 / 2;
                v136 = v116 + v112 / 2;
                v120 = FigCaptionDynamicStyleGetInitialValue();
                if (v120 && (v121 = v120, CFStringCompare(*MEMORY[0x1E69613D8], v120, 1uLL)))
                {
                  v122 = 1;
                  if (CFStringCompare(*MEMORY[0x1E69613E0], v121, 1uLL))
                  {
                    if (CFStringCompare(*MEMORY[0x1E69613F0], v121, 1uLL))
                    {
                      if (CFStringCompare(*MEMORY[0x1E69613E8], v121, 1uLL))
                      {
                        v122 = 0;
                        v67 = 0;
                        v66 = 0;
                        if (v49 == kCFCompareEqualTo)
                        {
                          goto LABEL_221;
                        }

                        goto LABEL_186;
                      }

                      v122 = 3;
                      v130 = MEMORY[0x1E6960C30];
                    }

                    else
                    {
                      v122 = 2;
                      v130 = MEMORY[0x1E6960C38];
                    }

                    v165.length = CFAttributedStringGetLength(MutableCopy);
                    v165.location = 0;
                    CFAttributedStringSetAttribute(MutableCopy, v165, *MEMORY[0x1E6960998], *v130);
                    FigCFDictionarySetValue();
                    FigCaptionRendererCaptionSetExtendedLanguageTagString(v155[0]);
                    v66 = 1;
                    v67 = 3;
                    if (v49 == kCFCompareEqualTo)
                    {
LABEL_221:
                      FigCaptionRendererStackLayoutRegionCreate(&value);
                      v131 = value;
                      FigCaptionRendererStackLayoutRegionProtocolGetProtocolID();
                      v132 = CMBaseObjectGetProtocolVTable();
                      if (v132)
                      {
                        v133 = *(v132 + 16);
                        if (v133)
                        {
                          v134 = *(v133 + 8);
                          if (v134)
                          {
                            v134(v131, 0);
                          }
                        }
                      }

                      goto LABEL_98;
                    }

LABEL_186:
                    v65 = v122;
LABEL_93:
                    v72 = v155[0];
                    FigCaptionRendererCaptionProtocolGetProtocolID();
                    v73 = CMBaseObjectGetProtocolVTable();
                    if (v73)
                    {
                      v74 = *(v73 + 16);
                      if (v74)
                      {
                        v75 = *(v74 + 40);
                        if (v75)
                        {
                          v75(v72, 3);
                        }
                      }
                    }

                    FigCaptionRendereriTTRegionCreate(&value);
                    FigCaptionRendererSRTRegionSetWritingMode(value, v65);
                    FigCaptionRendererSRTRegionSetAlignment(value, v66, v67);
                    goto LABEL_98;
                  }
                }

                else
                {
                  v122 = 0;
                }

                v67 = 2;
                v66 = 2;
                if (v49 == kCFCompareEqualTo)
                {
                  goto LABEL_221;
                }

                goto LABEL_186;
              }
            }
          }
        }
      }

LABEL_166:
      Copy = 0;
LABEL_167:
      if (v25)
      {
        CFRelease(v25);
      }

      if (Copy)
      {
        CFRelease(Copy);
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      goto LABEL_173;
    }

    v144 = 0;
    v145 = 0;
    v143 = 0.0;
    v54 = v155[0];
    FigCaptionRendererCaptionProtocolGetProtocolID();
    v55 = CMBaseObjectGetProtocolVTable();
    if (v55)
    {
      v56 = *(v55 + 16);
      if (v56)
      {
        v57 = *(v56 + 40);
        if (v57)
        {
          v57(v54, 1);
        }
      }
    }

    v58 = FigCaptionRegionGetCMBaseObject();
    v59 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v59)
    {
      v59(v58, *MEMORY[0x1E6961328], v9, &v144);
    }

    if (!v144)
    {
      goto LABEL_122;
    }

    FigCaptionDynamicStyleGetInitialValue();
    if (FigCaptionGeometryGetCellBasedDimensionFromDictionary())
    {
LABEL_81:
      v60 = v144;
      if (!v144)
      {
LABEL_122:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_124;
      }

LABEL_121:
      CFRelease(v60);
      goto LABEL_122;
    }

    v106 = v143;
    if (v143 == 1.0)
    {
      FigCaptionRegionCopyProperty(cf, *MEMORY[0x1E6961390], v9, &v145);
      if (!v145)
      {
        goto LABEL_81;
      }

      FigCaptionDynamicStyleGetInitialValue();
      FigCFDictionarySetValue();
      v107 = v145;
      if (!v145)
      {
        goto LABEL_81;
      }
    }

    else
    {
      if (v143 <= 1.0)
      {
        goto LABEL_81;
      }

      theString1 = 0;
      if (!FigCaptionRegionCopyProperty(cf, *MEMORY[0x1E69612E0], v9, &theString1) && theString1)
      {
        if (CFStringCompare(theString1, *MEMORY[0x1E6961288], 0))
        {
          v108 = *(DerivedStorage + 24);
          if (v108)
          {
            CFRelease(v108);
            *(DerivedStorage + 24) = 0;
          }
        }

        else
        {
          memset(&time, 0, 32);
          FigGeometryDimensionMake();
          FigGeometryDimensionMake();
          FigGeometryPointMake();
          v141 = 0;
          memset(&v140, 0, 32);
          FigGeometryDimensionMake();
          FigGeometryDimensionMake();
          FigGeometryPointMake();
          v123 = *(DerivedStorage + 24);
          if (v123)
          {
            FigCaptionRendererRegionGetLines(v123, &v141);
            FigCaptionRendererCellStackLayoutRegionGetPosition(*(DerivedStorage + 24), &v140);
          }

          FigCaptionRegionCopyProperty(cf, *MEMORY[0x1E6961390], v9, &v145);
          if (v145)
          {
            v124 = FigCaptionDynamicStyleGetInitialValue();
            if (v145)
            {
              CFRelease(v145);
            }

            if (v124 && !FigCaptionGeometryGetCellBasedPointFromDictionary())
            {
              FigGeometryDimensionMake();
              FigGeometryDimensionMake();
              FigGeometryPointMake();
              *&time.start.value = v138;
              *&time.start.epoch = v139;
            }
          }

          if (v141 >= 1 && v141 == v106 && (v138 = *&time.start.value, v139 = *&time.start.epoch, FigGeometryPointEqualToPoint()))
          {
            v125 = *(DerivedStorage + 24);
            if (v125)
            {
              v125 = CFRetain(v125);
            }

            value = v125;
          }

          else
          {
            FigCaptionRendererCellStackLayoutRegionCreate(&value);
            FigCaptionRendererStackLayoutRegionSetAnimationEnabled(value);
            v126 = CFStringCreateWithFormat(v9, 0, @"%p", value);
            FigCaptionRendererRegionSetRegionID(value, v126);
            if (v126)
            {
              CFRelease(v126);
            }

            FigCaptionRendererRegionSetLines(value, v106);
            FigCaptionRendererRegionSetRegionAnchor(value, 50.0, 50.0);
            v138 = *&time.start.value;
            v139 = *&time.start.epoch;
            FigCaptionRendererCellStackLayoutRegionSetPosition(value, &v138);
            v127 = *(DerivedStorage + 24);
            v128 = value;
            *(DerivedStorage + 24) = value;
            if (v128)
            {
              CFRetain(v128);
            }

            if (v127)
            {
              CFRelease(v127);
            }
          }
        }
      }

      if (value)
      {
        CFArrayAppendValue(*(DerivedStorage + 8), value);
        v129 = v150;
        if (!v150)
        {
          FigCaptionRendererRegionGetRegionID(value, &v150);
          if (v150)
          {
            CFRetain(v150);
            v129 = v150;
          }

          else
          {
            v129 = 0;
          }
        }

        CFDictionarySetValue(v25, @"region", v129);
        if (value)
        {
          CFRelease(value);
        }
      }

      if (v150)
      {
        CFRelease(v150);
      }

      v107 = theString1;
      if (!theString1)
      {
        goto LABEL_81;
      }
    }

    CFRelease(v107);
    goto LABEL_81;
  }

LABEL_173:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_175:
  if (v155[0])
  {
    CFRelease(v155[0]);
    v155[0] = 0;
  }

  if (v151)
  {
    CFRelease(v151);
    v151 = 0;
  }

  if (v149)
  {
    CFRelease(v149);
    v149 = 0;
  }

  if (v153)
  {
    CFRelease(v153);
  }
}