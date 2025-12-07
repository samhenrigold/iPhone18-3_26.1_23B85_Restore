@interface AACFNotificationCallback
@end

@implementation AACFNotificationCallback

void ___AACFNotificationCallback_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B098] valueWithPointer:*(a1 + 32)];
  v3 = _AALogSystem(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v2;
    _os_log_impl(&dword_1B6F6A000, v3, OS_LOG_TYPE_DEFAULT, "Dismissing notification for key: %@", &v9, 0xCu);
  }

  v5 = _AANotificationHandlerMap(v4);
  v6 = [v5 objectForKeyedSubscript:v2];

  v8 = _AANotificationHandlerMap(v7);
  [v8 removeObjectForKey:v2];

  if (v6)
  {
    v6[2](v6, *(a1 + 32), *(a1 + 40));
  }

  CFRelease(*(a1 + 32));
}

@end