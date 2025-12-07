@interface LAMKBEventsRegister
@end

@implementation LAMKBEventsRegister

uint64_t ___LAMKBEventsRegister_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = +[_LAMKBLog log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 136315650;
    v9 = "_LAMKBEventsRegister_block_invoke";
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = a3;
    _os_log_impl(&dword_1A784E000, v6, OS_LOG_TYPE_INFO, "%s:callback(type=%d, handle_state=%@", &v8, 0x1Cu);
  }

  return (*(*(a1 + 32) + 16))();
}

@end