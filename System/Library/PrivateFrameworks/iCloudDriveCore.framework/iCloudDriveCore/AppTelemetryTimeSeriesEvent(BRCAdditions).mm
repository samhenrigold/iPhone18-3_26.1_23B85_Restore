@interface AppTelemetryTimeSeriesEvent(BRCAdditions)
@end

@implementation AppTelemetryTimeSeriesEvent(BRCAdditions)

+ (void)_errorsChainIfNecessaryForAppTelemetryIdentifier:()BRCAdditions error:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v2 = 138412290;
    v3 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: [error.userInfo[@kBRCErrorForErrorsChainKey] isKindOfClass:[NSError class]]%@", &v2, 0xCu);
  }
}

@end