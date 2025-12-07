@interface HIDRMUIUserAuthorizationManager
+ (BOOL)digitFromCharacter:(unsigned __int16)character digit:(unsigned int *)digit;
+ (OS_os_log)log;
+ (id)digitsArrayFromNumber:(id)number;
+ (id)sharedManager;
+ (id)userNotificationForType:(int64_t)type deviceName:(id)name;
+ (unsigned)randomNumberWithDigitCount:(unsigned __int8)count;
- (BOOL)handleInputCharacter:(unsigned __int16)character forUserAuthorizationRequest:(id)request error:(id *)error;
- (BOOL)removeAllUserAuthorizationRequests:(id *)requests;
- (BOOL)removeUserAuthorizationRequest:(id)request error:(id *)error;
- (HIDRMUIUserAuthorizationManager)init;
- (OS_os_log)log;
- (void)addUserAuthorizationRequest:(id)request completion:(id)completion;
@end

@implementation HIDRMUIUserAuthorizationManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HIDRMUIUserAuthorizationManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_sharedManager;

  return v2;
}

uint64_t __48__HIDRMUIUserAuthorizationManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedManager = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

+ (unsigned)randomNumberWithDigitCount:(unsigned __int8)count
{
  if ((count - 1) > 8)
  {
    return 0;
  }

  countCopy = count;
  v4 = __exp10((count - 1));
  v5 = __exp10(countCopy);
  return arc4random_uniform((v5 + -1.0) - v4 + 1) + v4;
}

+ (id)digitsArrayFromNumber:(id)number
{
  unsignedIntValue = [number unsignedIntValue];
  array = [MEMORY[0x277CBEB18] array];
  do
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:unsignedIntValue % 0xA];
    [array addObject:v5];

    v6 = unsignedIntValue > 9;
    unsignedIntValue /= 0xAu;
  }

  while (v6);
  reverseObjectEnumerator = [array reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  return allObjects;
}

+ (BOOL)digitFromCharacter:(unsigned __int16)character digit:(unsigned int *)digit
{
  v4 = character - 48;
  if ((character - 48) <= 9 && digit != 0)
  {
    *digit = v4;
  }

  return v4 < 0xA;
}

+ (id)userNotificationForType:(int64_t)type deviceName:(id)name
{
  nameCopy = name;
  v7 = objc_alloc_init(IOUserNotification);
  v8 = v7;
  if (type > 1)
  {
    if (type == 2)
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v43 = [mainBundle localizedStringForKey:@"This accessory must be approved in Settings before it can control your device." value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 setHeader:v43];

      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v45 = [mainBundle2 localizedStringForKey:@"If you did not plug in an input device value:this accessory may be attempting to compromise your privacy or harm your device." table:{&stru_2862DB1F8, 0}];
      [(IOUserNotification *)v8 setMessage:v45];

      mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
      v47 = [mainBundle3 localizedStringForKey:@"View in Settings" value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 addButtonWithTitle:v47];

      mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
      v49 = [mainBundle4 localizedStringForKey:@"Cancel" value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 addButtonWithTitle:v49];

      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __70__HIDRMUIUserAuthorizationManager_userNotificationForType_deviceName___block_invoke;
      v51[3] = &__block_descriptor_40_e40_v24__0__IOUserNotification_8__NSError_16l;
      v51[4] = self;
      [(IOUserNotification *)v8 setResponseHandler:v51];
      goto LABEL_14;
    }

    if (type == 3)
    {
      v16 = MEMORY[0x277CCACA8];
      mainBundle5 = [MEMORY[0x277CCA8D8] mainBundle];
      v18 = [mainBundle5 localizedStringForKey:@"Allow “%@” to control your device?" value:&stru_2862DB1F8 table:0];
      nameCopy = [v16 stringWithFormat:v18, nameCopy];
      [(IOUserNotification *)v8 setHeader:nameCopy];

      mainBundle6 = [MEMORY[0x277CCA8D8] mainBundle];
      v21 = [mainBundle6 localizedStringForKey:@"Only allow control if you trust this accessory. Malicious accessories may attempt to compromise your privacy or harm your device." value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 setMessage:v21];

      mainBundle7 = [MEMORY[0x277CCA8D8] mainBundle];
      v23 = [mainBundle7 localizedStringForKey:@"Approve Your Accessory" value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 setLockScreenHeader:v23];

      mainBundle8 = [MEMORY[0x277CCA8D8] mainBundle];
      v25 = [mainBundle8 localizedStringForKey:@"Unlock to approve your accessory" value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 setLockScreenMessage:v25];

      [(IOUserNotification *)v8 setShouldDismissOnLock:0];
      [(IOUserNotification *)v8 setShouldDismissOnUnlock:0];
      [(IOUserNotification *)v8 setShouldAllowLockScreenDismissal:0];
      mainBundle9 = [MEMORY[0x277CCA8D8] mainBundle];
      v27 = [mainBundle9 localizedStringForKey:@"Don't Allow" value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 addButtonWithTitle:v27];

      mainBundle10 = [MEMORY[0x277CCA8D8] mainBundle];
      v14 = mainBundle10;
      v15 = @"Allow Control";
      goto LABEL_12;
    }
  }

  else
  {
    if (!type)
    {
      mainBundle11 = [MEMORY[0x277CCA8D8] mainBundle];
      v30 = [mainBundle11 localizedStringForKey:@"Approve Your Accessory" value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 setHeader:v30];

      v31 = MEMORY[0x277CCACA8];
      mainBundle12 = [MEMORY[0x277CCA8D8] mainBundle];
      v33 = [mainBundle12 localizedStringForKey:@"“%@” is attempting to control your device. Enter the following keys on this accessory to approve it." value:&stru_2862DB1F8 table:0];
      nameCopy2 = [v31 stringWithFormat:v33, nameCopy];
      [(IOUserNotification *)v8 setMessage:nameCopy2];

      mainBundle13 = [MEMORY[0x277CCA8D8] mainBundle];
      v36 = [mainBundle13 localizedStringForKey:@"Approve Your Accessory" value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 setLockScreenHeader:v36];

      mainBundle14 = [MEMORY[0x277CCA8D8] mainBundle];
      v38 = [mainBundle14 localizedStringForKey:@"Unlock to approve your accessory" value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 setLockScreenMessage:v38];

      [(IOUserNotification *)v8 setShouldDismissOnLock:0];
      [(IOUserNotification *)v8 setShouldDismissOnUnlock:0];
      [(IOUserNotification *)v8 setShouldAllowLockScreenDismissal:0];
      [(IOUserNotification *)v8 setExtensionIdentifier:@"com.apple.HIDRMUI.HIDRMUICFUNUIExtension"];
      mainBundle15 = [MEMORY[0x277CCA8D8] mainBundle];
      v40 = [mainBundle15 localizedStringForKey:@"Cancel" value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 addButtonWithTitle:v40];

      mainBundle10 = [MEMORY[0x277CCA8D8] mainBundle];
      v14 = mainBundle10;
      v15 = @"Not a Keyboard";
      goto LABEL_12;
    }

    if (type == 1)
    {
      mainBundle16 = [MEMORY[0x277CCA8D8] mainBundle];
      v10 = [mainBundle16 localizedStringForKey:@"This accessory has been blocked from controlling your device." value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 setHeader:v10];

      mainBundle17 = [MEMORY[0x277CCA8D8] mainBundle];
      v12 = [mainBundle17 localizedStringForKey:@"If you did not plug in a keyboard value:this accessory may be attempting to compromise your privacy or harm your device." table:{&stru_2862DB1F8, 0}];
      [(IOUserNotification *)v8 setMessage:v12];

      mainBundle10 = [MEMORY[0x277CCA8D8] mainBundle];
      v14 = mainBundle10;
      v15 = @"Done";
LABEL_12:
      v41 = [mainBundle10 localizedStringForKey:v15 value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 addButtonWithTitle:v41];

      goto LABEL_14;
    }
  }

  v28 = [self log];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    +[HIDRMUIUserAuthorizationManager userNotificationForType:deviceName:];
  }

  v8 = 0;
LABEL_14:

  return v8;
}

void __70__HIDRMUIUserAuthorizationManager_userNotificationForType_deviceName___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v19 = [v3 responseReceived];
    v20 = 1024;
    v21 = [v3 notificationCancelled];
    v22 = 1024;
    v23 = [v3 notificationDismissed];
    _os_log_impl(&dword_250977000, v4, OS_LOG_TYPE_DEFAULT, "userNotification.responseReceived: %d, notificationCancelled: %d, notificationDismissed: %d", buf, 0x14u);
  }

  v5 = [*(a1 + 32) log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __70__HIDRMUIUserAuthorizationManager_userNotificationForType_deviceName___block_invoke_cold_1(v3);
  }

  if ([v3 responseReceived])
  {
    v6 = [v3 buttons];
    v7 = [v6 firstObject];
    v8 = [v7 selected];

    if (v8)
    {
      v9 = [*(a1 + 32) log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_250977000, v9, OS_LOG_TYPE_INFO, "Launching settings pane...", buf, 2u);
      }

      v10 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v11 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity"];
      v17 = 0;
      [v10 openSensitiveURL:v11 withOptions:0 error:&v17];
      v12 = v17;

      if (v12)
      {
        v13 = [*(a1 + 32) log];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __70__HIDRMUIUserAuthorizationManager_userNotificationForType_deviceName___block_invoke_cold_2();
        }
      }

      goto LABEL_16;
    }
  }

  if ([v3 responseReceived])
  {
    v14 = [v3 buttons];
    v15 = [v14 lastObject];
    v16 = [v15 selected];

    if (v16)
    {
      v12 = [objc_opt_class() userNotificationForType:1 deviceName:0];
      [v12 presentNotification];
LABEL_16:
    }
  }
}

- (HIDRMUIUserAuthorizationManager)init
{
  v12.receiver = self;
  v12.super_class = HIDRMUIUserAuthorizationManager;
  v2 = [(HIDRMUIUserAuthorizationManager *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    uTF8String = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v7 = dispatch_queue_create(uTF8String, v6);
    completionQueue = v2->_completionQueue;
    v2->_completionQueue = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    authRequests = v2->_authRequests;
    v2->_authRequests = v9;
  }

  return v2;
}

- (void)addUserAuthorizationRequest:(id)request completion:(id)completion
{
  v45 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v37[3] = 7;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy_;
  v35[4] = __Block_byref_object_dispose_;
  v36 = 0;
  v8 = [(HIDRMUIUserAuthorizationManager *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = requestCopy;
    _os_log_impl(&dword_250977000, v8, OS_LOG_TYPE_DEFAULT, "Adding user authorization request... (authorizationRequest: %@)", buf, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    requiresPairing = [requestCopy requiresPairing];
    if (requiresPairing)
    {
      v10 = 0;
    }

    else
    {
      v10 = 3;
    }

    v11 = objc_opt_class();
    deviceName = [requestCopy deviceName];
    v13 = [v11 userNotificationForType:v10 deviceName:deviceName];

    v14 = [AuthRequestWrapper requestWrapperWithCompletion:completionCopy andUserNotification:v13];
    if (requiresPairing)
    {
      v15 = [objc_opt_class() randomNumberWithDigitCount:4];
      v16 = objc_opt_class();
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v15];
      v18 = [v16 digitsArrayFromNumber:v17];

      v19 = objc_alloc_init(MEMORY[0x277CCA9D8]);
      v41 = 0x2862DB518;
      v42 = v18;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      [v19 setUserInfo:v20];

      v40 = v19;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
      [v13 setExtensionItems:v21];

      [v14 setPairingCodeDigits:v18];
      [v14 setPairingStatus:1];
    }

    v22 = self->_authRequests;
    objc_sync_enter(v22);
    [(NSMutableDictionary *)self->_authRequests setObject:v14 forKey:requestCopy];
    objc_sync_exit(v22);

    v23 = [(HIDRMUIUserAuthorizationManager *)self log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_250977000, v23, OS_LOG_TYPE_DEFAULT, "Presenting user authorization dialog...", buf, 2u);
    }

    objc_initWeak(buf, self);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __74__HIDRMUIUserAuthorizationManager_addUserAuthorizationRequest_completion___block_invoke;
    v30[3] = &unk_2796A3148;
    objc_copyWeak(v34, buf);
    v30[4] = self;
    v32 = v35;
    v31 = requestCopy;
    v33 = v37;
    v34[1] = v10;
    [v13 presentNotificationWithResponseHandler:v30];

    objc_destroyWeak(v34);
    objc_destroyWeak(buf);
  }

  else
  {
    v24 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA450];
    v25 = HIDRMUIErrorStringFromCode(1001);
    v39 = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v13 = [v24 errorWithDomain:@"HIDRMUIErrorDomain" code:1001 userInfo:v26];

    v27 = [(HIDRMUIUserAuthorizationManager *)self log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      [(HIDRMUIUserAuthorizationManager *)v29 addUserAuthorizationRequest:buf completion:v27];
    }

    completionCopy[2](completionCopy, 7, v13);
  }

  _Block_object_dispose(v35, 8);
  _Block_object_dispose(v37, 8);
}

void __74__HIDRMUIUserAuthorizationManager_addUserAuthorizationRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = [*(a1 + 32) log];
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __74__HIDRMUIUserAuthorizationManager_addUserAuthorizationRequest_completion___block_invoke_cold_1();
    }

    v10 = *(*(a1 + 48) + 8);
    v11 = v6;
    v12 = *(v10 + 40);
    *(v10 + 40) = v11;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v56 = [v5 responseReceived];
      v57 = 1024;
      v58 = [v5 notificationCancelled];
      v59 = 1024;
      v60 = [v5 notificationDismissed];
      _os_log_impl(&dword_250977000, v9, OS_LOG_TYPE_DEFAULT, "userNotification.responseReceived: %d, notificationCancelled: %d, notificationDismissed: %d", buf, 0x14u);
    }

    v12 = [*(a1 + 32) log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __74__HIDRMUIUserAuthorizationManager_addUserAuthorizationRequest_completion___block_invoke_cold_2(v5);
    }
  }

  if (WeakRetained)
  {
    v13 = WeakRetained[2];
    objc_sync_enter(v13);
    v14 = [WeakRetained[2] objectForKey:*(a1 + 40)];
    v15 = v14;
    if (v14)
    {
      [v14 setUserNotification:0];
    }

    objc_sync_exit(v13);

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v16 = WeakRetained[2];
      objc_sync_enter(v16);
      [WeakRetained[2] removeObjectForKey:*(a1 + 40)];
      objc_sync_exit(v16);

      goto LABEL_15;
    }

LABEL_19:
    if ([v5 notificationDismissed])
    {
      if ([v15 pairingStatus] == 2)
      {
        v19 = *(*(a1 + 56) + 8);
        v20 = 3;
      }

      else
      {
        v25 = [v15 pairingStatus];
        v19 = *(*(a1 + 56) + 8);
        if (v25 != 3)
        {
          *(v19 + 24) = 0;
          goto LABEL_44;
        }

        v20 = 4;
      }

      goto LABEL_43;
    }

    v21 = *(a1 + 72);
    if (v21 == 3)
    {
      if ([v5 responseReceived])
      {
        v26 = [v5 buttons];
        v27 = [v26 lastObject];
        v28 = [v27 selected];

        if (v28)
        {
          v19 = *(*(a1 + 56) + 8);
          v20 = 5;
          goto LABEL_43;
        }
      }

      if (![v5 responseReceived] || (objc_msgSend(v5, "buttons"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "firstObject"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "selected"), v33, v32, !v34))
      {
        if (![v5 notificationCancelled])
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }
    }

    else
    {
      if (v21)
      {
        goto LABEL_44;
      }

      if ([v5 responseReceived])
      {
        v22 = [v5 buttons];
        v23 = [v22 lastObject];
        v24 = [v23 selected];

        if (v24)
        {
          v19 = *(*(a1 + 56) + 8);
          v20 = 2;
          goto LABEL_43;
        }
      }

      if (![v5 responseReceived] || (objc_msgSend(v5, "buttons"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "firstObject"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "selected"), v30, v29, !v31))
      {
        if (![v5 notificationCancelled])
        {
          goto LABEL_44;
        }

LABEL_41:
        if ([v5 notificationDismissed])
        {
          goto LABEL_44;
        }

        v19 = *(*(a1 + 56) + 8);
        v20 = 1;
LABEL_43:
        *(v19 + 24) = v20;
LABEL_44:
        v35 = *(*(*(a1 + 56) + 8) + 24);
        if (v35 > 3)
        {
          if (v35 == 4 || v35 == 6)
          {
            v38 = objc_opt_class();
            v39 = [*(a1 + 40) deviceName];
            v18 = [v38 userNotificationForType:1 deviceName:v39];

            [v18 presentNotification];
            if (WeakRetained)
            {
              v40 = WeakRetained[2];
              objc_sync_enter(v40);
              [WeakRetained[2] removeObjectForKey:*(a1 + 40)];
              objc_sync_exit(v40);
            }

            v41 = [v15 completionHandler];

            if (v41)
            {
              v42 = [v15 completionHandler];
              v42[2](v42, *(*(*(a1 + 56) + 8) + 24), *(*(*(a1 + 48) + 8) + 40));
            }

            goto LABEL_17;
          }
        }

        else
        {
          if (v35 == 2)
          {
            [v15 setPairingStatus:0];
            v45 = objc_opt_class();
            v46 = [*(a1 + 40) deviceName];
            v18 = [v45 userNotificationForType:2 deviceName:v46];

            [v15 setUserNotification:v18];
            v47 = [v18 responseHandler];
            v51[0] = MEMORY[0x277D85DD0];
            v51[1] = 3221225472;
            v51[2] = __74__HIDRMUIUserAuthorizationManager_addUserAuthorizationRequest_completion___block_invoke_67;
            v51[3] = &unk_2796A3120;
            v51[4] = WeakRetained;
            v48 = *(a1 + 40);
            v49 = *(a1 + 56);
            v53 = v47;
            v54 = v49;
            v52 = v48;
            v50 = v47;
            [v18 presentNotificationWithResponseHandler:v51];

            goto LABEL_17;
          }

          if (v35 == 3)
          {
            if (WeakRetained)
            {
              v36 = WeakRetained[2];
              objc_sync_enter(v36);
              [WeakRetained[2] removeObjectForKey:*(a1 + 40)];
              objc_sync_exit(v36);
            }

            v37 = [v15 completionHandler];

            if (v37)
            {
              goto LABEL_16;
            }

            goto LABEL_18;
          }
        }

        if (WeakRetained)
        {
          v43 = WeakRetained[2];
          objc_sync_enter(v43);
          [WeakRetained[2] removeObjectForKey:*(a1 + 40)];
          objc_sync_exit(v43);
        }

        v44 = [v15 completionHandler];

        if (v44)
        {
          goto LABEL_16;
        }

        goto LABEL_18;
      }
    }

    v19 = *(*(a1 + 56) + 8);
    v20 = 6;
    goto LABEL_43;
  }

  v15 = 0;
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    goto LABEL_19;
  }

LABEL_15:
  v17 = [v15 completionHandler];

  if (v17)
  {
LABEL_16:
    v18 = [v15 completionHandler];
    v18[2](v18, *(*(*(a1 + 56) + 8) + 24), *(*(*(a1 + 48) + 8) + 40));
LABEL_17:
  }

LABEL_18:
}

void __74__HIDRMUIUserAuthorizationManager_addUserAuthorizationRequest_completion___block_invoke_67(void *a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = a1[4];
  if (v6)
  {
    v7 = *(v6 + 16);
    objc_sync_enter(v7);
    v8 = [*(a1[4] + 16) objectForKey:a1[5]];
    v9 = v8;
    if (v8)
    {
      [v8 setUserNotification:0];
    }

    [*(a1[4] + 16) removeObjectForKey:a1[5]];
    objc_sync_exit(v7);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 completionHandler];

  if (v10)
  {
    v11 = [v9 completionHandler];
    (v11)[2](v11, *(*(a1[7] + 8) + 24), v5);
  }

  (*(a1[6] + 16))();
}

- (BOOL)removeUserAuthorizationRequest:(id)request error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = [(HIDRMUIUserAuthorizationManager *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = requestCopy;
    _os_log_impl(&dword_250977000, v7, OS_LOG_TYPE_DEFAULT, "Removing user authorization request... (authorizationRequest: %@)", buf, 0xCu);
  }

  if (!requestCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v16 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA450];
    v9 = HIDRMUIErrorStringFromCode(1001);
    v22 = v9;
    completionHandler2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v17 = [v16 errorWithDomain:@"HIDRMUIErrorDomain" code:1001 userInfo:{completionHandler2, v21}];
LABEL_11:
    v14 = v17;
    v15 = 0;
    goto LABEL_12;
  }

  v8 = self->_authRequests;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)self->_authRequests objectForKey:requestCopy];
  [(NSMutableDictionary *)self->_authRequests removeObjectForKey:requestCopy];
  objc_sync_exit(v8);

  if (!v9)
  {
    v20 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v24 = @"Authorization request not found.";
    completionHandler2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v17 = [v20 errorWithDomain:@"HIDRMUIErrorDomain" code:1002 userInfo:completionHandler2];
    goto LABEL_11;
  }

  userNotification = [v9 userNotification];

  if (userNotification)
  {
    userNotification2 = [v9 userNotification];
    [userNotification2 dismissNotification];
  }

  completionHandler = [v9 completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [v9 completionHandler];
    completionHandler2[2](completionHandler2, 0, 0);
    v14 = 0;
    v15 = 1;
LABEL_12:

    goto LABEL_13;
  }

  v14 = 0;
  v15 = 1;
LABEL_13:

  if (error)
  {
    v18 = v14;
    *error = v14;
  }

  return v15;
}

- (BOOL)removeAllUserAuthorizationRequests:(id *)requests
{
  v21 = *MEMORY[0x277D85DE8];
  userAuthorizationRequests = [(HIDRMUIUserAuthorizationManager *)self userAuthorizationRequests];
  v5 = [(HIDRMUIUserAuthorizationManager *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v20 = [userAuthorizationRequests count];
    _os_log_impl(&dword_250977000, v5, OS_LOG_TYPE_DEFAULT, "Removing all user authorization requests... (authRequests.count: %lu)", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = userAuthorizationRequests;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v13 = 0;
        [(HIDRMUIUserAuthorizationManager *)self removeUserAuthorizationRequest:v11 error:&v13];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return 1;
}

- (BOOL)handleInputCharacter:(unsigned __int16)character forUserAuthorizationRequest:(id)request error:(id *)error
{
  characterCopy = character;
  v69 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v9 = [(HIDRMUIUserAuthorizationManager *)self log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = characterCopy;
    LOWORD(v67) = 2112;
    *(&v67 + 2) = requestCopy;
    _os_log_impl(&dword_250977000, v9, OS_LOG_TYPE_INFO, "Handling input character '%C'... (authorizationRequest: %@)", buf, 0x12u);
  }

  v10 = self->_authRequests;
  objc_sync_enter(v10);
  v11 = [(NSMutableDictionary *)self->_authRequests objectForKey:requestCopy];
  objc_sync_exit(v10);

  if (v11)
  {
    userNotification = [v11 userNotification];
    v13 = userNotification == 0;

    if (!v13)
    {
      if (![requestCopy requiresPairing] || objc_msgSend(v11, "pairingStatus") != 1)
      {
        v37 = [(HIDRMUIUserAuthorizationManager *)self log];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          [HIDRMUIUserAuthorizationManager handleInputCharacter:characterCopy forUserAuthorizationRequest:v37 error:?];
        }

        goto LABEL_35;
      }

      v57 = 0;
      *buf = 0;
      *&v67 = buf;
      *(&v67 + 1) = 0x2020000000;
      v68 = 0;
      if ([objc_opt_class() digitFromCharacter:characterCopy digit:&v57])
      {
        pairingCodeDigitsEntered = [v11 pairingCodeDigitsEntered];
        objc_sync_enter(pairingCodeDigitsEntered);
        pairingCodeDigitsEntered2 = [v11 pairingCodeDigitsEntered];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v57];
        [pairingCodeDigitsEntered2 addObject:v16];

        pairingCodeDigitsEntered3 = [v11 pairingCodeDigitsEntered];
        v18 = [pairingCodeDigitsEntered3 copy];

        objc_sync_exit(pairingCodeDigitsEntered);
        pairingCodeDigits = [v11 pairingCodeDigits];
        objc_sync_enter(pairingCodeDigits);
        pairingCodeDigits2 = [v11 pairingCodeDigits];
        v21 = [pairingCodeDigits2 copy];

        objc_sync_exit(pairingCodeDigits);
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __90__HIDRMUIUserAuthorizationManager_handleInputCharacter_forUserAuthorizationRequest_error___block_invoke;
        v54[3] = &unk_2796A3170;
        v22 = v21;
        v55 = v22;
        v56 = buf;
        [v18 enumerateObjectsUsingBlock:v54];

        if ((*(v67 + 24) & 1) == 0)
        {
          v23 = [(HIDRMUIUserAuthorizationManager *)self log];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *v64 = 0;
            _os_log_impl(&dword_250977000, v23, OS_LOG_TYPE_INFO, "Sending correct digit notification to extension...", v64, 2u);
          }

          defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          v60 = 0x2862DB4B8;
          v61 = 0x2862DB4D8;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
          [defaultCenter postNotificationName:0x2862DB498 object:v26 userInfo:v27];

          pairingCodeDigits3 = [v11 pairingCodeDigits];
          v29 = [pairingCodeDigits3 count];
          pairingCodeDigitsEntered4 = [v11 pairingCodeDigitsEntered];
          if (v29 == [pairingCodeDigitsEntered4 count])
          {
            pairingCodeDigits4 = [v11 pairingCodeDigits];
            pairingCodeDigitsEntered5 = [v11 pairingCodeDigitsEntered];
            v33 = [pairingCodeDigits4 isEqualToArray:pairingCodeDigitsEntered5];

            if (!v33)
            {
LABEL_34:
              _Block_object_dispose(buf, 8);
LABEL_35:
              v36 = 1;
              goto LABEL_36;
            }

            [v11 setPairingStatus:2];
            pairingCodeDigits3 = [v11 userNotification];
            [pairingCodeDigits3 dismissNotification];
LABEL_33:

            goto LABEL_34;
          }

LABEL_32:

          goto LABEL_33;
        }
      }

      else
      {
        v38 = [(HIDRMUIUserAuthorizationManager *)self log];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *v64 = 67109120;
          v65 = characterCopy;
          _os_log_impl(&dword_250977000, v38, OS_LOG_TYPE_INFO, "Invalid character! (character: '%C')", v64, 8u);
        }

        *(v67 + 24) = 1;
      }

      v39 = [(HIDRMUIUserAuthorizationManager *)self log];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        pairingCodeDigits5 = [v11 pairingCodeDigits];
        pairingCodeDigitsEntered6 = [v11 pairingCodeDigitsEntered];
        [(HIDRMUIUserAuthorizationManager *)pairingCodeDigits5 handleInputCharacter:pairingCodeDigitsEntered6 forUserAuthorizationRequest:v64 error:v39];
      }

      [v11 setPairingFailureCount:{objc_msgSend(v11, "pairingFailureCount") + 1}];
      if ([v11 pairingFailureCount] >= 3)
      {
        v42 = [(HIDRMUIUserAuthorizationManager *)self log];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          [HIDRMUIUserAuthorizationManager handleInputCharacter:v42 forUserAuthorizationRequest:? error:?];
        }

        [v11 setPairingStatus:3];
        pairingCodeDigits3 = [v11 userNotification];
        [pairingCodeDigits3 dismissNotification];
        goto LABEL_33;
      }

      pairingCodeDigitsEntered7 = [v11 pairingCodeDigitsEntered];
      objc_sync_enter(pairingCodeDigitsEntered7);
      pairingCodeDigitsEntered8 = [v11 pairingCodeDigitsEntered];
      [pairingCodeDigitsEntered8 removeAllObjects];

      objc_sync_exit(pairingCodeDigitsEntered7);
      v45 = [objc_opt_class() randomNumberWithDigitCount:4];
      v46 = objc_opt_class();
      v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v45];
      pairingCodeDigits3 = [v46 digitsArrayFromNumber:v47];

      [v11 setPairingCodeDigits:pairingCodeDigits3];
      v48 = [(HIDRMUIUserAuthorizationManager *)self log];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        *v53 = 0;
        _os_log_impl(&dword_250977000, v48, OS_LOG_TYPE_INFO, "Sending pairing failure notification to extension...", v53, 2u);
      }

      pairingCodeDigitsEntered4 = [MEMORY[0x277CCA9A0] defaultCenter];
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      v62[0] = 0x2862DB4B8;
      v62[1] = 0x2862DB518;
      v63[0] = 0x2862DB4F8;
      v63[1] = pairingCodeDigits3;
      v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];
      [pairingCodeDigitsEntered4 postNotificationName:0x2862DB498 object:v50 userInfo:v51];

      goto LABEL_32;
    }
  }

  if (error)
  {
    v34 = MEMORY[0x277CCA9B8];
    v58 = *MEMORY[0x277CCA450];
    v59 = @"Authorization request not found.";
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    *error = [v34 errorWithDomain:@"HIDRMUIErrorDomain" code:1002 userInfo:v35];
  }

  v36 = 0;
LABEL_36:

  return v36;
}

void __90__HIDRMUIUserAuthorizationManager_handleInputCharacter_forUserAuthorizationRequest_error___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([*(a1 + 32) count] > a3)
  {
    v7 = [*(a1 + 32) objectAtIndex:a3];
    v8 = [v9 isEqualToNumber:v7];

    if (v8)
    {
      goto LABEL_5;
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  *a4 = 1;
LABEL_5:
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HIDRMUIUserAuthorizationManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __38__HIDRMUIUserAuthorizationManager_log__block_invoke(uint64_t a1)
{
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = [v7 bundleIdentifier];
  v2 = [v1 UTF8String];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = os_log_create(v2, [v4 UTF8String]);
  v6 = log_log;
  log_log = v5;
}

- (OS_os_log)log
{
  v2 = objc_opt_class();

  return [v2 log];
}

void __70__HIDRMUIUserAuthorizationManager_userNotificationForType_deviceName___block_invoke_cold_1(void *a1)
{
  v1 = [a1 buttons];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_250977000, v2, v3, "userNotification.buttons: %@", v4, v5, v6, v7);
}

- (void)addUserAuthorizationRequest:(os_log_t)log completion:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_250977000, log, OS_LOG_TYPE_ERROR, "Invalid authorization request! (authorizationRequest.class: %@)", buf, 0xCu);
}

void __74__HIDRMUIUserAuthorizationManager_addUserAuthorizationRequest_completion___block_invoke_cold_2(void *a1)
{
  v1 = [a1 buttons];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_250977000, v2, v3, "userNotification.buttons: %@", v4, v5, v6, v7);
}

- (void)handleInputCharacter:(unsigned __int16)a1 forUserAuthorizationRequest:(NSObject *)a2 error:.cold.1(unsigned __int16 a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_250977000, a2, OS_LOG_TYPE_DEBUG, "Not in pairing flow, ignoring input character! (character: '%C')", v2, 8u);
}

- (void)handleInputCharacter:(uint8_t *)buf forUserAuthorizationRequest:(os_log_t)log error:.cold.2(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_250977000, log, OS_LOG_TYPE_ERROR, "Pairing failure! (pairingCodeDigits: %@, pairingCodeDigitsEntered: %@)", buf, 0x16u);
}

@end