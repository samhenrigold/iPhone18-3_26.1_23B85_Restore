@interface PSTrackingWelcomeController
- (PSTrackingWelcomeController)init;
- (id)aboutText;
- (void)donePressed;
@end

@implementation PSTrackingWelcomeController

- (PSTrackingWelcomeController)init
{
  v23[1] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = PSTrackingWelcomeController;
  v2 = [(PSTrackingWelcomeController *)&v17 init];
  if (v2)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v3 = getOBTextWelcomeControllerClass_softClass;
    v22 = getOBTextWelcomeControllerClass_softClass;
    if (!getOBTextWelcomeControllerClass_softClass)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __getOBTextWelcomeControllerClass_block_invoke;
      v18[3] = &unk_1E71DBC78;
      v18[4] = &v19;
      __getOBTextWelcomeControllerClass_block_invoke(v18);
      v3 = v20[3];
    }

    v4 = v3;
    _Block_object_dispose(&v19, 8);
    v5 = [v3 alloc];
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"TRACKING_ABOUT_TITLE" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
    v8 = [v5 initWithTitle:v7 detailText:0 symbolName:0];
    [(PSTrackingWelcomeController *)v2 setController:v8];

    controller = [(PSTrackingWelcomeController *)v2 controller];
    aboutText = [(PSTrackingWelcomeController *)v2 aboutText];
    [controller addSectionWithHeader:0 content:aboutText];

    controller2 = [(PSTrackingWelcomeController *)v2 controller];
    v23[0] = controller2;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [(PSTrackingWelcomeController *)v2 setViewControllers:v12];

    v13 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v2 action:sel_donePressed];
    controller3 = [(PSTrackingWelcomeController *)v2 controller];
    navigationItem = [controller3 navigationItem];
    [navigationItem setRightBarButtonItem:v13];
  }

  return v2;
}

- (id)aboutText
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v2 = [MEMORY[0x1E695A878] shouldEnforceTrackingWithReasonCode:&v11];
  v3 = v2;
  v4 = _PSLoggingFacility(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v13 = "[PSTrackingWelcomeController aboutText]";
    v14 = 1024;
    v15 = v3;
    v16 = 2048;
    v17 = v11;
    _os_log_impl(&dword_18B008000, v4, OS_LOG_TYPE_DEFAULT, "%s: Showing tracking about text. shouldEnforce: %d, reason: %ld", buf, 0x1Cu);
  }

  if (v3)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"TRACKING_ABOUT_TEXT_NO_ENFORCEMENT";
  }

  else
  {
    v8 = v11;
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = v5;
    if (v8)
    {
      v7 = @"TRACKING_ABOUT_TEXT_REASON_UNENFORCED";
    }

    else
    {
      v7 = @"TRACKING_ABOUT_TEXT_REASON_NONE";
    }
  }

  v9 = [v5 localizedStringForKey:v7 value:&stru_1EFE45030 table:@"PSSystemPolicy"];

  return v9;
}

- (void)donePressed
{
  controller = [(PSTrackingWelcomeController *)self controller];
  presentingViewController = [controller presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

@end