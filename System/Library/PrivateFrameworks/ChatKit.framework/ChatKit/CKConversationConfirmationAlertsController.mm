@interface CKConversationConfirmationAlertsController
- (BOOL)_hasChatSharingLocationInConversations:(id)conversations;
- (BOOL)_isStoredOnIcloud;
- (BOOL)_shouldConfirmStopSharingLocationForConversations:(id)conversations;
- (CKConversationConfirmationAlertsController)initWithConfiguration:(id)configuration;
- (id)_conversationDeletionAlertMessageForConversations:(id)conversations;
- (id)_deleteAndBlockActionWithConfirmedBlock:(id)block;
- (id)_identifyBusinessConversationToRemove:(id)remove;
- (id)_identifySpamConversationsToRemove:(id)remove;
- (id)_junkRecoveryAlertMessageForCount:(unint64_t)count;
- (id)_junkRecoveryAlertTitleForCount:(unint64_t)count;
- (id)_moveToRecentlyDeletedAlertMessageForMessagesCount:(unint64_t)count;
- (id)_moveToRecentlyDeletedAlertTitleForConversationsCount:(unint64_t)count;
- (id)_moveToRecentlyDeletedAlertTitleForMessagesCount:(unint64_t)count;
- (id)_permanentDeletionAlertMessageForCount:(unint64_t)count;
- (id)_permanentDeletionAlertTitleForCount:(unint64_t)count;
- (id)_permanentJunkDeletionAlertTitleForCount:(unint64_t)count;
- (id)_presentReportSpamReaonsControllerIfNeeded;
- (id)_presentStopBusinessChatAlertIfNeededForConversations:(id)conversations;
- (id)_recoveryAlertMessageForBlockedConversationsCount:(unint64_t)count allowedConversationsCount:(unint64_t)conversationsCount;
- (id)_recoveryAlertMessageForMessagesCount:(unint64_t)count;
- (id)_recoveryAlertTitleForBlockedConversationsCount:(unint64_t)count allowedConversationsCount:(unint64_t)conversationsCount;
- (id)_recoveryAlertTitleForMessagesCount:(unint64_t)count;
- (id)_reportSpamConfirmationMessageForJunkConversations;
- (id)_spamReportDestinationsForJunkConversations;
- (unint64_t)_numberOfRecoverableMessagesInConversations:(id)conversations;
- (void)_configureAppearanceForAlertController:(id)controller;
- (void)_generateSafetyCheckController;
- (void)_markConversationsAsSpam:(id)spam;
- (void)_presentEndBusinessChatConfirmationForBusinessConversation:(id)conversation actionCompletionBlock:(id)block;
- (void)_presentRecoverableConversationDeletionConfirmationWithConfirmedBlock:(id)block cancelBlock:(id)cancelBlock;
- (void)_presentReportSpamReasonWithConversations:(id)conversations didReportBlock:(id)block;
- (void)_presentStopSharingLocationConfirmationWithActionCompletionBlock:(id)block;
- (void)_trackEvent:(int64_t)event forConversations:(id)conversations;
- (void)presentPermanentConversationDeletionConfirmations;
- (void)presentPermanentJunkConversationDeletionConfirmations;
- (void)presentRecoverDeletedConversationConfirmations;
- (void)presentRecoverJunkConversationConfirmations;
- (void)presentRecoverableConversationDeletionConfirmations;
- (void)presentRecoverableMessageDeletionConfirmations;
@end

@implementation CKConversationConfirmationAlertsController

- (CKConversationConfirmationAlertsController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8.receiver = self;
  v8.super_class = CKConversationConfirmationAlertsController;
  v5 = [(CKConversationConfirmationAlertsController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CKConversationConfirmationAlertsController *)v5 setConfiguration:configurationCopy];
    [(CKConversationConfirmationAlertsController *)v6 _generateSafetyCheckController];
  }

  return v6;
}

- (void)presentRecoverableConversationDeletionConfirmations
{
  configuration = [(CKConversationConfirmationAlertsController *)self configuration];
  [(CKConversationConfirmationAlertsController *)self setShouldPromptBusinessChatSpamReason:0];
  [(CKConversationConfirmationAlertsController *)self setShouldPromptStopBusinessChat:1];
  targetConversations = [configuration targetConversations];
  v5 = [(CKConversationConfirmationAlertsController *)self _identifySpamConversationsToRemove:targetConversations];
  [(CKConversationConfirmationAlertsController *)self setJunkConversations:v5];

  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = [(CKConversationConfirmationAlertsController *)self _shouldConfirmStopSharingLocationForConversations:targetConversations];
  _presentReportSpamReaonsControllerIfNeeded = [(CKConversationConfirmationAlertsController *)self _presentReportSpamReaonsControllerIfNeeded];
  v7 = [(CKConversationConfirmationAlertsController *)self _presentStopBusinessChatAlertIfNeededForConversations:targetConversations];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__CKConversationConfirmationAlertsController_presentRecoverableConversationDeletionConfirmations__block_invoke;
  aBlock[3] = &unk_1E72F3500;
  aBlock[4] = self;
  aBlock[5] = v22;
  v8 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __97__CKConversationConfirmationAlertsController_presentRecoverableConversationDeletionConfirmations__block_invoke_2;
  v15[3] = &unk_1E72F3550;
  v20 = v22;
  v9 = _presentReportSpamReaonsControllerIfNeeded;
  v17 = v9;
  v10 = v7;
  v18 = v10;
  v11 = v8;
  v19 = v11;
  v12 = configuration;
  v16 = v12;
  v13 = _Block_copy(v15);
  cancelBlock = [v12 cancelBlock];
  [(CKConversationConfirmationAlertsController *)self _presentRecoverableConversationDeletionConfirmationWithConfirmedBlock:v13 cancelBlock:cancelBlock];

  _Block_object_dispose(v22, 8);
}

void __97__CKConversationConfirmationAlertsController_presentRecoverableConversationDeletionConfirmations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v5 = v3;
    [*(a1 + 32) _presentStopSharingLocationConfirmationWithActionCompletionBlock:v3];
  }

  else
  {
    if (!v3)
    {
      goto LABEL_6;
    }

    v5 = v3;
    v3[2](v3);
  }

  v4 = v5;
LABEL_6:
}

void __97__CKConversationConfirmationAlertsController_presentRecoverableConversationDeletionConfirmations__block_invoke_2(uint64_t a1, char a2)
{
  *(*(*(a1 + 64) + 8) + 24) &= a2 ^ 1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __97__CKConversationConfirmationAlertsController_presentRecoverableConversationDeletionConfirmations__block_invoke_3;
  v4[3] = &unk_1E72F3528;
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v5 = *(a1 + 32);
  (*(v3 + 16))(v3, v4);
}

void __97__CKConversationConfirmationAlertsController_presentRecoverableConversationDeletionConfirmations__block_invoke_3(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __97__CKConversationConfirmationAlertsController_presentRecoverableConversationDeletionConfirmations__block_invoke_4;
  v3[3] = &unk_1E72EE5D8;
  v2 = *(a1 + 40);
  v5 = *(a1 + 48);
  v4 = *(a1 + 32);
  (*(v2 + 16))(v2, v3);
}

void __97__CKConversationConfirmationAlertsController_presentRecoverableConversationDeletionConfirmations__block_invoke_4(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __97__CKConversationConfirmationAlertsController_presentRecoverableConversationDeletionConfirmations__block_invoke_5;
  v2[3] = &unk_1E72EBA18;
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  (*(v1 + 16))(v1, v2);
}

void __97__CKConversationConfirmationAlertsController_presentRecoverableConversationDeletionConfirmations__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationViewController];
  v3 = [*(a1 + 32) deviceType];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __97__CKConversationConfirmationAlertsController_presentRecoverableConversationDeletionConfirmations__block_invoke_6;
  v4[3] = &unk_1E72EBA18;
  v5 = *(a1 + 32);
  [CKUtilities onboardRecentlyDeletedIfNeeded:v2 deviceType:v3 actionHandler:v4];
}

void __97__CKConversationConfirmationAlertsController_presentRecoverableConversationDeletionConfirmations__block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) alertsCompletedBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) alertsCompletedBlock];
    v3[2]();
  }
}

- (id)_presentStopBusinessChatAlertIfNeededForConversations:(id)conversations
{
  conversationsCopy = conversations;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __100__CKConversationConfirmationAlertsController__presentStopBusinessChatAlertIfNeededForConversations___block_invoke;
  v8[3] = &unk_1E72F3578;
  v8[4] = self;
  v9 = conversationsCopy;
  v5 = conversationsCopy;
  v6 = _Block_copy(v8);

  return v6;
}

void __100__CKConversationConfirmationAlertsController__presentStopBusinessChatAlertIfNeededForConversations___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) shouldPromptStopBusinessChat])
  {
    v3 = [*(a1 + 32) _identifyBusinessConversationToRemove:*(a1 + 40)];
    if (v3)
    {
      [*(a1 + 32) _presentEndBusinessChatConfirmationForBusinessConversation:v3 actionCompletionBlock:v5];
    }

    else if (v5)
    {
      v5[2]();
    }
  }

  else
  {
    v4 = v5;
    if (!v5)
    {
      goto LABEL_10;
    }

    (v5[2])(v5);
  }

  v4 = v5;
LABEL_10:
}

- (id)_presentReportSpamReaonsControllerIfNeeded
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__CKConversationConfirmationAlertsController__presentReportSpamReaonsControllerIfNeeded__block_invoke;
  aBlock[3] = &unk_1E72F2478;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

void __88__CKConversationConfirmationAlertsController__presentReportSpamReaonsControllerIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) shouldPromptBusinessChatSpamReason])
  {
    v4 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [*(a1 + 32) junkConversations];
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
          if ([v10 shouldPresentSpamReasonPicker])
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    if ([v4 count])
    {
      [*(a1 + 32) setShouldPromptStopBusinessChat:0];
      v11 = *(a1 + 32);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __88__CKConversationConfirmationAlertsController__presentReportSpamReaonsControllerIfNeeded__block_invoke_2;
      v12[3] = &unk_1E72ED1C8;
      v13 = v4;
      v14 = v3;
      [v11 _presentReportSpamReasonWithConversations:v13 didReportBlock:v12];
    }

    else
    {
      v3[2](v3);
    }
  }

  else
  {
    v3[2](v3);
  }
}

uint64_t __88__CKConversationConfirmationAlertsController__presentReportSpamReaonsControllerIfNeeded__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) chat];
        [v7 closeSession];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_presentRecoverableConversationDeletionConfirmationWithConfirmedBlock:(id)block cancelBlock:(id)cancelBlock
{
  blockCopy = block;
  cancelBlockCopy = cancelBlock;
  configuration = [(CKConversationConfirmationAlertsController *)self configuration];
  v7 = CKIsRunningInMacCatalyst();
  v8 = 2 * (v7 == 0);
  v9 = CKFrameworkBundle(v7);
  v10 = [v9 localizedStringForKey:@"DELETE" value:&stru_1F04268F8 table:@"ChatKit"];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __128__CKConversationConfirmationAlertsController__presentRecoverableConversationDeletionConfirmationWithConfirmedBlock_cancelBlock___block_invoke;
  v40[3] = &unk_1E72EC218;
  v11 = blockCopy;
  v41 = v11;
  v12 = [CKAlertAction actionWithTitle:v10 style:v8 handler:v40];

  v14 = CKFrameworkBundle(v13);
  v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __128__CKConversationConfirmationAlertsController__presentRecoverableConversationDeletionConfirmationWithConfirmedBlock_cancelBlock___block_invoke_2;
  v38[3] = &unk_1E72EC218;
  v16 = configuration;
  v35 = cancelBlockCopy;
  v39 = v35;
  v33 = [CKAlertAction actionWithTitle:v15 style:1 handler:v38];

  if ([configuration alertControllerStyle] == 1)
  {
    targetConversations = [configuration targetConversations];
    v18 = -[CKConversationConfirmationAlertsController _moveToRecentlyDeletedAlertTitleForConversationsCount:](self, "_moveToRecentlyDeletedAlertTitleForConversationsCount:", [targetConversations count]);
  }

  else
  {
    v18 = 0;
  }

  junkConversations = [(CKConversationConfirmationAlertsController *)self junkConversations];
  v20 = [junkConversations count];

  if (v20)
  {
    _reportSpamConfirmationMessageForJunkConversations = [(CKConversationConfirmationAlertsController *)self _reportSpamConfirmationMessageForJunkConversations];
    v22 = CKFrameworkBundle(_reportSpamConfirmationMessageForJunkConversations);
    v23 = [v22 localizedStringForKey:@"REPORT_SPAM_ALERT_BUTTON_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __128__CKConversationConfirmationAlertsController__presentRecoverableConversationDeletionConfirmationWithConfirmedBlock_cancelBlock___block_invoke_3;
    v36[3] = &unk_1E72F35A0;
    v36[4] = self;
    v37 = v11;
    [CKAlertAction actionWithTitle:v23 style:2 handler:v36];
    v25 = v24 = v11;

    v26 = +[CKAlertController alertControllerWithTitle:message:preferredStyle:](CKAlertController, "alertControllerWithTitle:message:preferredStyle:", v18, _reportSpamConfirmationMessageForJunkConversations, [v16 alertControllerStyle]);
    [v26 addAction:v12];
    [v26 addAction:v25];
  }

  else
  {
    v24 = v11;
    targetConversations2 = [v16 targetConversations];
    _reportSpamConfirmationMessageForJunkConversations = [(CKConversationConfirmationAlertsController *)self _conversationDeletionAlertMessageForConversations:targetConversations2];

    v26 = +[CKAlertController alertControllerWithTitle:message:preferredStyle:](CKAlertController, "alertControllerWithTitle:message:preferredStyle:", v18, _reportSpamConfirmationMessageForJunkConversations, [v16 alertControllerStyle]);
    [v26 addAction:v12];
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isIntroductionsEnabled = [mEMORY[0x1E69A8070] isIntroductionsEnabled];

    if (isIntroductionsEnabled)
    {
      v30 = [(CKConversationConfirmationAlertsController *)self _deleteAndBlockActionWithConfirmedBlock:v24];
      if (v30)
      {
        [v26 addAction:v30];
      }
    }
  }

  [v26 addAction:v33];
  [v26 setPreferredAction:v12];
  [(CKConversationConfirmationAlertsController *)self _configureAppearanceForAlertController:v26];
  presentationViewController = [v16 presentationViewController];
  [v26 presentFromViewController:presentationViewController animated:1 completion:0];
}

uint64_t __128__CKConversationConfirmationAlertsController__presentRecoverableConversationDeletionConfirmationWithConfirmedBlock_cancelBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __128__CKConversationConfirmationAlertsController__presentRecoverableConversationDeletionConfirmationWithConfirmedBlock_cancelBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __128__CKConversationConfirmationAlertsController__presentRecoverableConversationDeletionConfirmationWithConfirmedBlock_cancelBlock___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 junkConversations];
  [v2 _markConversationsAsSpam:v3];

  if (*(a1 + 40))
  {
    [*(a1 + 32) setShouldPromptBusinessChatSpamReason:1];
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

- (void)_presentReportSpamReasonWithConversations:(id)conversations didReportBlock:(id)block
{
  blockCopy = block;
  conversationsCopy = conversations;
  configuration = [(CKConversationConfirmationAlertsController *)self configuration];
  v9 = [CKReportSpamReasonContoller alloc];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __103__CKConversationConfirmationAlertsController__presentReportSpamReasonWithConversations_didReportBlock___block_invoke;
  v19 = &unk_1E72ED1C8;
  v20 = configuration;
  v21 = blockCopy;
  v10 = blockCopy;
  v11 = configuration;
  v12 = [(CKReportSpamReasonContoller *)v9 initWithConversations:conversationsCopy didReportBlock:&v16];

  v13 = objc_alloc(MEMORY[0x1E69DCCD8]);
  v14 = [v13 initWithRootViewController:{v12, v16, v17, v18, v19}];
  [v14 setModalPresentationStyle:2];
  presentationViewController = [v11 presentationViewController];
  [presentationViewController presentViewController:v14 animated:1 completion:0];
}

uint64_t __103__CKConversationConfirmationAlertsController__presentReportSpamReasonWithConversations_didReportBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_presentEndBusinessChatConfirmationForBusinessConversation:(id)conversation actionCompletionBlock:(id)block
{
  conversationCopy = conversation;
  blockCopy = block;
  configuration = [(CKConversationConfirmationAlertsController *)self configuration];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__CKConversationConfirmationAlertsController__presentEndBusinessChatConfirmationForBusinessConversation_actionCompletionBlock___block_invoke;
  aBlock[3] = &unk_1E72ED638;
  v34 = conversationCopy;
  v35 = blockCopy;
  v28 = blockCopy;
  v27 = conversationCopy;
  v9 = _Block_copy(aBlock);
  v10 = CKFrameworkBundle(v9);
  v11 = [v10 localizedStringForKey:@"BUSINESS_LEAVE_CONVERSATION_BUTTON" value:&stru_1F04268F8 table:@"ChatKit"];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __127__CKConversationConfirmationAlertsController__presentEndBusinessChatConfirmationForBusinessConversation_actionCompletionBlock___block_invoke_2;
  v31[3] = &unk_1E72EC218;
  v12 = v9;
  v32 = v12;
  v13 = [CKAlertAction actionWithTitle:v11 style:0 handler:v31];

  v15 = CKFrameworkBundle(v14);
  v16 = [v15 localizedStringForKey:@"BUSINESS_LEAVE_CONVERSATION_NOT_NOW_BUTTON" value:&stru_1F04268F8 table:@"ChatKit"];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __127__CKConversationConfirmationAlertsController__presentEndBusinessChatConfirmationForBusinessConversation_actionCompletionBlock___block_invoke_3;
  v29[3] = &unk_1E72EC218;
  v30 = v12;
  v17 = v12;
  v18 = [CKAlertAction actionWithTitle:v16 style:1 handler:v29];

  v20 = CKFrameworkBundle(v19);
  v21 = [v20 localizedStringForKey:@"BUSINESS_LEAVE_CONVERSATION_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  v22 = CKFrameworkBundle(v21);
  v23 = [v22 localizedStringForKey:@"BUSINESS_LEAVE_CONVERSATION_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
  v24 = +[CKAlertController alertControllerWithTitle:message:preferredStyle:](CKAlertController, "alertControllerWithTitle:message:preferredStyle:", v21, v23, [configuration alertControllerStyle]);

  [v24 addAction:v13];
  [v24 addAction:v18];
  [v24 setPreferredAction:v13];
  [(CKConversationConfirmationAlertsController *)self _configureAppearanceForAlertController:v24];
  presentationViewController = [configuration presentationViewController];
  [v24 presentFromViewController:presentationViewController animated:1 completion:0];
}

uint64_t __127__CKConversationConfirmationAlertsController__presentEndBusinessChatConfirmationForBusinessConversation_actionCompletionBlock___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) chat];
    [v3 closeSession];
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)_presentStopSharingLocationConfirmationWithActionCompletionBlock:(id)block
{
  blockCopy = block;
  configuration = [(CKConversationConfirmationAlertsController *)self configuration];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __111__CKConversationConfirmationAlertsController__presentStopSharingLocationConfirmationWithActionCompletionBlock___block_invoke;
  aBlock[3] = &unk_1E72ED638;
  v6 = configuration;
  v32 = v6;
  v26 = blockCopy;
  v33 = v26;
  v7 = _Block_copy(aBlock);
  v8 = CKFrameworkBundle(v7);
  v9 = [v8 localizedStringForKey:@"STOP_SHARING_ON_DELETE_OR_LEAVE_STOP" value:&stru_1F04268F8 table:@"ChatKit"];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __111__CKConversationConfirmationAlertsController__presentStopSharingLocationConfirmationWithActionCompletionBlock___block_invoke_2;
  v29[3] = &unk_1E72EC218;
  v10 = v7;
  v30 = v10;
  v11 = [CKAlertAction actionWithTitle:v9 style:0 handler:v29];

  v13 = CKFrameworkBundle(v12);
  v14 = [v13 localizedStringForKey:@"STOP_SHARING_ON_DELETE_OR_LEAVE_KEEP" value:&stru_1F04268F8 table:@"ChatKit"];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __111__CKConversationConfirmationAlertsController__presentStopSharingLocationConfirmationWithActionCompletionBlock___block_invoke_3;
  v27[3] = &unk_1E72EC218;
  v28 = v10;
  v15 = v10;
  v16 = [CKAlertAction actionWithTitle:v14 style:0 handler:v27];

  targetConversations = [v6 targetConversations];
  v18 = [targetConversations count];
  v19 = CKFrameworkBundle(v18);
  v20 = v19;
  if (v18 >= 2)
  {
    v21 = @"STOP_SHARING_ON_BULK_DELETE_BODY";
  }

  else
  {
    v21 = @"STOP_SHARING_ON_DELETE_OR_LEAVE_BODY";
  }

  v22 = [v19 localizedStringForKey:v21 value:&stru_1F04268F8 table:@"ChatKit"];

  v23 = +[CKAlertController alertControllerWithTitle:message:preferredStyle:](CKAlertController, "alertControllerWithTitle:message:preferredStyle:", 0, v22, [v6 alertControllerStyle]);
  [v23 addAction:v11];
  [v23 addAction:v16];
  [v23 setPreferredAction:v11];
  [(CKConversationConfirmationAlertsController *)self _configureAppearanceForAlertController:v23];
  presentationViewController = [v6 presentationViewController];
  [v23 presentFromViewController:presentationViewController animated:1 completion:0];
}

uint64_t __111__CKConversationConfirmationAlertsController__presentStopSharingLocationConfirmationWithActionCompletionBlock___block_invoke(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [*(a1 + 32) targetConversations];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v10 + 1) + 8 * v7) chat];
          [v8 stopSharingLocation];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_reportSpamConfirmationMessageForJunkConversations
{
  configuration = [(CKConversationConfirmationAlertsController *)self configuration];
  _spamReportDestinationsForJunkConversations = [(CKConversationConfirmationAlertsController *)self _spamReportDestinationsForJunkConversations];
  v5 = [_spamReportDestinationsForJunkConversations count];
  v6 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:_spamReportDestinationsForJunkConversations];
  _isStoredOnIcloud = [(CKConversationConfirmationAlertsController *)self _isStoredOnIcloud];
  if (v5 < 2)
  {
    if (!_isStoredOnIcloud)
    {
      alertControllerStyle = [configuration alertControllerStyle];
      targetConversations = [configuration targetConversations];
      v25 = [targetConversations count];
      v26 = CKFrameworkBundle(v25);
      v16 = v26;
      if (alertControllerStyle == 1)
      {
        v27 = @"BATCH_DELETE_AND_REPORT_APPLE_ALERT_MESSAGE";
        v28 = @"DELETE_AND_REPORT_APPLE_ALERT_MESSAGE";
      }

      else
      {
        v27 = @"BATCH_DELETE_AND_REPORT_APPLE_ALERT_MESSAGE_IPHONE";
        v28 = @"DELETE_AND_REPORT_APPLE_ALERT_MESSAGE_IPHONE";
      }

      if (v25 >= 2)
      {
        v35 = v27;
      }

      else
      {
        v35 = v28;
      }

      v34 = [v26 localizedStringForKey:v35 value:&stru_1F04268F8 table:@"ChatKit"];
      goto LABEL_29;
    }

    targetConversations = [configuration targetConversations];
    v14 = [targetConversations count];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v14);
    v12 = v11;
    if (v14 >= 2)
    {
      v13 = @"BATCH_DELETE_AND_REPORT_APPLE_ALERT_MESSAGE_ICLOUD";
    }

    else
    {
      v13 = @"DELETE_AND_REPORT_APPLE_ALERT_MESSAGE_ICLOUD";
    }
  }

  else
  {
    if (!_isStoredOnIcloud)
    {
      alertControllerStyle2 = [configuration alertControllerStyle];
      targetConversations = [configuration targetConversations];
      v18 = [targetConversations count];
      v19 = MEMORY[0x1E696AEC0];
      v20 = CKFrameworkBundle(v18);
      v21 = v20;
      if (alertControllerStyle2 == 1)
      {
        v22 = @"BATCH_DELETE_AND_REPORT_APPLE_CARRIER_ALERT_MESSAGE";
        v23 = @"DELETE_AND_REPORT_APPLE_CARRIER_ALERT_MESSAGE";
      }

      else
      {
        v22 = @"BATCH_DELETE_AND_REPORT_APPLE_CARRIER_ALERT_MESSAGE_IPHONE";
        v23 = @"DELETE_AND_REPORT_APPLE_CARRIER_ALERT_MESSAGE_IPHONE";
      }

      if (v18 >= 2)
      {
        v29 = v22;
      }

      else
      {
        v29 = v23;
      }

      v30 = [v20 localizedStringForKey:v29 value:&stru_1F04268F8 table:@"ChatKit"];
      v16 = [v19 stringWithFormat:v30, v6];

      goto LABEL_20;
    }

    targetConversations = [configuration targetConversations];
    v9 = [targetConversations count];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v9);
    v12 = v11;
    if (v9 <= 1)
    {
      v13 = @"DELETE_AND_REPORT_APPLE_CARRIER_ALERT_MESSAGE_ICLOUD";
    }

    else
    {
      v13 = @"BATCH_DELETE_AND_REPORT_APPLE_CARRIER_ALERT_MESSAGE_ICLOUD";
    }
  }

  v15 = [v11 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKit"];
  v16 = [v10 stringWithFormat:v15, v6];

LABEL_20:
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v33 = @"\u200F";
  }

  else
  {
    v33 = @"\u200E";
  }

  v34 = [(__CFString *)v33 stringByAppendingString:v16];
LABEL_29:
  v36 = v34;

  return v36;
}

- (id)_spamReportDestinationsForJunkConversations
{
  v52 = *MEMORY[0x1E69E9840];
  v42 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [(CKConversationConfirmationAlertsController *)self junkConversations];
  v45 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v45)
  {
    v44 = *v48;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v48 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v47 + 1) + 8 * i);
        chat = [v6 chat];
        account = [chat account];
        service = [account service];
        v10 = [service supportsCapability:*MEMORY[0x1E69A7A20]];
        if (v10 && (v11 = MEMORY[0x1E69A7F70], [v6 chat], v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "lastFinishedMessageItem"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "chat"), v3 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v11, "isReportJunkServiceAllowedForMessageItem:junkChatStyle:", v2, objc_msgSend(v3, "chatStyle")) & 1) != 0))
        {
          LOBYTE(isChatBot) = 1;
        }

        else
        {
          chat2 = [v6 chat];
          isChatBot = [chat2 isChatBot];

          if (!v10)
          {

            if (!isChatBot)
            {
              goto LABEL_15;
            }

            goto LABEL_13;
          }
        }

        if ((isChatBot & 1) == 0)
        {
          goto LABEL_15;
        }

LABEL_13:
        v14 = MEMORY[0x1E69A7F58];
        chat3 = [v6 chat];
        lastFinishedMessageItem = [chat3 lastFinishedMessageItem];
        destinationCallerID = [lastFinishedMessageItem destinationCallerID];
        lastAddressedSIMID = [v14 carrierNameForPhoneNumber:destinationCallerID];

        if (lastAddressedSIMID)
        {
          [v42 addObject:lastAddressedSIMID];
          goto LABEL_22;
        }

LABEL_15:
        chat4 = [v6 chat];
        isRCS = [chat4 isRCS];

        if (!isRCS)
        {
          continue;
        }

        chat5 = [v6 chat];
        lastAddressedSIMID = [chat5 lastAddressedSIMID];

        chat6 = [v6 chat];
        lastAddressedHandleID = [chat6 lastAddressedHandleID];

        mEMORY[0x1E69A7F68] = [MEMORY[0x1E69A7F68] sharedInstance];
        ctSubscriptionInfo = [mEMORY[0x1E69A7F68] ctSubscriptionInfo];
        v26 = [ctSubscriptionInfo __im_subscriptionContextForForSimID:lastAddressedSIMID phoneNumber:lastAddressedHandleID];

        if (v26)
        {
          mEMORY[0x1E69A7F50] = [MEMORY[0x1E69A7F50] sharedManager];
          chat7 = [v6 chat];
          v29 = [mEMORY[0x1E69A7F50] networkSupportsSpamReportingForContext:v26 isChatBot:{objc_msgSend(chat7, "isChatBot")}];

          if (v29)
          {
            v30 = MEMORY[0x1E69A7F58];
            chat8 = [v6 chat];
            lastFinishedMessageItem2 = [chat8 lastFinishedMessageItem];
            destinationCallerID2 = [lastFinishedMessageItem2 destinationCallerID];
            v34 = [v30 carrierNameForPhoneNumber:destinationCallerID2];

            if (v34)
            {
              [v42 addObject:v34];
            }
          }
        }

LABEL_22:
      }

      v45 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v45);
  }

  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = [v42 count];
  if (v36)
  {
    allObjects = [v42 allObjects];
    [v35 addObjectsFromArray:allObjects];
  }

  v38 = CKFrameworkBundle(v36);
  v39 = [v38 localizedStringForKey:@"APPLE" value:&stru_1F04268F8 table:@"ChatKit"];
  [v35 addObject:v39];

  v40 = [v35 copy];

  return v40;
}

- (void)presentRecoverableMessageDeletionConfirmations
{
  configuration = [(CKConversationConfirmationAlertsController *)self configuration];
  messagesCount = [configuration messagesCount];
  if (messagesCount)
  {
    v5 = messagesCount;
    objc_initWeak(location, self);
    v6 = CKIsRunningInMacCatalyst();
    if (v6)
    {
      v7 = CKFrameworkBundle(v6);
      v8 = [v7 localizedStringForKey:@"DELETE" value:&stru_1F04268F8 table:@"ChatKit"];
    }

    else
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = CKFrameworkBundle(v6);
      v12 = [v11 localizedStringForKey:@"DELETE_MESSAGES" value:&stru_1F04268F8 table:@"ChatKit"];
      v7 = [v10 localizedStringWithFormat:v12, v5];

      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

      if (userInterfaceLayoutDirection == 1)
      {
        v15 = @"\u200F";
      }

      else
      {
        v15 = @"\u200E";
      }

      v8 = [(__CFString *)v15 stringByAppendingString:v7];
    }

    v16 = v8;

    v17 = 2 * (CKIsRunningInMacCatalyst() == 0);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __92__CKConversationConfirmationAlertsController_presentRecoverableMessageDeletionConfirmations__block_invoke;
    v33[3] = &unk_1E72EBFE8;
    v18 = configuration;
    v34 = v18;
    v19 = [CKAlertAction actionWithTitle:v16 style:v17 handler:v33];
    v20 = CKFrameworkBundle(v19);
    v21 = [v20 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __92__CKConversationConfirmationAlertsController_presentRecoverableMessageDeletionConfirmations__block_invoke_3;
    v31[3] = &unk_1E72EBFE8;
    v22 = v18;
    v32 = v22;
    v23 = [CKAlertAction actionWithTitle:v21 style:1 handler:v31];

    v24 = [(CKConversationConfirmationAlertsController *)self _moveToRecentlyDeletedAlertTitleForMessagesCount:v5];
    v25 = [(CKConversationConfirmationAlertsController *)self _moveToRecentlyDeletedAlertMessageForMessagesCount:v5];
    v26 = +[CKAlertController alertControllerWithTitle:message:preferredStyle:](CKAlertController, "alertControllerWithTitle:message:preferredStyle:", v24, v25, [v22 alertControllerStyle]);
    [v26 addAction:v19];
    [v26 addAction:v23];
    [v26 setPreferredAction:v19];
    WeakRetained = objc_loadWeakRetained(location);
    [WeakRetained _configureAppearanceForAlertController:v26];

    sender = [v22 sender];
    if (![v22 alertControllerStyle])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        popoverPresentationController = [v26 popoverPresentationController];
        [popoverPresentationController setBarButtonItem:sender];
      }
    }

    presentationViewController = [v22 presentationViewController];
    [v26 presentFromViewController:presentationViewController animated:1 completion:0];

    objc_destroyWeak(location);
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Delete requested on 0 messages. No alerts presented.", location, 2u);
    }
  }
}

void __92__CKConversationConfirmationAlertsController_presentRecoverableMessageDeletionConfirmations__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationViewController];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __92__CKConversationConfirmationAlertsController_presentRecoverableMessageDeletionConfirmations__block_invoke_2;
  v3[3] = &unk_1E72EBA18;
  v4 = *(a1 + 32);
  [CKUtilities onboardRecentlyDeletedIfNeeded:v2 actionHandler:v3];
}

void __92__CKConversationConfirmationAlertsController_presentRecoverableMessageDeletionConfirmations__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) alertsCompletedBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) alertsCompletedBlock];
    v3[2]();
  }
}

void __92__CKConversationConfirmationAlertsController_presentRecoverableMessageDeletionConfirmations__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) cancelBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) cancelBlock];
    v3[2]();
  }
}

- (void)presentPermanentConversationDeletionConfirmations
{
  configuration = [(CKConversationConfirmationAlertsController *)self configuration];
  targetConversations = [configuration targetConversations];
  v5 = [(CKConversationConfirmationAlertsController *)self _numberOfRecoverableMessagesInConversations:targetConversations];

  if (v5)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = CKFrameworkBundle(v6);
    v9 = [v8 localizedStringForKey:@"DELETE_MESSAGES" value:&stru_1F04268F8 table:@"ChatKit"];
    v10 = [v7 localizedStringWithFormat:v9, v5];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v13 = @"\u200F";
    }

    else
    {
      v13 = @"\u200E";
    }

    v14 = [(__CFString *)v13 stringByAppendingString:v10];

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __95__CKConversationConfirmationAlertsController_presentPermanentConversationDeletionConfirmations__block_invoke;
    v31[3] = &unk_1E72EBFE8;
    v15 = configuration;
    v32 = v15;
    v16 = [CKAlertAction actionWithTitle:v14 style:2 handler:v31];

    v18 = CKFrameworkBundle(v17);
    v19 = [v18 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __95__CKConversationConfirmationAlertsController_presentPermanentConversationDeletionConfirmations__block_invoke_2;
    v29[3] = &unk_1E72EBFE8;
    v20 = v15;
    v30 = v20;
    v21 = [CKAlertAction actionWithTitle:v19 style:1 handler:v29];

    alertControllerStyle = [v20 alertControllerStyle];
    v23 = [(CKConversationConfirmationAlertsController *)self _permanentDeletionAlertTitleForCount:v5];
    v24 = v23;
    if (alertControllerStyle == 1)
    {
      v25 = [(CKConversationConfirmationAlertsController *)self _permanentDeletionAlertMessageForCount:v5];
    }

    else
    {
      v25 = v23;
      v24 = 0;
    }

    v27 = +[CKAlertController alertControllerWithTitle:message:preferredStyle:](CKAlertController, "alertControllerWithTitle:message:preferredStyle:", v24, v25, [v20 alertControllerStyle]);
    [v27 addAction:v16];
    [v27 addAction:v21];
    [v27 setPreferredAction:v16];
    [(CKConversationConfirmationAlertsController *)self _configureAppearanceForAlertController:v27];
    presentationViewController = [v20 presentationViewController];
    [v27 presentFromViewController:presentationViewController animated:1 completion:0];
  }

  else if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Delete requested on 0 messages", buf, 2u);
    }
  }
}

void __95__CKConversationConfirmationAlertsController_presentPermanentConversationDeletionConfirmations__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) alertsCompletedBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) alertsCompletedBlock];
    v3[2]();
  }
}

void __95__CKConversationConfirmationAlertsController_presentPermanentConversationDeletionConfirmations__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cancelBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) cancelBlock];
    v3[2]();
  }
}

- (void)presentPermanentJunkConversationDeletionConfirmations
{
  configuration = [(CKConversationConfirmationAlertsController *)self configuration];
  targetConversations = [configuration targetConversations];
  v5 = [targetConversations count];
  if (v5)
  {
    v6 = v5;
    v38 = targetConversations;
    v7 = [(CKConversationConfirmationAlertsController *)self _identifySpamConversationsToRemove:targetConversations];
    [(CKConversationConfirmationAlertsController *)self setJunkConversations:v7];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __99__CKConversationConfirmationAlertsController_presentPermanentJunkConversationDeletionConfirmations__block_invoke;
    aBlock[3] = &unk_1E72EBA18;
    v39 = configuration;
    v8 = configuration;
    v49 = v8;
    v9 = _Block_copy(aBlock);
    _presentReportSpamReaonsControllerIfNeeded = [(CKConversationConfirmationAlertsController *)self _presentReportSpamReaonsControllerIfNeeded];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(_presentReportSpamReaonsControllerIfNeeded);
    v12 = [v11 localizedStringForKey:@"DELETE_CONVERSATION" value:&stru_1F04268F8 table:@"ChatKit"];
    v13 = [v10 localizedStringWithFormat:v12, v6];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v16 = @"\u200F";
    }

    else
    {
      v16 = @"\u200E";
    }

    v17 = [(__CFString *)v16 stringByAppendingString:v13];

    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __99__CKConversationConfirmationAlertsController_presentPermanentJunkConversationDeletionConfirmations__block_invoke_2;
    v46[3] = &unk_1E72F35C8;
    v37 = v9;
    v46[4] = self;
    v47 = v37;
    v18 = [CKAlertAction actionWithTitle:v17 style:2 handler:v46];

    v20 = CKFrameworkBundle(v19);
    v21 = [v20 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __99__CKConversationConfirmationAlertsController_presentPermanentJunkConversationDeletionConfirmations__block_invoke_3;
    v44[3] = &unk_1E72EBFE8;
    v22 = v8;
    v45 = v22;
    v23 = [CKAlertAction actionWithTitle:v21 style:1 handler:v44];

    if ([v22 alertControllerStyle] == 1)
    {
      v24 = [(CKConversationConfirmationAlertsController *)self _permanentJunkDeletionAlertTitleForCount:v6];
    }

    else
    {
      v24 = 0;
    }

    junkConversations = [(CKConversationConfirmationAlertsController *)self junkConversations];
    v27 = [junkConversations count];

    v28 = _presentReportSpamReaonsControllerIfNeeded;
    if (v27)
    {
      _reportSpamConfirmationMessageForJunkConversations = [(CKConversationConfirmationAlertsController *)self _reportSpamConfirmationMessageForJunkConversations];
      v30 = CKFrameworkBundle(_reportSpamConfirmationMessageForJunkConversations);
      v31 = [v30 localizedStringForKey:@"REPORT_SPAM_ALERT_BUTTON_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __99__CKConversationConfirmationAlertsController_presentPermanentJunkConversationDeletionConfirmations__block_invoke_4;
      v41[3] = &unk_1E72F35F0;
      v41[4] = self;
      v43 = _presentReportSpamReaonsControllerIfNeeded;
      v32 = v22;
      v42 = v32;
      v33 = [CKAlertAction actionWithTitle:v31 style:2 handler:v41];

      v34 = v32;
      v28 = _presentReportSpamReaonsControllerIfNeeded;
      v35 = +[CKAlertController alertControllerWithTitle:message:preferredStyle:](CKAlertController, "alertControllerWithTitle:message:preferredStyle:", v24, _reportSpamConfirmationMessageForJunkConversations, [v34 alertControllerStyle]);
      [v35 addAction:v18];
      [v35 addAction:v33];

      targetConversations = v38;
    }

    else
    {
      if ([v22 alertControllerStyle] == 1 || !objc_msgSend(v22, "alertControllerStyle"))
      {
        targetConversations = v38;
        _reportSpamConfirmationMessageForJunkConversations = [(CKConversationConfirmationAlertsController *)self _conversationDeletionAlertMessageForConversations:v38];
      }

      else
      {
        _reportSpamConfirmationMessageForJunkConversations = 0;
        targetConversations = v38;
      }

      v35 = +[CKAlertController alertControllerWithTitle:message:preferredStyle:](CKAlertController, "alertControllerWithTitle:message:preferredStyle:", v24, _reportSpamConfirmationMessageForJunkConversations, [v22 alertControllerStyle]);
      [v35 addAction:v18];
    }

    [v35 addAction:v23];
    [v35 setPreferredAction:v18];
    [(CKConversationConfirmationAlertsController *)self _configureAppearanceForAlertController:v35];
    presentationViewController = [v22 presentationViewController];
    [v35 presentFromViewController:presentationViewController animated:1 completion:0];

    configuration = v39;
  }

  else if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Delete requested on 0 messages", buf, 2u);
    }
  }
}

void __99__CKConversationConfirmationAlertsController_presentPermanentJunkConversationDeletionConfirmations__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) alertsCompletedBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) alertsCompletedBlock];
    v3[2]();
  }
}

void __99__CKConversationConfirmationAlertsController_presentPermanentJunkConversationDeletionConfirmations__block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = [v2 junkConversations];
  [v2 _trackEvent:0 forConversations:v3];
}

void __99__CKConversationConfirmationAlertsController_presentPermanentJunkConversationDeletionConfirmations__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) cancelBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) cancelBlock];
    v3[2]();
  }
}

void __99__CKConversationConfirmationAlertsController_presentPermanentJunkConversationDeletionConfirmations__block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 junkConversations];
  [v2 _markConversationsAsSpam:v3];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__CKConversationConfirmationAlertsController_presentPermanentJunkConversationDeletionConfirmations__block_invoke_5;
  v7[3] = &unk_1E72EBA18;
  v4 = *(a1 + 48);
  v8 = *(a1 + 40);
  (*(v4 + 16))(v4, v7);
  v5 = *(a1 + 32);
  v6 = [v5 junkConversations];
  [v5 _trackEvent:1 forConversations:v6];
}

void __99__CKConversationConfirmationAlertsController_presentPermanentJunkConversationDeletionConfirmations__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) alertsCompletedBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) alertsCompletedBlock];
    v3[2]();
  }
}

- (void)presentRecoverDeletedConversationConfirmations
{
  v47 = *MEMORY[0x1E69E9840];
  configuration = [(CKConversationConfirmationAlertsController *)self configuration];
  targetConversations = [configuration targetConversations];
  v3 = [(CKConversationConfirmationAlertsController *)self _numberOfRecoverableMessagesInConversations:targetConversations];
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0x1E696AEC0];
    v6 = CKFrameworkBundle(v3);
    v7 = [v6 localizedStringForKey:@"RECENTLY_DELETED_RECOVER_ACTION_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v8 = [v5 localizedStringWithFormat:v7, v4];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v11 = @"\u200F";
    }

    else
    {
      v11 = @"\u200E";
    }

    v33 = [(__CFString *)v11 stringByAppendingString:v8];

    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __92__CKConversationConfirmationAlertsController_presentRecoverDeletedConversationConfirmations__block_invoke;
    v43[3] = &unk_1E72EBFE8;
    v12 = configuration;
    v44 = v12;
    v34 = [CKAlertAction actionWithTitle:v33 style:0 handler:v43];
    v13 = CKFrameworkBundle(v34);
    v14 = [v13 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __92__CKConversationConfirmationAlertsController_presentRecoverDeletedConversationConfirmations__block_invoke_2;
    v41[3] = &unk_1E72EBFE8;
    v15 = v12;
    v42 = v15;
    v32 = [CKAlertAction actionWithTitle:v14 style:1 handler:v41];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v16 = targetConversations;
    v17 = 0;
    v18 = [v16 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v18)
    {
      v19 = *v38;
      do
      {
        v20 = 0;
        do
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(v16);
          }

          chat = [*(*(&v37 + 1) + 8 * v20) chat];
          isDeletingIncomingMessages = [chat isDeletingIncomingMessages];

          v17 += isDeletingIncomingMessages;
          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v18);
    }

    v23 = [v16 count];
    alertControllerStyle = [v15 alertControllerStyle];
    v25 = v23 - v17;
    if (alertControllerStyle == 1)
    {
      if (v17)
      {
        [(CKConversationConfirmationAlertsController *)self _recoveryAlertTitleForBlockedConversationsCount:v17 allowedConversationsCount:v25];
      }

      else
      {
        [(CKConversationConfirmationAlertsController *)self _recoveryAlertTitleForMessagesCount:v4, v25];
      }
      v29 = ;
      v28 = [(CKConversationConfirmationAlertsController *)self _recoveryAlertMessageForMessagesCount:v4];
      goto LABEL_27;
    }

    if (v17)
    {
      v27 = [(CKConversationConfirmationAlertsController *)self _recoveryAlertMessageForBlockedConversationsCount:v17 allowedConversationsCount:v25];
    }

    else
    {
      if ([v15 alertControllerStyle])
      {
        v28 = 0;
        goto LABEL_26;
      }

      v27 = [(CKConversationConfirmationAlertsController *)self _recoveryAlertMessageForMessagesCount:v4];
    }

    v28 = v27;
LABEL_26:
    v29 = 0;
LABEL_27:
    v30 = +[CKAlertController alertControllerWithTitle:message:preferredStyle:](CKAlertController, "alertControllerWithTitle:message:preferredStyle:", v29, v28, [v15 alertControllerStyle]);
    [v30 addAction:v34];
    [v30 addAction:v32];
    [v30 setPreferredAction:v34];
    [(CKConversationConfirmationAlertsController *)self _configureAppearanceForAlertController:v30];
    presentationViewController = [v15 presentationViewController];
    [v30 presentFromViewController:presentationViewController animated:1 completion:0];

    goto LABEL_28;
  }

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Recover requested on 0 messages", buf, 2u);
    }
  }

LABEL_28:
}

void __92__CKConversationConfirmationAlertsController_presentRecoverDeletedConversationConfirmations__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) alertsCompletedBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) alertsCompletedBlock];
    v3[2]();
  }
}

void __92__CKConversationConfirmationAlertsController_presentRecoverDeletedConversationConfirmations__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cancelBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) cancelBlock];
    v3[2]();
  }
}

- (void)presentRecoverJunkConversationConfirmations
{
  configuration = [(CKConversationConfirmationAlertsController *)self configuration];
  alertControllerStyle = [configuration alertControllerStyle];
  targetConversations = [configuration targetConversations];
  v6 = [targetConversations count];
  if (v6)
  {
    v22 = targetConversations;
    v7 = CKFrameworkBundle(v6);
    v8 = [v7 localizedStringForKey:@"REMOVE_FROM_JUNK" value:&stru_1F04268F8 table:@"ChatKit"];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __89__CKConversationConfirmationAlertsController_presentRecoverJunkConversationConfirmations__block_invoke;
    v25[3] = &unk_1E72EBFE8;
    v9 = configuration;
    v26 = v9;
    v21 = v8;
    v10 = [CKAlertAction actionWithTitle:v8 style:0 handler:v25];
    v11 = CKFrameworkBundle(v10);
    v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __89__CKConversationConfirmationAlertsController_presentRecoverJunkConversationConfirmations__block_invoke_2;
    v23[3] = &unk_1E72EBFE8;
    v13 = v9;
    v24 = v13;
    v14 = [CKAlertAction actionWithTitle:v12 style:1 handler:v23];

    v15 = 0;
    if (alertControllerStyle)
    {
      v16 = 0;
      if (alertControllerStyle != 1)
      {
LABEL_11:
        v19 = [CKAlertController alertControllerWithTitle:v16 message:v15 preferredStyle:alertControllerStyle];
        [v19 addAction:v10];
        [v19 addAction:v14];
        [v19 setPreferredAction:v10];
        [(CKConversationConfirmationAlertsController *)self _configureAppearanceForAlertController:v19];
        presentationViewController = [v13 presentationViewController];
        [v19 presentFromViewController:presentationViewController animated:1 completion:0];

        targetConversations = v22;
        goto LABEL_12;
      }

      v17 = v22;
      v15 = -[CKConversationConfirmationAlertsController _junkRecoveryAlertTitleForCount:](self, "_junkRecoveryAlertTitleForCount:", [v22 count]);
    }

    else
    {
      v17 = v22;
    }

    v16 = v15;
    v15 = -[CKConversationConfirmationAlertsController _junkRecoveryAlertMessageForCount:](self, "_junkRecoveryAlertMessageForCount:", [v17 count]);
    goto LABEL_11;
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Junk recovery requested on 0 conversations", buf, 2u);
    }
  }

LABEL_12:
}

void __89__CKConversationConfirmationAlertsController_presentRecoverJunkConversationConfirmations__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) alertsCompletedBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) alertsCompletedBlock];
    v3[2]();
  }
}

void __89__CKConversationConfirmationAlertsController_presentRecoverJunkConversationConfirmations__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cancelBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) cancelBlock];
    v3[2]();
  }
}

- (void)_markConversationsAsSpam:(id)spam
{
  v58 = *MEMORY[0x1E69E9840];
  spamCopy = spam;
  v4 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = spamCopy;
  v5 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v5)
  {
    v6 = *v51;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v51 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v50 + 1) + 8 * i);
        chat = [v8 chat];
        if (([chat isBusinessChat] & 1) == 0)
        {

LABEL_10:
          [v4 addObject:v8];
          continue;
        }

        chat2 = [v8 chat];
        isChatBot = [chat2 isChatBot];

        if (isChatBot)
        {
          goto LABEL_10;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v5);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v40 = v4;
  v44 = [v40 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v44)
  {
    v43 = *v47;
    *&v12 = 67109120;
    v39 = v12;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v47 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v14 = *(*(&v46 + 1) + 8 * j);
        mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        isReportJunkEverywhereEnabled = [mEMORY[0x1E69A8070] isReportJunkEverywhereEnabled];

        chat3 = [v14 chat];
        v18 = chat3;
        if (isReportJunkEverywhereEnabled)
        {
          reportJunk = [chat3 reportJunk];
          goto LABEL_35;
        }

        _messageToReportJunk = [chat3 _messageToReportJunk];

        v21 = MEMORY[0x1E69A5CA0];
        service = [_messageToReportJunk service];
        v45 = [v21 serviceWithInternalName:service];

        v23 = [v45 supportsCapability:*MEMORY[0x1E69A7A20]];
        if (v23)
        {
          v24 = MEMORY[0x1E69A7F70];
          chat4 = [v14 chat];
          if ([v24 isReportJunkServiceAllowedForMessageItem:_messageToReportJunk junkChatStyle:{objc_msgSend(chat4, "chatStyle")}])
          {

LABEL_27:
            chat5 = [v14 chat];
            [chat5 reportJunkToCarrierViaRelay:0];

            reportJunk = 1;
            goto LABEL_28;
          }
        }

        chat6 = [v14 chat];
        isChatBot2 = [chat6 isChatBot];

        if (v23)
        {

          if (isChatBot2)
          {
            goto LABEL_27;
          }
        }

        else if (isChatBot2)
        {
          goto LABEL_27;
        }

        reportJunk = 0;
LABEL_28:
        chat7 = [v14 chat];
        isChatBot3 = [chat7 isChatBot];

        chat8 = [v14 chat];
        lastIncomingFinishedMessage = [chat8 lastIncomingFinishedMessage];
        sender = [lastIncomingFinishedMessage sender];
        service2 = [sender service];
        rcsService = [MEMORY[0x1E69A5CA0] rcsService];
        v35 = service2 == rcsService;

        if ((isChatBot3 | v35))
        {
          if (IMOSLoggingEnabled())
          {
            v36 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              *buf = v39;
              v55 = isChatBot3;
              _os_log_impl(&dword_19020E000, v36, OS_LOG_TYPE_INFO, "Starting to report lazuli spam. isBot: %{BOOL}d", buf, 8u);
            }
          }

          chat9 = [v14 chat];
          [chat9 reportLazuliSpam:0 isBot:isChatBot3];
        }

        v18 = _messageToReportJunk;
LABEL_35:

        chat10 = [v14 chat];
        [chat10 markAsSpam:+[CKUtilities messageJunkStatus](CKUtilities isJunkReportedToCarrier:{"messageJunkStatus"), reportJunk}];
      }

      v44 = [v40 countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v44);
  }
}

- (id)_identifySpamConversationsToRemove:(id)remove
{
  v45 = *MEMORY[0x1E69E9840];
  removeCopy = remove;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = IMSMSReportSpamExtensionAvailable();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = removeCopy;
  v7 = [v6 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v41;
    v38 = v4;
    v39 = v5;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v40 + 1) + 8 * i);
        chat = [v11 chat];
        if ([chat isBusinessChat])
        {
        }

        else
        {
          chat2 = [v11 chat];
          numberOfTimesRespondedToThread = [chat2 numberOfTimesRespondedToThread];

          if (numberOfTimesRespondedToThread > 2)
          {
            continue;
          }
        }

        if (([v11 isStewieConversation] & 1) == 0)
        {
          chat3 = [v11 chat];
          isStewieSharingChat = [chat3 isStewieSharingChat];

          if ((isStewieSharingChat & 1) == 0)
          {
            chat4 = [v11 chat];
            v18 = [chat4 supportsFilteringExtensions] & v5;

            if ((v18 & 1) == 0)
            {
              chat5 = [v11 chat];
              hasKnownParticipants = [chat5 hasKnownParticipants];

              if ((hasKnownParticipants & 1) == 0)
              {
                chat6 = [v11 chat];
                chatItems = [chat6 chatItems];
                messages = [chatItems messages];
                firstObject = [messages firstObject];

                chat7 = [v11 chat];
                if ([chat7 isMapKitBusinessChat])
                {

                  v5 = v39;
                  goto LABEL_16;
                }

                isFromMe = [firstObject isFromMe];

                v5 = v39;
                if ((isFromMe & 1) == 0)
                {
LABEL_16:
                  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
                  isIntroductionsEnabled = [mEMORY[0x1E69A8070] isIntroductionsEnabled];

                  if (!isIntroductionsEnabled || ([v11 chat], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isFiltered"), v29, v30 != 2))
                  {
                    if ((IMShouldHandleInternalPhishingAttempts() & 1) == 0)
                    {
                      chat8 = [v11 chat];
                      account = [chat8 account];
                      service = [account service];
                      rcsService = [MEMORY[0x1E69A5C90] rcsService];
                      if (service == rcsService)
                      {
                        chat9 = [v11 chat];
                        if ([chat9 isChatBot])
                        {
                          chat10 = [v11 chat];
                          [chat10 lastSentMessage];
                        }
                      }

                      v4 = v38;
                      v5 = v39;
                    }

                    [v4 addObject:v11];
                  }
                }

                continue;
              }
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v8);
  }

  return v4;
}

- (BOOL)_hasChatSharingLocationInConversations:(id)conversations
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  conversationsCopy = conversations;
  v4 = [conversationsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(conversationsCopy);
        }

        chat = [*(*(&v10 + 1) + 8 * i) chat];
        hasRecipientsFollowingLocation = [chat hasRecipientsFollowingLocation];

        if (hasRecipientsFollowingLocation)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [conversationsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)_deleteAndBlockActionWithConfirmedBlock:(id)block
{
  blockCopy = block;
  configuration = [(CKConversationConfirmationAlertsController *)self configuration];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x1E69A8070] isIntroductionsEnabled];

  if (!isIntroductionsEnabled)
  {
    goto LABEL_7;
  }

  targetConversations = [configuration targetConversations];
  v9 = [targetConversations count];

  if (v9 > 1)
  {
    goto LABEL_7;
  }

  targetConversations2 = [configuration targetConversations];
  firstObject = [targetConversations2 firstObject];

  chat = [firstObject chat];
  allParticipantsAreContacts = [chat allParticipantsAreContacts];

  if (!allParticipantsAreContacts || ([firstObject isGroupConversation] & 1) != 0 || (objc_msgSend(firstObject, "chat"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "allParticipantsBlocked"), v14, v15))
  {

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v18 = CKIsRunningInMacCatalyst();
  v19 = 2 * (v18 == 0);
  v20 = CKFrameworkBundle(v18);
  v21 = [v20 localizedStringForKey:@"DELETE_AND_BLOCK_CONVERSATION_SHORT" value:&stru_1F04268F8 table:@"ChatKit"];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __86__CKConversationConfirmationAlertsController__deleteAndBlockActionWithConfirmedBlock___block_invoke;
  v23[3] = &unk_1E72EDA18;
  v24 = firstObject;
  selfCopy = self;
  v26 = configuration;
  v27 = blockCopy;
  v22 = firstObject;
  v16 = [CKAlertAction actionWithTitle:v21 style:v19 handler:v23];

LABEL_8:

  return v16;
}

void __86__CKConversationConfirmationAlertsController__deleteAndBlockActionWithConfirmedBlock___block_invoke(uint64_t a1)
{
  v2 = CKFrameworkBundle(a1);
  v3 = [v2 localizedStringForKey:@"BLOCK_SENDER_INFO" value:&stru_1F04268F8 table:@"ChatKit"];
  v4 = [CKAlertController alertControllerWithTitle:0 message:v3 preferredStyle:0];

  v6 = CKFrameworkBundle(v5);
  v7 = [v6 localizedStringForKey:@"BLOCK_CONTACT" value:&stru_1F04268F8 table:@"ChatKit"];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __86__CKConversationConfirmationAlertsController__deleteAndBlockActionWithConfirmedBlock___block_invoke_2;
  v21[3] = &unk_1E72EDA18;
  *&v8 = *(a1 + 32);
  *(&v8 + 1) = *(a1 + 40);
  v18 = v8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v22 = v18;
  v23 = v11;
  v12 = [CKAlertAction actionWithTitle:v7 style:2 handler:v21];

  v14 = CKFrameworkBundle(v13);
  v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __86__CKConversationConfirmationAlertsController__deleteAndBlockActionWithConfirmedBlock___block_invoke_5;
  v19[3] = &unk_1E72EC218;
  v20 = *(a1 + 56);
  v16 = [CKAlertAction actionWithTitle:v15 style:1 handler:v19];

  [v4 addAction:v12];
  [v4 addAction:v16];
  v17 = [*(a1 + 48) presentationViewController];
  [v4 presentFromViewController:v17 animated:1 completion:0];
}

void __86__CKConversationConfirmationAlertsController__deleteAndBlockActionWithConfirmedBlock___block_invoke_2(id *a1)
{
  v2 = [a1[4] recipient];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 cnContact];
    v5 = [MEMORY[0x1E69A7F20] sharedBlockList];
    [v5 blockContact:v4];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CD58]);
  }

  if ([MEMORY[0x1E69A7FD0] isCNContactAKnownContact:v4])
  {
    v6 = [a1[5] safetyCheckHelper];
    v7 = [a1[6] presentationViewController];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __86__CKConversationConfirmationAlertsController__deleteAndBlockActionWithConfirmedBlock___block_invoke_3;
    v9[3] = &unk_1E72ED1F0;
    v10 = a1[7];
    [v6 presentSafetyCheckFromController:v7 completion:v9];
  }

  else
  {
    v8 = a1[7];
    if (v8)
    {
      v8[2](v8, 0);
    }
  }
}

void __86__CKConversationConfirmationAlertsController__deleteAndBlockActionWithConfirmedBlock___block_invoke_3(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __86__CKConversationConfirmationAlertsController__deleteAndBlockActionWithConfirmedBlock___block_invoke_4;
  v3[3] = &unk_1E72ED478;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

uint64_t __86__CKConversationConfirmationAlertsController__deleteAndBlockActionWithConfirmedBlock___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

uint64_t __86__CKConversationConfirmationAlertsController__deleteAndBlockActionWithConfirmedBlock___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (unint64_t)_numberOfRecoverableMessagesInConversations:(id)conversations
{
  v16 = *MEMORY[0x1E69E9840];
  conversationsCopy = conversations;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [conversationsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(conversationsCopy);
        }

        chat = [*(*(&v11 + 1) + 8 * i) chat];
        v6 += [chat recoverableMessagesCount];
      }

      v5 = [conversationsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_moveToRecentlyDeletedAlertTitleForConversationsCount:(unint64_t)count
{
  _isStoredOnIcloud = [(CKConversationConfirmationAlertsController *)self _isStoredOnIcloud];
  if (_isStoredOnIcloud)
  {
    v5 = CKFrameworkBundle(_isStoredOnIcloud);
    v6 = [v5 localizedStringForKey:@"CONVERSATIONLIST_RECOVERABLE_DELETION_ICLOUD_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  else
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = CKFrameworkBundle(_isStoredOnIcloud);
    v9 = [v8 localizedStringForKey:@"DELETE_CONVERSATION" value:&stru_1F04268F8 table:@"ChatKit"];
    v5 = [v7 localizedStringWithFormat:v9, count];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v12 = @"\u200F";
    }

    else
    {
      v12 = @"\u200E";
    }

    v6 = [(__CFString *)v12 stringByAppendingString:v5];
  }

  v13 = v6;

  return v13;
}

- (id)_conversationDeletionAlertMessageForConversations:(id)conversations
{
  v24 = *MEMORY[0x1E69E9840];
  conversationsCopy = conversations;
  configuration = [(CKConversationConfirmationAlertsController *)self configuration];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = conversationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v19 + 1) + 8 * i) hasCancellableScheduledMessage])
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  if ([(CKConversationConfirmationAlertsController *)self _isStoredOnIcloud])
  {
    v12 = [v6 count];
    v13 = CKFrameworkBundle(v12);
    if (v12 == 1)
    {
      if (v11)
      {
        v14 = @"SCHEDULED_DELETE_ALERT_MESSAGE_ON_ICLOUD";
      }

      else
      {
        v14 = @"DELETE_ALERT_MESSAGE_ON_ICLOUD";
      }
    }

    else if (v11)
    {
      v14 = @"SCHEDULED_BATCH_DELETE_ALERT_MESSAGE_ON_ICLOUD";
    }

    else
    {
      v14 = @"BATCH_DELETE_ALERT_MESSAGE_ON_ICLOUD";
    }
  }

  else
  {
    alertControllerStyle = [configuration alertControllerStyle];
    v16 = [v6 count];
    v13 = CKFrameworkBundle(v16);
    if (alertControllerStyle == 1)
    {
      if (v16 == 1)
      {
        if (v11)
        {
          v14 = @"SCHEDULED_DELETE_ALERT_MESSAGE";
        }

        else
        {
          v14 = @"DELETE_ALERT_MESSAGE";
        }
      }

      else if (v11)
      {
        v14 = @"SCHEDULED_BATCH_DELETE_ALERT_MESSAGE";
      }

      else
      {
        v14 = @"BATCH_DELETE_ALERT_MESSAGE";
      }
    }

    else if (v16 == 1)
    {
      if (v11)
      {
        v14 = @"SCHEDULED_DELETE_CONVERSATION_MESSAGE";
      }

      else
      {
        v14 = @"DELETE_CONVERSATION_MESSAGE";
      }
    }

    else if (v11)
    {
      v14 = @"SCHEDULED_BATCH_DELETE_CONVERSATION_MESSAGE";
    }

    else
    {
      v14 = @"BATCH_DELETE_CONVERSATION_MESSAGE";
    }
  }

  v17 = [v13 localizedStringForKey:v14 value:&stru_1F04268F8 table:{@"ChatKit", v19}];

  return v17;
}

- (id)_moveToRecentlyDeletedAlertTitleForMessagesCount:(unint64_t)count
{
  configuration = [(CKConversationConfirmationAlertsController *)self configuration];
  if ([configuration alertControllerStyle])
  {
    _isStoredOnIcloud = [(CKConversationConfirmationAlertsController *)self _isStoredOnIcloud];
    if (_isStoredOnIcloud)
    {
      v7 = CKFrameworkBundle(_isStoredOnIcloud);
      v8 = [v7 localizedStringForKey:@"CONVERSATIONLIST_RECOVERABLE_DELETION_ICLOUD_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    }

    else
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = CKFrameworkBundle(_isStoredOnIcloud);
      v12 = [v11 localizedStringForKey:@"DELETE_MESSAGES" value:&stru_1F04268F8 table:@"ChatKit"];
      v7 = [v10 localizedStringWithFormat:v12, count];

      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

      if (userInterfaceLayoutDirection == 1)
      {
        v15 = @"\u200F";
      }

      else
      {
        v15 = @"\u200E";
      }

      v8 = [(__CFString *)v15 stringByAppendingString:v7];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_moveToRecentlyDeletedAlertMessageForMessagesCount:(unint64_t)count
{
  _isStoredOnIcloud = [(CKConversationConfirmationAlertsController *)self _isStoredOnIcloud];
  if (_isStoredOnIcloud)
  {
    v5 = CKFrameworkBundle(_isStoredOnIcloud);
    if (count > 1)
    {
      v6 = @"BATCH_DELETE_INDIVIDUAL_MESSAGE_ON_ICLOUD";
    }

    else
    {
      v6 = @"DELETE_INDIVIDUAL_MESSAGE_ON_ICLOUD";
    }
  }

  else
  {
    v7 = CKIsRunningInMacCatalyst();
    if (!v7)
    {
      v8 = 0;
      goto LABEL_11;
    }

    v5 = CKFrameworkBundle(v7);
    if (count > 1)
    {
      v6 = @"DELETE_MULTIPLE_MESSAGES";
    }

    else
    {
      v6 = @"DELETE_SINGLE_MESSAGE";
    }
  }

  v8 = [v5 localizedStringForKey:v6 value:&stru_1F04268F8 table:@"ChatKit"];

LABEL_11:

  return v8;
}

- (id)_permanentDeletionAlertTitleForCount:(unint64_t)count
{
  configuration = [(CKConversationConfirmationAlertsController *)self configuration];
  if ([configuration alertControllerStyle] == 1)
  {
    v6 = CKFrameworkBundle(1);
    if (count > 1)
    {
      v7 = @"RECENTLY_DELETED_PLURAL_PERMANENT_DELETION_ALERT_TITLE";
    }

    else
    {
      v7 = @"RECENTLY_DELETED_SINGULAR_PERMANENT_DELETION_ALERT_TITLE";
    }
  }

  else
  {
    _isStoredOnIcloud = [(CKConversationConfirmationAlertsController *)self _isStoredOnIcloud];
    v9 = _isStoredOnIcloud;
    v6 = CKFrameworkBundle(_isStoredOnIcloud);
    if (v9)
    {
      if (count > 1)
      {
        v7 = @"RECENTLY_DELETED_PLURAL_PERMANENT_DELETION_ICLOUD_MESSAGE";
      }

      else
      {
        v7 = @"RECENTLY_DELETED_SINGULAR_PERMANENT_DELETION_ICLOUD_MESSAGE";
      }
    }

    else if (count > 1)
    {
      v7 = @"RECENTLY_DELETED_PLURAL_PERMANENT_DELETION_TITLE";
    }

    else
    {
      v7 = @"RECENTLY_DELETED_SINGULAR_PERMANENT_DELETION_TITLE";
    }
  }

  v10 = [v6 localizedStringForKey:v7 value:&stru_1F04268F8 table:@"ChatKit"];

  return v10;
}

- (id)_permanentJunkDeletionAlertTitleForCount:(unint64_t)count
{
  configuration = [(CKConversationConfirmationAlertsController *)self configuration];
  if ([configuration alertControllerStyle] == 1)
  {
    v6 = CKFrameworkBundle(1);
    if (count > 1)
    {
      v7 = @"PERMANENT_PLURAL_CONVERSATION_DELETION_CONFIRMATION";
    }

    else
    {
      v7 = @"PERMANENT_CONVERSATION_DELETION_CONFIRMATION";
    }
  }

  else
  {
    _isStoredOnIcloud = [(CKConversationConfirmationAlertsController *)self _isStoredOnIcloud];
    v9 = _isStoredOnIcloud;
    v6 = CKFrameworkBundle(_isStoredOnIcloud);
    if (v9)
    {
      if (count > 1)
      {
        v7 = @"DELETE_PLURAL_WARNING_ON_ICLOUD";
      }

      else
      {
        v7 = @"DELETE_WARNING_ON_ICLOUD";
      }
    }

    else if (count > 1)
    {
      v7 = @"PERMANENT_PLURAL_CONVERSATION_DELETION_WARNING";
    }

    else
    {
      v7 = @"PERMANENT_CONVERSATION_DELETION_WARNING";
    }
  }

  v10 = [v6 localizedStringForKey:v7 value:&stru_1F04268F8 table:@"ChatKit"];

  return v10;
}

- (id)_permanentDeletionAlertMessageForCount:(unint64_t)count
{
  _isStoredOnIcloud = [(CKConversationConfirmationAlertsController *)self _isStoredOnIcloud];
  v5 = _isStoredOnIcloud;
  v6 = CKFrameworkBundle(_isStoredOnIcloud);
  v7 = v6;
  v8 = @"RECENTLY_DELETED_PLURAL_PERMANENT_DELETION_ICLOUD_MESSAGE";
  if (count < 2)
  {
    v8 = @"RECENTLY_DELETED_SINGULAR_PERMANENT_DELETION_ICLOUD_MESSAGE";
  }

  v9 = @"RECENTLY_DELETED_SINGULAR_PERMANENT_DELETION_MESSAGE";
  if (count >= 2)
  {
    v9 = @"RECENTLY_DELETED_PLURAL_PERMANENT_DELETION_MESSAGE";
  }

  if (v5)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v6 localizedStringForKey:v10 value:&stru_1F04268F8 table:@"ChatKit"];

  return v11;
}

- (id)_recoveryAlertTitleForMessagesCount:(unint64_t)count
{
  v4 = CKFrameworkBundle(self);
  v5 = v4;
  if (count <= 1)
  {
    v6 = @"RECENTLY_DELETED_SINGULAR_RECOVERY_TITLE";
  }

  else
  {
    v6 = @"RECENTLY_DELETED_PLURAL_RECOVERY_TITLE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F04268F8 table:@"ChatKit"];

  return v7;
}

- (id)_recoveryAlertTitleForBlockedConversationsCount:(unint64_t)count allowedConversationsCount:(unint64_t)conversationsCount
{
  if (conversationsCount)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = CKFrameworkBundle(self);
    v8 = [v7 localizedStringForKey:@"RECENTLY_DELETED_RECOVER_BLOCKED_CONVERSATIONS_CATALYST" value:&stru_1F04268F8 table:@"ChatKit"];
    conversationsCount = [v6 localizedStringWithFormat:v8, count, conversationsCount];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v12 = @"\u200F";
    }

    else
    {
      v12 = @"\u200E";
    }

    v13 = [(__CFString *)v12 stringByAppendingString:conversationsCount];
  }

  else
  {
    v14 = CKFrameworkBundle(self);
    conversationsCount = v14;
    if (count < 2)
    {
      v15 = @"RECENTLY_DELETED_RECOVER_BLOCKED_CONVERSATIONS_SINGLE_CATALYST";
    }

    else
    {
      v15 = @"RECENTLY_DELETED_RECOVER_BLOCKED_CONVERSATIONS_MULTIPLE_CATALYST";
    }

    v13 = [v14 localizedStringForKey:v15 value:&stru_1F04268F8 table:@"ChatKit"];
  }

  v16 = v13;

  return v16;
}

- (id)_recoveryAlertMessageForMessagesCount:(unint64_t)count
{
  v4 = CKFrameworkBundle(self);
  v5 = v4;
  if (count <= 1)
  {
    v6 = @"RECENTLY_DELETED_SINGULAR_RECOVERY_MESSAGE";
  }

  else
  {
    v6 = @"RECENTLY_DELETED_PLURAL_RECOVERY_MESSAGE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F04268F8 table:@"ChatKit"];

  return v7;
}

- (id)_recoveryAlertMessageForBlockedConversationsCount:(unint64_t)count allowedConversationsCount:(unint64_t)conversationsCount
{
  if (count && conversationsCount)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = CKFrameworkBundle(self);
    v8 = [v7 localizedStringForKey:@"RECENTLY_DELETED_RECOVER_BLOCKED_CONVERSATIONS" value:&stru_1F04268F8 table:@"ChatKit"];
    conversationsCount = [v6 localizedStringWithFormat:v8, count, conversationsCount];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v12 = @"\u200F";
    }

    else
    {
      v12 = @"\u200E";
    }

    v13 = [(__CFString *)v12 stringByAppendingString:conversationsCount];
  }

  else
  {
    if (!count)
    {
      v16 = 0;
      goto LABEL_14;
    }

    if (count == 1)
    {
      v14 = CKFrameworkBundle(self);
      conversationsCount = v14;
      v15 = @"RECENTLY_DELETED_RECOVER_BLOCKED_CONVERSATION_SINGLE";
    }

    else
    {
      v14 = CKFrameworkBundle(self);
      conversationsCount = v14;
      v15 = @"RECENTLY_DELETED_RECOVER_BLOCKED_CONVERSATIONS_MULTIPLE";
    }

    v13 = [v14 localizedStringForKey:v15 value:&stru_1F04268F8 table:@"ChatKit"];
  }

  v16 = v13;

LABEL_14:

  return v16;
}

- (id)_junkRecoveryAlertTitleForCount:(unint64_t)count
{
  v4 = CKFrameworkBundle(self);
  v5 = v4;
  if (count <= 1)
  {
    v6 = @"ARE_YOU_SURE_WANT_TO_REMOVE_THIS_CONVERSATION_FROM_JUNK";
  }

  else
  {
    v6 = @"ARE_YOU_SURE_WANT_TO_REMOVE_THESE_CONVERSATIONS_FROM_JUNK";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F04268F8 table:@"ChatKit"];

  return v7;
}

- (id)_junkRecoveryAlertMessageForCount:(unint64_t)count
{
  v4 = CKFrameworkBundle(self);
  v5 = v4;
  if (count <= 1)
  {
    v6 = @"THIS_CONVERSATION_WILL_BE_REMOVED_FROM_JUNK";
  }

  else
  {
    v6 = @"THESE_CONVERSATIONS_WILL_BE_REMOVED_FROM_JUNK";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F04268F8 table:@"ChatKit"];

  return v7;
}

- (id)_identifyBusinessConversationToRemove:(id)remove
{
  removeCopy = remove;
  if ([removeCopy count] == 1)
  {
    firstObject = [removeCopy firstObject];
    if ([firstObject isMapKitBusinessConversation] && (objc_msgSend(firstObject, "isMakoConversation") & 1) == 0)
    {
      v5 = firstObject;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_shouldConfirmStopSharingLocationForConversations:(id)conversations
{
  conversationsCopy = conversations;
  mEMORY[0x1E69A5B70] = [MEMORY[0x1E69A5B70] sharedInstance];
  if ([mEMORY[0x1E69A5B70] restrictLocationSharing])
  {
  }

  else
  {
    mEMORY[0x1E69A5B70]2 = [MEMORY[0x1E69A5B70] sharedInstance];
    disableLocationSharing = [mEMORY[0x1E69A5B70]2 disableLocationSharing];

    if ((disableLocationSharing & 1) == 0)
    {
      v8 = [(CKConversationConfirmationAlertsController *)self _hasChatSharingLocationInConversations:conversationsCopy];
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (void)_configureAppearanceForAlertController:(id)controller
{
  controllerCopy = controller;
  if (CKIsRunningInMacCatalyst())
  {
    [controllerCopy setWantsWindowedPresentation:1];
    [controllerCopy setShouldHidePresentingWindow:1];
  }

  configuration = [(CKConversationConfirmationAlertsController *)self configuration];
  sourceView = [configuration sourceView];
  popoverPresentationController = [controllerCopy popoverPresentationController];
  [popoverPresentationController setSourceView:sourceView];

  configuration2 = [(CKConversationConfirmationAlertsController *)self configuration];
  sourceItem = [configuration2 sourceItem];
  popoverPresentationController2 = [controllerCopy popoverPresentationController];
  [popoverPresentationController2 setSourceItem:sourceItem];
}

- (BOOL)_isStoredOnIcloud
{
  mEMORY[0x1E69A5B20] = [MEMORY[0x1E69A5B20] sharedInstance];
  isEnabled = [mEMORY[0x1E69A5B20] isEnabled];

  return isEnabled;
}

- (void)_trackEvent:(int64_t)event forConversations:(id)conversations
{
  v27 = *MEMORY[0x1E69E9840];
  if (event)
  {
    if (event != 1)
    {
      return;
    }

    v4 = 10;
    v5 = 11;
  }

  else
  {
    v4 = 8;
    v5 = 9;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  junkConversations = [(CKConversationConfirmationAlertsController *)self junkConversations];
  v7 = [junkConversations countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(junkConversations);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        chat = [v11 chat];
        isFiltered = [chat isFiltered];

        if (isFiltered == 2)
        {
          chat2 = [v11 chat];
          isSMS = [chat2 isSMS];

          mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
          v17 = mEMORY[0x1E69A8168];
          if (isSMS)
          {
            v24 = &unk_1F04E7E00;
            v18 = [MEMORY[0x1E696AD98] numberWithBool:IMIsOscarEnabled()];
            v25 = v18;
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
            [v17 trackiMessageJunkEvent:v5 withDictionary:v19];
          }

          else
          {
            [mEMORY[0x1E69A8168] trackiMessageJunkEvent:v4];
          }
        }
      }

      v8 = [junkConversations countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v8);
  }
}

- (void)_generateSafetyCheckController
{
  v12[1] = *MEMORY[0x1E69E9840];
  configuration = [(CKConversationConfirmationAlertsController *)self configuration];
  targetConversations = [configuration targetConversations];
  firstObject = [targetConversations firstObject];

  recipient = [firstObject recipient];
  v7 = recipient;
  if (recipient)
  {
    cnContact = [recipient cnContact];
    v9 = [CKSafetyCheckHelper alloc];
    v12[0] = cnContact;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v11 = [(CKSafetyCheckHelper *)v9 initWithContacts:v10];
    [(CKConversationConfirmationAlertsController *)self setSafetyCheckHelper:v11];
  }
}

@end