@interface UIAlertController(SensorKitUI)
+ (uint64_t)skui_alertControllerForRequiredAuthorizationIfNeccesaryForBundle:()SensorKitUI authGroup:destructiveHandler:;
+ (uint64_t)skui_alertControllerForRequiredAuthorizationIfNeccesaryForBundle:()SensorKitUI authGroup:tableView:indexPath:destructiveHandler:;
+ (void)skui_requiredAuthorizationAlertIfNeccesaryForBundle:()SensorKitUI authGroup:title:message:destructiveButtonTitle:destructiveHandler:cancelButtonTitle:cancelHandler:;
@end

@implementation UIAlertController(SensorKitUI)

+ (uint64_t)skui_alertControllerForRequiredAuthorizationIfNeccesaryForBundle:()SensorKitUI authGroup:destructiveHandler:
{
  v20 = *MEMORY[0x277D85DE8];
  localizedDisplayName = [a4 localizedDisplayName];
  sk_appName = [a3 sk_appName];
  v11 = [a3 srui_localizedStudyDataAlertTitleWithAuthGroupName:localizedDisplayName];
  localizedRequiredAuthAlertDetail = [a4 localizedRequiredAuthAlertDetail];
  v17 = 0;
  v13 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:localizedRequiredAuthAlertDetail validFormatSpecifiers:@"%@%@" error:&v17, sk_appName, localizedDisplayName];
  if (!v13)
  {
    if (_MergedGlobals_10 != -1)
    {
      dispatch_once(&_MergedGlobals_10, &__block_literal_global_5);
    }

    v14 = qword_28001A318;
    if (os_log_type_enabled(qword_28001A318, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v19 = v17;
      _os_log_fault_impl(&dword_265602000, v14, OS_LOG_TYPE_FAULT, "Failed to localize string because %{public}@", buf, 0xCu);
    }
  }

  v15 = [MEMORY[0x277CCACA8] srui_localizedStringForCode:39];
  return [self skui_requiredAuthorizationAlertIfNeccesaryForBundle:a3 authGroup:a4 title:v11 message:v13 destructiveButtonTitle:v15 destructiveHandler:a5 cancelButtonTitle:objc_msgSend(MEMORY[0x277CCACA8] cancelHandler:{"srui_localizedStringForCode:", 40), 0}];
}

+ (void)skui_requiredAuthorizationAlertIfNeccesaryForBundle:()SensorKitUI authGroup:title:message:destructiveButtonTitle:destructiveHandler:cancelButtonTitle:cancelHandler:
{
  if (![objc_msgSend(a3 "sk_requiredCategories")])
  {
    return 0;
  }

  v14 = [MEMORY[0x277D75110] alertControllerWithTitle:a5 message:a6 preferredStyle:1];
  v15 = [MEMORY[0x277D750F8] actionWithTitle:a7 style:2 handler:a8];
  v16 = [MEMORY[0x277D750F8] actionWithTitle:a9 style:0 handler:a10];
  [v14 addAction:v15];
  [v14 addAction:v16];
  return v14;
}

+ (uint64_t)skui_alertControllerForRequiredAuthorizationIfNeccesaryForBundle:()SensorKitUI authGroup:tableView:indexPath:destructiveHandler:
{
  v25 = *MEMORY[0x277D85DE8];
  localizedDisplayName = [a4 localizedDisplayName];
  v14 = [a3 srui_localizedStudyDataAlertTitleWithAuthGroupName:localizedDisplayName];
  localizedRevokeRequiredAuthAlertDetail = [a4 localizedRevokeRequiredAuthAlertDetail];
  v22 = 0;
  v16 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:localizedRevokeRequiredAuthAlertDetail validFormatSpecifiers:@"%@" error:&v22, localizedDisplayName];
  if (!v16)
  {
    if (_MergedGlobals_10 != -1)
    {
      dispatch_once(&_MergedGlobals_10, &__block_literal_global_5);
    }

    v17 = qword_28001A318;
    if (os_log_type_enabled(qword_28001A318, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v24 = v22;
      _os_log_fault_impl(&dword_265602000, v17, OS_LOG_TYPE_FAULT, "Failed to localize string because %{public}@", buf, 0xCu);
    }
  }

  v18 = [MEMORY[0x277CCACA8] srui_localizedStringForCode:41];
  v19 = [MEMORY[0x277CCACA8] srui_localizedStringForCode:26];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __148__UIAlertController_SensorKitUI__skui_alertControllerForRequiredAuthorizationIfNeccesaryForBundle_authGroup_tableView_indexPath_destructiveHandler___block_invoke;
  v21[3] = &unk_279B984D8;
  v21[4] = a5;
  v21[5] = a6;
  return [self skui_requiredAuthorizationAlertIfNeccesaryForBundle:a3 authGroup:a4 title:v14 message:v16 destructiveButtonTitle:v18 destructiveHandler:a7 cancelButtonTitle:v19 cancelHandler:v21];
}

@end