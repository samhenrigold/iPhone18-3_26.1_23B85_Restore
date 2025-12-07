@interface ULTapToRadar
@end

@implementation ULTapToRadar

void __60__ULTapToRadar_ULExtensions__createRadarForMigrationFailure__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (onceToken_MicroLocation_Default != -1)
  {
    +[ULTapToRadar(ULExtensions) createRadarForMigrationFailure];
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "[ULTapToRadar:createRadarForMigrationFailure]: status: %@", &v4, 0xCu);
  }
}

void __65__ULTapToRadar_ULExtensions__createRadarForDatabaseAccessFailure__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (onceToken_MicroLocation_Default != -1)
  {
    +[ULTapToRadar(ULExtensions) createRadarForMigrationFailure];
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "[ULTapToRadar:createRadarForDatabaseAccessError]: status: %@", &v7, 0xCu);
  }

  if (([MEMORY[0x277D28868] isRunningInXCTestEnvironment] & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CBEAA8] now];
    [v5 setObject:v6 forKey:@"ULTTROnDatabaseAccessErrorLastTriggerDate"];
  }
}

@end