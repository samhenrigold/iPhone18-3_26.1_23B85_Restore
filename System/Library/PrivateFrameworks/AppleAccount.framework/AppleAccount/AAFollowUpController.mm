@interface AAFollowUpController
- (BOOL)_shouldPostRenewFollowup:(id)followup;
- (BOOL)dismissFollowUpWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)isRenewCredentialsCFUPosted;
- (BOOL)postFollowUpWithIdentifier:(id)identifier userInfo:(id)info error:(id *)error;
- (double)ageOfOldestCustodianCFU;
- (id)_addRecoveryContactAction;
- (id)_addRecoveryKeyActionForIdentifier:(id)identifier;
- (id)_ageMigrationMigrationAction;
- (id)_childOrTeenProtoConnectAction;
- (id)_constructAnalyticsInforFromAccount:(id)account forIdentifier:(id)identifier;
- (id)_createNewRecoveryKeyActionWithUserInfo:(id)info;
- (id)_custodianReviewNotification:(id)notification;
- (id)_filterFollowUpItems:(id)items byIdentifier:(id)identifier byAccount:(id)account;
- (id)_followUpController;
- (id)_followUpForAgeMigrationWithContext:(id)context;
- (id)_followUpForChildOrTeenProtoConnectWithContext:(id)context;
- (id)_followUpForOctagonDistrustedRecoveryKeyWithContext:(id)context;
- (id)_followUpForRecoveryKeyHealingWithContext:(id)context;
- (id)_followUpForRecoveryKeyMismatchWithContext:(id)context;
- (id)_followUpForWalrusRecoveryKeyMismatchWithContext:(id)context;
- (id)_followUpItemForBeneficiaryRemoved:(id)removed;
- (id)_followUpItemForCustodianEmbargo:(id)embargo;
- (id)_followUpItemForCustodianInvitationReminder:(id)reminder;
- (id)_followUpItemForCustodianRemoved:(id)removed;
- (id)_followUpItemForCustodianReview:(id)review;
- (id)_followUpItemForCustodianWalrusNoLiveness:(id)liveness;
- (id)_followUpItemForCustodianWalrusRemoved:(id)removed;
- (id)_followUpItemForRenewCredentials:(id)credentials;
- (id)_followUpItemForStartUsing:(id)using;
- (id)_followUpItemForVerifyTerms:(id)terms;
- (id)_followUpItemForWalrusUserRecoveryFactorsMissing:(id)missing;
- (id)_pendingFollowUpItemsWithIdentifier:(id)identifier forAccount:(id)account;
- (id)_recoveryKeyMismatchOtherOptionsActionWithUserInfo:(id)info;
- (id)_recoveryNotificationWithInfo:(id)info type:(id)type;
- (id)_showAccountRecoveryPane;
- (id)_turnOffRecoveryKeyActionWithUserInfo:(id)info;
- (id)_verifyRecoveryKeyAction;
- (id)_walrusUserRecoveryFactorsMissingNotification;
- (id)creationDateOfOldestFollowUpWithIdentifiers:(id)identifiers;
- (id)followUpItemForIdentifier:(id)identifier userInfo:(id)info;
- (id)pendingCFUTypes;
- (id)pendingFollowUpItemUserInfosWithIdentifier:(id)identifier;
- (void)_dismissFollowUpWithIdentifiers:(id)identifiers completion:(id)completion;
- (void)_pendingFollowUpItemsWithIdentifier:(id)identifier forAccount:(id)account completion:(id)completion;
- (void)dismissFollowUpWithIdentifier:(id)identifier completion:(id)completion;
- (void)dismissFollowUpWithIdentifier:(id)identifier forAccount:(id)account completion:(id)completion;
- (void)dismissFollowUpsForAccount:(id)account identifiers:(id)identifiers completion:(id)completion;
- (void)dismissFollowUpsStartingWithIdentifierPrefix:(id)prefix account:(id)account completion:(id)completion;
- (void)pendingFollowUpItemUserInfosWithIdentifier:(id)identifier completion:(id)completion;
- (void)pendingFollowUpWithIdentifier:(id)identifier completion:(id)completion;
- (void)pendingFollowUpsForAccount:(id)account completion:(id)completion;
- (void)postFollowUpWithIdentifier:(id)identifier forAccount:(id)account userInfo:(id)info completion:(id)completion;
- (void)postFollowUpWithIdentifier:(id)identifier userInfo:(id)info completion:(id)completion;
- (void)reportPostCFUEvent:(id)event;
- (void)sendPostCFUTelemetryEventWithAccount:(id)account forIdentifier:(id)identifier success:(BOOL)success error:(id)error;
@end

@implementation AAFollowUpController

- (id)_followUpController
{
  v2 = [objc_alloc(getFLFollowUpControllerClass()) initWithClientIdentifier:AAFollowUpClientIdentifier[0]];

  return v2;
}

- (id)_followUpItemForStartUsing:(id)using
{
  v18[2] = *MEMORY[0x1E69E9840];
  usingCopy = using;
  v4 = objc_alloc_init(getFLFollowUpActionClass());
  [v4 setIdentifier:AAFollowUpActionPrimary[0]];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FOLLOWUP_START_USING_BUTTON_PRIMARY" value:&stru_1F2EF6280 table:@"Localizable"];
  [v4 setLabel:v6];

  v7 = objc_alloc_init(getFLFollowUpActionClass());
  [v7 setIdentifier:AAFollowUpActionDismiss[0]];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"FOLLOWUP_START_USING_BUTTON_DISMISS" value:&stru_1F2EF6280 table:@"Localizable"];
  [v7 setLabel:v9];

  v10 = objc_alloc_init(getFLFollowUpItemClass());
  v18[0] = v4;
  v18[1] = v7;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  [v10 setActions:v11];

  [v10 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  v12 = getFLGroupIdentifierAccount();
  [v10 setGroupIdentifier:v12];

  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"FOLLOWUP_START_USING_MESSAGE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v10 setInformativeText:v14];

  v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"FOLLOWUP_START_USING_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v10 setTitle:v16];

  [v10 setUniqueIdentifier:AAFollowUpIdentifierStartUsing[0]];
  [v10 setUserInfo:usingCopy];

  return v10;
}

- (id)_followUpItemForVerifyTerms:(id)terms
{
  v47[1] = *MEMORY[0x1E69E9840];
  termsCopy = terms;
  v4 = objc_alloc_init(getFLFollowUpActionClass());
  [v4 setIdentifier:AAFollowUpActionPrimary[0]];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FOLLOWUP_VERIFY_TERMS_BUTTON_PRIMARY" value:&stru_1F2EF6280 table:@"Localizable"];
  [v4 setLabel:v6];

  v7 = objc_alloc_init(getFLFollowUpActionClass());
  [v7 setIdentifier:AAFollowUpActionPrimary[0]];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"FOLLOWUP_VERIFY_TERMS_NOTIFICATION_BUTTON_PRIMARY" value:&stru_1F2EF6280 table:@"Localizable"];
  [v7 setLabel:v9];

  v10 = BYSetupAssistantNeedsToRun();
  v11 = v10;
  if (v10)
  {
    v12 = _AALogSystem(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Surpressing VerifyTerms notification while Setup Assistant is running...", buf, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, @"com.apple.AppleAccount.FollowUp.SetupAssistantExited", _AAFollowUpControllerHandleSetupAssistantExited, *MEMORY[0x1E69CA9B8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v14 = [termsCopy objectForKeyedSubscript:AAFollowUpUserInfoTermsNotificationTitle[0]];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v16 = [v17 localizedStringForKey:@"FOLLOWUP_VERIFY_TERMS_NOTIFICATION_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  }

  v18 = [termsCopy objectForKeyedSubscript:AAFollowUpUserInfoTermsNotificationBody[0]];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = AADeviceLocStringForKey(@"FOLLOWUP_VERIFY_TERMS_NOTIFICATION_MESSAGE");
  }

  v21 = v20;

  v22 = [termsCopy objectForKeyedSubscript:AAFollowUpUserInfoTermsCFUTitle[0]];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v25 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v24 = [v25 localizedStringForKey:@"FOLLOWUP_VERIFY_TERMS_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  }

  v26 = [termsCopy objectForKeyedSubscript:AAFollowUpUserInfoTermsCFUBody[0]];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = AADeviceLocStringForKey(@"FOLLOWUP_VERIFY_TERMS_MESSAGE");
  }

  v29 = v28;

  if (v11)
  {
    v30 = 0;
  }

  else
  {
    v30 = objc_alloc_init(getFLFollowUpNotificationClass());
    [v30 setActivateAction:v7];
    [v30 setFirstNotificationDelay:0.0];
    [v30 setFrequency:86400.0];
    [v30 setInformativeText:v21];
    [v30 setTitle:v16];
    v31 = MEMORY[0x1E695DFD8];
    getFLNotificationOptionForce();
    v45 = v29;
    v32 = termsCopy;
    v33 = v24;
    v34 = v7;
    v35 = v4;
    v36 = v21;
    v38 = v37 = v16;
    v39 = getFLNotificationOptionSpringboardAlert();
    v40 = [v31 setWithObjects:{v38, v39, 0}];
    [v30 setOptions:v40];

    v16 = v37;
    v21 = v36;
    v4 = v35;
    v7 = v34;
    v24 = v33;
    termsCopy = v32;
    v29 = v45;
  }

  v41 = objc_alloc_init(getFLFollowUpItemClass());
  v47[0] = v4;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
  [v41 setActions:v42];

  [v41 setDisplayStyle:1];
  [v41 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  v43 = getFLGroupIdentifierAccount();
  [v41 setGroupIdentifier:v43];

  [v41 setInformativeText:v29];
  [v41 setNotification:v30];
  [v41 setTitle:v24];
  [v41 setUniqueIdentifier:AAFollowUpIdentifierVerifyTerms[0]];
  [v41 setUserInfo:termsCopy];

  return v41;
}

- (id)_followUpItemForRenewCredentials:(id)credentials
{
  v22[1] = *MEMORY[0x1E69E9840];
  credentialsCopy = credentials;
  if ([(AAFollowUpController *)self _shouldPostRenewFollowup:credentialsCopy])
  {
    v5 = objc_alloc_init(getFLFollowUpActionClass());
    [v5 setIdentifier:AAFollowUpActionPrimary[0]];
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"FOLLOWUP_RENEW_CREDENTIALS_PRIMARY" value:&stru_1F2EF6280 table:@"Localizable"];
    [v5 setLabel:v7];

    v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"FOLLOWUP_RENEW_CREDENTIALS_MESSAGE" value:&stru_1F2EF6280 table:@"Localizable"];

    if ([MEMORY[0x1E6985E20] isInternalBuild])
    {
      v10 = [credentialsCopy objectForKeyedSubscript:AAFollowUpUserInfoClientName[0]];
      if (v10)
      {
        v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v12 = [v11 localizedStringForKey:@"FOLLOWUP_RENEW_CREDENTIALS_MESSAGE_BLAME" value:&stru_1F2EF6280 table:@"Localizable"];
        v13 = [v9 stringByAppendingFormat:v12, v10];

        v9 = v13;
      }
    }

    v14 = objc_alloc_init(getFLFollowUpItemClass());
    [v14 setDisplayStyle:0];
    v22[0] = v5;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [v14 setActions:v15];

    [v14 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
    v16 = getFLGroupIdentifierAccount();
    [v14 setGroupIdentifier:v16];

    v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"FOLLOWUP_RENEW_CREDENTIALS_TITLE_REBRAND" value:&stru_1F2EF6280 table:@"Localizable"];
    [v14 setTitle:v18];

    [v14 setInformativeText:v9];
    [v14 setTypeIdentifier:AAFollowUpIdentifierRenewCredentials[0]];
    [v14 setUserInfo:credentialsCopy];
    v19 = AAFollowUpIdentifierRenewCredentials[0];
    v20 = [credentialsCopy objectForKeyedSubscript:AAFollowUpUserInfoAccountIdentifier[0]];
    if (v20)
    {
      [v14 setAccountIdentifier:v20];
    }

    [v14 setUniqueIdentifier:v19];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_followUpItemForCustodianReview:(id)review
{
  v15[1] = *MEMORY[0x1E69E9840];
  reviewCopy = review;
  _showAccountRecoveryPane = [(AAFollowUpController *)self _showAccountRecoveryPane];
  v6 = objc_alloc_init(getFLFollowUpItemClass());
  v15[0] = _showAccountRecoveryPane;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v6 setActions:v7];

  [v6 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REVIEW_MESSAGE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v6 setInformativeText:v9];

  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REVIEW_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v6 setTitle:v11];

  [v6 setUniqueIdentifier:AAFollowUpIdentifierCustodianReview[0]];
  [v6 setUserInfo:reviewCopy];

  [v6 setDisplayStyle:2];
  v12 = [(AAFollowUpController *)self _custodianReviewNotification:_showAccountRecoveryPane];
  [v6 setNotification:v12];

  v13 = getFLGroupIdentifierAccount();
  [v6 setGroupIdentifier:v13];

  return v6;
}

- (id)_custodianReviewNotification:(id)notification
{
  notificationCopy = notification;
  v4 = objc_alloc_init(getFLFollowUpNotificationClass());
  [v4 setActivateAction:notificationCopy];

  [v4 setFirstNotificationDelay:0.0];
  [v4 setFrequency:86400.0];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REVIEW_MESSAGE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v4 setInformativeText:v6];

  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REVIEW_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v4 setTitle:v8];

  v9 = MEMORY[0x1E695DFD8];
  v10 = getFLNotificationOptionForce();
  v11 = getFLNotificationOptionLockscreen();
  v12 = [v9 setWithObjects:{v10, v11, 0}];
  [v4 setOptions:v12];

  return v4;
}

- (id)_showAccountRecoveryPane
{
  v2 = objc_alloc_init(getFLFollowUpActionClass());
  [v2 setIdentifier:AAFollowUpActionPrimary[0]];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REVIEW_BUTTON_PRIMARY" value:&stru_1F2EF6280 table:@"Localizable"];
  [v2 setLabel:v4];

  return v2;
}

- (id)_followUpItemForCustodianInvitationReminder:(id)reminder
{
  v23[1] = *MEMORY[0x1E69E9840];
  reminderCopy = reminder;
  v4 = objc_alloc_init(getFLFollowUpActionClass());
  [v4 setIdentifier:AAFollowUpActionPrimary[0]];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_INVITATION_REMINDER_BUTTON_PRIMARY" value:&stru_1F2EF6280 table:@"Localizable"];
  [v4 setLabel:v6];

  v21 = [reminderCopy objectForKeyedSubscript:AAFollowUpTrustedContactName[0]];
  v22 = [reminderCopy objectForKeyedSubscript:AAFollowUpTrustedContactID[0]];
  v7 = _AALogSystem(v22);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [AAFollowUpController _followUpItemForCustodianInvitationReminder:v4];
  }

  v8 = objc_alloc_init(getFLFollowUpItemClass());
  v23[0] = v4;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  [v8 setActions:v9];

  [v8 setDisplayStyle:1];
  [v8 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  v10 = getFLGroupIdentifierAccount();
  [v8 setGroupIdentifier:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_INVITATION_REMINDER_MESSAGE" value:&stru_1F2EF6280 table:@"Localizable"];
  v14 = [v11 stringWithFormat:v13, v21];
  [v8 setInformativeText:v14];

  v15 = MEMORY[0x1E696AEC0];
  v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_INVITATION_REMINDER_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  v18 = [v15 stringWithFormat:v17, v21];
  [v8 setTitle:v18];

  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", AAFollowUpIdentifierCustodianInvitationReminder[0], v22];
  [v8 setUniqueIdentifier:v19];

  [v8 setUserInfo:reminderCopy];

  return v8;
}

- (id)_followUpItemForCustodianWalrusRemoved:(id)removed
{
  v50[1] = *MEMORY[0x1E69E9840];
  removedCopy = removed;
  v3 = objc_alloc_init(getFLFollowUpActionClass());
  [v3 setIdentifier:AAFollowUpActionPrimary[0]];
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v5 = [v4 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_BUTTON_PRIMARY" value:0 table:@"Localizable-Walrus"];
  [v3 setLabel:v5];

  v6 = objc_alloc_init(getFLFollowUpActionClass());
  [v6 setIdentifier:AAFollowUpActionDismiss[0]];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v8 = [v7 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_BUTTON_DISMISS" value:0 table:@"Localizable-Walrus"];
  v44 = v6;
  [v6 setLabel:v8];

  v9 = [removedCopy objectForKeyedSubscript:AAFollowUpTrustedContactName[0]];
  v10 = objc_alloc_init(getFLFollowUpNotificationClass());
  v45 = v3;
  [v10 setActivateAction:v3];
  [v10 setFirstNotificationDelay:0.0];
  [v10 setFrequency:86400.0];
  v11 = MEMORY[0x1E696AEC0];
  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v13 = [v12 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_NOTIFICATION_MESSAGE" value:0 table:@"Localizable-Walrus"];
  v14 = [v11 stringWithFormat:v13, v9];
  [v10 setInformativeText:v14];

  v15 = MEMORY[0x1E696AEC0];
  v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v17 = [v16 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_NOTIFICATION_TITLE_IOS" value:0 table:@"Localizable-Walrus"];
  v18 = [v15 stringWithFormat:v17, v9];
  [v10 setTitle:v18];

  v19 = MEMORY[0x1E695DFD8];
  v20 = getFLNotificationOptionForce();
  v21 = getFLNotificationOptionSpringboardAlert();
  v22 = [v19 setWithObjects:{v20, v21, 0}];
  [v10 setOptions:v22];

  v23 = objc_alloc_init(getFLFollowUpActionClass());
  [v23 setIdentifier:AAFollowUpActionPrimary[0]];
  v49 = @"type";
  v50[0] = @"addRecoveryContact";
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
  [v23 setUserInfo:v24];

  v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v26 = [v25 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_ADD_RECOVERY_CONTACT" value:0 table:@"Localizable-Walrus"];
  [v23 setLabel:v26];

  v27 = objc_alloc_init(getFLFollowUpActionClass());
  [v27 setIdentifier:AAFollowUpActionPrimary[0]];
  v47 = @"type";
  v48 = @"addRecoveryKey";
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  [v27 setUserInfo:v28];

  v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v30 = [v29 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_SETUP_RECOVERY_KEY" value:0 table:@"Localizable-Walrus"];
  [v27 setLabel:v30];

  v31 = objc_alloc_init(getFLFollowUpItemClass());
  v46[0] = v23;
  v46[1] = v27;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  [v31 setActions:v32];

  v33 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v34 = [v33 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_NOTIFICATION_TITLE_IOS" value:0 table:@"Localizable-Walrus"];
  [v31 setTitle:v34];

  [v31 setDisplayStyle:1];
  [v31 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  v35 = getFLGroupIdentifierAccount();
  [v31 setGroupIdentifier:v35];

  v36 = MEMORY[0x1E696AEC0];
  v37 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v38 = [v37 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_MESSAGE" value:0 table:@"Localizable-Walrus"];
  v39 = [v36 stringWithFormat:v38, v9];
  [v31 setInformativeText:v39];

  [v31 setNotification:v10];
  dictionary = [removedCopy mutableCopy];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  [v31 setUniqueIdentifier:AAFollowUpIdentifierCustodianWalrusRemoved[0]];
  v41 = [dictionary copy];
  [v31 setUserInfo:v41];

  return v31;
}

- (id)_walrusUserRecoveryFactorsMissingNotification
{
  v2 = objc_alloc_init(getFLFollowUpActionClass());
  [v2 setIdentifier:AAFollowUpActionPrimary[0]];
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v4 = [v3 localizedStringForKey:@"FOLLOWUP_RECOVERY_FACTORS_MISSING_BUTTON_PRIMARY" value:0 table:@"Localizable-Walrus"];
  [v2 setLabel:v4];

  v5 = objc_alloc_init(getFLFollowUpActionClass());
  [v5 setIdentifier:AAFollowUpActionDismiss[0]];
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v7 = [v6 localizedStringForKey:@"FOLLOWUP_RECOVERY_FACTORS_MISSING_BUTTON_DISMISS" value:0 table:@"Localizable-Walrus"];
  [v5 setLabel:v7];

  v8 = objc_alloc_init(getFLFollowUpNotificationClass());
  [v8 setActivateAction:v2];
  [v8 setClearAction:v5];
  [v8 setFirstNotificationDelay:0.0];
  [v8 setFrequency:86400.0];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v10 = [v9 localizedStringForKey:@"FOLLOWUP_RECOVERY_FACTORS_MISSING_NOTIFICATION_MESSAGE" value:0 table:@"Localizable-Walrus"];
  [v8 setInformativeText:v10];

  v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v12 = [v11 localizedStringForKey:@"FOLLOWUP_RECOVERY_FACTORS_MISSING_NOTIFICATION_TITLE_IOS" value:0 table:@"Localizable-Walrus"];
  [v8 setTitle:v12];

  v13 = MEMORY[0x1E695DFD8];
  v14 = getFLNotificationOptionForce();
  v15 = getFLNotificationOptionSpringboardAlert();
  v16 = [v13 setWithObjects:{v14, v15, 0}];
  [v8 setOptions:v16];

  return v8;
}

- (id)_addRecoveryContactAction
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(getFLFollowUpActionClass());
  [v2 setIdentifier:AAFollowUpActionPrimary[0]];
  v7 = @"type";
  v8[0] = @"addRecoveryContact";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 setUserInfo:v3];

  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v5 = [v4 localizedStringForKey:@"FOLLOWUP_RECOVERY_FACTORS_MISSING_ADD_RECOVERY_CONTACT" value:0 table:@"Localizable-Walrus"];
  [v2 setLabel:v5];

  return v2;
}

- (id)_addRecoveryKeyActionForIdentifier:(id)identifier
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(getFLFollowUpActionClass());
  [v3 setIdentifier:AAFollowUpActionPrimary[0]];
  v8 = @"type";
  v9[0] = @"addRecoveryKey";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v3 setUserInfo:v4];

  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v6 = [v5 localizedStringForKey:@"FOLLOWUP_RECOVERY_FACTORS_MISSING_SETUP_RECOVERY_KEY" value:0 table:@"Localizable-Walrus"];
  [v3 setLabel:v6];

  return v3;
}

- (id)_verifyRecoveryKeyAction
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(getFLFollowUpActionClass());
  [v2 setIdentifier:AAFollowUpActionPrimary[0]];
  v7 = @"type";
  v8[0] = @"verifyRecoveryKey";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 setUserInfo:v3];

  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"RECOVERY_KEY_REPAIR_PRIMARY_ACTION" value:&stru_1F2EF6280 table:@"Localizable"];
  [v2 setLabel:v5];

  return v2;
}

- (id)_childOrTeenProtoConnectAction
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(getFLFollowUpActionClass());
  [v2 setIdentifier:AAFollowUpActionPrimary[0]];
  v7 = @"type";
  v8[0] = @"childOrTeenProtoConnect";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 setUserInfo:v3];

  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v5 = [v4 localizedStringForKey:@"CONNECT_TO_FAMILY_CFU_PRIMARY_ACTION" value:0 table:@"Localizable-AgeAttestation"];
  [v2 setLabel:v5];

  return v2;
}

- (id)_ageMigrationMigrationAction
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(getFLFollowUpActionClass());
  [v2 setIdentifier:AAFollowUpActionPrimary[0]];
  v7 = @"type";
  v8[0] = @"ageMigrationMigration";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 setUserInfo:v3];

  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v5 = [v4 localizedStringForKey:@"CONNECT_TO_FAMILY_CFU_PRIMARY_ACTION" value:0 table:@"Localizable-AgeMigration"];
  [v2 setLabel:v5];

  return v2;
}

- (id)_recoveryKeyMismatchOtherOptionsActionWithUserInfo:(id)info
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(getFLFollowUpActionClass());
  [v3 setIdentifier:AAFollowUpActionPrimary[0]];
  v8 = @"type";
  v9[0] = @"recoveryKeyMismatchOtherOption";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v3 setUserInfo:v4];

  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"RECOVERY_KEY_REPAIR_SECONDARY_ACTION" value:&stru_1F2EF6280 table:@"Localizable"];
  [v3 setLabel:v6];

  return v3;
}

- (id)_followUpItemForWalrusUserRecoveryFactorsMissing:(id)missing
{
  v16[2] = *MEMORY[0x1E69E9840];
  missingCopy = missing;
  _walrusUserRecoveryFactorsMissingNotification = [(AAFollowUpController *)self _walrusUserRecoveryFactorsMissingNotification];
  v6 = objc_alloc_init(getFLFollowUpItemClass());
  _addRecoveryContactAction = [(AAFollowUpController *)self _addRecoveryContactAction];
  v16[0] = _addRecoveryContactAction;
  v8 = [(AAFollowUpController *)self _addRecoveryKeyActionForIdentifier:AAFollowUpIdentifierWalrusUserRecoveryFactorsMissing[0]];
  v16[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  [v6 setActions:v9];

  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v11 = [v10 localizedStringForKey:@"FOLLOWUP_RECOVERY_FACTORS_MISSING_NOTIFICATION_TITLE_IOS" value:0 table:@"Localizable-Walrus"];
  [v6 setTitle:v11];

  [v6 setDisplayStyle:0];
  [v6 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  v12 = getFLGroupIdentifierAccount();
  [v6 setGroupIdentifier:v12];

  v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v14 = [v13 localizedStringForKey:@"FOLLOWUP_RECOVERY_FACTORS_MISSING_MESSAGE" value:0 table:@"Localizable-Walrus"];
  [v6 setInformativeText:v14];

  [v6 setNotification:_walrusUserRecoveryFactorsMissingNotification];
  [v6 setUniqueIdentifier:AAFollowUpIdentifierWalrusUserRecoveryFactorsMissing[0]];
  [v6 setUserInfo:missingCopy];

  return v6;
}

- (id)_followUpItemForCustodianRemoved:(id)removed
{
  v39[2] = *MEMORY[0x1E69E9840];
  removedCopy = removed;
  v3 = objc_alloc_init(getFLFollowUpActionClass());
  [v3 setIdentifier:AAFollowUpActionPrimary[0]];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_BUTTON_PRIMARY" value:? table:?];
  v37 = v3;
  [v3 setLabel:v5];

  v6 = [removedCopy objectForKeyedSubscript:AAFollowUpTrustedContactName[0]];
  v7 = objc_alloc_init(getFLFollowUpNotificationClass());
  [v7 setActivateAction:v3];
  [v7 setFirstNotificationDelay:0.0];
  [v7 setFrequency:86400.0];
  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_NOTIFICATION_MESSAGE" value:&stru_1F2EF6280 table:@"Localizable"];
  v36 = v6;
  v11 = [v8 stringWithFormat:v10, v6];
  [v7 setInformativeText:v11];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_NOTIFICATION_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  v15 = [v12 stringWithFormat:v14, v6];
  [v7 setTitle:v15];

  v16 = MEMORY[0x1E695DFD8];
  v17 = getFLNotificationOptionForce();
  v18 = getFLNotificationOptionSpringboardAlert();
  v19 = [v16 setWithObjects:{v17, v18, 0}];
  [v7 setOptions:v19];

  v20 = objc_alloc_init(getFLFollowUpActionClass());
  [v20 setIdentifier:AAFollowUpActionPrimary[0]];
  v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_BUTTON_PRIMARY" value:&stru_1F2EF6280 table:@"Localizable"];
  [v20 setLabel:v22];

  v23 = objc_alloc_init(getFLFollowUpActionClass());
  [v23 setIdentifier:AAFollowUpActionDismiss[0]];
  v24 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_BUTTON_DISMISS" value:&stru_1F2EF6280 table:@"Localizable"];
  [v23 setLabel:v25];

  v26 = objc_alloc_init(getFLFollowUpItemClass());
  v39[0] = v20;
  v39[1] = v23;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  [v26 setActions:v27];

  [v26 setDisplayStyle:1];
  [v26 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  v28 = getFLGroupIdentifierAccount();
  [v26 setGroupIdentifier:v28];

  v29 = MEMORY[0x1E696AEC0];
  v30 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v31 = [v30 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_MESSAGE" value:&stru_1F2EF6280 table:@"Localizable"];
  v32 = [v29 stringWithFormat:v31, v36];
  [v26 setInformativeText:v32];

  [v26 setNotification:v7];
  v33 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v34 = [v33 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v26 setTitle:v34];

  [v26 setUniqueIdentifier:AAFollowUpIdentifierCustodianRemoved[0]];
  [v26 setUserInfo:removedCopy];

  return v26;
}

- (id)_followUpItemForCustodianWalrusNoLiveness:(id)liveness
{
  v44[2] = *MEMORY[0x1E69E9840];
  livenessCopy = liveness;
  v3 = objc_alloc_init(getFLFollowUpActionClass());
  [v3 setIdentifier:AAFollowUpActionPrimary[0]];
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v5 = [v4 localizedStringForKey:@"FOLLOWUP_LAST_CUSTODIAN_NO_LIVENESS_BUTTON_PRIMARY" value:0 table:@"Localizable-Walrus"];
  [v3 setLabel:v5];

  v6 = objc_alloc_init(getFLFollowUpActionClass());
  [v6 setIdentifier:AAFollowUpActionDismiss[0]];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v8 = [v7 localizedStringForKey:@"FOLLOWUP_LAST_CUSTODIAN_NO_LIVENESS_BUTTON_SECONDARY" value:0 table:@"Localizable-Walrus"];
  v42 = v6;
  [v6 setLabel:v8];

  v9 = [livenessCopy objectForKeyedSubscript:AAFollowUpTrustedContactName[0]];
  v10 = objc_alloc_init(getFLFollowUpNotificationClass());
  v43 = v3;
  [v10 setActivateAction:v3];
  [v10 setFirstNotificationDelay:0.0];
  [v10 setFrequency:86400.0];
  v11 = MEMORY[0x1E696AEC0];
  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v13 = [v12 localizedStringForKey:@"FOLLOWUP_LAST_CUSTODIAN_NO_LIVENESS_BUTTON_NOTIFICATION_MESSAGE" value:0 table:@"Localizable-Walrus"];
  v14 = [v11 stringWithFormat:v13, v9];
  [v10 setInformativeText:v14];

  v15 = MEMORY[0x1E696AEC0];
  v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v17 = [v16 localizedStringForKey:@"FOLLOWUP_LAST_CUSTODIAN_NO_LIVENESS_BUTTON_NOTIFICATION_TITLE" value:0 table:@"Localizable-Walrus"];
  v18 = [v15 stringWithFormat:v17, v9];
  [v10 setTitle:v18];

  v19 = MEMORY[0x1E695DFD8];
  v20 = getFLNotificationOptionForce();
  v21 = getFLNotificationOptionSpringboardAlert();
  v22 = [v19 setWithObjects:{v20, v21, 0}];
  [v10 setOptions:v22];

  v23 = objc_alloc_init(getFLFollowUpActionClass());
  [v23 setIdentifier:AAFollowUpActionPrimary[0]];
  v24 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v25 = [v24 localizedStringForKey:@"FOLLOWUP_LAST_CUSTODIAN_NO_LIVENESS_UPDATE_RECOVERY_CONTACT" value:0 table:@"Localizable-Walrus"];
  [v23 setLabel:v25];

  v26 = objc_alloc_init(getFLFollowUpActionClass());
  [v26 setIdentifier:AAFollowUpActionDismiss[0]];
  v27 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v28 = [v27 localizedStringForKey:@"FOLLOWUP_LAST_CUSTODIAN_NO_LIVENESS_NOT_NOW" value:0 table:@"Localizable-Walrus"];
  [v26 setLabel:v28];

  v29 = objc_alloc_init(getFLFollowUpItemClass());
  v44[0] = v23;
  v44[1] = v26;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  [v29 setActions:v30];

  [v29 setDisplayStyle:1];
  [v29 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  v31 = getFLGroupIdentifierAccount();
  [v29 setGroupIdentifier:v31];

  v32 = MEMORY[0x1E696AEC0];
  v33 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v34 = [v33 localizedStringForKey:@"FOLLOWUP_LAST_CUSTODIAN_NO_LIVENESS_MESSAGE" value:0 table:@"Localizable-Walrus"];
  v35 = [v32 stringWithFormat:v34, v9];
  [v29 setInformativeText:v35];

  [v29 setNotification:v10];
  v36 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v37 = [v36 localizedStringForKey:@"FOLLOWUP_LAST_CUSTODIAN_NO_LIVENESS_TITLE" value:0 table:@"Localizable-Walrus"];
  [v29 setTitle:v37];

  dictionary = [livenessCopy mutableCopy];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  [v29 setUniqueIdentifier:AAFollowUpIdentifierCustodianWalrusNoLiveness[0]];
  v39 = [dictionary copy];
  [v29 setUserInfo:v39];

  return v29;
}

- (id)_followUpItemForBeneficiaryRemoved:(id)removed
{
  v37[2] = *MEMORY[0x1E69E9840];
  removedCopy = removed;
  v3 = objc_alloc_init(getFLFollowUpActionClass());
  [v3 setIdentifier:AAFollowUpActionPrimary[0]];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"FOLLOWUP_BENEFICIARY_REMOVED_BUTTON_PRIMARY" value:? table:?];
  [v3 setLabel:v5];

  v35 = [removedCopy objectForKeyedSubscript:AAFollowUpTrustedContactName[0]];
  v6 = objc_alloc_init(getFLFollowUpNotificationClass());
  [v6 setActivateAction:v3];
  [v6 setFirstNotificationDelay:0.0];
  [v6 setFrequency:86400.0];
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"FOLLOWUP_BENEFICIARY_REMOVED_NOTIFICATION_MESSAGE" value:&stru_1F2EF6280 table:@"Localizable"];
  v10 = [v7 stringWithFormat:v9, v35];
  [v6 setInformativeText:v10];

  v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"FOLLOWUP_BENEFICIARY_REMOVED_NOTIFICATION_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v6 setTitle:v12];

  v13 = MEMORY[0x1E695DFD8];
  v14 = getFLNotificationOptionForce();
  v15 = getFLNotificationOptionSpringboardAlert();
  v16 = [v13 setWithObjects:{v14, v15, 0}];
  [v6 setOptions:v16];

  v17 = objc_alloc_init(getFLFollowUpActionClass());
  [v17 setIdentifier:AAFollowUpActionPrimary[0]];
  v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"FOLLOWUP_BENEFICIARY_REMOVED_BUTTON_PRIMARY" value:&stru_1F2EF6280 table:@"Localizable"];
  [v17 setLabel:v19];

  v20 = objc_alloc_init(getFLFollowUpActionClass());
  [v20 setIdentifier:AAFollowUpActionDismiss[0]];
  v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"FOLLOWUP_BENEFICIARY_REMOVED_BUTTON_DISMISS" value:&stru_1F2EF6280 table:@"Localizable"];
  [v20 setLabel:v22];

  v23 = objc_alloc_init(getFLFollowUpItemClass());
  v37[0] = v17;
  v37[1] = v20;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  [v23 setActions:v24];

  [v23 setDisplayStyle:1];
  [v23 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  v25 = getFLGroupIdentifierAccount();
  [v23 setGroupIdentifier:v25];

  v26 = MEMORY[0x1E696AEC0];
  v27 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v28 = [v27 localizedStringForKey:@"FOLLOWUP_BENEFICIARY_REMOVED_MESSAGE" value:&stru_1F2EF6280 table:@"Localizable"];
  v29 = [v26 stringWithFormat:v28, v35];
  [v23 setInformativeText:v29];

  [v23 setNotification:v6];
  v30 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v31 = [v30 localizedStringForKey:@"FOLLOWUP_BENEFICIARY_REMOVED_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v23 setTitle:v31];

  [v23 setUniqueIdentifier:AAFollowUpIdentifierBeneficiaryRemoved[0]];
  [v23 setUserInfo:removedCopy];

  v33 = _AALogSystem(v32);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    [AAFollowUpController _followUpItemForBeneficiaryRemoved:v23];
  }

  return v23;
}

- (id)_followUpItemForCustodianEmbargo:(id)embargo
{
  embargoCopy = embargo;
  v5 = _AALogSystem(embargoCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AAFollowUpController _followUpItemForCustodianEmbargo:];
  }

  if (embargoCopy)
  {
    v7 = [embargoCopy objectForKeyedSubscript:AAFollowUpUserInfoNotificationInfo[0]];
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = [v7 objectForKeyedSubscript:AAFollowUpUserInfoNotificationButtonTitle[0]];
    v10 = objc_alloc_init(getFLFollowUpActionClass());
    [v10 setIdentifier:AAFollowUpActionPrimary[0]];
    v20 = v9;
    [v10 setLabel:v9];
    [v8 addObject:v10];
    v11 = [embargoCopy objectForKeyedSubscript:AAFollowUpUserInfoNotificationAltButtonTitle[0]];
    if ([v11 length] >= 2)
    {
      v12 = objc_alloc_init(getFLFollowUpActionClass());
      [v12 setLabel:v11];
      [v12 setIdentifier:AAFollowUpActionDismiss[0]];
      [v8 addObject:v12];
    }

    v13 = [embargoCopy objectForKeyedSubscript:AAFollowUpUserInfoCFUType[0]];
    v14 = [(AAFollowUpController *)self _recoveryNotificationWithInfo:v7 type:v13];
    [v14 setActivateAction:v10];
    v15 = objc_alloc_init(getFLFollowUpItemClass());
    v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_EMBARGO_TITLE_REBRAND" value:&stru_1F2EF6280 table:@"Localizable"];
    [v15 setTitle:v17];

    [v15 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
    v18 = getFLGroupIdentifierAccount();
    [v15 setGroupIdentifier:v18];

    [v15 setNotification:v14];
    [v15 setActions:v8];
    [v15 setUniqueIdentifier:AAFollowUpIdentifierCustodianEmbargo[0]];
    [v15 setUserInfo:embargoCopy];
    [v15 setDisplayStyle:2];
  }

  else
  {
    v7 = _AALogSystem(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController _followUpItemForCustodianEmbargo:];
    }

    v15 = 0;
  }

  return v15;
}

- (id)_followUpForRecoveryKeyHealingWithContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  if (contextCopy)
  {
    v6 = [contextCopy objectForKeyedSubscript:AAFollowUpUserInfoHasWalrusEnabled[0]];
    v7 = [v5 objectForKeyedSubscript:AAFollowUpUserInfoHasDistrustedRK[0]];
    v8 = _AALogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [AAFollowUpController _followUpForRecoveryKeyHealingWithContext:];
    }

    if ([v7 BOOLValue])
    {
      v9 = [(AAFollowUpController *)self _followUpForOctagonDistrustedRecoveryKeyWithContext:v5];
    }

    else
    {
      if ([v6 BOOLValue])
      {
        [(AAFollowUpController *)self _followUpForWalrusRecoveryKeyMismatchWithContext:v5];
      }

      else
      {
        [(AAFollowUpController *)self _followUpForRecoveryKeyMismatchWithContext:v5];
      }
      v9 = ;
    }

    v10 = v9;
  }

  else
  {
    v6 = _AALogSystem(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController _followUpForRecoveryKeyHealingWithContext:];
    }

    v10 = 0;
  }

  return v10;
}

- (id)_followUpForOctagonDistrustedRecoveryKeyWithContext:(id)context
{
  v20[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = objc_alloc_init(getFLFollowUpItemClass());
  [v5 setUniqueIdentifier:AAFollowUpIdentifierRecoveryKeyMismatch[0]];
  v6 = [contextCopy objectForKeyedSubscript:AAFollowUpUserInfoAccountIdentifier[0]];
  if (v6)
  {
    [v5 setAccountIdentifier:v6];
  }

  [v5 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  [v5 setTypeIdentifier:AAFollowUpIdentifierRecoveryKeyMismatch[0]];
  [v5 setUserInfo:contextCopy];
  v7 = objc_alloc_init(getFLFollowUpNotificationClass());
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"DISTRUSTED_RECOVERY_KEY_REPAIR_NOTIFICATION_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v7 setTitle:v9];

  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"DISTRUSTED_RECOVERY_KEY_REPAIR_NOTIFICATION_INFORMATIVE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v7 setInformativeText:v11];

  [v5 setNotification:v7];
  v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"DISTRUSTED_RECOVERY_KEY_REPAIR_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v5 setTitle:v13];

  v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"DISTRUSTED_RECOVERY_KEY_REPAIR_INFORMATIVE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v5 setInformativeText:v15];

  v16 = [(AAFollowUpController *)self _turnOffRecoveryKeyActionWithUserInfo:contextCopy];
  v17 = [(AAFollowUpController *)self _createNewRecoveryKeyActionWithUserInfo:contextCopy];
  v20[0] = v16;
  v20[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  [v5 setActions:v18];

  return v5;
}

- (id)_turnOffRecoveryKeyActionWithUserInfo:(id)info
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(getFLFollowUpActionClass());
  v8 = @"type";
  v9[0] = @"turnOffRecoveryKey";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v3 setUserInfo:v4];

  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"DISTRUSTED_RECOVERY_KEY_PRIMARY_ACTION" value:&stru_1F2EF6280 table:@"Localizable"];
  [v3 setLabel:v6];

  return v3;
}

- (id)_createNewRecoveryKeyActionWithUserInfo:(id)info
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(getFLFollowUpActionClass());
  v8 = @"type";
  v9[0] = @"addRecoveryKey";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v3 setUserInfo:v4];

  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"DISTRUSTED_RECOVERY_KEY_SECONDARY_ACTION" value:&stru_1F2EF6280 table:@"Localizable"];
  [v3 setLabel:v6];

  return v3;
}

- (id)_followUpForRecoveryKeyMismatchWithContext:(id)context
{
  v23[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v22 = [contextCopy objectForKeyedSubscript:AAFollowUpUserInfoHasRecoveryContact[0]];
  v5 = objc_alloc_init(getFLFollowUpItemClass());
  [v5 setUniqueIdentifier:AAFollowUpIdentifierRecoveryKeyMismatch[0]];
  v6 = [contextCopy objectForKeyedSubscript:AAFollowUpUserInfoAccountIdentifier[0]];
  if (v6)
  {
    [v5 setAccountIdentifier:v6];
  }

  [v5 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  [v5 setTypeIdentifier:AAFollowUpIdentifierRecoveryKeyMismatch[0]];
  [v5 setUserInfo:contextCopy];
  notification = [v5 notification];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"RECOVERY_KEY_REPAIR_NOTIFICATION_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  [notification setTitle:v9];

  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"RECOVERY_KEY_REPAIR_FOLLOWUP_NOTIFICATION_INFORMATIVE" value:&stru_1F2EF6280 table:@"Localizable"];
  [notification setInformativeText:v11];

  v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"RECOVERY_KEY_REPAIR_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v5 setTitle:v13];

  LODWORD(v12) = [v22 BOOLValue];
  v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v15 = v14;
  if (v12)
  {
    v16 = @"RECOVERY_KEY_REPAIR_INFORMATIVE_HAS_RC";
  }

  else
  {
    v16 = @"RECOVERY_KEY_REPAIR_INFORMATIVE_NO_RC";
  }

  v17 = [v14 localizedStringForKey:v16 value:&stru_1F2EF6280 table:@"Localizable"];
  [v5 setInformativeText:v17];

  _verifyRecoveryKeyAction = [(AAFollowUpController *)self _verifyRecoveryKeyAction];
  v19 = [(AAFollowUpController *)self _recoveryKeyMismatchOtherOptionsActionWithUserInfo:contextCopy];
  v23[0] = _verifyRecoveryKeyAction;
  v23[1] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  [v5 setActions:v20];

  return v5;
}

- (id)_followUpForWalrusRecoveryKeyMismatchWithContext:(id)context
{
  v46[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = objc_alloc_init(getFLFollowUpItemClass());
  [v5 setUniqueIdentifier:AAFollowUpIdentifierRecoveryKeyMismatch[0]];
  v6 = [contextCopy objectForKeyedSubscript:AAFollowUpUserInfoAccountIdentifier[0]];
  if (v6)
  {
    [v5 setAccountIdentifier:v6];
  }

  [v5 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  [v5 setTypeIdentifier:AAFollowUpIdentifierRecoveryKeyMismatch[0]];
  [v5 setUserInfo:contextCopy];
  [v5 setDisplayStyle:4];
  _verifyRecoveryKeyAction = [(AAFollowUpController *)self _verifyRecoveryKeyAction];
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  [v8 localizedStringForKey:@"RECOVERY_KEY_REPAIR_ADP_VERIFY_RK_ACTION" value:0 table:@"Localizable-Walrus"];
  selfCopy = self;
  selfCopy2 = self;
  v10 = v42 = _verifyRecoveryKeyAction;
  [_verifyRecoveryKeyAction setLabel:v10];

  v45 = contextCopy;
  v11 = [(AAFollowUpController *)selfCopy _recoveryKeyMismatchOtherOptionsActionWithUserInfo:contextCopy];
  v44 = [contextCopy objectForKeyedSubscript:AAFollowUpUserInfoHasRecoveryContact[0]];
  bOOLValue = [v44 BOOLValue];
  v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v14 = v13;
  if (bOOLValue)
  {
    v15 = @"RECOVERY_KEY_REPAIR_ADP_HAS_RC_TITLE";
  }

  else
  {
    v15 = @"RECOVERY_KEY_REPAIR_ADP_NO_RC_TITLE";
  }

  if (bOOLValue)
  {
    v16 = @"RECOVERY_KEY_REPAIR_ADP_INFORMATIVE_HAS_RC";
  }

  else
  {
    v16 = @"RECOVERY_KEY_REPAIR_ADP_INFORMATIVE_NO_RC";
  }

  if (bOOLValue)
  {
    v17 = @"RECOVERY_KEY_REPAIR_ADP_OTHER_OPTIONS_ACTION";
  }

  else
  {
    v17 = @"RECOVERY_KEY_REPAIR_ADP_ADD_NEW_RECOVER_METHOD_ACTION";
  }

  [v13 localizedStringForKey:v15 value:0 table:@"Localizable-Walrus"];
  v18 = v43 = v6;
  [v5 setTitle:v18];

  v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v20 = [v19 localizedStringForKey:v16 value:0 table:@"Localizable-Walrus"];
  [v5 setInformativeText:v20];

  v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v22 = [v21 localizedStringForKey:v17 value:0 table:@"Localizable-Walrus"];
  [v11 setLabel:v22];

  v46[0] = _verifyRecoveryKeyAction;
  v46[1] = v11;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  [v5 setActions:v23];

  notification = [v5 notification];
  v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v26 = [v25 localizedStringForKey:@"RECOVERY_KEY_REPAIR_ADP_NOTIFICATION_TITLE" value:0 table:@"Localizable-Walrus"];
  [notification setTitle:v26];

  v27 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v28 = [v27 localizedStringForKey:@"RECOVERY_KEY_REPAIR_ADP_FOLLOWUP_NOTIFICATION_INFORMATIVE" value:0 table:@"Localizable-Walrus"];
  [notification setInformativeText:v28];

  _verifyRecoveryKeyAction2 = [(AAFollowUpController *)selfCopy2 _verifyRecoveryKeyAction];
  v30 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v31 = [v30 localizedStringForKey:@"RECOVERY_KEY_REPAIR_ADP_FOLLOWUP_NOTIFICATION_PRIMARY_ACTIVATE_LABEL" value:0 table:@"Localizable-Walrus"];
  [_verifyRecoveryKeyAction2 setLabel:v31];

  [notification setActivateAction:_verifyRecoveryKeyAction2];
  v32 = objc_alloc_init(getFLFollowUpActionClass());
  v33 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v34 = [v33 localizedStringForKey:@"RECOVERY_KEY_REPAIR_ADP_FOLLOWUP_NOTIFICATION_SECONDARY_ACTIVATE_LABEL" value:0 table:@"Localizable-Walrus"];
  [v32 setLabel:v34];

  [notification setClearAction:v32];
  v35 = MEMORY[0x1E695DFD8];
  v36 = getFLNotificationOptionForce();
  v37 = getFLNotificationOptionSpringboardAlert();
  v38 = getFLNotificationOptionLockscreen();
  v39 = [v35 setWithObjects:{v36, v37, v38, 0}];
  [notification setOptions:v39];

  [notification setFirstNotificationDelay:0.0];

  return v5;
}

- (id)_followUpForChildOrTeenProtoConnectWithContext:(id)context
{
  v15[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = objc_alloc_init(getFLFollowUpItemClass());
  [v5 setUniqueIdentifier:AAFollowUpIdentifierChildOrTeenProtoConnect[0]];
  v6 = [contextCopy objectForKeyedSubscript:AAFollowUpUserInfoAccountIdentifier[0]];
  if (v6)
  {
    [v5 setAccountIdentifier:v6];
  }

  [v5 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  [v5 setTypeIdentifier:AAFollowUpUserInfoAccountIdentifier[0]];
  v7 = getFLGroupIdentifierAccount();
  [v5 setGroupIdentifier:v7];

  [v5 setUserInfo:contextCopy];
  [v5 setDisplayStyle:2];
  _childOrTeenProtoConnectAction = [(AAFollowUpController *)self _childOrTeenProtoConnectAction];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v10 = [v9 localizedStringForKey:@"CONNECT_TO_FAMILY" value:0 table:@"Localizable-AgeAttestation"];
  [v5 setTitle:v10];

  v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v12 = [v11 localizedStringForKey:@"CONNECT_TO_FAMILY_CFU_INFORMATIVE_TEXT" value:0 table:@"Localizable-AgeAttestation"];
  [v5 setInformativeText:v12];

  v15[0] = _childOrTeenProtoConnectAction;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v5 setActions:v13];

  return v5;
}

- (id)_followUpForAgeMigrationWithContext:(id)context
{
  v15[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = objc_alloc_init(getFLFollowUpItemClass());
  [v5 setUniqueIdentifier:AAFollowUpIdentifierAgeMigration[0]];
  v6 = [contextCopy objectForKeyedSubscript:AAFollowUpUserInfoAccountIdentifier[0]];
  if (v6)
  {
    [v5 setAccountIdentifier:v6];
  }

  [v5 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  [v5 setTypeIdentifier:AAFollowUpUserInfoAccountIdentifier[0]];
  v7 = getFLGroupIdentifierAccount();
  [v5 setGroupIdentifier:v7];

  [v5 setUserInfo:contextCopy];
  [v5 setDisplayStyle:2];
  _ageMigrationMigrationAction = [(AAFollowUpController *)self _ageMigrationMigrationAction];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v10 = [v9 localizedStringForKey:@"CONNECT_TO_FAMILY" value:0 table:@"Localizable-AgeMigration"];
  [v5 setTitle:v10];

  v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v12 = [v11 localizedStringForKey:@"CONNECT_TO_FAMILY_CFU_INFORMATIVE_TEXT" value:0 table:@"Localizable-AgeMigration"];
  [v5 setInformativeText:v12];

  v15[0] = _ageMigrationMigrationAction;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v5 setActions:v13];

  return v5;
}

- (id)_recoveryNotificationWithInfo:(id)info type:(id)type
{
  infoCopy = info;
  typeCopy = type;
  v7 = [infoCopy objectForKeyedSubscript:AAFollowUpUserInfoNotificationTitle[0]];
  if (![v7 length])
  {
    v8 = _AALogSystem(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController _recoveryNotificationWithInfo:type:];
    }

    goto LABEL_10;
  }

  v8 = [infoCopy objectForKeyedSubscript:AAFollowUpUserInfoNotificationBody[0]];
  if (![v8 length])
  {
    v13 = _AALogSystem(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController _recoveryNotificationWithInfo:type:];
    }

LABEL_10:
    v9 = 0;
    goto LABEL_20;
  }

  v9 = objc_alloc_init(getFLFollowUpNotificationClass());
  [v9 setTitle:v7];
  [v9 setInformativeText:v8];
  v10 = [infoCopy objectForKeyedSubscript:AAFollowUpUserInfoNotificationDelay[0]];
  v11 = v10;
  if (v10)
  {
    [v10 doubleValue];
  }

  else
  {
    v12 = 0.0;
  }

  [v9 setFirstNotificationDelay:v12];
  v14 = [infoCopy objectForKeyedSubscript:AAFollowUpUserInfoNotificationFrequency[0]];
  v15 = v14;
  if (v14)
  {
    [v14 doubleValue];
  }

  else
  {
    v16 = 86400.0;
  }

  [v9 setFrequency:v16];
  if (typeCopy && [typeCopy intValue] != 1)
  {
    if ([typeCopy intValue] != 2)
    {
      goto LABEL_19;
    }

    v17 = MEMORY[0x1E695DFD8];
    v18 = getFLNotificationOptionForce();
    v19 = getFLNotificationOptionSpringboardAlert();
  }

  else
  {
    v17 = MEMORY[0x1E695DFD8];
    v18 = getFLNotificationOptionForce();
    v19 = getFLNotificationOptionBannerAlert();
  }

  v20 = v19;
  v21 = [v17 setWithObjects:{v18, v19, 0}];
  [v9 setOptions:v21];

LABEL_19:
LABEL_20:

  return v9;
}

- (BOOL)_shouldPostRenewFollowup:(id)followup
{
  v3 = [followup objectForKeyedSubscript:AAFollowUpUserInfoAccountIdentifier[0]];

  if (!v3)
  {
    v5 = _AALogSystem(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController _shouldPostRenewFollowup:];
    }
  }

  return v3 != 0;
}

- (void)postFollowUpWithIdentifier:(id)identifier userInfo:(id)info completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  infoCopy = info;
  completionCopy = completion;
  if (!identifierCopy)
  {
    [AAFollowUpController postFollowUpWithIdentifier:userInfo:completion:];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__AAFollowUpController_postFollowUpWithIdentifier_userInfo_completion___block_invoke;
  aBlock[3] = &unk_1E7C9ABB8;
  v11 = completionCopy;
  v25 = v11;
  v12 = _Block_copy(aBlock);
  v13 = _AALogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = identifierCopy;
    _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "Attempting to post follow up item with identifier: %{public}@", &buf, 0xCu);
  }

  v14 = [(AAFollowUpController *)self followUpItemForIdentifier:identifierCopy userInfo:infoCopy];
  v15 = [identifierCopy isEqualToString:AAFollowUpIdentifierRenewCredentials[0]];
  if (v15 && (v15 = [AAFollowUpUtilities hasValidIDMSAccountForUserInfo:infoCopy], (v15 & 1) == 0))
  {
    v19 = _AALogSystem(v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController postFollowUpWithIdentifier:userInfo:completion:];
    }

    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.appleaccount" code:-14 userInfo:0];
    v12[2](v12, 0, v20);
  }

  else if (v14)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__11;
    v29 = __Block_byref_object_dispose__11;
    _followUpController = [(AAFollowUpController *)self _followUpController];
    v16 = *(*(&buf + 1) + 40);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __71__AAFollowUpController_postFollowUpWithIdentifier_userInfo_completion___block_invoke_309;
    v21[3] = &unk_1E7C9CB78;
    p_buf = &buf;
    v22 = v12;
    [v16 postFollowUpItem:v14 completion:v21];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v17 = _AALogSystem(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController postFollowUpWithIdentifier:userInfo:completion:];
    }

    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.appleaccount" code:-3 userInfo:0];
    v12[2](v12, 0, v18);
  }
}

uint64_t __71__AAFollowUpController_postFollowUpWithIdentifier_userInfo_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __71__AAFollowUpController_postFollowUpWithIdentifier_userInfo_completion___block_invoke_309(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v9 = _AALogSystem(v8);
  v10 = v9;
  if (a2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Successfully posted follow up item!", v11, 2u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __71__AAFollowUpController_postFollowUpWithIdentifier_userInfo_completion___block_invoke_309_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)postFollowUpWithIdentifier:(id)identifier userInfo:(id)info error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  infoCopy = info;
  v10 = infoCopy;
  if (!identifierCopy)
  {
    [AAFollowUpController postFollowUpWithIdentifier:userInfo:error:];
  }

  v11 = _AALogSystem(infoCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138543362;
    v26 = identifierCopy;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "Attempting to post follow up item with identifier: %{public}@", &v25, 0xCu);
  }

  v12 = [(AAFollowUpController *)self followUpItemForIdentifier:identifierCopy userInfo:v10];
  v13 = [identifierCopy isEqualToString:AAFollowUpIdentifierRenewCredentials[0]];
  if (v13)
  {
    v13 = [AAFollowUpUtilities hasValidIDMSAccountForUserInfo:v10];
    if ((v13 & 1) == 0)
    {
      v23 = _AALogSystem(v13);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [AAFollowUpController postFollowUpWithIdentifier:userInfo:completion:];
      }

      if (!error)
      {
        goto LABEL_25;
      }

      v21 = MEMORY[0x1E696ABC0];
      v22 = -14;
      goto LABEL_21;
    }
  }

  if (!v12)
  {
    v20 = _AALogSystem(v13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController postFollowUpWithIdentifier:userInfo:completion:];
    }

    if (!error)
    {
      goto LABEL_25;
    }

    v21 = MEMORY[0x1E696ABC0];
    v22 = -3;
LABEL_21:
    [v21 errorWithDomain:@"com.apple.appleaccount" code:v22 userInfo:0];
    *error = v19 = 0;
    goto LABEL_26;
  }

  _followUpController = [(AAFollowUpController *)self _followUpController];
  v15 = [_followUpController postFollowUpItem:v12 error:error];

  v17 = _AALogSystem(v16);
  v18 = v17;
  if (error || !v15)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController postFollowUpWithIdentifier:userInfo:error:];
    }

LABEL_25:
    v19 = 0;
    goto LABEL_26;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "Successfully posted follow up item!", &v25, 2u);
  }

  v19 = 1;
LABEL_26:

  return v19;
}

- (void)pendingFollowUpWithIdentifier:(id)identifier completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = completionCopy;
  if (!identifierCopy)
  {
    [AAFollowUpController pendingFollowUpWithIdentifier:completion:];
  }

  if (!v8)
  {
    [AAFollowUpController pendingFollowUpWithIdentifier:completion:];
  }

  v9 = _AALogSystem(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = identifierCopy;
    _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Attempting to fetch follow up item with identifier: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__11;
  v20 = __Block_byref_object_dispose__11;
  _followUpController = [(AAFollowUpController *)self _followUpController];
  v10 = *(*(&buf + 1) + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__AAFollowUpController_pendingFollowUpWithIdentifier_completion___block_invoke;
  v13[3] = &unk_1E7C9CBC8;
  p_buf = &buf;
  v11 = v8;
  v15 = v11;
  v12 = identifierCopy;
  v14 = v12;
  [v10 pendingFollowUpItemsWithCompletion:v13];

  _Block_object_dispose(&buf, 8);
}

void __65__AAFollowUpController_pendingFollowUpWithIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  if (!v5 || v6)
  {
    v13 = _AALogSystem(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __65__AAFollowUpController_pendingFollowUpWithIdentifier_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65__AAFollowUpController_pendingFollowUpWithIdentifier_completion___block_invoke_313;
    v16[3] = &unk_1E7C9CBA0;
    v17 = *(a1 + 32);
    v10 = [v5 indexOfObjectPassingTest:v16];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = _AALogSystem(0x7FFFFFFFFFFFFFFFLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        *buf = 138543362;
        v19 = v12;
        _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "No follow ups found with identifier: %{public}@", buf, 0xCu);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v14 = [v5 objectAtIndexedSubscript:v10];
      v15 = _AALogSystem(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v19 = v14;
        _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "Successfully fetched follow up: %{private}@", buf, 0xCu);
      }

      (*(*(a1 + 40) + 16))();
    }
  }
}

uint64_t __65__AAFollowUpController_pendingFollowUpWithIdentifier_completion___block_invoke_313(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)dismissFollowUpWithIdentifier:(id)identifier completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  if (!identifierCopy)
  {
    [AAFollowUpController dismissFollowUpWithIdentifier:completion:];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__AAFollowUpController_dismissFollowUpWithIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E7C9ABB8;
  v8 = completionCopy;
  v18 = v8;
  v9 = _Block_copy(aBlock);
  v10 = _AALogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = identifierCopy;
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to clear follow up item with identifier: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__11;
  v23 = __Block_byref_object_dispose__11;
  _followUpController = [(AAFollowUpController *)self _followUpController];
  v11 = *(*(&buf + 1) + 40);
  v19 = identifierCopy;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__AAFollowUpController_dismissFollowUpWithIdentifier_completion___block_invoke_316;
  v14[3] = &unk_1E7C9CB78;
  p_buf = &buf;
  v13 = v9;
  v15 = v13;
  [v11 clearPendingFollowUpItemsWithUniqueIdentifiers:v12 completion:v14];

  _Block_object_dispose(&buf, 8);
}

uint64_t __65__AAFollowUpController_dismissFollowUpWithIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __65__AAFollowUpController_dismissFollowUpWithIdentifier_completion___block_invoke_316(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v9 = _AALogSystem(v8);
  v10 = v9;
  if (a2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Successfully cleared follow up item!", v11, 2u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __65__AAFollowUpController_dismissFollowUpWithIdentifier_completion___block_invoke_316_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)dismissFollowUpWithIdentifier:(id)identifier error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (!identifierCopy)
  {
    [AAFollowUpController dismissFollowUpWithIdentifier:error:];
  }

  v8 = _AALogSystem(identifierCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = v7;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to clear follow up item with identifier: %{public}@", buf, 0xCu);
  }

  _followUpController = [(AAFollowUpController *)self _followUpController];
  v17 = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v11 = [_followUpController clearPendingFollowUpItemsWithUniqueIdentifiers:v10 error:error];

  if (error)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  v14 = _AALogSystem(v12);
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "Successfully cleared follow up item!", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [AAFollowUpController dismissFollowUpWithIdentifier:error:];
  }

  return v13;
}

- (id)followUpItemForIdentifier:(id)identifier userInfo:(id)info
{
  identifierCopy = identifier;
  infoCopy = info;
  if ([identifierCopy isEqualToString:AAFollowUpIdentifierStartUsing[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpItemForStartUsing:infoCopy];
LABEL_29:
    v9 = v8;
    goto LABEL_30;
  }

  if ([identifierCopy isEqualToString:AAFollowUpIdentifierVerifyTerms[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpItemForVerifyTerms:infoCopy];
    goto LABEL_29;
  }

  if ([identifierCopy isEqualToString:AAFollowUpIdentifierRenewCredentials[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpItemForRenewCredentials:infoCopy];
    goto LABEL_29;
  }

  if ([identifierCopy isEqualToString:AAFollowUpIdentifierCustodianReview[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpItemForCustodianReview:infoCopy];
    goto LABEL_29;
  }

  if ([identifierCopy isEqualToString:AAFollowUpIdentifierCustodianInvitationReminder[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpItemForCustodianInvitationReminder:infoCopy];
    goto LABEL_29;
  }

  if ([identifierCopy isEqualToString:AAFollowUpIdentifierCustodianRemoved[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpItemForCustodianRemoved:infoCopy];
    goto LABEL_29;
  }

  if ([identifierCopy isEqualToString:AAFollowUpIdentifierCustodianWalrusNoLiveness[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpItemForCustodianWalrusNoLiveness:infoCopy];
    goto LABEL_29;
  }

  if ([identifierCopy isEqualToString:AAFollowUpIdentifierCustodianWalrusRemoved[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpItemForCustodianWalrusRemoved:infoCopy];
    goto LABEL_29;
  }

  if ([identifierCopy isEqualToString:AAFollowUpIdentifierWalrusUserRecoveryFactorsMissing[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpItemForWalrusUserRecoveryFactorsMissing:infoCopy];
    goto LABEL_29;
  }

  if ([identifierCopy isEqualToString:AAFollowUpIdentifierBeneficiaryRemoved[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpItemForBeneficiaryRemoved:infoCopy];
    goto LABEL_29;
  }

  if ([identifierCopy isEqualToString:AAFollowUpIdentifierCustodianEmbargo[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpItemForCustodianEmbargo:infoCopy];
    goto LABEL_29;
  }

  if ([identifierCopy isEqualToString:AAFollowUpIdentifierRecoveryKeyMismatch[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpForRecoveryKeyHealingWithContext:infoCopy];
    goto LABEL_29;
  }

  if ([identifierCopy isEqualToString:AAFollowUpIdentifierChildOrTeenProtoConnect[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpForChildOrTeenProtoConnectWithContext:infoCopy];
    goto LABEL_29;
  }

  if ([identifierCopy isEqualToString:AAFollowUpIdentifierAgeMigration[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpForAgeMigrationWithContext:infoCopy];
    goto LABEL_29;
  }

  v9 = 0;
LABEL_30:

  return v9;
}

- (void)postFollowUpWithIdentifier:(id)identifier forAccount:(id)account userInfo:(id)info completion:(id)completion
{
  identifierCopy = identifier;
  accountCopy = account;
  infoCopy = info;
  completionCopy = completion;
  if (identifierCopy)
  {
    if (accountCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AAFollowUpController(Convenience) postFollowUpWithIdentifier:forAccount:userInfo:completion:];
    if (accountCopy)
    {
      goto LABEL_3;
    }
  }

  [AAFollowUpController(Convenience) postFollowUpWithIdentifier:forAccount:userInfo:completion:];
LABEL_3:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__AAFollowUpController_Convenience__postFollowUpWithIdentifier_forAccount_userInfo_completion___block_invoke;
  aBlock[3] = &unk_1E7C9ABE0;
  aBlock[4] = self;
  v27 = accountCopy;
  v28 = identifierCopy;
  v29 = completionCopy;
  v14 = completionCopy;
  v15 = identifierCopy;
  v16 = accountCopy;
  v17 = _Block_copy(aBlock);
  v18 = objc_alloc(MEMORY[0x1E695DF90]);
  if (infoCopy)
  {
    v19 = infoCopy;
  }

  else
  {
    v19 = MEMORY[0x1E695E0F8];
  }

  v20 = [v18 initWithDictionary:v19];
  identifier = [v16 identifier];
  [v20 setObject:identifier forKeyedSubscript:AAFollowUpUserInfoAccountIdentifier[0]];

  aa_altDSID = [v16 aa_altDSID];
  [v20 setObject:aa_altDSID forKeyedSubscript:AAFollowUpUserInfoAltDSID[0]];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __95__AAFollowUpController_Convenience__postFollowUpWithIdentifier_forAccount_userInfo_completion___block_invoke_2;
  v24[3] = &unk_1E7C9ABB8;
  v25 = v17;
  v23 = v17;
  [(AAFollowUpController *)self postFollowUpWithIdentifier:v15 userInfo:v20 completion:v24];
}

void __95__AAFollowUpController_Convenience__postFollowUpWithIdentifier_forAccount_userInfo_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) sendPostCFUTelemetryEventWithAccount:*(a1 + 40) forIdentifier:*(a1 + 48) success:a2 error:?];
  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

- (void)dismissFollowUpWithIdentifier:(id)identifier forAccount:(id)account completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  accountCopy = account;
  completionCopy = completion;
  if (identifierCopy)
  {
    if (accountCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AAFollowUpController(Convenience) dismissFollowUpWithIdentifier:forAccount:completion:];
    if (accountCopy)
    {
      goto LABEL_3;
    }
  }

  [AAFollowUpController(Convenience) dismissFollowUpWithIdentifier:forAccount:completion:];
LABEL_3:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__AAFollowUpController_Convenience__dismissFollowUpWithIdentifier_forAccount_completion___block_invoke;
  aBlock[3] = &unk_1E7C9ABB8;
  v23 = completionCopy;
  v11 = completionCopy;
  v12 = _Block_copy(aBlock);
  v13 = _AALogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = identifierCopy;
    v26 = 2112;
    v27 = accountCopy;
    _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "Attempting to teardown follow up with identifier: %@, account: %@", buf, 0x16u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __89__AAFollowUpController_Convenience__dismissFollowUpWithIdentifier_forAccount_completion___block_invoke_379;
  v17[3] = &unk_1E7C9CBF0;
  v18 = identifierCopy;
  selfCopy = self;
  v20 = accountCopy;
  v21 = v12;
  v14 = accountCopy;
  v15 = v12;
  v16 = identifierCopy;
  [(AAFollowUpController *)self pendingFollowUpWithIdentifier:v16 completion:v17];
}

uint64_t __89__AAFollowUpController_Convenience__dismissFollowUpWithIdentifier_forAccount_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __89__AAFollowUpController_Convenience__dismissFollowUpWithIdentifier_forAccount_completion___block_invoke_379(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [a2 userInfo];
    v4 = [v3 objectForKeyedSubscript:AAFollowUpUserInfoAccountIdentifier[0]];

    if (v4)
    {
      v6 = [*(a1 + 48) identifier];
      v7 = [v4 isEqualToString:v6];

      v9 = _AALogSystem(v8);
      v10 = v9;
      if ((v7 & 1) == 0)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          __89__AAFollowUpController_Convenience__dismissFollowUpWithIdentifier_forAccount_completion___block_invoke_379_cold_1();
        }

        goto LABEL_16;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v16 = 138412290;
        v17 = v11;
        v12 = "Tearing down follow up with identifier %@";
        v13 = v10;
        v14 = 12;
LABEL_11:
        _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, v12, &v16, v14);
      }
    }

    else
    {
      v10 = _AALogSystem(v5);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        v12 = "Found a followup without an account identifier, dismissing!";
        v13 = v10;
        v14 = 2;
        goto LABEL_11;
      }
    }

    [*(a1 + 40) dismissFollowUpWithIdentifier:*(a1 + 32) completion:*(a1 + 56)];
LABEL_16:

    return;
  }

  v15 = _AALogSystem(a1);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    __89__AAFollowUpController_Convenience__dismissFollowUpWithIdentifier_forAccount_completion___block_invoke_379_cold_2();
  }

  (*(*(a1 + 56) + 16))();
}

- (void)dismissFollowUpsForAccount:(id)account identifiers:(id)identifiers completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  identifiersCopy = identifiers;
  completionCopy = completion;
  if (!accountCopy)
  {
    [AAFollowUpController(Convenience) dismissFollowUpsForAccount:identifiers:completion:];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__AAFollowUpController_Convenience__dismissFollowUpsForAccount_identifiers_completion___block_invoke;
  aBlock[3] = &unk_1E7C9ABB8;
  v11 = completionCopy;
  v18 = v11;
  v12 = _Block_copy(aBlock);
  if ([identifiersCopy count])
  {
    [(AAFollowUpController *)self _dismissFollowUpWithIdentifiers:identifiersCopy completion:v12];
  }

  else
  {
    v13 = _AALogSystem(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = accountCopy;
      _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "Attempting to teardown all followups for account: %@", buf, 0xCu);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __87__AAFollowUpController_Convenience__dismissFollowUpsForAccount_identifiers_completion___block_invoke_381;
    v14[3] = &unk_1E7C9CC18;
    v14[4] = self;
    v16 = v12;
    v15 = accountCopy;
    [(AAFollowUpController *)self pendingFollowUpsForAccount:v15 completion:v14];
  }
}

uint64_t __87__AAFollowUpController_Convenience__dismissFollowUpsForAccount_identifiers_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __87__AAFollowUpController_Convenience__dismissFollowUpsForAccount_identifiers_completion___block_invoke_381(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * v9) uniqueIdentifier];
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    [*(a1 + 32) _dismissFollowUpWithIdentifiers:v4 completion:*(a1 + 48)];
  }

  else
  {
    v11 = _AALogSystem(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      *buf = 138412290;
      v18 = v12;
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "No follow ups to delete for account: %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)dismissFollowUpsStartingWithIdentifierPrefix:(id)prefix account:(id)account completion:(id)completion
{
  prefixCopy = prefix;
  accountCopy = account;
  completionCopy = completion;
  if (prefixCopy)
  {
    if (accountCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AAFollowUpController(Convenience) dismissFollowUpsStartingWithIdentifierPrefix:account:completion:];
    if (accountCopy)
    {
      goto LABEL_3;
    }
  }

  [AAFollowUpController(Convenience) dismissFollowUpsStartingWithIdentifierPrefix:account:completion:];
LABEL_3:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __101__AAFollowUpController_Convenience__dismissFollowUpsStartingWithIdentifierPrefix_account_completion___block_invoke;
  aBlock[3] = &unk_1E7C9ABB8;
  v23 = completionCopy;
  v11 = completionCopy;
  v12 = _Block_copy(aBlock);
  v13 = _AALogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [AAFollowUpController(Convenience) dismissFollowUpsStartingWithIdentifierPrefix:account:completion:];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __101__AAFollowUpController_Convenience__dismissFollowUpsStartingWithIdentifierPrefix_account_completion___block_invoke_382;
  v17[3] = &unk_1E7C9CC40;
  v18 = prefixCopy;
  selfCopy = self;
  v20 = accountCopy;
  v21 = v12;
  v14 = accountCopy;
  v15 = v12;
  v16 = prefixCopy;
  [(AAFollowUpController *)self pendingFollowUpsForAccount:v14 completion:v17];
}

uint64_t __101__AAFollowUpController_Convenience__dismissFollowUpsStartingWithIdentifierPrefix_account_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __101__AAFollowUpController_Convenience__dismissFollowUpsStartingWithIdentifierPrefix_account_completion___block_invoke_382(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 uniqueIdentifier];
        v12 = [v11 hasPrefix:*(a1 + 32)];

        if (v12)
        {
          v13 = [v10 uniqueIdentifier];
          [v4 addObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    [*(a1 + 40) _dismissFollowUpWithIdentifiers:v4 completion:*(a1 + 56)];
  }

  else
  {
    v14 = _AALogSystem(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __101__AAFollowUpController_Convenience__dismissFollowUpsStartingWithIdentifierPrefix_account_completion___block_invoke_382_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (void)pendingFollowUpsForAccount:(id)account completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  v8 = completionCopy;
  if (!accountCopy)
  {
    [AAFollowUpController(Convenience) pendingFollowUpsForAccount:completion:];
  }

  v9 = _AALogSystem(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = accountCopy;
    _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Attempting to fetch follow up item for account : %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__11;
  v20 = __Block_byref_object_dispose__11;
  _followUpController = [(AAFollowUpController *)self _followUpController];
  v10 = *(*(&buf + 1) + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__AAFollowUpController_Convenience__pendingFollowUpsForAccount_completion___block_invoke;
  v13[3] = &unk_1E7C9CBC8;
  p_buf = &buf;
  v11 = v8;
  v15 = v11;
  v12 = accountCopy;
  v14 = v12;
  [v10 pendingFollowUpItemsWithCompletion:v13];

  _Block_object_dispose(&buf, 8);
}

void __75__AAFollowUpController_Convenience__pendingFollowUpsForAccount_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  if (!v5 || v6)
  {
    v13 = _AALogSystem(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __65__AAFollowUpController_pendingFollowUpWithIdentifier_completion___block_invoke_cold_1();
    }

    v14 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v15 = *(a1 + 40);
    if (v15)
    {
      (*(v15 + 16))(v15, v14, v6);
    }
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __75__AAFollowUpController_Convenience__pendingFollowUpsForAccount_completion___block_invoke_383;
    v18[3] = &unk_1E7C9CBA0;
    v19 = *(a1 + 32);
    v10 = [v5 indexesOfObjectsPassingTest:v18];
    if ([v10 count])
    {
      v11 = [v5 objectsAtIndexes:v10];
      v12 = _AALogSystem(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v21 = v11;
        _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Successfully fetched follow up: %{private}@", buf, 0xCu);
      }
    }

    else
    {
      v16 = _AALogSystem(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __75__AAFollowUpController_Convenience__pendingFollowUpsForAccount_completion___block_invoke_cold_1();
      }

      v11 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    }

    v17 = *(a1 + 40);
    if (v17)
    {
      (*(v17 + 16))(v17, v11, 0);
    }

    v14 = v19;
  }
}

uint64_t __75__AAFollowUpController_Convenience__pendingFollowUpsForAccount_completion___block_invoke_383(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:AAFollowUpUserInfoAccountIdentifier[0]];

  if (v4)
  {
    v5 = [*(a1 + 32) identifier];
    v6 = [v4 isEqualToString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_dismissFollowUpWithIdentifiers:(id)identifiers completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  completionCopy = completion;
  if (!identifiersCopy)
  {
    [AAFollowUpController(Convenience) _dismissFollowUpWithIdentifiers:completion:];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__AAFollowUpController_Convenience___dismissFollowUpWithIdentifiers_completion___block_invoke;
  aBlock[3] = &unk_1E7C9ABB8;
  v8 = completionCopy;
  v17 = v8;
  v9 = _Block_copy(aBlock);
  v10 = _AALogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = identifiersCopy;
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to clear follow up item with identifier: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__11;
  v21 = __Block_byref_object_dispose__11;
  _followUpController = [(AAFollowUpController *)self _followUpController];
  v11 = *(*(&buf + 1) + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__AAFollowUpController_Convenience___dismissFollowUpWithIdentifiers_completion___block_invoke_387;
  v13[3] = &unk_1E7C9CB78;
  p_buf = &buf;
  v12 = v9;
  v14 = v12;
  [v11 clearPendingFollowUpItemsWithUniqueIdentifiers:identifiersCopy completion:v13];

  _Block_object_dispose(&buf, 8);
}

uint64_t __80__AAFollowUpController_Convenience___dismissFollowUpWithIdentifiers_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __80__AAFollowUpController_Convenience___dismissFollowUpWithIdentifiers_completion___block_invoke_387(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v9 = _AALogSystem(v8);
  v10 = v9;
  if (a2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Successfully cleared follow up item!", v11, 2u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __65__AAFollowUpController_dismissFollowUpWithIdentifier_completion___block_invoke_316_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (id)pendingCFUTypes
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = _AALogSystem(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v2, OS_LOG_TYPE_DEFAULT, "Attempting to fetch pending CFU types", buf, 2u);
  }

  v3 = objc_alloc_init(getFLFollowUpControllerClass());
  v24 = 0;
  v4 = [v3 pendingFollowUpItems:&v24];
  v5 = v24;

  if (!v4 || v5)
  {
    v7 = _AALogSystem(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController(Convenience) pendingCFUTypes];
    }

    allObjects = MEMORY[0x1E695E0F0];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFA8] set];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          uniqueIdentifier = [v13 uniqueIdentifier];

          if (uniqueIdentifier)
          {
            uniqueIdentifier2 = [v13 uniqueIdentifier];
            [v7 addObject:uniqueIdentifier2];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v29 count:16];
      }

      while (v10);
    }

    allObjects = [v7 allObjects];
    v17 = _AALogSystem(allObjects);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [allObjects count];
      *buf = 134218243;
      v26 = v18;
      v27 = 2113;
      v28 = allObjects;
      _os_log_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEFAULT, "Successfully fetched %lu CFU types: %{private}@", buf, 0x16u);
    }
  }

  return allObjects;
}

- (BOOL)isRenewCredentialsCFUPosted
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = _AALogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to fetch pending RenewCredentials CFU", buf, 2u);
  }

  _followUpController = [(AAFollowUpController *)self _followUpController];
  v20 = 0;
  v5 = [_followUpController pendingFollowUpItems:&v20];
  v6 = v20;

  if (!v5 || v6)
  {
    v8 = _AALogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController(Convenience) isRenewCredentialsCFUPosted];
    }

    LOBYTE(v9) = 0;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v9)
    {
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; i = (i + 1))
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = AAFollowUpIdentifierRenewCredentials[0];
          typeIdentifier = [*(*(&v16 + 1) + 8 * i) typeIdentifier];
          LODWORD(v12) = [(__CFString *)v12 isEqualToString:typeIdentifier];

          if (v12)
          {
            v9 = _AALogSystem(v14);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Found Renew Credentials CFU posted", buf, 2u);
            }

            LOBYTE(v9) = 1;
            goto LABEL_20;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v16 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_20:

  return v9;
}

- (double)ageOfOldestCustodianCFU
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v4 = [v3 initWithObjects:{AAFollowUpIdentifierCustodianRemoved[0], 0}];
  v11[0] = AAFollowUpIdentifierCustodianWalrusNoLiveness[0];
  v11[1] = AAFollowUpIdentifierCustodianWalrusRemoved[0];
  v11[2] = AAFollowUpIdentifierWalrusUserRecoveryFactorsMissing[0];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  [v4 addObjectsFromArray:v5];

  v6 = [(AAFollowUpController *)self creationDateOfOldestFollowUpWithIdentifiers:v4];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF00] now];
    [v7 timeIntervalSinceDate:v6];
    v9 = v8;
  }

  else
  {
    v9 = -1.0;
  }

  return v9;
}

- (id)creationDateOfOldestFollowUpWithIdentifiers:(id)identifiers
{
  v44 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = _AALogSystem(identifiersCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AAFollowUpController(Convenience) creationDateOfOldestFollowUpWithIdentifiers:];
  }

  _followUpController = [(AAFollowUpController *)self _followUpController];
  v36 = 0;
  v7 = [_followUpController pendingFollowUpItems:&v36];
  v8 = v36;
  v9 = v8;
  if (!v7 || v8)
  {
    v10 = _AALogSystem(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController(Convenience) creationDateOfOldestFollowUpWithIdentifiers:];
    }

    firstObject = 0;
  }

  else
  {
    v31 = _followUpController;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v30 = v7;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v43 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          uniqueIdentifier = [v17 uniqueIdentifier];
          v19 = [identifiersCopy containsObject:uniqueIdentifier];

          if (v19)
          {
            [v10 addObject:v17];
            notification = [v17 notification];
            creationDate = [notification creationDate];

            if (creationDate)
            {
              notification2 = [v17 notification];
              creationDate2 = [notification2 creationDate];
              [v11 addObject:creationDate2];
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v32 objects:v43 count:16];
      }

      while (v14);
    }

    v24 = [v11 count];
    v25 = _AALogSystem(v24);
    v26 = v25;
    if (v24)
    {
      _followUpController = v31;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v10 count];
        *buf = 134218499;
        v38 = v27;
        v39 = 2113;
        v40 = v10;
        v41 = 2112;
        v42 = v11;
        _os_log_impl(&dword_1B6F6A000, v26, OS_LOG_TYPE_DEFAULT, "Successfully found %lu CFUs: %{private}@ and dates: %@", buf, 0x20u);
      }

      v26 = [v11 sortedArrayUsingSelector:sel_compare_];
      firstObject = [v26 firstObject];
    }

    else
    {
      _followUpController = v31;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [AAFollowUpController(Convenience) creationDateOfOldestFollowUpWithIdentifiers:];
      }

      firstObject = 0;
    }

    v9 = 0;
    v7 = v30;
  }

  return firstObject;
}

- (void)pendingFollowUpItemUserInfosWithIdentifier:(id)identifier completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = completionCopy;
  if (identifierCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AAFollowUpController(Convenience) pendingFollowUpItemUserInfosWithIdentifier:completion:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [AAFollowUpController(Convenience) pendingFollowUpItemUserInfosWithIdentifier:completion:];
LABEL_3:
  v9 = _AALogSystem(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = identifierCopy;
    _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Attempting to fetch user info of follow up item with identifier: %{public}@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __91__AAFollowUpController_Convenience__pendingFollowUpItemUserInfosWithIdentifier_completion___block_invoke;
  v12[3] = &unk_1E7C9BA08;
  v13 = identifierCopy;
  v14 = v8;
  v10 = v8;
  v11 = identifierCopy;
  [(AAFollowUpController *)self _pendingFollowUpItemsWithIdentifier:v11 forAccount:0 completion:v12];
}

void __91__AAFollowUpController_Convenience__pendingFollowUpItemUserInfosWithIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && (v6 = [v5 count]) != 0)
  {
    v8 = [v5 aaf_map:&__block_literal_global_27];
    v9 = _AALogSystem(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138477827;
      v14 = v8;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Successfully fetched user infos of pending follow ups: %{private}@", &v13, 0xCu);
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, v8);
    }
  }

  else
  {
    v11 = _AALogSystem(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __91__AAFollowUpController_Convenience__pendingFollowUpItemUserInfosWithIdentifier_completion___block_invoke_cold_1();
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, 0);
    }
  }
}

- (id)pendingFollowUpItemUserInfosWithIdentifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (!identifierCopy)
  {
    [AAFollowUpController(Convenience) pendingFollowUpItemUserInfosWithIdentifier:];
  }

  v6 = _AALogSystem(identifierCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v5;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Attempting to fetch user info of follow up item with identifier: %{public}@", &v12, 0xCu);
  }

  v7 = [(AAFollowUpController *)self _pendingFollowUpItemsWithIdentifier:v5 forAccount:0];
  v8 = v7;
  if (v7 && (v7 = [v7 count]) != 0)
  {
    v9 = [v8 aaf_map:&__block_literal_global_394];
    v10 = _AALogSystem(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138477827;
      v13 = v9;
      _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Successfully fetched user infos of pending follow ups: %{private}@", &v12, 0xCu);
    }
  }

  else
  {
    v10 = _AALogSystem(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController(Convenience) pendingFollowUpItemUserInfosWithIdentifier:];
    }

    v9 = 0;
  }

  return v9;
}

- (void)reportPostCFUEvent:(id)event
{
  eventCopy = event;
  v5 = _AALogSystem(eventCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AAFollowUpController(Convenience) reportPostCFUEvent:];
  }

  v6 = +[AAAnalyticsRTCReporter reporter];
  v7 = v6;
  if (eventCopy)
  {
    [v6 sendEvent:eventCopy];
  }

  else
  {
    analyticsInfo = [(AAFollowUpController *)self analyticsInfo];
    cfuReasonAnalyticsEvent = [analyticsInfo cfuReasonAnalyticsEvent];
    [v7 sendEvent:cfuReasonAnalyticsEvent];
  }
}

- (id)_pendingFollowUpItemsWithIdentifier:(id)identifier forAccount:(id)account
{
  identifierCopy = identifier;
  accountCopy = account;
  v8 = _AALogSystem(accountCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AAFollowUpController(Convenience) _pendingFollowUpItemsWithIdentifier:forAccount:];
  }

  _followUpController = [(AAFollowUpController *)self _followUpController];
  v15 = 0;
  v10 = [_followUpController pendingFollowUpItems:&v15];

  if (v10 && (v11 = [v10 count]) != 0)
  {
    v12 = [(AAFollowUpController *)self _filterFollowUpItems:v10 byIdentifier:identifierCopy byAccount:accountCopy];
  }

  else
  {
    v13 = _AALogSystem(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController(Convenience) _pendingFollowUpItemsWithIdentifier:forAccount:];
    }

    v12 = 0;
  }

  return v12;
}

- (void)_pendingFollowUpItemsWithIdentifier:(id)identifier forAccount:(id)account completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  accountCopy = account;
  completionCopy = completion;
  v11 = completionCopy;
  if (!completionCopy)
  {
    [AAFollowUpController(Convenience) _pendingFollowUpItemsWithIdentifier:forAccount:completion:];
  }

  v12 = _AALogSystem(completionCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = identifierCopy;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Attempting to fetch follow up items with identifier: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__11;
  v25 = __Block_byref_object_dispose__11;
  _followUpController = [(AAFollowUpController *)self _followUpController];
  v13 = *(*(&buf + 1) + 40);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __95__AAFollowUpController_Convenience___pendingFollowUpItemsWithIdentifier_forAccount_completion___block_invoke;
  v17[3] = &unk_1E7C9CC88;
  p_buf = &buf;
  v14 = v11;
  v20 = v14;
  v17[4] = self;
  v15 = identifierCopy;
  v18 = v15;
  v16 = accountCopy;
  v19 = v16;
  [v13 pendingFollowUpItemsWithCompletion:v17];

  _Block_object_dispose(&buf, 8);
}

void __95__AAFollowUpController_Convenience___pendingFollowUpItemsWithIdentifier_forAccount_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  if (v5 && !v6 && (v9 = [v5 count]) != 0)
  {
    v10 = [*(a1 + 32) _filterFollowUpItems:v5 byIdentifier:*(a1 + 40) byAccount:*(a1 + 48)];
    v11 = _AALogSystem(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138477827;
      v15 = v10;
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "Successfully fetched follow ups: %{private}@", &v14, 0xCu);
    }

    v12 = *(*(a1 + 56) + 16);
  }

  else
  {
    v13 = _AALogSystem(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __65__AAFollowUpController_pendingFollowUpWithIdentifier_completion___block_invoke_cold_1();
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v12 = *(*(a1 + 56) + 16);
  }

  v12();
}

- (id)_filterFollowUpItems:(id)items byIdentifier:(id)identifier byAccount:(id)account
{
  itemsCopy = items;
  identifierCopy = identifier;
  accountCopy = account;
  v10 = accountCopy;
  if (!itemsCopy || (accountCopy = [itemsCopy count]) == 0)
  {
    v12 = _AALogSystem(accountCopy);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController(Convenience) _pendingFollowUpItemsWithIdentifier:forAccount:];
    }

    v11 = 0;
    goto LABEL_11;
  }

  if (!identifierCopy)
  {
    v11 = 0;
    if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __81__AAFollowUpController_Convenience___filterFollowUpItems_byIdentifier_byAccount___block_invoke;
  v17[3] = &unk_1E7C9CCB0;
  v18 = identifierCopy;
  v11 = [itemsCopy aaf_filter:v17];

  if (v10)
  {
LABEL_10:
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __81__AAFollowUpController_Convenience___filterFollowUpItems_byIdentifier_byAccount___block_invoke_2;
    v15[3] = &unk_1E7C9CCB0;
    v16 = v10;
    v13 = [v11 aaf_filter:v15];

    v12 = v16;
    v11 = v13;
LABEL_11:
  }

LABEL_12:

  return v11;
}

uint64_t __81__AAFollowUpController_Convenience___filterFollowUpItems_byIdentifier_byAccount___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 hasPrefix:*(a1 + 32)];

  return v4;
}

uint64_t __81__AAFollowUpController_Convenience___filterFollowUpItems_byIdentifier_byAccount___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:AAFollowUpUserInfoAccountIdentifier[0]];

  if (v4)
  {
    v5 = [*(a1 + 32) identifier];
    v6 = [v4 isEqualToString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)sendPostCFUTelemetryEventWithAccount:(id)account forIdentifier:(id)identifier success:(BOOL)success error:(id)error
{
  successCopy = success;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  if (objc_opt_respondsToSelector())
  {
    analyticsInfo = [(AAFollowUpController *)self analyticsInfo];

    if (analyticsInfo)
    {
      [(AAFollowUpController *)self analyticsInfo];
    }

    else
    {
      [(AAFollowUpController *)self _constructAnalyticsInforFromAccount:accountCopy forIdentifier:identifierCopy];
    }
    v14 = ;
    v15 = MEMORY[0x1E6985DB0];
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v16 = getkCDPRTCEventCategoryAccountDataAccessRecoverySymbolLoc_ptr;
    v26 = getkCDPRTCEventCategoryAccountDataAccessRecoverySymbolLoc_ptr;
    if (!getkCDPRTCEventCategoryAccountDataAccessRecoverySymbolLoc_ptr)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __getkCDPRTCEventCategoryAccountDataAccessRecoverySymbolLoc_block_invoke;
      v22[3] = &unk_1E7C9AE88;
      v22[4] = &v23;
      __getkCDPRTCEventCategoryAccountDataAccessRecoverySymbolLoc_block_invoke(v22);
      v16 = v24[3];
    }

    _Block_object_dispose(&v23, 8);
    if (!v16)
    {
      [AAFollowUpController(Convenience) sendPostCFUTelemetryEventWithAccount:forIdentifier:success:error:];
    }

    v17 = *MEMORY[0x1E6985E58];
    v18 = *v16;
    aa_altDSID = [accountCopy aa_altDSID];
    v20 = [v15 analyticsEventWithName:v17 eventCategory:v18 followupAnalyticsData:v14 altDSID:aa_altDSID];

    v21 = [MEMORY[0x1E696AD98] numberWithBool:successCopy];
    [v20 setObject:v21 forKeyedSubscript:*MEMORY[0x1E6985E40]];

    [v20 populateUnderlyingErrorsStartingWithRootError:errorCopy];
    [(AAFollowUpController *)self reportPostCFUEvent:v20];
  }

  else
  {
    [(AAFollowUpController *)self reportPostCFUEvent:0];
  }
}

- (id)_constructAnalyticsInforFromAccount:(id)account forIdentifier:(id)identifier
{
  accountCopy = account;
  v6 = MEMORY[0x1E6985DA8];
  identifierCopy = identifier;
  v8 = objc_alloc_init(v6);
  [v8 setCfuType:identifierCopy];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [v8 setFlowID:uUIDString];

  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  if ([mEMORY[0x1E698DC80] accountAccessTelemetryOptInForAccount:accountCopy])
  {
    v12 = [mEMORY[0x1E698DC80] telemetryDeviceSessionIDForAccount:accountCopy];
    [v8 setDeviceSessionID:v12];
  }

  return v8;
}

- (void)_followUpItemForCustodianInvitationReminder:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 userInfo];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_1B6F6A000, v2, v3, "Primary action, userInfo: %@", v4, v5, v6, v7);
}

- (void)_followUpItemForBeneficiaryRemoved:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_1B6F6A000, v2, v3, "Beneficiary FollowUp Item - %@", v4, v5, v6, v7);
}

- (void)_followUpItemForCustodianEmbargo:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_followUpItemForCustodianEmbargo:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_followUpForRecoveryKeyHealingWithContext:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_recoveryNotificationWithInfo:type:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_recoveryNotificationWithInfo:type:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_shouldPostRenewFollowup:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)postFollowUpWithIdentifier:userInfo:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"followUpIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)postFollowUpWithIdentifier:userInfo:completion:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)postFollowUpWithIdentifier:userInfo:completion:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __71__AAFollowUpController_postFollowUpWithIdentifier_userInfo_completion___block_invoke_309_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)postFollowUpWithIdentifier:userInfo:error:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"followUpIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)postFollowUpWithIdentifier:userInfo:error:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)pendingFollowUpWithIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"followUpIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)pendingFollowUpWithIdentifier:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __65__AAFollowUpController_pendingFollowUpWithIdentifier_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)dismissFollowUpWithIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"followUpIdentifier" object:? file:? lineNumber:? description:?];
}

void __65__AAFollowUpController_dismissFollowUpWithIdentifier_completion___block_invoke_316_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)dismissFollowUpWithIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"followUpIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)dismissFollowUpWithIdentifier:error:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __89__AAFollowUpController_Convenience__dismissFollowUpWithIdentifier_forAccount_completion___block_invoke_379_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __89__AAFollowUpController_Convenience__dismissFollowUpWithIdentifier_forAccount_completion___block_invoke_379_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __101__AAFollowUpController_Convenience__dismissFollowUpsStartingWithIdentifierPrefix_account_completion___block_invoke_382_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __75__AAFollowUpController_Convenience__pendingFollowUpsForAccount_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __91__AAFollowUpController_Convenience__pendingFollowUpItemUserInfosWithIdentifier_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end