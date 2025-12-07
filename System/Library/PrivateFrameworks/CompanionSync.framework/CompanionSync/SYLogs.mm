@interface SYLogs
+ (id)logFolder;
+ (void)initialize;
@end

@implementation SYLogs

+ (void)initialize
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v9 = @"SyncErrorAlert";
    v3 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v10[0] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [standardUserDefaults registerDefaults:v4];

    v7 = @"Pumbaa";
    v5 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v8 = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    [standardUserDefaults registerDefaults:v6];
  }
}

+ (id)logFolder
{
  if (logFolder_onceToken != -1)
  {
    +[SYLogs logFolder];
  }

  v3 = logFolder___folder;

  return v3;
}

uint64_t __19__SYLogs_logFolder__block_invoke()
{
  v0 = MGGetBoolAnswer();
  v1 = @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/CompanionSync";
  v2 = logFolder___folder;
  if (v0)
  {
    v1 = @"/var/mobile/Library/Logs/CompanionSync";
  }

  logFolder___folder = v1;

  return MEMORY[0x1EEE66BB8](v0, v2);
}

@end