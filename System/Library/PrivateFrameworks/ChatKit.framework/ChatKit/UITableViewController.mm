@interface UITableViewController
@end

@implementation UITableViewController

void __182__UITableViewController_CKBlackHoleUtilities___confirmDeleteConversationFromView_alertTitle_forMultipleConversations_withReportSpamHander_withNotReportSpamHandler_withCancelHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = CKFrameworkBundle(a1);
  v4 = v3;
  if (v2)
  {
    v5 = @"REPORT_MULTIPLE_CONVERSATIONS_SPAM_ALERT_TITLE";
  }

  else
  {
    v5 = @"REPORT_CONVERSATION_SPAM_ALERT_TITLE";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_1F04268F8 table:@"ChatKit"];
  v7 = [CKAlertController alertControllerWithTitle:0 message:v6 preferredStyle:1];

  v9 = CKFrameworkBundle(v8);
  v10 = [v9 localizedStringForKey:@"REPORT_SPAM_BUTTON_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __182__UITableViewController_CKBlackHoleUtilities___confirmDeleteConversationFromView_alertTitle_forMultipleConversations_withReportSpamHander_withNotReportSpamHandler_withCancelHandler___block_invoke_2;
  v24[3] = &unk_1E72EC218;
  v25 = *(a1 + 48);
  v11 = [CKAlertAction actionWithTitle:v10 style:0 handler:v24];
  [v7 addAction:v11];

  v13 = CKFrameworkBundle(v12);
  v14 = [v13 localizedStringForKey:@"DONT_REPORT_SPAM_BUTTON_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __182__UITableViewController_CKBlackHoleUtilities___confirmDeleteConversationFromView_alertTitle_forMultipleConversations_withReportSpamHander_withNotReportSpamHandler_withCancelHandler___block_invoke_3;
  v22 = &unk_1E72EC218;
  v23 = *(a1 + 56);
  v15 = [CKAlertAction actionWithTitle:v14 style:1 handler:&v19];
  [v7 addAction:{v15, v19, v20, v21, v22}];

  v16 = [*(a1 + 32) popoverPresentationController];
  [v16 setSourceView:*(a1 + 40)];

  v17 = [*(a1 + 32) popoverPresentationController];
  [*(a1 + 40) frame];
  [v17 setSourceRect:?];

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [v7 presentFromViewController:WeakRetained animated:1 completion:0];
}

uint64_t __182__UITableViewController_CKBlackHoleUtilities___confirmDeleteConversationFromView_alertTitle_forMultipleConversations_withReportSpamHander_withNotReportSpamHandler_withCancelHandler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end