@interface RegisterForRingerIsOnNotification
@end

@implementation RegisterForRingerIsOnNotification

void __cmsmdevicestate_RegisterForRingerIsOnNotification_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = byte_1EB75D361;
  cmsmdevicestate_UpdateRingerIsOn();
  if (v0 != byte_1EB75D361)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v1 = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4 = MXGetSerialQueue(v1, v2);
    MXDispatchAsync("cmsmdevicestate_RingerIsOnChangeCallback", "CMSessionManager_DeviceState.m", 1246, 0, 0, v4, &__block_literal_global_125_0);
  }
}

uint64_t __cmsmdevicestate_RegisterForRingerIsOnNotification_block_invoke_2()
{
  v2 = *MEMORY[0x1E69E9840];
  result = notify_register_check("com.apple.mediaexperience.silentmode", &dword_1EB75D368);
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

@end