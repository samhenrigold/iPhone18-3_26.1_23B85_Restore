@interface WFCellularOutrankAlertController
+ (id)cancelButtonTitleForPrivateCellular:(BOOL)cellular;
+ (id)cellularOutrankAlertControllerWithNetworkName:(id)name chinaDevice:(BOOL)device privateCellular:(BOOL)cellular completionHandler:(id)handler;
+ (id)defaultButtonTitleForChinaDevice:(BOOL)device;
+ (id)messageForChinaDevice:(BOOL)device privateCellular:(BOOL)cellular;
+ (id)titleForNetworkName:(id)name chinaDevice:(BOOL)device privateCellular:(BOOL)cellular;
@end

@implementation WFCellularOutrankAlertController

+ (id)cellularOutrankAlertControllerWithNetworkName:(id)name chinaDevice:(BOOL)device privateCellular:(BOOL)cellular completionHandler:(id)handler
{
  cellularCopy = cellular;
  deviceCopy = device;
  nameCopy = name;
  handlerCopy = handler;
  v11 = handlerCopy;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = 0;
  if (nameCopy)
  {
    if (handlerCopy)
    {
      v12 = [WFCellularOutrankAlertController titleForNetworkName:nameCopy chinaDevice:deviceCopy privateCellular:cellularCopy];
      v13 = [WFCellularOutrankAlertController messageForChinaDevice:deviceCopy privateCellular:cellularCopy];
      v14 = [WFCellularOutrankAlertController cancelButtonTitleForPrivateCellular:cellularCopy];
      v15 = [WFCellularOutrankAlertController defaultButtonTitleForChinaDevice:deviceCopy];
      v16 = [WFPromptAlertController alertControllerWithTitle:v12 message:v13 preferredStyle:1];
      v17 = v34[5];
      v34[5] = v16;

      [v34[5] setCompletionHandler:v11];
      v18 = v34[5];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __128__WFCellularOutrankAlertController_cellularOutrankAlertControllerWithNetworkName_chinaDevice_privateCellular_completionHandler___block_invoke;
      v31[3] = &unk_279EC5468;
      v31[4] = &v33;
      v19 = [MEMORY[0x277D750F8] actionWithTitle:v15 style:0 handler:v31];
      [v18 addAction:v19];

      v20 = v34[5];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __128__WFCellularOutrankAlertController_cellularOutrankAlertControllerWithNetworkName_chinaDevice_privateCellular_completionHandler___block_invoke_2;
      v30[3] = &unk_279EC5468;
      v30[4] = &v33;
      v21 = [MEMORY[0x277D750F8] actionWithTitle:v14 style:0 handler:v30];
      [v20 addAction:v21];

      goto LABEL_4;
    }

    v14 = WFLogForCategory(0);
    v28 = OSLogForWFLogLevel(1uLL);
    v25 = v28;
    v12 = 0;
    if (WFCurrentLogLevel(v28, v29) && v14)
    {
      if (os_log_type_enabled(v14, v25))
      {
        *buf = 0;
        v27 = "Missing completion handler";
        goto LABEL_15;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v14 = WFLogForCategory(0);
    v24 = OSLogForWFLogLevel(1uLL);
    v25 = v24;
    v12 = 0;
    if (WFCurrentLogLevel(v24, v26) && v14)
    {
      if (os_log_type_enabled(v14, v25))
      {
        *buf = 0;
        v27 = "Missing network name";
LABEL_15:
        _os_log_impl(&dword_273FB9000, v14, v25, v27, buf, 2u);
      }

LABEL_16:
      v12 = 0;
      v13 = 0;
      goto LABEL_4;
    }
  }

  v13 = 0;
LABEL_4:

  v22 = v34[5];
  _Block_object_dispose(&v33, 8);

  return v22;
}

void __128__WFCellularOutrankAlertController_cellularOutrankAlertControllerWithNetworkName_chinaDevice_privateCellular_completionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(*(*(a1 + 32) + 8) + 40) completionHandler];
  v1[2](v1, 1);
}

void __128__WFCellularOutrankAlertController_cellularOutrankAlertControllerWithNetworkName_chinaDevice_privateCellular_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = [*(*(*(a1 + 32) + 8) + 40) completionHandler];
  v1[2](v1, 0);
}

+ (id)titleForNetworkName:(id)name chinaDevice:(BOOL)device privateCellular:(BOOL)cellular
{
  cellularCopy = cellular;
  deviceCopy = device;
  v7 = MEMORY[0x277CCACA8];
  v8 = MEMORY[0x277CCA8D8];
  nameCopy = name;
  v10 = [v8 bundleForClass:objc_opt_class()];
  v11 = v10;
  v12 = @"kWFLocCellularOutrankAlertTitle";
  if (deviceCopy)
  {
    v12 = @"kWFLocCellularOutrankAlertTitle_CH";
  }

  v13 = @"kWFLocPrivateCellularOutrankAlertTitle_CH";
  if (!deviceCopy)
  {
    v13 = @"kWFLocPrivateCellularOutrankAlertTitle";
  }

  if (cellularCopy)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  v15 = [v10 localizedStringForKey:v14 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  nameCopy = [v7 stringWithFormat:v15, nameCopy];

  return nameCopy;
}

+ (id)messageForChinaDevice:(BOOL)device privateCellular:(BOOL)cellular
{
  cellularCopy = cellular;
  deviceCopy = device;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  v8 = @"kWFLocCellularOutrankAlertMessage";
  if (deviceCopy)
  {
    v8 = @"kWFLocCellularOutrankAlertMessage_CH";
  }

  v9 = @"kWFLocPrivateCellularOutrankAlertMessage_CH";
  if (!deviceCopy)
  {
    v9 = @"kWFLocPrivateCellularOutrankAlertMessage";
  }

  if (cellularCopy)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = [v6 localizedStringForKey:v10 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v11;
}

+ (id)cancelButtonTitleForPrivateCellular:(BOOL)cellular
{
  cellularCopy = cellular;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (cellularCopy)
  {
    v6 = @"kWFLocPromptAlertPrivateCellularOutrankCancelButton";
  }

  else
  {
    v6 = @"kWFLocPromptAlertCellularOutrankCancelButton";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v7;
}

+ (id)defaultButtonTitleForChinaDevice:(BOOL)device
{
  deviceCopy = device;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (deviceCopy)
  {
    v6 = @"kWFLocPromptAlertCellularOutrankAcceptButton_CH";
  }

  else
  {
    v6 = @"kWFLocPromptAlertCellularOutrankAcceptButton";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v7;
}

@end