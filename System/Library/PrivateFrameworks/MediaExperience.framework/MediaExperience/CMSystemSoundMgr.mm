@interface CMSystemSoundMgr
@end

@implementation CMSystemSoundMgr

void __CMSystemSoundMgr_Initialize_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MXGetSerialQueue(a1, a2);

  MXDispatchAsyncAndWait("CMSystemSoundMgr_Initialize_block_invoke", "CMSessionManager_SystemSounds.m", 327, 0, 0, v2, &__block_literal_global_4_2);
}

double __CMSystemSoundMgr_Initialize_block_invoke_2()
{
  v4 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  v0 = gCMSS_0;
  if (gCMSS_0)
  {
    v1 = dword_1EB75DE40;
    do
    {
      if (v1)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v1 = dword_1EB75DE40;
      }

      v0 = *v0;
    }

    while (v0);
  }

  FigSimpleMutexUnlock();
  return result;
}

@end