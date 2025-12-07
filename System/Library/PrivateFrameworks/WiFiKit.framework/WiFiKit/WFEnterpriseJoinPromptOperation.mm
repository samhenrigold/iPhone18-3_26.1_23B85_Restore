@interface WFEnterpriseJoinPromptOperation
+ (id)enterpriseJoinPromptOperationWithDeviceCapability:(int64_t)capability;
@end

@implementation WFEnterpriseJoinPromptOperation

+ (id)enterpriseJoinPromptOperationWithDeviceCapability:(int64_t)capability
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(3uLL);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    v23 = 136315394;
    v24 = "+[WFEnterpriseJoinPromptOperation enterpriseJoinPromptOperationWithDeviceCapability:]";
    v25 = 2048;
    capabilityCopy = capability;
    _os_log_impl(&dword_273ECD000, v4, v6, "%s: creating enterprise prompt with capability %ld", &v23, 0x16u);
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  IsChinaDevice = WFCapabilityIsChinaDevice();
  v10 = @"kWFLocEnterpriseJoinAlertTitle";
  if (IsChinaDevice)
  {
    v10 = @"kWFLocEnterpriseJoinAlertTitle_CH";
  }

  v11 = MEMORY[0x277CCA8D8];
  v12 = v10;
  v13 = [v11 bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:v12 value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];

  [v8 setObject:v14 forKey:*MEMORY[0x277CBF188]];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"kWFLocEnterpriseJoinAlertBody" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  [v8 setObject:v16 forKey:*MEMORY[0x277CBF198]];

  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"kWFLocEnterpriseJoinAlertButtonOk" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  [v8 setObject:v18 forKey:*MEMORY[0x277CBF1E8]];

  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"kWFLocEnterpriseJoinAlertButtonCancel" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  [v8 setObject:v20 forKey:*MEMORY[0x277CBF1C0]];

  [v8 setObject:MEMORY[0x277CBEC38] forKey:@"SBUserNotificationDismissOnLock"];
  [v8 setObject:&stru_2882E4AD8 forKey:@"SBUserNotificationAlertMessageDelimiterKey"];
  v21 = [objc_alloc(objc_opt_class()) initWithOptions:v8 timeout:0 flags:0.0];

  return v21;
}

@end