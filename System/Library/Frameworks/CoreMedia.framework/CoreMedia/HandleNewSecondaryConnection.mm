@interface HandleNewSecondaryConnection
@end

@implementation HandleNewSecondaryConnection

void __figXPC_HandleNewSecondaryConnection_block_invoke(void *a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x19A8DA4F0](a2);
  v5 = FigCFWeakReferenceLoadAndRetain((a1[4] + 16));
  v6 = v5;
  if (v4 != MEMORY[0x1E69E9E80])
  {
    if (v4 == MEMORY[0x1E69E9E98])
    {
      v7 = FigXPCRetain(a1[6]);
      v8 = FigXPCRetain(a2);
      v9 = a1[5];
      v10 = *(v9 + 128);
      block = MEMORY[0x1E69E9820];
      v20 = 0x40000000;
      v21 = __figXPC_HandleNewSecondaryConnection_block_invoke_212;
      v22 = &__block_descriptor_tmp_213;
      v23 = v9;
      v24 = v7;
      v25 = v8;
      dispatch_async(v10, &block);
    }

    if (!v6)
    {
      return;
    }

LABEL_8:
    CFRelease(v6);
    return;
  }

  if (v5)
  {
    figXPC_HandleMessage(a1[5], v5, a1[6], a2);
    goto LABEL_8;
  }

  v27 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 0, &v27, &type);
  v12 = v27;
  v13 = type;
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
  {
    v14 = v12;
  }

  else
  {
    v14 = v12 & 0xFFFFFFFE;
  }

  if (v14)
  {
    v15 = a1[6];
    v16 = *(a1[5] + 88);
    v28 = 136315906;
    v29 = "figXPC_HandleNewSecondaryConnection_block_invoke";
    v30 = 2080;
    v31 = v16;
    v32 = 2048;
    v33 = v15;
    v34 = 2048;
    v35 = a2;
    v17 = _os_log_send_and_compose_impl(v14, 0, v36, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v13, "<< FigXPC >> %s: Server %s clientConnection %p skip handling message %p because perProcessInfo is no longer alive", &v28, 42, block, v20);
    v18 = v27;
  }

  else
  {
    v18 = v12;
    v17 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 0, 1, v17, v17 != v36, v18);
}

void __figXPC_HandleNewSecondaryConnection_block_invoke_212(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = a1[6];
  if (v2 == MEMORY[0x1E69E9E20])
  {
    v4 = a1[4];
    v3 = a1[5];
    v5 = xpc_connection_copy_invalidation_reason();
    pid = xpc_connection_get_pid(v3);
    FigSimpleMutexLock(*(v4 + 112));
    Value = CFDictionaryGetValue(*(v4 + 104), pid);
    if (Value)
    {
      v8 = Value;
      FigSimpleMutexLock(Value[10]);
      Count = CFArrayGetCount(v8[11]);
      if (Count >= 1)
      {
        v10 = Count;
        v11 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8[11], v11);
          if (ValueAtIndex[7] == v3)
          {
            v13 = ValueAtIndex;
            FigCFWeakReferenceTableRemoveValue(v8[6], ValueAtIndex[3]);
            figXPC_ForgetNotificationsForServedObject(v8[14], v13);
            CFArrayRemoveValueAtIndex(v8[11], v11);
            --v10;
          }

          else
          {
            ++v11;
          }
        }

        while (v11 < v10);
      }

      v14 = v8[18];
      v36.length = CFArrayGetCount(v14);
      v36.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v14, v36, v3);
      if (FirstIndexOfValue < 0 || (v16 = FirstIndexOfValue, FirstIndexOfValue >= CFArrayGetCount(v8[18])))
      {
        v25 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 0, &v25, &type);
        v18 = v25;
        v19 = type;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v20 = v18;
        }

        else
        {
          v20 = v18 & 0xFFFFFFFE;
        }

        if (v20)
        {
          v21 = *(v4 + 88);
          v22 = *(v8 + 4);
          v26 = 136315906;
          v27 = "figXPC_TerminateSecondaryConnection";
          v28 = 2048;
          v29 = v3;
          v30 = 2082;
          v31 = v21;
          v32 = 1024;
          v33 = v22;
          v23 = _os_log_send_and_compose_impl(v20, 0, v34, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v19, "<< FigXPC >> %s: Could not find secondaryConnection %p in server %{public}s for clientPID %d. Not releasing the connection", &v26, 38);
          LOBYTE(v18) = v25;
        }

        else
        {
          v23 = 0;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose(0, 0, 1, v23, v23 != v34, v18);
        FigSimpleMutexUnlock(v8[10]);
      }

      else
      {
        CFArrayRemoveValueAtIndex(v8[18], v16);
        FigSimpleMutexUnlock(v8[10]);
        xpc_release(v3);
      }
    }

    FigSimpleMutexUnlock(*(v4 + 112));
    free(v5);
    v2 = a1[6];
  }

  FigXPCRelease(v2);
  FigXPCRelease(a1[5]);
}

@end