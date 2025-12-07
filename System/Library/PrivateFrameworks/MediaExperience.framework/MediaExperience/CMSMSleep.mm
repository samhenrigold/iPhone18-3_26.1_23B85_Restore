@interface CMSMSleep
@end

@implementation CMSMSleep

void __CMSMSleep_HandleIdleSleep_block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) idleSleepPreventorUpdaterTimer])
  {
    dispatch_source_cancel([*(a1 + 32) idleSleepPreventorUpdaterTimer]);
    [*(a1 + 32) setIdleSleepPreventorUpdaterTimer:0];
  }

  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) idleSleepPreventorAllocated];
  if (v2)
  {
    if ((v3 & 1) == 0)
    {
      v5 = 1;
LABEL_8:
      v6 = *(a1 + 32);
      v7 = MXGetSerialQueue(v3, v4);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __CMSMSleep_HandleIdleSleep_block_invoke_2;
      v8[3] = &unk_1E7AEADD8;
      v8[4] = *(a1 + 32);
      v9 = v5;
      [v6 setIdleSleepPreventorUpdaterTimer:{MXDispatchUtilityCreateOneShotTimer("CMSMSleep_HandleIdleSleep_block_invoke", "CMSessionManager_Sleep.m", 254, 0, 0, v7, v8, 0, 10.0, 0)}];
    }
  }

  else if (v3)
  {
    v5 = 0;
    goto LABEL_8;
  }
}

void __CMSMSleep_ExtendPlaybackProcessAssertion_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = CMSMUtility_CopyMXCoreSessionWithID(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    if ([v1 extendBackgroundAppAssertionTimer])
    {
      dispatch_source_cancel([v2 extendBackgroundAppAssertionTimer]);
      [v2 setExtendBackgroundAppAssertionTimer:0];
    }

    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (([v2 isPlaying] & 1) == 0)
    {
      CMSMSleep_ReleasePlaybackProcessAssertion(v2);
    }
  }
}

void __CMSMSleep_FetchTemporaryPlaybackProcessAssertion_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = [MXSessionManagerBase copySessionWithMXCoreSessionID:*(a1 + 32)];
  if (v1)
  {
    v2 = v1;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ([v2 resumeBackgroundAppUpdaterTimer])
    {
      dispatch_source_cancel([v2 resumeBackgroundAppUpdaterTimer]);
      [v2 setResumeBackgroundAppUpdaterTimer:0];
    }

    MX_RunningBoardServices_InvalidateAssertion([v2 resumeAssertionRef]);
    [v2 setResumeAssertionRef:0];
    if ([v2 isMemberOfClass:objc_opt_class()])
    {
      [v2 setIsTemporaryAssertionEnabled:0];
    }
  }
}

@end