@interface CSLPRFStingConfigurationHistorySetting
- (CSLPRFStingConfigurationHistorySetting)init;
- (id)read;
- (void)write:(id)write;
@end

@implementation CSLPRFStingConfigurationHistorySetting

- (void)write:(id)write
{
  v12 = *MEMORY[0x277D85DE8];
  writeCopy = write;
  stingHistorySetting = self->_stingHistorySetting;
  toExportData = [writeCopy toExportData];
  [(CSLPRFTwoWaySyncSetting *)stingHistorySetting setValue:toExportData];

  v7 = cslprf_sting_settings_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543619;
    selfCopy = self;
    v10 = 2113;
    v11 = writeCopy;
    _os_log_impl(&dword_22CE92000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ updated to %{private}@", &v8, 0x16u);
  }
}

- (id)read
{
  value = [(CSLPRFTwoWaySyncSetting *)self->_stingHistorySetting value];
  v3 = [CSLPRFStingConfigurationHistoryData fromExportData:value];

  return v3;
}

- (CSLPRFStingConfigurationHistorySetting)init
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = CSLPRFStingConfigurationHistorySetting;
  v2 = [(CSLPRFStingConfigurationHistorySetting *)&v8 init];
  if (v2)
  {
    v3 = [[CSLPRFTwoWaySyncSetting alloc] initWithKey:@"StingConfigurationHistorySettings" defaultValue:0 notification:0];
    stingHistorySetting = v2->_stingHistorySetting;
    v2->_stingHistorySetting = v3;

    read = [(CSLPRFStingConfigurationHistorySetting *)v2 read];
    v6 = cslprf_sting_settings_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543619;
      v10 = v2;
      v11 = 2113;
      v12 = read;
      _os_log_impl(&dword_22CE92000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ initialValue %{private}@", buf, 0x16u);
    }
  }

  return v2;
}

@end