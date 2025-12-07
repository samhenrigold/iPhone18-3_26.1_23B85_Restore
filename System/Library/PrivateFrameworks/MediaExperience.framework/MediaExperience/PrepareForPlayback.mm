@interface PrepareForPlayback
@end

@implementation PrepareForPlayback

uint64_t __routingSessionManagerResilientRemote_PrepareForPlayback_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v5)
  {
    v5(a2, v3, v4);
  }

  else if (v3)
  {
    v3(v4, 4294954514);
  }

  return 0;
}

uint64_t __routingSessionManager_PrepareForPlayback_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    return v1(*(result + 40));
  }

  return result;
}

void __routingSessionManager_PrepareForPlayback_block_invoke_110(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (dword_1EB75DF00)
    {
      v16 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = a1[4];
    if (v5)
    {
      CFRetain(v5);
      v6 = a1[4];
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1[5] + 32);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __routingSessionManager_PrepareForPlayback_block_invoke_2;
    v14[3] = &__block_descriptor_48_e5_v8__0l;
    v8 = a1[6];
    v14[4] = v6;
    v14[5] = v8;
    MXDispatchAsync("routingSessionManager_PrepareForPlayback_block_invoke", "FigRoutingSessionManager.m", 1560, 0, 0, v7, v14);
  }

  FigSimpleMutexLock();
  v9 = *(a1[5] + 104);
  *(a1[5] + 104) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  FigSimpleMutexUnlock();
  if (v9)
  {
    if (CFArrayGetCount(v9) >= 1)
    {
      v10 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, v10);
        ValueAtIndex[2](ValueAtIndex, a2);
        ++v10;
      }

      while (v10 < CFArrayGetCount(v9));
    }

    CFRelease(v9);
  }

  v12 = a1[6];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[4];
  if (v13)
  {
    CFRelease(v13);
  }
}

void __routingSessionManager_PrepareForPlayback_block_invoke_2(uint64_t a1)
{
  routingSessionManager_updateCurrentSession(*(a1 + 32), 0, 0, 0, 0, 0, 0, 1, *(a1 + 40), 0, @"routingSessionManager_routeToDestinationOfCurrentSession failed", 0);
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

@end