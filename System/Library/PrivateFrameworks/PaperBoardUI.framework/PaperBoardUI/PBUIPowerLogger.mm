@interface PBUIPowerLogger
+ (void)sendTelemetryForPosterForegroundChange:(BOOL)change posterProviderID:(id)d posterPowerlogIdentifier:(unint64_t)identifier;
@end

@implementation PBUIPowerLogger

+ (void)sendTelemetryForPosterForegroundChange:(BOOL)change posterProviderID:(id)d posterPowerlogIdentifier:(unint64_t)identifier
{
  changeCopy = change;
  v24[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v8 = dCopy;
  v9 = @"Unknown";
  if (dCopy)
  {
    v9 = dCopy;
  }

  v10 = v9;
  v11 = @"background";
  if (changeCopy)
  {
    v11 = @"foreground";
  }

  v12 = v11;
  v13 = v12;
  if (MEMORY[0x282227608])
  {
    v23[0] = @"event";
    v23[1] = @"WallpaperID";
    v24[0] = v12;
    v24[1] = v10;
    v23[2] = @"WallpaperType";
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:identifier];
    v24[2] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];

    if (_sharedWallpaperMetricsTelemetryIdentifier_onceToken != -1)
    {
      +[PBUIPowerLogger sendTelemetryForPosterForegroundChange:posterProviderID:posterPowerlogIdentifier:];
    }

    PPSSendTelemetry();
  }

  else
  {
    v15 = PBUILogPower(v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PBUIPowerLogger sendTelemetryForPosterForegroundChange:v15 posterProviderID:? posterPowerlogIdentifier:?];
    }
  }

  v17 = PBUILogPower(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18[0] = 67109634;
    v18[1] = changeCopy;
    v19 = 2114;
    v20 = v10;
    v21 = 2048;
    identifierCopy = identifier;
    _os_log_impl(&dword_21E67D000, v17, OS_LOG_TYPE_DEFAULT, "Sent Telemetry: foreground=%{BOOL}d, posterID=%{public}@, posterPowerlogIdentifier=%lu", v18, 0x1Cu);
  }
}

@end