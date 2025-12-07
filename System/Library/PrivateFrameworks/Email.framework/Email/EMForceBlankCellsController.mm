@interface EMForceBlankCellsController
+ (double)_maximumDelay;
+ (double)_minimumDelay;
+ (id)log;
+ (void)blockForRandomDurationWithMessage:(id)message;
@end

@implementation EMForceBlankCellsController

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__EMForceBlankCellsController_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_14 != -1)
  {
    dispatch_once(&log_onceToken_14, block);
  }

  v2 = log_log_14;

  return v2;
}

void __34__EMForceBlankCellsController_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_14;
  log_log_14 = v1;
}

+ (void)blockForRandomDurationWithMessage:(id)message
{
  v21 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = arc4random();
  [self _blockRate];
  v7 = v6;
  if (v5 / 4294967300.0 <= v6)
  {
    [self _minimumDelay];
    v10 = v9;
    [self _maximumDelay];
    v12 = v11;
    if (v10 > v11)
    {
      v13 = +[EMForceBlankCellsController log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(EMForceBlankCellsController *)v13 blockForRandomDurationWithMessage:v10, v12];
      }

      v12 = 2.0;
      v10 = 0.25;
    }

    v14 = arc4random();
    v15 = +[EMForceBlankCellsController log];
    v16 = v10 + (v12 - v10) * (v14 / 4294967300.0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134218242;
      v18 = v16;
      v19 = 2112;
      v20 = *&messageCopy;
      _os_log_impl(&dword_1C6655000, v15, OS_LOG_TYPE_DEFAULT, "Sleep for %.2fs (%@)", &v17, 0x16u);
    }

    [MEMORY[0x1E696AF00] sleepForTimeInterval:v16];
  }

  else
  {
    v8 = +[EMForceBlankCellsController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134218240;
      v18 = v5 / 4294967300.0;
      v19 = 2048;
      v20 = v7;
      _os_log_impl(&dword_1C6655000, v8, OS_LOG_TYPE_DEFAULT, "Skip sleep (%.2f > %.2f)", &v17, 0x16u);
    }
  }
}

+ (double)_minimumDelay
{
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [em_userDefaults objectForKey:@"BlankCellMinimumBlockDuration"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.25;
  }

  return v5;
}

+ (double)_maximumDelay
{
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [em_userDefaults objectForKey:@"BlankCellMaximumBlockDuration"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 2.0;
  }

  return v5;
}

+ (void)blockForRandomDurationWithMessage:(double)a3 .cold.1(os_log_t log, double a2, double a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a2;
  v5 = 2048;
  v6 = a3;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "Minimum delay (%.2f) cannot be greater than maximum delay (%.2f) - fall back to default values", &v3, 0x16u);
}

@end