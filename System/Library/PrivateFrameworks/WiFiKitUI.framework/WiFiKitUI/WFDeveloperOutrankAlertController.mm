@interface WFDeveloperOutrankAlertController
+ (id)developerOutrankAlertControllerWithNetworkName:(id)name chinaDevice:(BOOL)device completionHandler:(id)handler;
+ (id)messageForChinaDevice:(BOOL)device;
+ (id)okButtonTitle;
+ (id)settingsButtonTitle;
+ (id)titleForNetworkName:(id)name chinaDevice:(BOOL)device;
@end

@implementation WFDeveloperOutrankAlertController

+ (id)developerOutrankAlertControllerWithNetworkName:(id)name chinaDevice:(BOOL)device completionHandler:(id)handler
{
  deviceCopy = device;
  nameCopy = name;
  handlerCopy = handler;
  v9 = handlerCopy;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = 0;
  if (nameCopy)
  {
    if (handlerCopy)
    {
      v10 = [WFDeveloperOutrankAlertController titleForNetworkName:nameCopy chinaDevice:deviceCopy];
      v11 = [WFDeveloperOutrankAlertController messageForChinaDevice:deviceCopy];
      v12 = +[WFDeveloperOutrankAlertController okButtonTitle];
      v13 = +[WFDeveloperOutrankAlertController settingsButtonTitle];
      v14 = [WFPromptAlertController alertControllerWithTitle:v10 message:v11 preferredStyle:1];
      v15 = v32[5];
      v32[5] = v14;

      [v32[5] setCompletionHandler:v9];
      v16 = v32[5];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __114__WFDeveloperOutrankAlertController_developerOutrankAlertControllerWithNetworkName_chinaDevice_completionHandler___block_invoke;
      v29[3] = &unk_279EC5468;
      v29[4] = &v31;
      v17 = [MEMORY[0x277D750F8] actionWithTitle:v12 style:0 handler:v29];
      [v16 addAction:v17];

      v18 = v32[5];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __114__WFDeveloperOutrankAlertController_developerOutrankAlertControllerWithNetworkName_chinaDevice_completionHandler___block_invoke_2;
      v28[3] = &unk_279EC5468;
      v28[4] = &v31;
      v19 = [MEMORY[0x277D750F8] actionWithTitle:v13 style:0 handler:v28];
      [v18 addAction:v19];

      goto LABEL_4;
    }

    v12 = WFLogForCategory(0);
    v26 = OSLogForWFLogLevel(1uLL);
    v23 = v26;
    v11 = 0;
    if (WFCurrentLogLevel(v26, v27) && v12)
    {
      if (os_log_type_enabled(v12, v23))
      {
        *buf = 0;
        v25 = "Missing completion handler";
        goto LABEL_15;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v12 = WFLogForCategory(0);
    v22 = OSLogForWFLogLevel(1uLL);
    v23 = v22;
    v11 = 0;
    if (WFCurrentLogLevel(v22, v24) && v12)
    {
      if (os_log_type_enabled(v12, v23))
      {
        *buf = 0;
        v25 = "Missing network name";
LABEL_15:
        _os_log_impl(&dword_273FB9000, v12, v23, v25, buf, 2u);
      }

LABEL_16:
      v11 = 0;
      v10 = 0;
      goto LABEL_4;
    }
  }

  v10 = 0;
LABEL_4:

  v20 = v32[5];
  _Block_object_dispose(&v31, 8);

  return v20;
}

void __114__WFDeveloperOutrankAlertController_developerOutrankAlertControllerWithNetworkName_chinaDevice_completionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(*(*(a1 + 32) + 8) + 40) completionHandler];
  v1[2](v1, 0);
}

void __114__WFDeveloperOutrankAlertController_developerOutrankAlertControllerWithNetworkName_chinaDevice_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = [*(*(*(a1 + 32) + 8) + 40) completionHandler];
  v1[2](v1, 1);
}

+ (id)titleForNetworkName:(id)name chinaDevice:(BOOL)device
{
  deviceCopy = device;
  v5 = MEMORY[0x277CCACA8];
  v6 = MEMORY[0x277CCA8D8];
  nameCopy = name;
  v8 = [v6 bundleForClass:objc_opt_class()];
  v9 = v8;
  if (deviceCopy)
  {
    v10 = @"kWFLocDeveloperOutrankAlertTitle_CH";
  }

  else
  {
    v10 = @"kWFLocDeveloperOutrankAlertTitle";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  nameCopy = [v5 stringWithFormat:v11, nameCopy];

  return nameCopy;
}

+ (id)messageForChinaDevice:(BOOL)device
{
  deviceCopy = device;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (deviceCopy)
  {
    v6 = @"kWFLocDeveloperOutrankAlertMessage_CH";
  }

  else
  {
    v6 = @"kWFLocDeveloperOutrankAlertMessage";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v7;
}

+ (id)okButtonTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"kWFLocPromptAlertDeveloperOutrankOKButton" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v3;
}

+ (id)settingsButtonTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"kWFLocPromptAlertDeveloperOutrankSettingsButton" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v3;
}

@end