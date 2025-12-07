@interface CNSimulatedCrashReporter
+ (id)os_log;
+ (void)simulateCrashWithCode:(int64_t)code description:(id)description;
+ (void)simulateCrashWithMessage:(id)message;
@end

@implementation CNSimulatedCrashReporter

+ (void)simulateCrashWithMessage:(id)message
{
  v4 = MEMORY[0x1E696AEC0];
  messageCopy = message;
  v6 = [[v4 alloc] initWithFormat:messageCopy arguments:&v7];

  [self simulateCrashWithCode:732802011 description:v6];
}

+ (void)simulateCrashWithCode:(int64_t)code description:(id)description
{
  descriptionCopy = description;
  if (softLinkSimulateCrashAvailable_onceToken != -1)
  {
    +[CNSimulatedCrashReporter simulateCrashWithCode:description:];
  }

  if (softLinkSimulateCrashAvailable_isAvailable)
  {
    v7 = softLinkSimulateCrash;
    v8 = getpid();
    v7(v8, code, descriptionCopy);
  }

  else
  {
    os_log = [self os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_FAULT))
    {
      [(CNSimulatedCrashReporter *)descriptionCopy simulateCrashWithCode:code description:os_log];
    }

    os_log2 = [self os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_FAULT))
    {
      [CNSimulatedCrashReporter simulateCrashWithCode:os_log2 description:?];
    }
  }
}

+ (id)os_log
{
  if (os_log_cn_once_token_3 != -1)
  {
    +[CNSimulatedCrashReporter os_log];
  }

  v3 = os_log_cn_once_object_3;

  return v3;
}

uint64_t __34__CNSimulatedCrashReporter_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "crash-reporter");
  v1 = os_log_cn_once_object_3;
  os_log_cn_once_object_3 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (void)simulateCrashWithCode:(NSObject *)a3 description:.cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 136315394;
  v6 = [a1 UTF8String];
  v7 = 2048;
  v8 = a2;
  _os_log_fault_impl(&dword_1859F0000, a3, OS_LOG_TYPE_FAULT, "[CRASH] %s (code 0x%llx)", &v5, 0x16u);
}

+ (void)simulateCrashWithCode:(NSObject *)a1 description:.cold.3(NSObject *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AF00] callStackSymbols];
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&dword_1859F0000, a1, OS_LOG_TYPE_FAULT, "[CRASH] Backtrace: %@", &v3, 0xCu);
}

@end