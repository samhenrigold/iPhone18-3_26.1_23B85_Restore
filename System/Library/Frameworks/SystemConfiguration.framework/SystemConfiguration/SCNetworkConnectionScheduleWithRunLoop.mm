@interface SCNetworkConnectionScheduleWithRunLoop
@end

@implementation SCNetworkConnectionScheduleWithRunLoop

void ____SCNetworkConnectionScheduleWithRunLoop_block_invoke(uint64_t a1)
{
  block[6] = *MEMORY[0x1E69E9840];
  v2 = malloc_type_malloc(0x7CuLL, 0x100004039FCFF04uLL);
  v3 = mach_msg(v2, 2, 0, 0x7Cu, *(a1 + 48), 0, 0);
  if (v3)
  {
    v4 = v3;
    v5 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v5 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v5;
    }

    v6 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v5, v6))
    {
      v7 = _os_log_pack_size();
      v13 = block - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = __error();
      v15 = _os_log_pack_fill(v13, v7, *v14, &dword_1AD2AD000, "SCNetworkConnection notification handler, kr=%d", v18);
      *v15 = 67109120;
      v15[1] = v4;
      __SC_log_send(5, v5, v6, v13);
    }

    free(v2);
  }

  else
  {
    CFRetain(*(a1 + 32));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ____SCNetworkConnectionScheduleWithRunLoop_block_invoke_131;
    block[3] = &__block_descriptor_tmp_132;
    v17 = *(a1 + 32);
    v16 = *(a1 + 40);
    block[4] = v2;
    block[5] = v17;
    dispatch_async(v16, block);
  }
}

void ____SCNetworkConnectionScheduleWithRunLoop_block_invoke_131(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __SCNetworkConnectionMachCallBack(a1, *(a1 + 32), a3, *(a1 + 40));
  free(*(a1 + 32));
  v4 = *(a1 + 40);

  CFRelease(v4);
}

void ____SCNetworkConnectionScheduleWithRunLoop_block_invoke_2(uint64_t a1)
{
  CFRelease(*(a1 + 32));
  dispatch_release(*(a1 + 40));
  v2 = *(a1 + 48);

  dispatch_release(v2);
}

void ____SCNetworkConnectionScheduleWithRunLoop_block_invoke_3(uint64_t a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    v5 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v5 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v5;
    }

    v6 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v5, v6))
    {
      v7 = _os_log_pack_size();
      v13 = block - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = __error();
      v15 = _os_log_pack_fill(v13, v7, *v14, &dword_1AD2AD000, "%sne_session canceled", block[0]);
      v16 = *(a1 + 40) + 88;
      *v15 = 136315138;
      *(v15 + 4) = v16;
      __SC_log_send(7, v5, v6, v13);
    }

    CFRelease(*(a1 + 32));
  }

  else if (a2 == 1)
  {
    CFRetain(*(a1 + 32));
    pthread_mutex_lock((*(a1 + 40) + 16));
    v3 = *(a1 + 40);
    v4 = *(v3 + 224);
    if (v4)
    {
      CFRunLoopSourceSignal(v4);
      _SC_signalRunLoop(*(a1 + 32), *(*(a1 + 40) + 224), *(*(a1 + 40) + 280));
    }

    else if (*(v3 + 288))
    {
      CFRetain(*(a1 + 32));
      v17 = *(*(a1 + 40) + 288);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ____SCNetworkConnectionScheduleWithRunLoop_block_invoke_4;
      block[3] = &__block_descriptor_tmp_135;
      block[4] = *(a1 + 32);
      dispatch_async(v17, block);
    }

    pthread_mutex_unlock((*(a1 + 40) + 16));
  }
}

void ____SCNetworkConnectionScheduleWithRunLoop_block_invoke_4(uint64_t a1)
{
  __SCNetworkConnectionCallBack(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

@end