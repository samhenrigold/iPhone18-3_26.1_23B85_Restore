@interface ReleaseInfo
@end

@implementation ReleaseInfo

void __receivedMemoryAllocator_ReleaseInfo_block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 0, &v10, &type);
  v4 = v10;
  v5 = type;
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
  {
    v6 = v4;
  }

  else
  {
    v6 = v4 & 0xFFFFFFFE;
  }

  if (v6)
  {
    v11 = 136315394;
    v12 = "receivedMemoryAllocator_ReleaseInfo_block_invoke";
    v13 = 2048;
    v14 = a2;
    v7 = _os_log_send_and_compose_impl(v6, 0, v15, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v5, "<<<< MemoryPool >>>> %s: WARNING: ReceivedMemoryAllocator finalized with outstanding ReceivedMemoryEntry %p", &v11, 22);
    LOBYTE(v4) = v10;
  }

  else
  {
    v7 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 0, 1, v7, v7 != v15, v4);
  receivedMemoryAllocator_disposeReceivedMemoryEntry(a2, v8);
}

@end