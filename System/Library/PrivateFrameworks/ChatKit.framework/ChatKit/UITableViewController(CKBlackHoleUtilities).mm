@interface UITableViewController(CKBlackHoleUtilities)
- (void)_confirmDeleteConversationFromView:()CKBlackHoleUtilities alertTitle:forMultipleConversations:withReportSpamHander:withNotReportSpamHandler:withCancelHandler:;
@end

@implementation UITableViewController(CKBlackHoleUtilities)

- (void)_confirmDeleteConversationFromView:()CKBlackHoleUtilities alertTitle:forMultipleConversations:withReportSpamHander:withNotReportSpamHandler:withCancelHandler:
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [CKAlertController alertControllerWithTitle:v15 message:0 preferredStyle:0];
  selfCopy = self;
  inited = objc_initWeak(location, self);
  v21 = CKFrameworkBundle(inited);
  if (a5)
  {
    [v21 localizedStringForKey:@"CLEAR_ALL" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  else
  {
    [v21 localizedStringForKey:@"DELETE" value:&stru_1F04268F8 table:@"ChatKit"];
  }
  v22 = ;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __182__UITableViewController_CKBlackHoleUtilities___confirmDeleteConversationFromView_alertTitle_forMultipleConversations_withReportSpamHander_withNotReportSpamHandler_withCancelHandler___block_invoke;
  v36[3] = &unk_1E72EC240;
  v42 = a5;
  v23 = v16;
  v39 = v23;
  v24 = v17;
  v40 = v24;
  v25 = v19;
  v37 = v25;
  v26 = v14;
  v38 = v26;
  objc_copyWeak(&v41, location);
  v27 = [CKAlertAction actionWithTitle:v22 style:2 handler:v36];
  [v25 addAction:v27];

  v29 = CKFrameworkBundle(v28);
  v30 = [v29 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __182__UITableViewController_CKBlackHoleUtilities___confirmDeleteConversationFromView_alertTitle_forMultipleConversations_withReportSpamHander_withNotReportSpamHandler_withCancelHandler___block_invoke_4;
  v34[3] = &unk_1E72EC218;
  v31 = v18;
  v35 = v31;
  v32 = [CKAlertAction actionWithTitle:v30 style:1 handler:v34];
  [v25 addAction:v32];

  [selfCopy presentViewController:v25 animated:1 completion:0];
  objc_destroyWeak(&v41);

  objc_destroyWeak(location);
}

@end