@interface Locked
@end

@implementation Locked

void __rescheduleAutomaticCooldown_Locked_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  if (isSearchToolClientBundleIdentifier_onceToken != -1)
  {
    __rescheduleAutomaticCooldown_Locked_block_invoke_cold_1();
  }

  v0 = isSearchToolClientBundleIdentifier_isSearchTool ^ 1;
  rescheduleAutomaticCooldown_Locked_automaticCooldownEnabled = isSearchToolClientBundleIdentifier_isSearchTool ^ 1;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 67109120;
    v1[1] = v0 & 1;
    _os_log_impl(&dword_1B238B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[automatic cooldown] automatic cooldown enabled: %d", v1, 8u);
  }
}

void __rescheduleAutomaticCooldown_Locked_block_invoke_472()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  v1 = gQueryParser;

  CFNotificationCenterAddObserver(LocalCenter, v1, handleDidEnterBackgroundNotification, @"UIApplicationDidEnterBackgroundNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

uint64_t __rescheduleAutomaticCooldown_Locked_block_invoke_2()
{
  v3 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 134217984;
    v2 = 0x405E000000000000;
    _os_log_impl(&dword_1B238B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[automatic cooldown] cooling down QP after %.0fs of idle time", &v1, 0xCu);
  }

  __MDQueryParserCooldown();
  pthread_mutex_lock(&gQueryParserLock);
  if (gQueryParserAutomaticCoolDownBlock)
  {
    _Block_release(gQueryParserAutomaticCoolDownBlock);
    gQueryParserAutomaticCoolDownBlock = 0;
  }

  return pthread_mutex_unlock(&gQueryParserLock);
}

@end