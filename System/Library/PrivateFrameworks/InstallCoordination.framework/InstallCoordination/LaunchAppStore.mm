@interface LaunchAppStore
@end

@implementation LaunchAppStore

void ___LaunchAppStore_block_invoke(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && (a2 & 1) == 0)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "_LaunchAppStore_block_invoke";
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to open App Store : %@", &v6, 0x16u);
    }
  }
}

@end