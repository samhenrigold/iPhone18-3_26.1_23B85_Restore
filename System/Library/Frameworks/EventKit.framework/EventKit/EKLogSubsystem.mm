@interface EKLogSubsystem
+ (OS_os_log)autocomplete;
+ (OS_os_log)availabilitySearch;
+ (OS_os_log)defaultCategory;
+ (OS_os_log)exchangeSync;
+ (OS_os_log)junk;
+ (OS_os_log)locationSearch;
+ (OS_os_log)predicateMonitor;
+ (OS_os_log)savingSignposts;
@end

@implementation EKLogSubsystem

+ (OS_os_log)predicateMonitor
{
  if (predicateMonitor_onceToken != -1)
  {
    +[EKLogSubsystem predicateMonitor];
  }

  v3 = predicateMonitor_logHandle;

  return v3;
}

uint64_t __34__EKLogSubsystem_predicateMonitor__block_invoke()
{
  v0 = os_log_create("com.apple.calendar.ek", "EKPredicateMonitor");
  v1 = predicateMonitor_logHandle;
  predicateMonitor_logHandle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (OS_os_log)defaultCategory
{
  if (defaultCategory_onceToken != -1)
  {
    +[EKLogSubsystem defaultCategory];
  }

  v3 = defaultCategory_logHandle;

  return v3;
}

uint64_t __33__EKLogSubsystem_defaultCategory__block_invoke()
{
  v0 = os_log_create("com.apple.calendar.ek", "Default");
  v1 = defaultCategory_logHandle;
  defaultCategory_logHandle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (OS_os_log)autocomplete
{
  if (autocomplete_onceToken != -1)
  {
    +[EKLogSubsystem autocomplete];
  }

  v3 = autocomplete_logHandle;

  return v3;
}

uint64_t __30__EKLogSubsystem_autocomplete__block_invoke()
{
  v0 = os_log_create("com.apple.calendar.ek", "Autocomplete");
  v1 = autocomplete_logHandle;
  autocomplete_logHandle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (OS_os_log)availabilitySearch
{
  if (availabilitySearch_onceToken != -1)
  {
    +[EKLogSubsystem availabilitySearch];
  }

  v3 = availabilitySearch_logHandle;

  return v3;
}

uint64_t __36__EKLogSubsystem_availabilitySearch__block_invoke()
{
  v0 = os_log_create("com.apple.calendar.ek", "AvailabilitySearch");
  v1 = availabilitySearch_logHandle;
  availabilitySearch_logHandle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (OS_os_log)exchangeSync
{
  if (exchangeSync_onceToken != -1)
  {
    +[EKLogSubsystem exchangeSync];
  }

  v3 = exchangeSync_logHandle;

  return v3;
}

uint64_t __30__EKLogSubsystem_exchangeSync__block_invoke()
{
  v0 = os_log_create("com.apple.calendar.ek", "ExchangeSync");
  v1 = exchangeSync_logHandle;
  exchangeSync_logHandle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (OS_os_log)junk
{
  if (junk_onceToken != -1)
  {
    +[EKLogSubsystem junk];
  }

  v3 = junk_logHandle;

  return v3;
}

uint64_t __22__EKLogSubsystem_junk__block_invoke()
{
  v0 = os_log_create("com.apple.calendar.ek", "Junk");
  v1 = junk_logHandle;
  junk_logHandle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (OS_os_log)locationSearch
{
  if (locationSearch_onceToken != -1)
  {
    +[EKLogSubsystem locationSearch];
  }

  v3 = locationSearch_logHandle;

  return v3;
}

uint64_t __32__EKLogSubsystem_locationSearch__block_invoke()
{
  v0 = os_log_create("com.apple.calendar.ek", "LocationSearch");
  v1 = locationSearch_logHandle;
  locationSearch_logHandle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (OS_os_log)savingSignposts
{
  if (savingSignposts_onceToken != -1)
  {
    +[EKLogSubsystem savingSignposts];
  }

  v3 = savingSignposts_logHandle;

  return v3;
}

uint64_t __33__EKLogSubsystem_savingSignposts__block_invoke()
{
  v0 = os_log_create("com.apple.calendar.ek", "SavingSignposts");
  v1 = savingSignposts_logHandle;
  savingSignposts_logHandle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end