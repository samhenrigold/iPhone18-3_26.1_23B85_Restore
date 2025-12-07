@interface BLTRemoteGlobalSettingsChangeset
+ (id)remoteGlobalSettingsChangesetWithProvider:(id)provider;
- (BLTPBSetRemoteGlobalSettingsRequest)blt_protobuf;
- (BLTRemoteGlobalSettingsChangeset)initWithProvider:(id)provider;
- (BOOL)isEqual:(id)equal;
- (BOOL)needsSend;
- (BOOL)sendSuccess;
- (NSString)remoteInfoDirectoryLocation;
- (NSString)remoteInfoFileLocation;
- (id)description;
- (id)descriptionForBBSystemSetting:(int64_t)setting;
- (id)globalScheduledDeliverySettingDescription;
- (void)needsSend;
@end

@implementation BLTRemoteGlobalSettingsChangeset

- (BLTRemoteGlobalSettingsChangeset)initWithProvider:(id)provider
{
  v13 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = BLTRemoteGlobalSettingsChangeset;
  v5 = [(BLTRemoteGlobalSettingsChangeset *)&v8 init];
  if (v5)
  {
    -[BLTRemoteGlobalSettingsChangeset setGlobalScheduledDeliverySetting:](v5, "setGlobalScheduledDeliverySetting:", [providerCopy globalScheduledDeliverySetting]);
    v6 = blt_global_settings_sync_log(-[BLTRemoteGlobalSettingsChangeset setGlobalSummarizationSetting:](v5, "setGlobalSummarizationSetting:", [providerCopy globalSummarizationSetting]));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = providerCopy;
      _os_log_impl(&dword_241FB3000, v6, OS_LOG_TYPE_DEFAULT, "%@ initWithProvider: %@", buf, 0x16u);
    }
  }

  return v5;
}

+ (id)remoteGlobalSettingsChangesetWithProvider:(id)provider
{
  providerCopy = provider;
  v5 = [[self alloc] initWithProvider:providerCopy];

  return v5;
}

- (NSString)remoteInfoDirectoryLocation
{
  v2 = BLTPairingPath();
  v3 = [v2 stringByAppendingPathComponent:@"BulletinDistributor"];

  return v3;
}

- (NSString)remoteInfoFileLocation
{
  remoteInfoDirectoryLocation = [(BLTRemoteGlobalSettingsChangeset *)self remoteInfoDirectoryLocation];
  v3 = [remoteInfoDirectoryLocation stringByAppendingPathComponent:@"bb_global_remote_settings.plist"];

  return v3;
}

- (BOOL)needsSend
{
  v23 = *MEMORY[0x277D85DE8];
  if ([(BLTRemoteGlobalSettingsChangeset *)self globalScheduledDeliverySetting]|| [(BLTRemoteGlobalSettingsChangeset *)self globalSummarizationSetting])
  {
    v3 = MEMORY[0x277CBEAC0];
    remoteInfoFileLocation = [(BLTRemoteGlobalSettingsChangeset *)self remoteInfoFileLocation];
    v5 = [v3 dictionaryWithContentsOfFile:remoteInfoFileLocation];

    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:@"globalScheduledDeliverySetting"];
      intValue = [v7 intValue];
      if ([(BLTRemoteGlobalSettingsChangeset *)self globalScheduledDeliverySetting]== intValue)
      {
        v9 = [v5 objectForKeyedSubscript:@"globalSummarizationSetting"];
        intValue2 = [v9 intValue];
        globalSummarizationSetting = [(BLTRemoteGlobalSettingsChangeset *)self globalSummarizationSetting];

        if (globalSummarizationSetting == intValue2)
        {
          v13 = blt_global_settings_sync_log(v12);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v19 = 138412546;
            selfCopy3 = self;
            v21 = 2112;
            v22 = v5;
            _os_log_impl(&dword_241FB3000, v13, OS_LOG_TYPE_DEFAULT, "%@ needsSend: remoteSettings: %@ SHOULD NOT SEND", &v19, 0x16u);
          }

          v14 = 0;
          goto LABEL_16;
        }
      }

      else
      {
      }

      v13 = blt_global_settings_sync_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412546;
        selfCopy3 = self;
        v21 = 2112;
        v22 = v5;
        v15 = "%@ needsSend: remoteSettings: %@ SHOULD SEND";
        v16 = v13;
        v17 = 22;
        goto LABEL_14;
      }
    }

    else
    {
      v13 = blt_global_settings_sync_log(v6);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        selfCopy3 = self;
        v15 = "%@ needsSend: !remoteSettings";
        v16 = v13;
        v17 = 12;
LABEL_14:
        _os_log_impl(&dword_241FB3000, v16, OS_LOG_TYPE_DEFAULT, v15, &v19, v17);
      }
    }

    v14 = 1;
LABEL_16:

    goto LABEL_17;
  }

  v5 = blt_global_settings_sync_log(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(BLTRemoteGlobalSettingsChangeset *)self needsSend];
  }

  v14 = 0;
LABEL_17:

  return v14;
}

- (BOOL)sendSuccess
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = @"globalScheduledDeliverySetting";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BLTRemoteGlobalSettingsChangeset globalScheduledDeliverySetting](self, "globalScheduledDeliverySetting")}];
  v17[1] = @"globalSummarizationSetting";
  v18[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BLTRemoteGlobalSettingsChangeset globalSummarizationSetting](self, "globalSummarizationSetting")}];
  v18[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  remoteInfoFileLocation = [(BLTRemoteGlobalSettingsChangeset *)self remoteInfoFileLocation];
  v7 = [v5 writeToFile:remoteInfoFileLocation atomically:1];

  v9 = blt_global_settings_sync_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    selfCopy = self;
    v13 = 2112;
    v14 = v5;
    v15 = 1024;
    v16 = v7;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "%@ sendSuccess: infoFile: %@ saveSuccess: %{BOOL}u", &v11, 0x1Cu);
  }

  return v7;
}

- (BLTPBSetRemoteGlobalSettingsRequest)blt_protobuf
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CBEAA8] now];
  [v4 timeIntervalSince1970];
  [v3 setSettingDate:?];

  [v3 setGlobalScheduledDeliverySetting:{-[BLTRemoteGlobalSettingsChangeset globalScheduledDeliverySetting](self, "globalScheduledDeliverySetting")}];
  v5 = blt_global_settings_sync_log([v3 setGlobalSummarizationSetting:{-[BLTRemoteGlobalSettingsChangeset globalSummarizationSetting](self, "globalSummarizationSetting")}]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "%@ blt_protobuf: %@", &v7, 0x16u);
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [equalCopy globalScheduledDeliverySetting], v5 == -[BLTRemoteGlobalSettingsChangeset globalScheduledDeliverySetting](self, "globalScheduledDeliverySetting")))
  {
    globalSummarizationSetting = [equalCopy globalSummarizationSetting];
    v7 = globalSummarizationSetting == [(BLTRemoteGlobalSettingsChangeset *)self globalSummarizationSetting];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  globalScheduledDeliverySettingDescription = [(BLTRemoteGlobalSettingsChangeset *)self globalScheduledDeliverySettingDescription];
  v7 = [(BLTRemoteGlobalSettingsChangeset *)self descriptionForBBSystemSetting:[(BLTRemoteGlobalSettingsChangeset *)self globalSummarizationSetting]];
  v8 = [v3 stringWithFormat:@"<%@: %p %@, %@>", v5, self, globalScheduledDeliverySettingDescription, v7];

  return v8;
}

- (id)globalScheduledDeliverySettingDescription
{
  if ([(BLTRemoteGlobalSettingsChangeset *)self globalScheduledDeliverySetting]== -1)
  {
    v3 = @"BBScheduledDeliverySettingUninitialized";
  }

  else if ([(BLTRemoteGlobalSettingsChangeset *)self globalScheduledDeliverySetting])
  {
    if ([(BLTRemoteGlobalSettingsChangeset *)self globalScheduledDeliverySetting]== 1)
    {
      v3 = @"BBScheduledDeliverySettingDisabled";
    }

    else if ([(BLTRemoteGlobalSettingsChangeset *)self globalScheduledDeliverySetting]== 2)
    {
      v3 = @"BBScheduledDeliverySettingEnabled";
    }

    else
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"<BBScheduledDeliverySetting: <unknown> %ld>", -[BLTRemoteGlobalSettingsChangeset globalScheduledDeliverySetting](self, "globalScheduledDeliverySetting")];
    }
  }

  else
  {
    v3 = @"BBScheduledDeliverySettingDefault";
  }

  return v3;
}

- (id)descriptionForBBSystemSetting:(int64_t)setting
{
  if ((setting + 1) >= 4)
  {
    setting = [MEMORY[0x277CCACA8] stringWithFormat:@"<BBSystemSetting: <unknown> %ld>", setting];
  }

  else
  {
    setting = off_278D31948[setting + 1];
  }

  return setting;
}

- (void)needsSend
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "%@ needsSend: UNEXPECTED: globalScheduledDeliverySetting == BBScheduledDeliverySettingDefault && globalSummarizationSetting == BBSystemSettingDefault - not sending and this should never happen", &v2, 0xCu);
}

@end