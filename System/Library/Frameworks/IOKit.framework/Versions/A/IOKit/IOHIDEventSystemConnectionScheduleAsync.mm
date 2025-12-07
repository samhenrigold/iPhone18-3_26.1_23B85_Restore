@interface IOHIDEventSystemConnectionScheduleAsync
@end

@implementation IOHIDEventSystemConnectionScheduleAsync

void ___IOHIDEventSystemConnectionScheduleAsync_block_invoke_3(uint64_t a1)
{
  dispatch_release(*(*(a1 + 32) + 120));
  *(*(a1 + 32) + 120) = 0;
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void ___IOHIDEventSystemConnectionScheduleAsync_block_invoke_2(uint64_t result)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  if (!*(v1 + 456))
  {
    v2 = iohideventsystem_client_refresh(*(v1 + 40), 144);
    v3 = _IOHIDLogCategory(9);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(v1 + 168);
      v5 = 136315394;
      v6 = v4;
      v7 = 1024;
      v8 = v2;
      _os_log_impl(&dword_197195000, v3, OS_LOG_TYPE_DEFAULT, "%s: Sent client refresh msg, status:%#x", &v5, 0x12u);
    }

    __IOHIDEventSystemConnectionCheckServerStatus(v2, v1);
  }
}

@end