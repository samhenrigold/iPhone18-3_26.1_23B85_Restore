@interface HMDUIDialogPresenter
+ (id)sharedUIDialogPresenter;
- (BOOL)_addCurrentNotification:(__CFUserNotification *)notification withContext:(id)context;
- (BOOL)_addToPendingContext:(id)context;
- (BOOL)_addToPendingContextSkippingPlatformChecks:(id)checks;
- (BOOL)_isPendingContext:(id)context;
- (BOOL)_presentDialogWithInfo:(id)info options:(unint64_t)options targetResponse:(unint64_t)response textField:(id *)field withContext:(id)context selectedByPeerDevice:(BOOL *)device timeout:(double)timeout;
- (BOOL)_removeCurrentNotification:(__CFUserNotification *)notification currentSelection:(BOOL)selection selectedByPeerDevice:(BOOL *)device andContext:(id)context;
- (HMDUIDialogPresenter)init;
- (void)_displayInternalTTRErrorWithContext:(id)context message:(id)message completionHandler:(id)handler;
- (void)_displayKeychainSyncForHome:(id)home withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)_displayUpgradeNeededWithContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)_displayiCloudSwitchWithContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)_requestHomeUpdateRequiredDialogueWithContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)_requestUserPermissionForBridgeAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)_requestUserPermissionForDeletionOfHomeWithName:(id)name withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)_requestUserPermissionForLegacyWACAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)_requestUserPermissionForRemovalOfRouter:(id)router accessoriesRequiringManualReconfiguration:(id)reconfiguration withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)_requestUserPermissionForRemovalOfSpecificWiFiCredentialedAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)_requestUserPermissionForUnauthenticatedAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)_requestUserPermissionForUnauthenticatedAliroLockWithContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)_requestUserPermissionWithAccessoryPPIDInfo:(id)info name:(id)name category:(id)category withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)_showUserDialogForIncompatibleAccessory:(id)accessory name:(id)name category:(id)category withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)confirmReportAccessory:(id)accessory context:(id)context completionQueue:(id)queue completionHandler:(id)handler;
- (void)dealloc;
- (void)dismissPendingDialogDueToPeerDeviceSelection:(BOOL)selection context:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)dismissPendingDialogWithContext:(id)context;
- (void)dismissPendingDialogWithContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)displayExecutionErrorOfTrigger:(id)trigger partialSuccess:(BOOL)success context:(id)context completionQueue:(id)queue completionHandler:(id)handler;
- (void)displayInternalTTRErrorWithContext:(id)context message:(id)message waitForResponse:(BOOL)response completionHandler:(id)handler;
- (void)displayKeychainSyncForHome:(id)home withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)displayRestrictedBluetoothCharacteristicsWarningWithDeviceName:(id)name completionHandler:(id)handler;
- (void)displayUpgradeNeededWithContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)displayiCloudSwitchWithContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)requestHomeUpdateRequiredDialogueWithContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)requestUserPermissionForBridgeAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)requestUserPermissionForDeletionOfHomeWithName:(id)name withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)requestUserPermissionForLegacyWACAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)requestUserPermissionForRemovalOfRouter:(id)router accessoriesRequiringManualReconfiguration:(id)reconfiguration withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)requestUserPermissionForRemovalOfSpecificWiFiCredentialedAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)requestUserPermissionForUnauthenticatedAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)requestUserPermissionForUnauthenticatedAliroLockWithContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)requestUserPermissionWithAccessoryPPIDInfo:(id)info name:(id)name category:(id)category withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)setCurrentNotification:(__CFUserNotification *)notification;
- (void)showUserDialogForIncompatibleAccessory:(id)accessory name:(id)name category:(id)category withContext:(id)context queue:(id)queue completionHandler:(id)handler;
@end

@implementation HMDUIDialogPresenter

- (BOOL)_presentDialogWithInfo:(id)info options:(unint64_t)options targetResponse:(unint64_t)response textField:(id *)field withContext:(id)context selectedByPeerDevice:(BOOL *)device timeout:(double)timeout
{
  contextCopy = context;
  error = -1;
  v17 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], timeout, options, &error, info);
  if (error || ![(HMDUIDialogPresenter *)self _addCurrentNotification:v17 withContext:contextCopy]|| (v21 = 0, CFUserNotificationReceiveResponse(v17, 0.0, &v21)) || (v21 & 3) != response)
  {
    v18 = 0;
  }

  else
  {
    if (field)
    {
      *field = CFUserNotificationGetResponseValue(v17, *MEMORY[0x277CBF238], 0);
    }

    v18 = 1;
  }

  v19 = [(HMDUIDialogPresenter *)self _removeCurrentNotification:v17 currentSelection:v18 selectedByPeerDevice:device andContext:contextCopy];
  if (v17)
  {
    CFRelease(v17);
  }

  return v19;
}

- (void)_requestHomeUpdateRequiredDialogueWithContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  v23[4] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  queueCopy = queue;
  contextCopy = context;
  v11 = HMDLocalizedStringForKey(@"HH2_UPGRADE_REQUIRED_TITLE");
  v12 = HMDLocalizedStringForKey(@"HH2_UPGRADE_DIALOGUE_BODY");
  v13 = HMDLocalizedStringForKey(@"CANCEL");
  v14 = HMDLocalizedStringForKey(@"HH2_UPGRADE_DIALOGUE_OPEN_HOME");
  v15 = *MEMORY[0x277CBF198];
  v22[0] = *MEMORY[0x277CBF188];
  v22[1] = v15;
  v23[0] = v11;
  v23[1] = v12;
  v16 = *MEMORY[0x277CBF1E8];
  v22[2] = *MEMORY[0x277CBF218];
  v22[3] = v16;
  v23[2] = v13;
  v23[3] = v14;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];
  LOBYTE(self) = [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v17 options:0 textField:0 withContext:contextCopy];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__HMDUIDialogPresenter__requestHomeUpdateRequiredDialogueWithContext_queue_completionHandler___block_invoke;
  block[3] = &unk_279725DC0;
  v20 = handlerCopy;
  selfCopy = self;
  v18 = handlerCopy;
  dispatch_async(queueCopy, block);
}

- (void)requestHomeUpdateRequiredDialogueWithContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  if ([(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    workQueue = [(HMDUIDialogPresenter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __93__HMDUIDialogPresenter_requestHomeUpdateRequiredDialogueWithContext_queue_completionHandler___block_invoke;
    block[3] = &unk_279734578;
    block[4] = self;
    v18 = contextCopy;
    v19 = queueCopy;
    v20 = handlerCopy;
    v12 = handlerCopy;
    dispatch_async(workQueue, block);

    v13 = v18;
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __93__HMDUIDialogPresenter_requestHomeUpdateRequiredDialogueWithContext_queue_completionHandler___block_invoke_2;
    v15[3] = &unk_2797348C0;
    v16 = handlerCopy;
    v14 = handlerCopy;
    dispatch_async(queueCopy, v15);
    v13 = v16;
  }
}

- (void)displayRestrictedBluetoothCharacteristicsWarningWithDeviceName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  workQueue = [(HMDUIDialogPresenter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __105__HMDUIDialogPresenter_displayRestrictedBluetoothCharacteristicsWarningWithDeviceName_completionHandler___block_invoke;
  block[3] = &unk_2797355D0;
  v12 = nameCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = nameCopy;
  dispatch_async(workQueue, block);
}

void __105__HMDUIDialogPresenter_displayRestrictedBluetoothCharacteristicsWarningWithDeviceName_completionHandler___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = HMDLocalizedStringForKey(@"RESTRICTED_BT_CHARS_ACCESS_TITLE");
  v3 = MEMORY[0x277CCACA8];
  v4 = HMDLocalizedStringForKey(@"RESTRICTED_BT_CHARS_ACCESS_MESSAGE");
  v15 = *(a1 + 32);
  v16 = 0;
  v5 = [v3 localizedStringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:&v16, v15];
  v6 = v16;

  v7 = v5;
  if (!v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138544130;
      v20 = v10;
      v21 = 2112;
      v22 = @"RESTRICTED_BT_CHARS_ACCESS_MESSAGE";
      v23 = 2112;
      v24 = @"%@";
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    v7 = @"RESTRICTED_BT_CHARS_ACCESS_MESSAGE";
  }

  v11 = v7;

  v12 = HMDLocalizedStringForKey(@"OK");
  v13 = *MEMORY[0x277CBF198];
  v17[0] = *MEMORY[0x277CBF188];
  v17[1] = v13;
  v18[0] = v2;
  v18[1] = v11;
  v17[2] = *MEMORY[0x277CBF1E8];
  v18[2] = v12;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  [*(a1 + 40) _presentDialogWithInfo:v14 options:0 textField:0 withContext:0];
  (*(*(a1 + 48) + 16))();
}

- (void)displayExecutionErrorOfTrigger:(id)trigger partialSuccess:(BOOL)success context:(id)context completionQueue:(id)queue completionHandler:(id)handler
{
  triggerCopy = trigger;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  workQueue = [(HMDUIDialogPresenter *)self workQueue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __112__HMDUIDialogPresenter_displayExecutionErrorOfTrigger_partialSuccess_context_completionQueue_completionHandler___block_invoke;
  v21[3] = &unk_279725DE8;
  v21[4] = self;
  v22 = contextCopy;
  v24 = triggerCopy;
  v25 = handlerCopy;
  successCopy = success;
  v23 = queueCopy;
  v17 = triggerCopy;
  v18 = handlerCopy;
  v19 = queueCopy;
  v20 = contextCopy;
  dispatch_async(workQueue, v21);
}

void __112__HMDUIDialogPresenter_displayExecutionErrorOfTrigger_partialSuccess_context_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _addToPendingContext:*(a1 + 40)])
  {
    if (*(a1 + 72) == 1)
    {
      v2 = HMDLocalizedStringForKey(@"TRIGGER_EXECUTION_ERROR_TITLE_PARTIAL_SUCCESS");
      v3 = MEMORY[0x277CCACA8];
      v4 = HMDLocalizedStringForKey(@"TRIGGER_EXECUTION_ERROR_BODY_PARTIAL_SUCCESS");
      v31 = 0;
      v5 = [v3 localizedStringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:&v31, *(a1 + 56)];
      v6 = v31;

      if (!v5)
      {
        v7 = objc_autoreleasePoolPush();
        v8 = HMFGetOSLogHandle();
        v5 = @"TRIGGER_EXECUTION_ERROR_BODY_PARTIAL_SUCCESS";
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = HMFGetLogIdentifier();
          *buf = 138544130;
          v38 = v9;
          v39 = 2112;
          v40 = @"TRIGGER_EXECUTION_ERROR_BODY_PARTIAL_SUCCESS";
          v41 = 2112;
          v42 = @"%@";
          v43 = 2112;
          v44 = v6;
LABEL_13:
          _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v2 = HMDLocalizedStringForKey(@"TRIGGER_EXECUTION_ERROR_TITLE");
      v12 = MEMORY[0x277CCACA8];
      v13 = HMDLocalizedStringForKey(@"TRIGGER_EXECUTION_ERROR_BODY");
      v30 = 0;
      v5 = [v12 localizedStringWithValidatedFormat:v13 validFormatSpecifiers:@"%@" error:&v30, *(a1 + 56)];
      v6 = v30;

      if (!v5)
      {
        v7 = objc_autoreleasePoolPush();
        v8 = HMFGetOSLogHandle();
        v5 = @"TRIGGER_EXECUTION_ERROR_BODY";
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = HMFGetLogIdentifier();
          *buf = 138544130;
          v38 = v9;
          v39 = 2112;
          v40 = @"TRIGGER_EXECUTION_ERROR_BODY";
          v41 = 2112;
          v42 = @"%@";
          v43 = 2112;
          v44 = v6;
          goto LABEL_13;
        }

LABEL_14:

        objc_autoreleasePoolPop(v7);
        v14 = 0;
        goto LABEL_15;
      }
    }

    v14 = v5;
LABEL_15:
    v15 = v5;

    v16 = HMDLocalizedStringForKey(@"CLOSE");
    v17 = HMDLocalizedStringForKey(@"OPEN_HOME_APP");
    v18 = *MEMORY[0x277CBF198];
    v35[0] = *MEMORY[0x277CBF188];
    v35[1] = v18;
    v36[0] = v2;
    v36[1] = v15;
    v19 = *MEMORY[0x277CBF1C0];
    v35[2] = *MEMORY[0x277CBF1E8];
    v35[3] = v19;
    v36[2] = v17;
    v36[3] = v16;
    v20 = *MEMORY[0x277D67340];
    v35[4] = *MEMORY[0x277CBF1B0];
    v35[5] = v20;
    v36[4] = MEMORY[0x277CBEC38];
    v36[5] = MEMORY[0x277CBEC38];
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:6];
    v22 = [*(a1 + 32) _presentDialogWithInfo:v21 options:0 textField:0 withContext:*(a1 + 40)];
    v23 = *(a1 + 48);
    if (v23)
    {
      v24 = *(a1 + 64);
      if (v24)
      {
        v25 = v22;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __112__HMDUIDialogPresenter_displayExecutionErrorOfTrigger_partialSuccess_context_completionQueue_completionHandler___block_invoke_166;
        v26[3] = &unk_279733DB0;
        v28 = v24;
        v29 = v25;
        v27 = *(a1 + 40);
        dispatch_async(v23, v26);
      }
    }

    goto LABEL_19;
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = *(a1 + 64);
    if (v11)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __112__HMDUIDialogPresenter_displayExecutionErrorOfTrigger_partialSuccess_context_completionQueue_completionHandler___block_invoke_2;
      block[3] = &unk_279735738;
      v34 = v11;
      v33 = *(a1 + 40);
      dispatch_async(v10, block);

      v2 = v34;
LABEL_19:
    }
  }
}

- (void)confirmReportAccessory:(id)accessory context:(id)context completionQueue:(id)queue completionHandler:(id)handler
{
  accessoryCopy = accessory;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  if ([(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    workQueue = [(HMDUIDialogPresenter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__HMDUIDialogPresenter_confirmReportAccessory_context_completionQueue_completionHandler___block_invoke;
    block[3] = &unk_279734668;
    v15 = v19;
    v19[0] = accessoryCopy;
    v19[1] = self;
    v20 = contextCopy;
    v21 = queueCopy;
    v22 = handlerCopy;
    dispatch_async(workQueue, block);

LABEL_6:
    goto LABEL_7;
  }

  if (queueCopy && handlerCopy)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __89__HMDUIDialogPresenter_confirmReportAccessory_context_completionQueue_completionHandler___block_invoke_2;
    v16[3] = &unk_2797348C0;
    v15 = &v17;
    v17 = handlerCopy;
    dispatch_async(queueCopy, v16);
    goto LABEL_6;
  }

LABEL_7:
}

void __89__HMDUIDialogPresenter_confirmReportAccessory_context_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = HMDLocalizedStringForKey(@"REPORT_ACCESSORY_TITLE");
  v24 = 0;
  v4 = [v2 localizedStringWithValidatedFormat:v3 validFormatSpecifiers:@"%@" error:&v24, *(a1 + 32)];
  v5 = v24;

  v6 = v4;
  if (!v4)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138544130;
      v28 = v9;
      v29 = 2112;
      v30 = @"REPORT_ACCESSORY_TITLE";
      v31 = 2112;
      v32 = @"%@";
      v33 = 2112;
      v34 = v5;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
    v6 = @"REPORT_ACCESSORY_TITLE";
  }

  v10 = v6;

  v11 = HMDLocalizedStringForKey(@"REPORT_ACCESSORY_DESCRIPTION");
  v12 = HMDLocalizedStringForKey(@"NOT_NOW");
  v13 = HMDLocalizedStringForKey(@"REPORT_PROBLEM");
  v14 = *MEMORY[0x277CBF198];
  v25[0] = *MEMORY[0x277CBF188];
  v25[1] = v14;
  v26[0] = v10;
  v26[1] = v11;
  v15 = *MEMORY[0x277CBF1C0];
  v25[2] = *MEMORY[0x277CBF218];
  v25[3] = v15;
  v26[2] = v12;
  v26[3] = v13;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
  v17 = [*(a1 + 40) _presentDialogWithInfo:v16 options:35 targetResponse:1 textField:0 withContext:*(a1 + 48)];
  v18 = *(a1 + 56);
  if (v18)
  {
    v19 = *(a1 + 64);
    if (v19)
    {
      v20 = v17;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __89__HMDUIDialogPresenter_confirmReportAccessory_context_completionQueue_completionHandler___block_invoke_147;
      block[3] = &unk_279725DC0;
      v22 = v19;
      v23 = v20;
      dispatch_async(v18, block);
    }
  }
}

- (void)_displayInternalTTRErrorWithContext:(id)context message:(id)message completionHandler:(id)handler
{
  v18[4] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageCopy = message;
  contextCopy = context;
  v11 = HMDLocalizedStringForKey(@"REPORT_PROBLEM");
  v12 = HMDLocalizedStringForKey(@"NOT_NOW");
  v13 = *MEMORY[0x277CBF198];
  v17[0] = *MEMORY[0x277CBF188];
  v17[1] = v13;
  v18[0] = v11;
  v18[1] = messageCopy;
  v14 = *MEMORY[0x277CBF1E8];
  v17[2] = *MEMORY[0x277CBF218];
  v17[3] = v14;
  v18[2] = v12;
  v18[3] = @"Tap-to-Radar";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];

  v16 = [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v15 options:0 textField:0 withContext:contextCopy];
  handlerCopy[2](handlerCopy, v16);
}

- (void)displayInternalTTRErrorWithContext:(id)context message:(id)message waitForResponse:(BOOL)response completionHandler:(id)handler
{
  responseCopy = response;
  contextCopy = context;
  messageCopy = message;
  handlerCopy = handler;
  if (isInternalBuild() && [(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    workQueue = [(HMDUIDialogPresenter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__HMDUIDialogPresenter_displayInternalTTRErrorWithContext_message_waitForResponse_completionHandler___block_invoke;
    block[3] = &unk_279734578;
    block[4] = self;
    v20 = contextCopy;
    v21 = messageCopy;
    v22 = handlerCopy;
    dispatch_async(workQueue, block);

    v14 = v20;
  }

  else
  {
    workQueue2 = [(HMDUIDialogPresenter *)self workQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __101__HMDUIDialogPresenter_displayInternalTTRErrorWithContext_message_waitForResponse_completionHandler___block_invoke_2;
    v17[3] = &unk_2797348C0;
    v18 = handlerCopy;
    dispatch_async(workQueue2, v17);

    v14 = v18;
  }

  if (responseCopy)
  {
    workQueue3 = [(HMDUIDialogPresenter *)self workQueue];
    dispatch_sync(workQueue3, &__block_literal_global_131);
  }
}

- (void)_displayUpgradeNeededWithContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  v20[3] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  queueCopy = queue;
  contextCopy = context;
  v11 = HMDLocalizedStringForKey(@"OS_UPGRADE_NEEDED_TITLE");
  v12 = HMDLocalizedStringForKey(@"OS_UPGRADE_NEEDED_INFO");
  v13 = HMDLocalizedStringForKey(@"OK");
  v14 = *MEMORY[0x277CBF198];
  v19[0] = *MEMORY[0x277CBF188];
  v19[1] = v14;
  v20[0] = v11;
  v20[1] = v12;
  v19[2] = *MEMORY[0x277CBF1E8];
  v20[2] = v13;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v15 options:0 textField:0 withContext:contextCopy];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __81__HMDUIDialogPresenter__displayUpgradeNeededWithContext_queue_completionHandler___block_invoke;
  v17[3] = &unk_2797348C0;
  v18 = handlerCopy;
  v16 = handlerCopy;
  dispatch_async(queueCopy, v17);
}

- (void)displayUpgradeNeededWithContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  if ([(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    workQueue = [(HMDUIDialogPresenter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__HMDUIDialogPresenter_displayUpgradeNeededWithContext_queue_completionHandler___block_invoke;
    block[3] = &unk_279734578;
    block[4] = self;
    v18 = contextCopy;
    v19 = queueCopy;
    v20 = handlerCopy;
    v12 = handlerCopy;
    dispatch_async(workQueue, block);

    v13 = v18;
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__HMDUIDialogPresenter_displayUpgradeNeededWithContext_queue_completionHandler___block_invoke_2;
    v15[3] = &unk_2797348C0;
    v16 = handlerCopy;
    v14 = handlerCopy;
    dispatch_async(queueCopy, v15);
    v13 = v16;
  }
}

- (void)_displayiCloudSwitchWithContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  v23[4] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  queueCopy = queue;
  contextCopy = context;
  v11 = HMDLocalizedStringForKey(@"ENABLE_ICLOUD_SWITCH_TITLE");
  v12 = HMDLocalizedStringForKey(@"ICLOUD_SWITCH_INFO");
  v13 = HMDLocalizedStringForKey(@"CANCEL");
  v14 = HMDLocalizedStringForKey(@"USE_ICLOUD");
  v15 = *MEMORY[0x277CBF198];
  v22[0] = *MEMORY[0x277CBF188];
  v22[1] = v15;
  v23[0] = v11;
  v23[1] = v12;
  v16 = *MEMORY[0x277CBF1C0];
  v22[2] = *MEMORY[0x277CBF1E8];
  v22[3] = v16;
  v23[2] = v14;
  v23[3] = v13;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];
  LOBYTE(self) = [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v17 options:0 textField:0 withContext:contextCopy];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__HMDUIDialogPresenter__displayiCloudSwitchWithContext_queue_completionHandler___block_invoke;
  block[3] = &unk_279725DC0;
  v20 = handlerCopy;
  selfCopy = self;
  v18 = handlerCopy;
  dispatch_async(queueCopy, block);
}

- (void)displayiCloudSwitchWithContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  if ([(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    workQueue = [(HMDUIDialogPresenter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__HMDUIDialogPresenter_displayiCloudSwitchWithContext_queue_completionHandler___block_invoke;
    block[3] = &unk_279734578;
    block[4] = self;
    v18 = contextCopy;
    v19 = queueCopy;
    v20 = handlerCopy;
    v12 = handlerCopy;
    dispatch_async(workQueue, block);

    v13 = v18;
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __79__HMDUIDialogPresenter_displayiCloudSwitchWithContext_queue_completionHandler___block_invoke_2;
    v15[3] = &unk_2797348C0;
    v16 = handlerCopy;
    v14 = handlerCopy;
    dispatch_async(queueCopy, v15);
    v13 = v16;
  }
}

- (void)_displayKeychainSyncForHome:(id)home withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  v47 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  v14 = HMDLocalizedStringForKey(@"ENABLE_KEYCHAIN_SYNC_TITLE");
  v15 = MEMORY[0x277CCACA8];
  v16 = HMDLocalizedStringForKey(@"KEYCHAIN_SYNC_INFO");
  v36 = 0;
  v32 = homeCopy;
  homeCopy = [v15 localizedStringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:&v36, homeCopy];
  v18 = v36;

  v19 = homeCopy;
  if (!homeCopy)
  {
    v31 = handlerCopy;
    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138544130;
      v40 = v22;
      v41 = 2112;
      v42 = @"KEYCHAIN_SYNC_INFO";
      v43 = 2112;
      v44 = @"%@";
      v45 = 2112;
      v46 = v18;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v20);
    v19 = @"KEYCHAIN_SYNC_INFO";
    handlerCopy = v31;
  }

  v23 = v19;

  v24 = HMDLocalizedStringForKey(@"SETTINGS");
  v25 = HMDLocalizedStringForKey(@"OK");
  v26 = *MEMORY[0x277CBF198];
  v37[0] = *MEMORY[0x277CBF188];
  v37[1] = v26;
  v38[0] = v14;
  v38[1] = v23;
  v27 = *MEMORY[0x277CBF1C0];
  v37[2] = *MEMORY[0x277CBF1E8];
  v37[3] = v27;
  v38[2] = v25;
  v38[3] = v24;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:4];
  v29 = [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v28 options:0 textField:0 withContext:contextCopy];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__HMDUIDialogPresenter__displayKeychainSyncForHome_withContext_queue_completionHandler___block_invoke;
  block[3] = &unk_279725DC0;
  v34 = handlerCopy;
  v35 = v29;
  v30 = handlerCopy;
  dispatch_async(queueCopy, block);
}

- (void)displayKeychainSyncForHome:(id)home withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  homeCopy = home;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  if ([(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    workQueue = [(HMDUIDialogPresenter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__HMDUIDialogPresenter_displayKeychainSyncForHome_withContext_queue_completionHandler___block_invoke;
    block[3] = &unk_279734668;
    block[4] = self;
    v21 = homeCopy;
    v22 = contextCopy;
    v23 = queueCopy;
    v24 = handlerCopy;
    v15 = handlerCopy;
    dispatch_async(workQueue, block);

    v16 = v21;
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __87__HMDUIDialogPresenter_displayKeychainSyncForHome_withContext_queue_completionHandler___block_invoke_2;
    v18[3] = &unk_2797348C0;
    v19 = handlerCopy;
    v17 = handlerCopy;
    dispatch_async(queueCopy, v18);
    v16 = v19;
  }
}

- (void)_requestUserPermissionForLegacyWACAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  v49 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  v13 = HMDLocalizedStringForKey(@"ACCESSORY_LEGACYWAC_TITLE");
  v14 = MEMORY[0x277CCACA8];
  v15 = localizedWiFiStringKey();
  v16 = HMDLocalizedStringForKey(v15);
  v38 = 0;
  v34 = accessoryCopy;
  accessoryCopy = [v14 localizedStringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:&v38, accessoryCopy];
  v18 = v38;

  if (accessoryCopy)
  {
    v19 = accessoryCopy;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v22 = v32 = v20;
      v23 = localizedWiFiStringKey();
      *buf = 138544130;
      v42 = v22;
      v43 = 2112;
      v44 = v23;
      v45 = 2112;
      v46 = @"%@";
      v47 = 2112;
      v48 = v18;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

      v20 = v32;
    }

    objc_autoreleasePoolPop(v20);
    v19 = localizedWiFiStringKey();
  }

  v24 = v19;

  v25 = HMDLocalizedStringForKey(@"DONT_ALLOW");
  v26 = HMDLocalizedStringForKey(@"ALLOW");
  v27 = *MEMORY[0x277CBF198];
  v39[0] = *MEMORY[0x277CBF188];
  v39[1] = v27;
  v40[0] = v13;
  v40[1] = v24;
  v28 = *MEMORY[0x277CBF1E8];
  v39[2] = *MEMORY[0x277CBF1C0];
  v39[3] = v28;
  v40[2] = v25;
  v40[3] = v26;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:4];
  v30 = [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v29 options:0 textField:0 withContext:contextCopy];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__HMDUIDialogPresenter__requestUserPermissionForLegacyWACAccessory_withContext_queue_completionHandler___block_invoke;
  block[3] = &unk_279725DC0;
  v36 = handlerCopy;
  v37 = v30;
  v31 = handlerCopy;
  dispatch_async(queueCopy, block);
}

- (void)_showUserDialogForIncompatibleAccessory:(id)accessory name:(id)name category:(id)category withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  v23[3] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  queueCopy = queue;
  contextCopy = context;
  v14 = HMDLocalizedStringForKey(@"ACCESSORY_INCOMPATIBLE_HEADER");
  v15 = HMDLocalizedStringForKey(@"ACCESSORY_INCOMPATIBLE_DETAIL");
  v16 = HMDLocalizedStringForKey(@"OK");
  v17 = *MEMORY[0x277CBF198];
  v22[0] = *MEMORY[0x277CBF188];
  v22[1] = v17;
  v23[0] = v14;
  v23[1] = v15;
  v22[2] = *MEMORY[0x277CBF1E8];
  v23[2] = v16;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v18 options:0 textField:0 withContext:contextCopy];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __114__HMDUIDialogPresenter__showUserDialogForIncompatibleAccessory_name_category_withContext_queue_completionHandler___block_invoke;
  v20[3] = &unk_2797348C0;
  v21 = handlerCopy;
  v19 = handlerCopy;
  dispatch_async(queueCopy, v20);
}

- (void)showUserDialogForIncompatibleAccessory:(id)accessory name:(id)name category:(id)category withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  accessoryCopy = accessory;
  nameCopy = name;
  categoryCopy = category;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  if ([(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    workQueue = [(HMDUIDialogPresenter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __113__HMDUIDialogPresenter_showUserDialogForIncompatibleAccessory_name_category_withContext_queue_completionHandler___block_invoke;
    block[3] = &unk_279733820;
    block[4] = self;
    v27 = accessoryCopy;
    v28 = nameCopy;
    v29 = categoryCopy;
    v30 = contextCopy;
    v31 = queueCopy;
    v32 = handlerCopy;
    v21 = handlerCopy;
    dispatch_async(workQueue, block);

    v22 = v27;
  }

  else
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __113__HMDUIDialogPresenter_showUserDialogForIncompatibleAccessory_name_category_withContext_queue_completionHandler___block_invoke_2;
    v24[3] = &unk_2797348C0;
    v25 = handlerCopy;
    v23 = handlerCopy;
    dispatch_async(queueCopy, v24);
    v22 = v25;
  }
}

- (void)_requestUserPermissionForRemovalOfSpecificWiFiCredentialedAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  v44[5] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  v43[0] = *MEMORY[0x277CBF188];
  v14 = MEMORY[0x277CCACA8];
  v15 = HMDLocalizedStringForKey(@"ACCESSORY_WITH_SPECIFIC_WIFI_CREDENTIAL_REMOVAL_CONFIRM_TITLE");
  v34 = 0;
  v30 = accessoryCopy;
  accessoryCopy = [v14 localizedStringWithValidatedFormat:v15 validFormatSpecifiers:@"%@" error:&v34, accessoryCopy];
  v17 = v34;

  v18 = accessoryCopy;
  if (!accessoryCopy)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v21 = v29 = v19;
      *buf = 138544130;
      v36 = v21;
      v37 = 2112;
      v38 = @"ACCESSORY_WITH_SPECIFIC_WIFI_CREDENTIAL_REMOVAL_CONFIRM_TITLE";
      v39 = 2112;
      v40 = @"%@";
      v41 = 2112;
      v42 = v17;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

      v19 = v29;
    }

    objc_autoreleasePoolPop(v19);
    v18 = @"ACCESSORY_WITH_SPECIFIC_WIFI_CREDENTIAL_REMOVAL_CONFIRM_TITLE";
  }

  v22 = v18;

  v44[0] = v22;
  v43[1] = *MEMORY[0x277CBF198];
  v23 = HMDLocalizedStringForKey(@"ACCESSORY_WITH_SPECIFIC_WIFI_CREDENTIAL_REMOVAL_CONFIRM_DETAIL");
  v44[1] = v23;
  v43[2] = *MEMORY[0x277CBF1C0];
  v24 = HMDLocalizedStringForKey(@"CANCEL");
  v44[2] = v24;
  v43[3] = *MEMORY[0x277CBF1E8];
  v25 = HMDLocalizedStringForKey(@"REMOVE");
  v43[4] = *MEMORY[0x277D672F8];
  v44[3] = v25;
  v44[4] = &unk_286627E38;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:5];

  v27 = [(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy];
  if (v27)
  {
    LOBYTE(v27) = [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v26 options:0 textField:0 withContext:contextCopy];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __128__HMDUIDialogPresenter__requestUserPermissionForRemovalOfSpecificWiFiCredentialedAccessory_withContext_queue_completionHandler___block_invoke;
  block[3] = &unk_279725DC0;
  v32 = handlerCopy;
  v33 = v27;
  v28 = handlerCopy;
  dispatch_async(queueCopy, block);
}

- (void)requestUserPermissionForRemovalOfSpecificWiFiCredentialedAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  accessoryCopy = accessory;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  workQueue = [(HMDUIDialogPresenter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __127__HMDUIDialogPresenter_requestUserPermissionForRemovalOfSpecificWiFiCredentialedAccessory_withContext_queue_completionHandler___block_invoke;
  block[3] = &unk_279734668;
  block[4] = self;
  v20 = accessoryCopy;
  v21 = contextCopy;
  v22 = queueCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = queueCopy;
  v17 = contextCopy;
  v18 = accessoryCopy;
  dispatch_async(workQueue, block);
}

- (void)_requestUserPermissionForRemovalOfRouter:(id)router accessoriesRequiringManualReconfiguration:(id)reconfiguration withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  v71[5] = *MEMORY[0x277D85DE8];
  routerCopy = router;
  reconfigurationCopy = reconfiguration;
  contextCopy = context;
  queue = queue;
  handlerCopy = handler;
  v53 = reconfigurationCopy;
  v13 = [reconfigurationCopy count];
  v46 = *MEMORY[0x277CBF188];
  v70[0] = *MEMORY[0x277CBF188];
  v14 = localizedWiFiStringKey();
  v15 = HMDLocalizedStringForKey(v14);
  v71[0] = v15;
  v16 = *MEMORY[0x277CBF198];
  v70[1] = *MEMORY[0x277CBF198];
  v17 = localizedWiFiStringKey();
  v18 = HMDLocalizedStringForKey(v17);
  v71[1] = v18;
  v50 = *MEMORY[0x277CBF1C0];
  v70[2] = *MEMORY[0x277CBF1C0];
  v19 = HMDLocalizedStringForKey(@"CANCEL");
  v71[2] = v19;
  v49 = *MEMORY[0x277CBF1E8];
  v70[3] = *MEMORY[0x277CBF1E8];
  if (v13)
  {
    v20 = @"CONTINUE";
  }

  else
  {
    v20 = @"REMOVE";
  }

  if (v13)
  {
    v21 = &unk_286627E50;
  }

  else
  {
    v21 = &unk_286627E38;
  }

  v22 = HMDLocalizedStringForKey(v20);
  v48 = *MEMORY[0x277D672F8];
  v70[4] = *MEMORY[0x277D672F8];
  v71[3] = v22;
  v71[4] = v21;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:5];

  v24 = contextCopy;
  if (![(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    v25 = v23;
    v27 = 0;
    goto LABEL_17;
  }

  v25 = v23;
  v26 = [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v23 options:0 textField:0 withContext:v24];
  v27 = v26;
  if (!v26)
  {
LABEL_17:
    v28 = v53;
    goto LABEL_20;
  }

  v28 = v53;
  if (v13)
  {
    v45 = v24;
    v29 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v53];
    v68[0] = v46;
    v30 = HMDLocalizedStringForKey(@"ROUTER_REMOVAL_CONFIRM_MANUAL_RECONFIGURATION_TITLE");
    v69[0] = v30;
    v68[1] = v16;
    v31 = v29;
    v32 = MEMORY[0x277CCACA8];
    v33 = HMDLocalizedStringForKey(@"ROUTER_REMOVAL_CONFIRM_MANUAL_RECONFIGURATION_DETAIL");
    v59 = 0;
    v34 = [v32 localizedStringWithValidatedFormat:v33 validFormatSpecifiers:@"%@" error:&v59, v29];
    v35 = v59;

    v36 = v34;
    if (!v34)
    {
      v37 = objc_autoreleasePoolPush();
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v39 = v47 = v37;
        *buf = 138544130;
        v61 = v39;
        v62 = 2112;
        v63 = @"ROUTER_REMOVAL_CONFIRM_MANUAL_RECONFIGURATION_DETAIL";
        v64 = 2112;
        v65 = @"%@";
        v66 = 2112;
        v67 = v35;
        _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

        v37 = v47;
      }

      objc_autoreleasePoolPop(v37);
      v36 = @"ROUTER_REMOVAL_CONFIRM_MANUAL_RECONFIGURATION_DETAIL";
    }

    v40 = v36;

    v69[1] = v40;
    v68[2] = v50;
    v41 = HMDLocalizedStringForKey(@"CANCEL");
    v69[2] = v41;
    v68[3] = v49;
    v42 = HMDLocalizedStringForKey(@"REMOVE");
    v68[4] = v48;
    v69[3] = v42;
    v69[4] = &unk_286627E38;
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:5];

    v24 = v45;
    if ([(HMDUIDialogPresenter *)self _addToPendingContext:v45])
    {
      v27 = [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v43 options:0 textField:0 withContext:v45];
    }

    else
    {
      v27 = 0;
    }
  }

LABEL_20:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __143__HMDUIDialogPresenter__requestUserPermissionForRemovalOfRouter_accessoriesRequiringManualReconfiguration_withContext_queue_completionHandler___block_invoke;
  block[3] = &unk_279725DC0;
  v57 = handlerCopy;
  v58 = v27;
  v44 = handlerCopy;
  dispatch_async(queue, block);
}

- (void)requestUserPermissionForRemovalOfRouter:(id)router accessoriesRequiringManualReconfiguration:(id)reconfiguration withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  routerCopy = router;
  reconfigurationCopy = reconfiguration;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  workQueue = [(HMDUIDialogPresenter *)self workQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __142__HMDUIDialogPresenter_requestUserPermissionForRemovalOfRouter_accessoriesRequiringManualReconfiguration_withContext_queue_completionHandler___block_invoke;
  v23[3] = &unk_279734848;
  v23[4] = self;
  v24 = routerCopy;
  v25 = reconfigurationCopy;
  v26 = contextCopy;
  v27 = queueCopy;
  v28 = handlerCopy;
  v18 = handlerCopy;
  v19 = queueCopy;
  v20 = contextCopy;
  v21 = reconfigurationCopy;
  v22 = routerCopy;
  dispatch_async(workQueue, v23);
}

- (void)_requestUserPermissionForDeletionOfHomeWithName:(id)name withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  v53 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  contextCopy = context;
  queue = queue;
  handlerCopy = handler;
  v11 = MEMORY[0x277CCACA8];
  v12 = HMDLocalizedStringForKey(@"HOME_DELETION_CONFIRM_TITLE");
  v42 = 0;
  nameCopy = [v11 localizedStringWithValidatedFormat:v12 validFormatSpecifiers:@"%@" error:&v42, nameCopy];
  v14 = v42;

  v15 = nameCopy;
  if (!nameCopy)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138544130;
      v46 = v18;
      v47 = 2112;
      v48 = @"HOME_DELETION_CONFIRM_TITLE";
      v49 = 2112;
      v50 = @"%@";
      v51 = 2112;
      v52 = v14;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v16);
    v15 = @"HOME_DELETION_CONFIRM_TITLE";
  }

  v19 = v15;

  v20 = MEMORY[0x277CCACA8];
  v21 = HMDLocalizedStringForKey(@"HOME_DELETION_CONFIRM_BUTTON");
  v41 = 0;
  nameCopy2 = [v20 localizedStringWithValidatedFormat:v21 validFormatSpecifiers:@"%@" error:&v41, nameCopy];
  v23 = v41;

  v24 = nameCopy2;
  if (!nameCopy2)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138544130;
      v46 = v27;
      v47 = 2112;
      v48 = @"HOME_DELETION_CONFIRM_BUTTON";
      v49 = 2112;
      v50 = @"%@";
      v51 = 2112;
      v52 = v23;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v25);
    v24 = @"HOME_DELETION_CONFIRM_BUTTON";
  }

  v28 = v24;

  v29 = HMDLocalizedStringForKey(@"DONT_ALLOW");
  v30 = *MEMORY[0x277CBF1C0];
  v43[0] = *MEMORY[0x277CBF188];
  v43[1] = v30;
  v44[0] = v19;
  v44[1] = v28;
  v31 = *MEMORY[0x277CBF1E8];
  v43[2] = *MEMORY[0x277D672B0];
  v43[3] = v31;
  v44[2] = &unk_286627E38;
  v44[3] = v29;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:4];
  v33 = [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v32 options:0 textField:0 withContext:contextCopy];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __108__HMDUIDialogPresenter__requestUserPermissionForDeletionOfHomeWithName_withContext_queue_completionHandler___block_invoke;
  block[3] = &unk_279725DC0;
  v39 = handlerCopy;
  v40 = v33;
  v34 = handlerCopy;
  dispatch_async(queue, block);
}

- (void)requestUserPermissionForDeletionOfHomeWithName:(id)name withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  nameCopy = name;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  if ([(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    workQueue = [(HMDUIDialogPresenter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __107__HMDUIDialogPresenter_requestUserPermissionForDeletionOfHomeWithName_withContext_queue_completionHandler___block_invoke;
    block[3] = &unk_279734668;
    block[4] = self;
    v21 = nameCopy;
    v22 = contextCopy;
    v23 = queueCopy;
    v24 = handlerCopy;
    v15 = handlerCopy;
    dispatch_async(workQueue, block);

    v16 = v21;
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __107__HMDUIDialogPresenter_requestUserPermissionForDeletionOfHomeWithName_withContext_queue_completionHandler___block_invoke_2;
    v18[3] = &unk_2797348C0;
    v19 = handlerCopy;
    v17 = handlerCopy;
    dispatch_async(queueCopy, v18);
    v16 = v19;
  }
}

- (void)_requestUserPermissionWithAccessoryPPIDInfo:(id)info name:(id)name category:(id)category withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  v78 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  nameCopy = name;
  categoryCopy = category;
  contextCopy = context;
  queue = queue;
  handlerCopy = handler;
  if ([infoCopy isDenylisted])
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v71 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Accessory is Blacklisted - Rejecting", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __118__HMDUIDialogPresenter__requestUserPermissionWithAccessoryPPIDInfo_name_category_withContext_queue_completionHandler___block_invoke;
    block[3] = &unk_2797348C0;
    v67 = handlerCopy;
    v23 = handlerCopy;
    queueCopy2 = queue;
    dispatch_async(queue, block);
    v25 = v67;
  }

  else
  {
    selfCopy2 = self;
    v23 = HMDLocalizedStringForKey(@"ACCESSORY_CONFIRM_PPID_INFO_TITLE");
    v59 = categoryCopy;
    v57 = contextCopy;
    if (([infoCopy isCertified] & 1) == 0)
    {
      v26 = HMDLocalizedStringForKey(@"ACCESSORY_CONFIRM_UNCERTIFIED_PPID_INFO_TITLE");

      v23 = v26;
    }

    v27 = MEMORY[0x277CCACA8];
    v28 = HMDLocalizedStringForKey(@"ACCESSORY_CONFIRM_UNKNOWN_DETAIL");
    v65 = 0;
    nameCopy = [v27 localizedStringWithValidatedFormat:v28 validFormatSpecifiers:@"%@" error:&v65, nameCopy];
    v30 = v65;

    v31 = nameCopy;
    if (!nameCopy)
    {
      v56 = nameCopy;
      v32 = objc_autoreleasePoolPush();
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138544130;
        v71 = v34;
        v72 = 2112;
        v73 = @"ACCESSORY_CONFIRM_UNKNOWN_DETAIL";
        v74 = 2112;
        v75 = @"%@";
        v76 = 2112;
        v77 = v30;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v32);
      v31 = @"ACCESSORY_CONFIRM_UNKNOWN_DETAIL";
      nameCopy = v56;
    }

    v25 = v31;

    category = [infoCopy category];
    if (category)
    {
      v36 = category;
      manufacturer = [infoCopy manufacturer];

      if (manufacturer)
      {
        v38 = MEMORY[0x277CCACA8];
        v39 = HMDLocalizedStringForKey(@"ACCESSORY_CONFIRM_PPID_DETAIL");
        v64 = 0;
        [infoCopy manufacturer];
        v41 = v40 = nameCopy;
        v42 = [v38 localizedStringWithValidatedFormat:v39 validFormatSpecifiers:@"%@ %@" error:&v64, v59, v41];
        v43 = v64;

        nameCopy = v40;
        v44 = v42;
        if (!v42)
        {
          v45 = objc_autoreleasePoolPush();
          v46 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v47 = HMFGetLogIdentifier();
            *buf = 138544130;
            v71 = v47;
            v72 = 2112;
            v73 = @"ACCESSORY_CONFIRM_PPID_DETAIL";
            v74 = 2112;
            v75 = @"%@ %@";
            v76 = 2112;
            v77 = v43;
            _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

            nameCopy = v40;
          }

          objc_autoreleasePoolPop(v45);
          v44 = @"ACCESSORY_CONFIRM_PPID_DETAIL";
        }

        v48 = v44;

        v25 = v48;
      }
    }

    v49 = HMDLocalizedStringForKey(@"DONT_ALLOW");
    v50 = HMDLocalizedStringForKey(@"ALLOW");
    v51 = *MEMORY[0x277CBF198];
    v68[0] = *MEMORY[0x277CBF188];
    v68[1] = v51;
    v69[0] = v23;
    v69[1] = v25;
    v52 = *MEMORY[0x277CBF1E8];
    v68[2] = *MEMORY[0x277CBF1C0];
    v68[3] = v52;
    v69[2] = v49;
    v69[3] = v50;
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:4];
    contextCopy = v57;
    v54 = [(HMDUIDialogPresenter *)selfCopy2 _presentDialogWithInfo:v53 options:0 textField:0 withContext:v57];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __118__HMDUIDialogPresenter__requestUserPermissionWithAccessoryPPIDInfo_name_category_withContext_queue_completionHandler___block_invoke_62;
    v61[3] = &unk_279725DC0;
    v62 = handlerCopy;
    v63 = v54;
    v55 = handlerCopy;
    queueCopy2 = queue;
    dispatch_async(queue, v61);

    categoryCopy = v59;
  }
}

- (void)requestUserPermissionWithAccessoryPPIDInfo:(id)info name:(id)name category:(id)category withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  infoCopy = info;
  nameCopy = name;
  categoryCopy = category;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  if ([(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    workQueue = [(HMDUIDialogPresenter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __117__HMDUIDialogPresenter_requestUserPermissionWithAccessoryPPIDInfo_name_category_withContext_queue_completionHandler___block_invoke;
    block[3] = &unk_279733820;
    block[4] = self;
    v27 = infoCopy;
    v28 = nameCopy;
    v29 = categoryCopy;
    v30 = contextCopy;
    v31 = queueCopy;
    v32 = handlerCopy;
    v21 = handlerCopy;
    dispatch_async(workQueue, block);

    v22 = v27;
  }

  else
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __117__HMDUIDialogPresenter_requestUserPermissionWithAccessoryPPIDInfo_name_category_withContext_queue_completionHandler___block_invoke_2;
    v24[3] = &unk_2797348C0;
    v25 = handlerCopy;
    v23 = handlerCopy;
    dispatch_async(queueCopy, v24);
    v22 = v25;
  }
}

- (void)requestUserPermissionForLegacyWACAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  accessoryCopy = accessory;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  if ([(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    workQueue = [(HMDUIDialogPresenter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __103__HMDUIDialogPresenter_requestUserPermissionForLegacyWACAccessory_withContext_queue_completionHandler___block_invoke;
    block[3] = &unk_279734668;
    block[4] = self;
    v21 = accessoryCopy;
    v22 = contextCopy;
    v23 = queueCopy;
    v24 = handlerCopy;
    v15 = handlerCopy;
    dispatch_async(workQueue, block);

    v16 = v21;
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __103__HMDUIDialogPresenter_requestUserPermissionForLegacyWACAccessory_withContext_queue_completionHandler___block_invoke_2;
    v18[3] = &unk_2797348C0;
    v19 = handlerCopy;
    v17 = handlerCopy;
    dispatch_async(queueCopy, v18);
    v16 = v19;
  }
}

- (void)_requestUserPermissionForBridgeAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  v24[4] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  queueCopy = queue;
  contextCopy = context;
  v12 = HMDLocalizedStringForKey(@"BRIDGE_ACCESSORIES_HOME_BEHAVIOR_TITLE");
  v13 = HMDLocalizedStringForKey(@"BRIDGE_ACCESSORIES_HOME_BEHAVIOR_DETAIL");
  v14 = HMDLocalizedStringForKey(@"OK");
  v15 = HMDLocalizedStringForKey(@"CANCEL");
  v16 = *MEMORY[0x277CBF198];
  v23[0] = *MEMORY[0x277CBF188];
  v23[1] = v16;
  v24[0] = v12;
  v24[1] = v13;
  v17 = *MEMORY[0x277CBF1E8];
  v23[2] = *MEMORY[0x277CBF1C0];
  v23[3] = v17;
  v24[2] = v14;
  v24[3] = v15;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];
  LOBYTE(self) = [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v18 options:0 textField:0 withContext:contextCopy];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__HMDUIDialogPresenter__requestUserPermissionForBridgeAccessory_withContext_queue_completionHandler___block_invoke;
  block[3] = &unk_279725DC0;
  v21 = handlerCopy;
  selfCopy = self;
  v19 = handlerCopy;
  dispatch_async(queueCopy, block);
}

- (void)requestUserPermissionForBridgeAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  accessoryCopy = accessory;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  if ([(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    workQueue = [(HMDUIDialogPresenter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__HMDUIDialogPresenter_requestUserPermissionForBridgeAccessory_withContext_queue_completionHandler___block_invoke;
    block[3] = &unk_279734668;
    block[4] = self;
    v21 = accessoryCopy;
    v22 = contextCopy;
    v23 = queueCopy;
    v24 = handlerCopy;
    v15 = handlerCopy;
    dispatch_async(workQueue, block);

    v16 = v21;
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __100__HMDUIDialogPresenter_requestUserPermissionForBridgeAccessory_withContext_queue_completionHandler___block_invoke_2;
    v18[3] = &unk_2797348C0;
    v19 = handlerCopy;
    v17 = handlerCopy;
    dispatch_async(queueCopy, v18);
    v16 = v19;
  }
}

- (void)_requestUserPermissionForUnauthenticatedAliroLockWithContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  v24[4] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  queueCopy = queue;
  contextCopy = context;
  workQueue = [(HMDUIDialogPresenter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = HMDLocalizedStringForKey(@"NOAUTH_ALIRO_LOCK_TITLE");
  v13 = HMDLocalizedStringForKey(@"NOAUTH_ALIRO_LOCK_BODY");
  v14 = HMDLocalizedStringForKey(@"CONTINUE");
  v15 = HMDLocalizedStringForKey(@"EXIT_SETUP");
  v16 = *MEMORY[0x277CBF198];
  v23[0] = *MEMORY[0x277CBF188];
  v23[1] = v16;
  v24[0] = v12;
  v24[1] = v13;
  v17 = *MEMORY[0x277CBF1E8];
  v23[2] = *MEMORY[0x277CBF1C0];
  v23[3] = v17;
  v24[2] = v14;
  v24[3] = v15;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];
  LOBYTE(self) = [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v18 options:0 textField:0 withContext:contextCopy];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __109__HMDUIDialogPresenter__requestUserPermissionForUnauthenticatedAliroLockWithContext_queue_completionHandler___block_invoke;
  block[3] = &unk_279725DC0;
  v21 = handlerCopy;
  selfCopy = self;
  v19 = handlerCopy;
  dispatch_async(queueCopy, block);
}

- (void)requestUserPermissionForUnauthenticatedAliroLockWithContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  if ([(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    workQueue = [(HMDUIDialogPresenter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __108__HMDUIDialogPresenter_requestUserPermissionForUnauthenticatedAliroLockWithContext_queue_completionHandler___block_invoke;
    block[3] = &unk_279734578;
    block[4] = self;
    v18 = contextCopy;
    v19 = queueCopy;
    v20 = handlerCopy;
    v12 = handlerCopy;
    dispatch_async(workQueue, block);

    v13 = v18;
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __108__HMDUIDialogPresenter_requestUserPermissionForUnauthenticatedAliroLockWithContext_queue_completionHandler___block_invoke_2;
    v15[3] = &unk_2797348C0;
    v16 = handlerCopy;
    v14 = handlerCopy;
    dispatch_async(queueCopy, v15);
    v13 = v16;
  }
}

- (void)_requestUserPermissionForUnauthenticatedAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  v24[4] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  queueCopy = queue;
  contextCopy = context;
  v12 = HMDLocalizedStringForKey(@"ACCESSORY_NOAUTH_TITLE");
  v13 = HMDLocalizedStringForKey(@"ACCESSORY_NOAUTH_DETAIL");
  v14 = HMDLocalizedStringForKey(@"ADD_ANYWAY");
  v15 = HMDLocalizedStringForKey(@"CANCEL");
  v16 = *MEMORY[0x277CBF198];
  v23[0] = *MEMORY[0x277CBF188];
  v23[1] = v16;
  v24[0] = v12;
  v24[1] = v13;
  v17 = *MEMORY[0x277CBF1E8];
  v23[2] = *MEMORY[0x277CBF1C0];
  v23[3] = v17;
  v24[2] = v14;
  v24[3] = v15;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];
  LOBYTE(self) = [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v18 options:0 textField:0 withContext:contextCopy];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__HMDUIDialogPresenter__requestUserPermissionForUnauthenticatedAccessory_withContext_queue_completionHandler___block_invoke;
  block[3] = &unk_279725DC0;
  v21 = handlerCopy;
  selfCopy = self;
  v19 = handlerCopy;
  dispatch_async(queueCopy, block);
}

- (void)requestUserPermissionForUnauthenticatedAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  accessoryCopy = accessory;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  if ([(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    workQueue = [(HMDUIDialogPresenter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __109__HMDUIDialogPresenter_requestUserPermissionForUnauthenticatedAccessory_withContext_queue_completionHandler___block_invoke;
    block[3] = &unk_279734668;
    block[4] = self;
    v21 = accessoryCopy;
    v22 = contextCopy;
    v23 = queueCopy;
    v24 = handlerCopy;
    v15 = handlerCopy;
    dispatch_async(workQueue, block);

    v16 = v21;
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __109__HMDUIDialogPresenter_requestUserPermissionForUnauthenticatedAccessory_withContext_queue_completionHandler___block_invoke_2;
    v18[3] = &unk_2797348C0;
    v19 = handlerCopy;
    v17 = handlerCopy;
    dispatch_async(queueCopy, v18);
    v16 = v19;
  }
}

- (BOOL)_removeCurrentNotification:(__CFUserNotification *)notification currentSelection:(BOOL)selection selectedByPeerDevice:(BOOL *)device andContext:(id)context
{
  contextCopy = context;
  if (device)
  {
    *device = 0;
  }

  os_unfair_lock_lock_with_options();
  pendingContexts = [(HMDUIDialogPresenter *)self pendingContexts];
  [pendingContexts removeObject:contextCopy];

  if ([(HMDUIDialogPresenter *)self currentNotification]&& [(HMDUIDialogPresenter *)self currentNotification]== notification)
  {
    if ([(HMDUIDialogPresenter *)self selectedByPeerDevice])
    {
      selection = [(HMDUIDialogPresenter *)self peerDeviceAcceptedSelection];
      if (device)
      {
        *device = 1;
      }
    }

    [(HMDUIDialogPresenter *)self setCurrentNotification:0];
    [(HMDUIDialogPresenter *)self setCurrentContext:0];
  }

  [(HMDUIDialogPresenter *)self setSelectedByPeerDevice:0];
  [(HMDUIDialogPresenter *)self setPeerDeviceAcceptedSelection:0];
  os_unfair_lock_unlock(&self->_lock);

  return selection;
}

- (BOOL)_addCurrentNotification:(__CFUserNotification *)notification withContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock_with_options();
  pendingContexts = [(HMDUIDialogPresenter *)self pendingContexts];
  v8 = [pendingContexts containsObject:contextCopy];

  if (v8)
  {
    [(HMDUIDialogPresenter *)self setCurrentNotification:notification];
    [(HMDUIDialogPresenter *)self setCurrentContext:contextCopy];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (BOOL)_addToPendingContextSkippingPlatformChecks:(id)checks
{
  checksCopy = checks;
  if (checksCopy)
  {
    os_unfair_lock_lock_with_options();
    pendingContexts = [(HMDUIDialogPresenter *)self pendingContexts];
    v6 = [pendingContexts containsObject:checksCopy];

    if ((v6 & 1) == 0)
    {
      pendingContexts2 = [(HMDUIDialogPresenter *)self pendingContexts];
      [pendingContexts2 addObject:checksCopy];
    }

    v8 = v6 ^ 1;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_addToPendingContext:(id)context
{
  contextCopy = context;
  v5 = !isAppleTV() && [(HMDUIDialogPresenter *)self _addToPendingContextSkippingPlatformChecks:contextCopy];

  return v5;
}

- (BOOL)_isPendingContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock_with_options();
  pendingContexts = [(HMDUIDialogPresenter *)self pendingContexts];
  v6 = [pendingContexts containsObject:contextCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (void)dismissPendingDialogDueToPeerDeviceSelection:(BOOL)selection context:(id)context queue:(id)queue completionHandler:(id)handler
{
  selectionCopy = selection;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  os_unfair_lock_lock_with_options();
  [(HMDUIDialogPresenter *)self setSelectedByPeerDevice:1];
  [(HMDUIDialogPresenter *)self setPeerDeviceAcceptedSelection:selectionCopy];
  currentContext = [(HMDUIDialogPresenter *)self currentContext];
  v13 = [currentContext isEqual:contextCopy];

  if (v13)
  {
    CFUserNotificationCancel([(HMDUIDialogPresenter *)self currentNotification]);
  }

  else
  {
    pendingContexts = [(HMDUIDialogPresenter *)self pendingContexts];
    [pendingContexts removeObject:contextCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
  dispatch_async(queueCopy, handlerCopy);
}

- (void)dismissPendingDialogWithContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  handlerCopy = handler;
  queue = queue;
  [(HMDUIDialogPresenter *)self dismissPendingDialogWithContext:context];
  dispatch_async(queue, handlerCopy);
}

- (void)dismissPendingDialogWithContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock_with_options();
  currentContext = [(HMDUIDialogPresenter *)self currentContext];
  v5 = [currentContext isEqual:contextCopy];

  if (v5)
  {
    CFUserNotificationCancel([(HMDUIDialogPresenter *)self currentNotification]);
  }

  else
  {
    pendingContexts = [(HMDUIDialogPresenter *)self pendingContexts];
    [pendingContexts removeObject:contextCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setCurrentNotification:(__CFUserNotification *)notification
{
  currentNotification = self->_currentNotification;
  if (currentNotification != notification)
  {
    if (notification)
    {
      CFRetain(notification);
      currentNotification = self->_currentNotification;
    }

    if (currentNotification)
    {
      CFRelease(currentNotification);
    }

    self->_currentNotification = notification;
  }
}

- (void)dealloc
{
  currentNotification = self->_currentNotification;
  if (currentNotification)
  {
    CFRelease(currentNotification);
  }

  v4.receiver = self;
  v4.super_class = HMDUIDialogPresenter;
  [(HMDUIDialogPresenter *)&v4 dealloc];
}

- (HMDUIDialogPresenter)init
{
  v9.receiver = self;
  v9.super_class = HMDUIDialogPresenter;
  v2 = [(HMDUIDialogPresenter *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.dialog", v3);
    workQueue = v2->_workQueue;
    v2->_workQueue = v4;

    array = [MEMORY[0x277CBEB18] array];
    pendingContexts = v2->_pendingContexts;
    v2->_pendingContexts = array;
  }

  return v2;
}

+ (id)sharedUIDialogPresenter
{
  if (sharedUIDialogPresenter_onceToken != -1)
  {
    dispatch_once(&sharedUIDialogPresenter_onceToken, &__block_literal_global_41072);
  }

  v3 = sharedUIDialogPresenter_singleton;

  return v3;
}

uint64_t __47__HMDUIDialogPresenter_sharedUIDialogPresenter__block_invoke()
{
  v0 = objc_alloc_init(HMDUIDialogPresenter);
  v1 = sharedUIDialogPresenter_singleton;
  sharedUIDialogPresenter_singleton = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end