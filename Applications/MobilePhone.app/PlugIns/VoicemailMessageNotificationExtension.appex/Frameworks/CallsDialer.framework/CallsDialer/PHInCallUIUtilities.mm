@interface PHInCallUIUtilities
+ (BOOL)hasMultipleSenderIdentities;
+ (BOOL)isExplicitTransferSupportedForSubscriptionLabelIdentifier:(id)identifier;
+ (BOOL)layoutIsLocked:(id)locked;
+ (BOOL)shouldHideSensitiveUI;
+ (BOOL)shouldRequestPasscodeUnlockForMMICode:(id)code;
+ (id)fbsOrientationObserver;
+ (id)handleNavigationControllerIfNecessary:(id)necessary;
+ (id)sharedInstance;
+ (id)telephonyClient;
+ (int64_t)deviceOrientationForBSInterfaceOrientation:(int64_t)orientation;
+ (int64_t)frontboardOrientation;
+ (int64_t)interfaceOrientationForDeviceOrientation:(int64_t)orientation;
- (PHInCallUIUtilities)init;
- (void)init;
- (void)layoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout withContext:(id)context;
@end

@implementation PHInCallUIUtilities

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __37__PHInCallUIUtilities_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sInCallUIUtilities;

  return v2;
}

uint64_t __37__PHInCallUIUtilities_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sInCallUIUtilities = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

- (PHInCallUIUtilities)init
{
  v11.receiver = self;
  v11.super_class = PHInCallUIUtilities;
  v2 = [(PHInCallUIUtilities *)&v11 init];
  if (v2)
  {
    v3 = [FBSDisplayLayoutMonitor sharedMonitorForDisplayType:0];
    v4 = objc_opt_class();
    currentLayout = [v3 currentLayout];
    if ([v4 layoutIsLocked:currentLayout])
    {
      v6 = 1;
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v7 = getSBSGetScreenLockStatusSymbolLoc_ptr;
      v16 = getSBSGetScreenLockStatusSymbolLoc_ptr;
      if (!getSBSGetScreenLockStatusSymbolLoc_ptr)
      {
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = __getSBSGetScreenLockStatusSymbolLoc_block_invoke;
        v12[3] = &unk_4C860;
        v12[4] = &v13;
        __getSBSGetScreenLockStatusSymbolLoc_block_invoke(v12);
        v7 = v14[3];
      }

      _Block_object_dispose(&v13, 8);
      if (!v7)
      {
        [PHInCallUIUtilities init];
        v10 = v9;
        _Block_object_dispose(&v13, 8);
        _Unwind_Resume(v10);
      }

      v6 = v7(0) != 0;
    }

    v2->_springBoardLocked = v6;

    [v3 addObserver:v2];
  }

  return v2;
}

+ (id)telephonyClient
{
  if (telephonyClient_onceToken != -1)
  {
    +[PHInCallUIUtilities telephonyClient];
  }

  v3 = telephonyClient_telephonyClient;

  return v3;
}

void __38__PHInCallUIUtilities_telephonyClient__block_invoke(id a1)
{
  telephonyClient_telephonyClient = [[CoreTelephonyClient alloc] initWithQueue:&_dispatch_main_q];

  _objc_release_x1();
}

+ (int64_t)interfaceOrientationForDeviceOrientation:(int64_t)orientation
{
  if ((orientation - 2) >= 3)
  {
    return 1;
  }

  else
  {
    return orientation;
  }
}

+ (int64_t)deviceOrientationForBSInterfaceOrientation:(int64_t)orientation
{
  if ((orientation - 2) > 2)
  {
    return 1;
  }

  else
  {
    return qword_31228[orientation - 2];
  }
}

+ (id)handleNavigationControllerIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    topViewController = [necessaryCopy topViewController];
  }

  else
  {
    topViewController = necessaryCopy;
  }

  v5 = topViewController;

  return v5;
}

+ (BOOL)shouldRequestPasscodeUnlockForMMICode:(id)code
{
  codeCopy = code;
  v5 = [codeCopy isEqualToString:@"*#06#"];
  if (v5)
  {
    telephonyClient = [self telephonyClient];
    v38 = 0;
    v7 = [telephonyClient getSubscriptionInfoWithError:&v38];
    v8 = v38;

    if (v8)
    {
      v32 = PHDefaultLog(v9);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        +[PHInCallUIUtilities shouldRequestPasscodeUnlockForMMICode:];
      }
    }

    else
    {
      subscriptions = [v7 subscriptions];
      v12 = [subscriptions count];

      if (v12)
      {
        v32 = [[CTBundle alloc] initWithBundleType:2];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        subscriptions2 = [v7 subscriptions];
        v15 = [subscriptions2 countByEnumeratingWithState:&v34 objects:v43 count:16];
        if (v15)
        {
          v16 = v15;
          v30 = v7;
          v31 = codeCopy;
          v8 = 0;
          v17 = *v35;
          while (2)
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v35 != v17)
              {
                objc_enumerationMutation(subscriptions2);
              }

              v19 = *(*(&v34 + 1) + 8 * i);
              if (([v19 isSimHidden] & 1) == 0)
              {
                telephonyClient2 = [self telephonyClient];
                v33 = v8;
                v21 = [telephonyClient2 copyCarrierBundleValueWithDefault:v19 key:@"ShowIMEIsInLockScreen" bundleType:v32 error:&v33];
                v22 = v33;

                if (v22)
                {
                  v24 = PHDefaultLog(v23);
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    *v40 = v22;
                    _os_log_error_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "Received error: %@ while querying -copyCarrierBundleValueWithDefault", buf, 0xCu);
                  }
                }

                else
                {
                  bOOLValue = objc_opt_respondsToSelector();
                  if (bOOLValue)
                  {
                    bOOLValue = [v21 BOOLValue];
                    v26 = bOOLValue;
                  }

                  else
                  {
                    v26 = 0;
                  }

                  v27 = PHDefaultLog(bOOLValue);
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                  {
                    uuid = [v19 uuid];
                    *buf = 67109634;
                    *v40 = v26;
                    *&v40[4] = 2112;
                    *&v40[6] = v21;
                    v41 = 2112;
                    v42 = uuid;
                    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Received regionWantsPasscodeBypassForIMEI: %d from carrierBundleValue: %@ subscription: %@", buf, 0x1Cu);
                  }

                  if (v26)
                  {

                    v10 = 0;
                    v8 = 0;
                    goto LABEL_34;
                  }
                }

                v8 = v22;
              }
            }

            v16 = [subscriptions2 countByEnumeratingWithState:&v34 objects:v43 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }

          v10 = 1;
LABEL_34:
          v7 = v30;
          codeCopy = v31;
        }

        else
        {
          v8 = 0;
          v10 = 1;
        }

        goto LABEL_37;
      }

      v32 = PHDefaultLog(v13);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        +[PHInCallUIUtilities shouldRequestPasscodeUnlockForMMICode:];
      }

      v8 = 0;
    }

    v10 = 1;
LABEL_37:

    goto LABEL_38;
  }

  v8 = PHDefaultLog(v5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Code is not for IMEI, should request passcode unlock", buf, 2u);
  }

  v10 = 1;
LABEL_38:

  return v10;
}

+ (BOOL)shouldHideSensitiveUI
{
  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.springboard"];
  if ([v3 BOOLForKey:@"SBSensitiveUIEnabled"])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = _UISolariumEnabled() ^ 1;
  }

  return [self isSpringBoardPasscodeLocked] & v4;
}

+ (BOOL)layoutIsLocked:(id)locked
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  elements = [locked elements];
  v4 = [elements countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = FBSDisplayLayoutElementLockScreenIdentifier;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(elements);
        }

        identifier = [*(*(&v13 + 1) + 8 * i) identifier];
        v10 = [identifier isEqualToString:v7];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v5 = [elements countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

+ (BOOL)hasMultipleSenderIdentities
{
  if (hasMultipleSenderIdentities_onceToken != -1)
  {
    +[PHInCallUIUtilities hasMultipleSenderIdentities];
  }

  prioritizedSenderIdentities = [hasMultipleSenderIdentities_telephonyProvider prioritizedSenderIdentities];
  v3 = [prioritizedSenderIdentities count] > 1;

  return v3;
}

void __50__PHInCallUIUtilities_hasMultipleSenderIdentities__block_invoke(id a1)
{
  v5 = objc_alloc_init(TUCallProviderManager);
  v1 = [v5 telephonyProvider];
  v2 = [v1 identifier];
  v3 = [v5 providerWithIdentifier:v2];
  v4 = hasMultipleSenderIdentities_telephonyProvider;
  hasMultipleSenderIdentities_telephonyProvider = v3;
}

+ (id)fbsOrientationObserver
{
  if (fbsOrientationObserver_onceToken != -1)
  {
    +[PHInCallUIUtilities fbsOrientationObserver];
  }

  v3 = fbsOrientationObserver_sFBSOrientationObserver;

  return v3;
}

void __45__PHInCallUIUtilities_fbsOrientationObserver__block_invoke(id a1)
{
  fbsOrientationObserver_sFBSOrientationObserver = objc_alloc_init(FBSOrientationObserver);

  _objc_release_x1();
}

+ (BOOL)isExplicitTransferSupportedForSubscriptionLabelIdentifier:(id)identifier
{
  identifierCopy = identifier;
  telephonyClient = [self telephonyClient];
  v41 = 0;
  v6 = [telephonyClient getSubscriptionInfoWithError:&v41];
  v7 = v41;

  if (v7)
  {
    v35 = PHDefaultLog(v8);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      +[PHInCallUIUtilities isExplicitTransferSupportedForSubscriptionLabelIdentifier:];
    }

    goto LABEL_30;
  }

  subscriptions = [v6 subscriptions];
  v10 = [subscriptions count];

  v12 = PHDefaultLog(v11);
  v13 = v12;
  if (!v10)
  {
    v35 = v12;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[PHInCallUIUtilities isExplicitTransferSupportedForSubscriptionLabelIdentifier:];
    }

    goto LABEL_29;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    subscriptions2 = [v6 subscriptions];
    *buf = 138412290;
    v43 = subscriptions2;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "ShowExplicitCallTransferButton: all the subscriptions are: %@", buf, 0xCu);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  subscriptions3 = [v6 subscriptions];
  isSimHidden = [subscriptions3 countByEnumeratingWithState:&v37 objects:v48 count:16];
  v35 = subscriptions3;
  if (!isSimHidden)
  {
LABEL_29:
    v7 = 0;
LABEL_30:
    v31 = 0;
    goto LABEL_31;
  }

  v17 = isSimHidden;
  selfCopy = self;
  v18 = 0;
  v19 = *v38;
  v33 = identifierCopy;
  while (2)
  {
    v20 = 0;
    do
    {
      if (*v38 != v19)
      {
        objc_enumerationMutation(subscriptions3);
      }

      v21 = *(*(&v37 + 1) + 8 * v20);
      v22 = PHDefaultLog(isSimHidden);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v43 = v21;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "ShowExplicitCallTransferButton: checking subscription: %@", buf, 0xCu);
      }

      isSimHidden = [v21 isSimHidden];
      if ((isSimHidden & 1) == 0)
      {
        labelID = [v21 labelID];
        v24 = [labelID isEqualToString:identifierCopy];

        if (v24)
        {
          v25 = [[CTBundle alloc] initWithBundleType:1];
          telephonyClient2 = [selfCopy telephonyClient];
          v36 = v18;
          v27 = [telephonyClient2 copyCarrierBundleValue:v21 keyHierarchy:&off_55E38 bundleType:v25 error:&v36];
          v7 = v36;

          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass))
          {
            isKindOfClass = [v27 BOOLValue];
            v29 = isKindOfClass;
          }

          else
          {
            v29 = 0;
          }

          v30 = PHDefaultLog(isKindOfClass);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v43 = v27;
            v44 = 2112;
            v45 = v21;
            v46 = 2112;
            v47 = v7;
            _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "ShowExplicitCallTransferButton: retrieved ShowExplicitCallTransferButton value %@ for subscription %@ with error %@", buf, 0x20u);
          }

          if (v29)
          {
            v31 = 1;
            identifierCopy = v33;
            goto LABEL_31;
          }

          v18 = v7;
          identifierCopy = v33;
          subscriptions3 = v35;
        }
      }

      ++v20;
    }

    while (v17 != v20);
    isSimHidden = [subscriptions3 countByEnumeratingWithState:&v37 objects:v48 count:16];
    v17 = isSimHidden;
    if (isSimHidden)
    {
      continue;
    }

    break;
  }

  v31 = 0;
  v7 = v18;
LABEL_31:

  return v31;
}

+ (int64_t)frontboardOrientation
{
  fbsOrientationObserver = [self fbsOrientationObserver];
  activeInterfaceOrientation = [fbsOrientationObserver activeInterfaceOrientation];
  if ((activeInterfaceOrientation - 1) > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_31240[(activeInterfaceOrientation - 1)];
  }

  return v4;
}

- (void)layoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout withContext:(id)context
{
  layoutCopy = layout;
  v7 = [objc_opt_class() layoutIsLocked:layoutCopy];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __92__PHInCallUIUtilities_Workaround50930227__layoutMonitor_didUpdateDisplayLayout_withContext___block_invoke;
  v8[3] = &unk_4C720;
  v8[4] = self;
  v9 = v7;
  dispatch_async(&_dispatch_main_q, v8);
}

void __92__PHInCallUIUtilities_Workaround50930227__layoutMonitor_didUpdateDisplayLayout_withContext___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) != [*(a1 + 32) isSpringBoardLocked])
  {
    [*(a1 + 32) setSpringBoardLocked:?];
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 postNotificationName:@"PHLockScreenStatusChangedNotification" object:*(a1 + 32)];
  }
}

- (void)init
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  +[PHInCallUIUtilities telephonyClient];
}

@end