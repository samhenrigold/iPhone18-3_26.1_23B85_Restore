@interface CKAlertUtilities
+ (BOOL)_isNumberEditable;
+ (id)_getCTPhoneNumber;
+ (id)_grabCTSIMStatus;
+ (id)_phoneNumberInfo;
+ (id)coreTelephonyClient;
+ (id)selectedSubscriptionContext;
+ (int64_t)missingAlertTypeToNotify;
- (CKAlertUtilitiesProtocol)delegate;
- (void)_didFinishCheckingMissingCarrierSetting;
- (void)_displayFirstTimeRCSAlert;
- (void)_displayMissingInformationAlert:(int64_t)alert;
- (void)_displayNonPrimarySIMRCSActivationAlertForCarrierName:(id)name;
- (void)_showNetworkPrefs:(int64_t)prefs;
- (void)checkFirstTimeRCS;
- (void)checkMissingCarrierSetting;
@end

@implementation CKAlertUtilities

- (void)checkFirstTimeRCS
{
  mEMORY[0x1E69A7F50] = [MEMORY[0x1E69A7F50] sharedManager];
  carrierRequiresFirstTimeOnAlert = [mEMORY[0x1E69A7F50] carrierRequiresFirstTimeOnAlert];

  if (carrierRequiresFirstTimeOnAlert)
  {

    [(CKAlertUtilities *)self _displayFirstTimeRCSAlert];
  }
}

- (void)checkMissingCarrierSetting
{
  missingAlertTypeToNotify = [objc_opt_class() missingAlertTypeToNotify];
  if (missingAlertTypeToNotify)
  {

    [(CKAlertUtilities *)self _displayMissingInformationAlert:missingAlertTypeToNotify];
  }

  else
  {

    [(CKAlertUtilities *)self _didFinishCheckingMissingCarrierSetting];
  }
}

+ (int64_t)missingAlertTypeToNotify
{
  v17 = *MEMORY[0x1E69E9840];
  _getCTPhoneNumber = [objc_opt_class() _getCTPhoneNumber];
  if (![MEMORY[0x1E69A7F58] IMMMSGroupTextOnlyMessagesSendAsMMSForPhoneNumber:_getCTPhoneNumber simID:0])
  {
    goto LABEL_7;
  }

  v3 = +[CKUIBehavior sharedBehaviors];
  showMMSSetup = [v3 showMMSSetup];

  if (!showMMSSetup)
  {
    goto LABEL_7;
  }

  if ([MEMORY[0x1E69A7F58] IMShouldShowMMSEmailAddress:_getCTPhoneNumber simID:0])
  {
    v5 = [MEMORY[0x1E69A7F58] IMMMSEmailAddressToMatchForPhoneNumber:_getCTPhoneNumber simID:0];
    if (![v5 length])
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = 138412290;
          v16 = _getCTPhoneNumber;
          _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Missing email for phoneNumber: %@", &v15, 0xCu);
        }
      }

      v6 = 2;
      goto LABEL_27;
    }
  }

  if ((MEMORY[0x193AF5D40](_getCTPhoneNumber) & 1) == 0)
  {
    _isNumberEditable = [objc_opt_class() _isNumberEditable];
    _grabCTSIMStatus = [objc_opt_class() _grabCTSIMStatus];
    v5 = _grabCTSIMStatus;
    if (_isNumberEditable && [_grabCTSIMStatus isEqualToString:*MEMORY[0x1E6965470]])
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v15 = 138412290;
          v16 = _getCTPhoneNumber;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Missing phone for phoneNumber: %@", &v15, 0xCu);
        }
      }

      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v12 = [standardUserDefaults BOOLForKey:@"SkipMissingPhoneNumberAlert"];

      if (!v12)
      {
        v6 = 1;
        goto LABEL_27;
      }

      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Bypassing missing phone alert, running in automation", &v15, 2u);
        }
      }
    }

    v6 = 0;
LABEL_27:

    goto LABEL_8;
  }

LABEL_7:
  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)_getCTPhoneNumber
{
  _phoneNumberInfo = [self _phoneNumberInfo];
  if (_phoneNumberInfo)
  {
    _phoneNumberInfo2 = [self _phoneNumberInfo];
    displayPhoneNumber = [_phoneNumberInfo2 displayPhoneNumber];
  }

  else
  {
    displayPhoneNumber = 0;
  }

  return displayPhoneNumber;
}

+ (id)_phoneNumberInfo
{
  v16 = *MEMORY[0x1E69E9840];
  if (_phoneNumberInfo && ([_phoneNumberInfo number], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "length"), v3, v4) || (objc_msgSend(self, "coreTelephonyClient"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "selectedSubscriptionContext"), v6 = objc_claimAutoreleasedReturnValue(), v13 = 0, objc_msgSend(v5, "getPhoneNumber:error:", v6, &v13), v7 = objc_claimAutoreleasedReturnValue(), v8 = v13, v9 = _phoneNumberInfo, _phoneNumberInfo = v7, v9, v6, v5, !v8))
  {
    v11 = _phoneNumberInfo;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v15 = v8;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Error occurred while trying to get CTPhoneNumberInfo - %@", buf, 0xCu);
      }
    }

    v11 = 0;
  }

  return v11;
}

+ (id)coreTelephonyClient
{
  v2 = _coreTelephonyClient;
  if (!_coreTelephonyClient)
  {
    v3 = objc_opt_new();
    v4 = _coreTelephonyClient;
    _coreTelephonyClient = v3;

    v2 = _coreTelephonyClient;
  }

  return v2;
}

+ (id)selectedSubscriptionContext
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = _selectedSubscriptionContext;
  if (_selectedSubscriptionContext)
  {
    goto LABEL_2;
  }

  coreTelephonyClient = [self coreTelephonyClient];
  v13 = 0;
  v5 = [coreTelephonyClient getActiveContexts:&v13];
  v6 = v13;

  if (!v6)
  {
    voicePreferred = [v5 voicePreferred];
    v10 = [v5 findForUuid:voicePreferred];
    context = [v10 context];
    v12 = _selectedSubscriptionContext;
    _selectedSubscriptionContext = context;

    v2 = _selectedSubscriptionContext;
LABEL_2:
    v3 = v2;
    goto LABEL_9;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Error occurred while trying to get active contexts - %@", buf, 0xCu);
    }
  }

  v3 = 0;
LABEL_9:

  return v3;
}

- (void)_didFinishCheckingMissingCarrierSetting
{
  delegate = [(CKAlertUtilities *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CKAlertUtilities *)self delegate];
    [delegate2 didFinishCheckingMissingCarrierSetting];
  }
}

- (CKAlertUtilitiesProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (BOOL)_isNumberEditable
{
  v13 = *MEMORY[0x1E69E9840];
  _phoneNumberInfo = [self _phoneNumberInfo];
  v3 = _phoneNumberInfo;
  if (_phoneNumberInfo)
  {
    isEditable = [_phoneNumberInfo isEditable];
  }

  else
  {
    isEditable = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      isEditable2 = [v3 isEditable];
      v7 = @"NO";
      if (isEditable2)
      {
        v7 = @"YES";
      }

      v9 = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Phone number: %@ - is editable: %@", &v9, 0x16u);
    }
  }

  return isEditable;
}

+ (id)_grabCTSIMStatus
{
  v18 = *MEMORY[0x1E69E9840];
  coreTelephonyClient = [self coreTelephonyClient];
  selectedSubscriptionContext = [self selectedSubscriptionContext];
  v13 = 0;
  v5 = [coreTelephonyClient getSIMStatus:selectedSubscriptionContext error:&v13];
  v6 = v13;

  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v15 = v6;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Error occurred while trying to get SIM Status - %@", buf, 0xCu);
      }
    }

    v9 = 0;
  }

  else
  {
    if (v7)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        selectedSubscriptionContext2 = [self selectedSubscriptionContext];
        *buf = 138412546;
        v15 = v5;
        v16 = 2112;
        v17 = selectedSubscriptionContext2;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Sim status returned: %@ for selected subscription: %@", buf, 0x16u);
      }
    }

    v9 = v5;
  }

  return v9;
}

- (void)_displayMissingInformationAlert:(int64_t)alert
{
  v5 = IMGetCachedDomainBoolForKey();
  if (v5)
  {
    return;
  }

  v6 = MEMORY[0x1E69DC648];
  v7 = CKFrameworkBundle(v5);
  v8 = [v7 localizedStringForKey:@"MMS_INFORMATION_MISSING_CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __52__CKAlertUtilities__displayMissingInformationAlert___block_invoke;
  v28[3] = &unk_1E72EBFE8;
  v28[4] = self;
  v9 = [v6 actionWithTitle:v8 style:1 handler:v28];

  v10 = MEMORY[0x1E69DC648];
  v12 = CKFrameworkBundle(v11);
  v13 = [v12 localizedStringForKey:@"MMS_INFORMATION_MISSING_SETTINGS" value:&stru_1F04268F8 table:@"ChatKit"];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __52__CKAlertUtilities__displayMissingInformationAlert___block_invoke_2;
  v27[3] = &unk_1E72F3888;
  v27[4] = self;
  v27[5] = alert;
  v14 = [v10 actionWithTitle:v13 style:0 handler:v27];

  if (alert == 2)
  {
    v18 = @"MMS_EMAIL_MISSING_BODY";
    v19 = @"MMS_EMAIL_MISSING_TITLE";
    goto LABEL_6;
  }

  v16 = 0;
  v17 = 0;
  if (alert == 1)
  {
    v18 = @"MMS_PHONE_NUMBER_MISSING_BODY";
    v19 = @"MMS_PHONE_NUMBER_MISSING_TITLE";
LABEL_6:
    v20 = CKFrameworkBundle(v15);
    v17 = [v20 localizedStringForKey:v19 value:&stru_1F04268F8 table:@"ChatKit"];

    v22 = CKFrameworkBundle(v21);
    v16 = [v22 localizedStringForKey:v18 value:&stru_1F04268F8 table:@"ChatKit"];
  }

  v23 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v17 message:v16 preferredStyle:1];
  [v23 addAction:v9];
  [v23 addAction:v14];
  delegate = [(CKAlertUtilities *)self delegate];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    delegate2 = [(CKAlertUtilities *)self delegate];
    [delegate2 presentCKAlertController:v23];
  }
}

uint64_t __52__CKAlertUtilities__displayMissingInformationAlert___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _showNetworkPrefs:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _didFinishCheckingMissingCarrierSetting];
}

- (void)_showNetworkPrefs:(int64_t)prefs
{
  if (prefs == 2)
  {
    v3 = @"prefs:root=MESSAGES&path=MMS_EMAIL";
    goto LABEL_5;
  }

  if (prefs == 1)
  {
    v3 = @"prefs:root=Phone&path=MY_NUMBER";
LABEL_5:
    v5 = [MEMORY[0x1E695DFF8] URLWithString:v3];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v5 withOptions:0];
}

- (void)_displayFirstTimeRCSAlert
{
  v3 = MEMORY[0x1E69DC650];
  v4 = CKFrameworkBundle(self);
  v5 = [v4 localizedStringForKey:@"FIRST_TIME_RCS_ALERT_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  v6 = CKFrameworkBundle(v5);
  v7 = [v6 localizedStringForKey:@"FIRST_TIME_RCS_ALERT_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];
  v8 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v9 = MEMORY[0x1E69DC648];
  v11 = CKFrameworkBundle(v10);
  v12 = [v11 localizedStringForKey:@"FIRST_TIME_RCS_ALERT_OKAY" value:&stru_1F04268F8 table:@"ChatKit"];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __45__CKAlertUtilities__displayFirstTimeRCSAlert__block_invoke;
  v21[3] = &unk_1E72EBFE8;
  v21[4] = self;
  v13 = [v9 actionWithTitle:v12 style:0 handler:v21];

  [v8 addAction:v13];
  v14 = [v8 setPreferredAction:v13];
  v15 = MEMORY[0x1E69DC648];
  v16 = CKFrameworkBundle(v14);
  v17 = [v16 localizedStringForKey:@"FIRST_TIME_RCS_ALERT_CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
  v18 = [v15 actionWithTitle:v17 style:1 handler:0];

  [v8 addAction:v18];
  delegate = [(CKAlertUtilities *)self delegate];
  LOBYTE(v15) = objc_opt_respondsToSelector();

  if (v15)
  {
    delegate2 = [(CKAlertUtilities *)self delegate];
    [delegate2 presentCKAlertController:v8];
  }
}

void __45__CKAlertUtilities__displayFirstTimeRCSAlert__block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v22 = a2;
  v3 = [MEMORY[0x1E69A7F68] sharedInstance];
  v4 = [v3 ctSubscriptionInfo];
  v5 = [v4 __im_preferredDataSubscriptionContext];
  v24 = [v5 uuid];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [MEMORY[0x1E69A7F68] sharedInstance];
  v7 = [v6 ctSubscriptionInfo];
  obj = [v7 __im_subscriptionsWithRCSSupport];

  v8 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v8)
  {
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        v12 = [objc_opt_class() coreTelephonyClient];
        v25 = 0;
        [v12 enableLazuli:v11 withError:&v25];
        v13 = v25;

        if (v13 && IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v31 = v13;
            _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Error occurred while trying to enable Lazuli: %@", buf, 0xCu);
          }
        }

        v15 = [v11 uuid];
        if (![v15 compare:v24])
        {
          goto LABEL_14;
        }

        v16 = [MEMORY[0x1E69A7F50] sharedManager];
        if ([v16 enabledByDefaultForContext:v11])
        {
          goto LABEL_13;
        }

        v17 = [MEMORY[0x1E69A7F50] sharedManager];
        v18 = [v17 enabledForContext:v11];

        if ((v18 & 1) == 0)
        {
          v19 = [MEMORY[0x1E69A7F68] sharedInstance];
          v15 = [v19 copyIsoCountryCodeForSubscriptionContext:v11];

          if ([v15 isEqualToString:@"cn"])
          {
            v20 = *(a1 + 32);
            v16 = [v11 label];
            [v20 _displayNonPrimarySIMRCSActivationAlertForCarrierName:v16];
LABEL_13:
          }

LABEL_14:
        }

        ++v10;
      }

      while (v8 != v10);
      v21 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
      v8 = v21;
    }

    while (v21);
  }
}

- (void)_displayNonPrimarySIMRCSActivationAlertForCarrierName:(id)name
{
  nameCopy = name;
  v35 = MEMORY[0x1E69DC650];
  v3 = MEMORY[0x1E696AEC0];
  v4 = CKFrameworkBundle(nameCopy);
  v5 = [v4 localizedStringForKey:@"RCS_INACTIVE_SIM_ACTIVATION_ERROR_TITLE" value:? table:?];
  nameCopy = [v3 stringWithFormat:v5, nameCopy];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v9 = @"\u200F";
  }

  else
  {
    v9 = @"\u200E";
  }

  v10 = [(__CFString *)v9 stringByAppendingString:nameCopy];

  v11 = MEMORY[0x1E696AEC0];
  v13 = CKFrameworkBundle(v12);
  v14 = [v13 localizedStringForKey:@"RCS_INACTIVE_SIM_ACTIVATION_ERROR_TEXT" value:&stru_1F04268F8 table:@"ChatKit"];
  v15 = CKFrameworkBundle(v14);
  v16 = [v15 localizedStringForKey:@"RCS_INACTIVE_SIM_ACTIVATION_ERROR_CELLULAR_DATA_SETTINGS" value:&stru_1F04268F8 table:@"ChatKit"];
  v17 = [v11 stringWithFormat:v14, nameCopy, v16];

  mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection2 = [mEMORY[0x1E69DC668]2 userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection2 == 1)
  {
    v20 = @"\u200F";
  }

  else
  {
    v20 = @"\u200E";
  }

  v21 = [(__CFString *)v20 stringByAppendingString:v17];

  v22 = [v35 alertControllerWithTitle:v10 message:v21 preferredStyle:1];

  v23 = MEMORY[0x1E69DC648];
  v25 = CKFrameworkBundle(v24);
  v26 = [v25 localizedStringForKey:@"RCS_INACTIVE_SIM_ACTIVATION_ERROR_CELLULAR_DATA_SETTINGS" value:&stru_1F04268F8 table:@"ChatKit"];
  v27 = [v23 actionWithTitle:v26 style:0 handler:&__block_literal_global_122];

  [v22 addAction:v27];
  v28 = [v22 setPreferredAction:v27];
  v29 = MEMORY[0x1E69DC648];
  v30 = CKFrameworkBundle(v28);
  v31 = [v30 localizedStringForKey:@"RCS_INACTIVE_SIM_ACTIVATION_ERROR_NOT_NOW" value:&stru_1F04268F8 table:@"ChatKit"];
  v32 = [v29 actionWithTitle:v31 style:1 handler:0];

  [v22 addAction:v32];
  delegate = [(CKAlertUtilities *)self delegate];
  LOBYTE(v31) = objc_opt_respondsToSelector();

  if (v31)
  {
    delegate2 = [(CKAlertUtilities *)self delegate];
    [delegate2 presentCKAlertController:v22];
  }
}

void __74__CKAlertUtilities__displayNonPrimarySIMRCSActivationAlertForCarrierName___block_invoke()
{
  v1 = [MEMORY[0x1E6963608] defaultWorkspace];
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"settings-navigation://com.apple.Settings.Cellular"];
  [v1 openSensitiveURL:v0 withOptions:0 error:0];
}

@end