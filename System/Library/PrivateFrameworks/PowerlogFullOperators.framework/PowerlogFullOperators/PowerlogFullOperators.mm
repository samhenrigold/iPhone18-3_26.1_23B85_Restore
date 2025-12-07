void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

id PLLogPersistentConnection(uint64_t a1)
{
  if (PLLogPersistentConnection_onceToken != -1)
  {
    PLLogPersistentConnection_cold_1();
  }

  v2 = PLLogPersistentConnection___logObj;

  return v2;
}

uint64_t __PLLogPersistentConnection_block_invoke()
{
  PLLogPersistentConnection___logObj = os_log_create("com.apple.powerlog", "persistentConnection");

  return MEMORY[0x2821F96F8]();
}