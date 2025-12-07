@interface WFCellularOutrankPromptOperation
+ (id)cellularOutrankPromptOperationWithNetworkName:(id)name privateCellular:(BOOL)cellular;
@end

@implementation WFCellularOutrankPromptOperation

+ (id)cellularOutrankPromptOperationWithNetworkName:(id)name privateCellular:(BOOL)cellular
{
  cellularCopy = cellular;
  v40 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7 && os_log_type_enabled(v7, v9))
  {
    *buf = 136315394;
    v37 = "+[WFCellularOutrankPromptOperation cellularOutrankPromptOperationWithNetworkName:privateCellular:]";
    v38 = 2112;
    v39 = nameCopy;
    _os_log_impl(&dword_273ECD000, v7, v9, "%s: showing cellular outrank prompt for network='%@'", buf, 0x16u);
  }

  WFCurrentDeviceCapability();
  IsChinaDevice = WFCapabilityIsChinaDevice();
  v12 = [MEMORY[0x277D7B998] titleForNetworkName:nameCopy chinaDevice:IsChinaDevice privateCellular:cellularCopy];
  if (v12)
  {
    [v6 setObject:v12 forKey:*MEMORY[0x277CBF188]];
  }

  else
  {
    v13 = WFLogForCategory(0);
    v14 = OSLogForWFLogLevel(1uLL);
    v15 = v14;
    if (WFCurrentLogLevel(v14, v16) && v13 && os_log_type_enabled(v13, v15))
    {
      *buf = 136315394;
      v37 = "+[WFCellularOutrankPromptOperation cellularOutrankPromptOperationWithNetworkName:privateCellular:]";
      v38 = 2112;
      v39 = nameCopy;
      _os_log_impl(&dword_273ECD000, v13, v15, "%s: nil title for prompt, networkName='%@'", buf, 0x16u);
    }
  }

  v17 = [MEMORY[0x277D7B998] messageForChinaDevice:IsChinaDevice privateCellular:cellularCopy];
  if (v17)
  {
    [v6 setObject:v17 forKey:*MEMORY[0x277CBF198]];
  }

  else
  {
    v18 = WFLogForCategory(0);
    v19 = OSLogForWFLogLevel(1uLL);
    v20 = v19;
    if (WFCurrentLogLevel(v19, v21) && v18 && os_log_type_enabled(v18, v20))
    {
      *buf = 136315394;
      v37 = "+[WFCellularOutrankPromptOperation cellularOutrankPromptOperationWithNetworkName:privateCellular:]";
      v38 = 2112;
      v39 = nameCopy;
      _os_log_impl(&dword_273ECD000, v18, v20, "%s: nil message for prompt, networkName='%@'", buf, 0x16u);
    }
  }

  v22 = [MEMORY[0x277D7B998] cancelButtonTitleForPrivateCellular:cellularCopy];
  if (v22)
  {
    [v6 setObject:v22 forKey:*MEMORY[0x277CBF1C0]];
  }

  else
  {
    v23 = WFLogForCategory(0);
    v24 = OSLogForWFLogLevel(1uLL);
    v25 = v24;
    if (WFCurrentLogLevel(v24, v26) && v23 && os_log_type_enabled(v23, v25))
    {
      *buf = 136315394;
      v37 = "+[WFCellularOutrankPromptOperation cellularOutrankPromptOperationWithNetworkName:privateCellular:]";
      v38 = 2112;
      v39 = nameCopy;
      _os_log_impl(&dword_273ECD000, v23, v25, "%s: nil cancelButtonTitle for prompt, networkName='%@'", buf, 0x16u);
    }
  }

  v27 = [MEMORY[0x277D7B998] defaultButtonTitleForChinaDevice:IsChinaDevice];
  if (v27)
  {
    [v6 setObject:v27 forKey:*MEMORY[0x277CBF1E8]];
  }

  else
  {
    v28 = WFLogForCategory(0);
    v29 = OSLogForWFLogLevel(1uLL);
    v30 = v29;
    if (WFCurrentLogLevel(v29, v31) && v28 && os_log_type_enabled(v28, v30))
    {
      *buf = 136315394;
      v37 = "+[WFCellularOutrankPromptOperation cellularOutrankPromptOperationWithNetworkName:privateCellular:]";
      v38 = 2112;
      v39 = nameCopy;
      _os_log_impl(&dword_273ECD000, v28, v30, "%s: nil defaultButtonTitle for prompt, networkName='%@'", buf, 0x16u);
    }
  }

  v32 = MEMORY[0x277CBEC38];
  [v6 setObject:MEMORY[0x277CBEC38] forKey:@"SBUserNotificationDismissOnLock"];
  [v6 setObject:&stru_2882E4AD8 forKey:@"SBUserNotificationAlertMessageDelimiterKey"];
  [v6 setObject:v32 forKey:*MEMORY[0x277CBF1B0]];
  [v6 setObject:v32 forKey:@"SBUserNotificationForcesModalAlertAppearance"];
  [v6 setObject:v32 forKey:@"SBUserNotificationDisplayActionButtonOnLockScreen"];
  v33 = [objc_alloc(objc_opt_class()) initWithOptions:v6 timeout:0.0];
  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Cellular outrank prompt for network='%@'", nameCopy];
  [v33 setName:nameCopy];

  return v33;
}

@end