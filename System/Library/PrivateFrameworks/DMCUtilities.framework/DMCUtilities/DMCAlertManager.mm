@interface DMCAlertManager
+ (void)displayAlertWithTitle:(id)title message:(id)message defaultButtonText:(id)text altButtonText:(id)buttonText destructive:(BOOL)destructive completion:(id)completion;
+ (void)promptUserToLogIntoiTunesWithTitle:(id)title message:(id)message assertion:(id)assertion completion:(id)completion;
@end

@implementation DMCAlertManager

+ (void)displayAlertWithTitle:(id)title message:(id)message defaultButtonText:(id)text altButtonText:(id)buttonText destructive:(BOOL)destructive completion:(id)completion
{
  titleCopy = title;
  messageCopy = message;
  textCopy = text;
  buttonTextCopy = buttonText;
  completionCopy = completion;
  v18 = syncQueue(completionCopy);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __104__DMCAlertManager_displayAlertWithTitle_message_defaultButtonText_altButtonText_destructive_completion___block_invoke;
  v24[3] = &unk_1E7ADC498;
  v25 = titleCopy;
  v26 = messageCopy;
  v27 = textCopy;
  v28 = buttonTextCopy;
  destructiveCopy = destructive;
  v29 = completionCopy;
  v19 = completionCopy;
  v20 = buttonTextCopy;
  v21 = textCopy;
  v22 = messageCopy;
  v23 = titleCopy;
  dispatch_async(v18, v24);
}

void __104__DMCAlertManager_displayAlertWithTitle_message_defaultButtonText_altButtonText_destructive_completion___block_invoke(uint64_t a1)
{
  v4 = objc_opt_new();
  [v4 setTitle:*(a1 + 32)];
  [v4 setMessage:*(a1 + 40)];
  [v4 setDefaultButtonText:*(a1 + 48)];
  [v4 setAlternateButtonText:*(a1 + 56)];
  [v4 setDestructive:*(a1 + 72)];
  v2 = syncQueueAlertQueue([v4 setCompletionBlock:*(a1 + 64)]);
  [v2 addObject:v4];

  syncQueueShowNextAlert(v3);
}

+ (void)promptUserToLogIntoiTunesWithTitle:(id)title message:(id)message assertion:(id)assertion completion:(id)completion
{
  titleCopy = title;
  messageCopy = message;
  assertionCopy = assertion;
  completionCopy = completion;
  v13 = syncQueue(completionCopy);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__DMCAlertManager_promptUserToLogIntoiTunesWithTitle_message_assertion_completion___block_invoke;
  v18[3] = &unk_1E7ADC538;
  v19 = assertionCopy;
  v20 = titleCopy;
  v21 = messageCopy;
  v22 = completionCopy;
  v14 = messageCopy;
  v15 = titleCopy;
  v16 = assertionCopy;
  v17 = completionCopy;
  dispatch_async(v13, v18);
}

void __83__DMCAlertManager_promptUserToLogIntoiTunesWithTitle_message_assertion_completion___block_invoke(uint64_t a1)
{
  v2 = syncQueueiTunesLoginCompletionBlocks(a1);
  v3 = [v2 count];
  if (!v3)
  {
    if (*(a1 + 56))
    {
      v7 = MEMORY[0x1B2731A20]();
      [v2 addObject:v7];
    }

    v6 = objc_opt_new();
    [v6 setTitle:*(a1 + 40)];
    [v6 setMessage:*(a1 + 48)];
    v8 = DMCLocalizedString(@"MDM_APP_INSTALL_BUTTON_LOGIN");
    [v6 setDefaultButtonText:v8];

    v9 = DMCLocalizedString(@"MDM_APP_INSTALL_BUTTON_CANCEL");
    [v6 setAlternateButtonText:v9];

    [v6 setDisplayOnLockScreen:0];
    [v6 setDismissAfterTimeInterval:900.0];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __83__DMCAlertManager_promptUserToLogIntoiTunesWithTitle_message_assertion_completion___block_invoke_5;
    v12[3] = &unk_1E7ADC510;
    v13 = *(a1 + 32);
    [v6 setCompletionBlock:v12];
    v10 = syncQueueAlertQueue([*(a1 + 32) park]);
    [v10 addObject:v6];

    syncQueueShowNextAlert(v11);
    goto LABEL_9;
  }

  v5 = *DMCLogObjects(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_DEFAULT, "An iTunes login prompt is already shown. Not showing another prompt.", buf, 2u);
  }

  if (*(a1 + 56))
  {
    v6 = MEMORY[0x1B2731A20]();
    [v2 addObject:v6];
LABEL_9:
  }
}

void __83__DMCAlertManager_promptUserToLogIntoiTunesWithTitle_message_assertion_completion___block_invoke_5(uint64_t a1, int a2)
{
  v4 = syncQueue([*(a1 + 32) unpark]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__DMCAlertManager_promptUserToLogIntoiTunesWithTitle_message_assertion_completion___block_invoke_2;
  v5[3] = &unk_1E7ADC4E8;
  v7 = a2;
  v6 = *(a1 + 32);
  dispatch_async(v4, v5);
}

void __83__DMCAlertManager_promptUserToLogIntoiTunesWithTitle_message_assertion_completion___block_invoke_2(uint64_t a1)
{
  v2 = syncQueueiTunesLoginCompletionBlocks(a1);
  if ([v2 count])
  {
    v3 = [v2 copy];
    [v2 removeAllObjects];
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__DMCAlertManager_promptUserToLogIntoiTunesWithTitle_message_assertion_completion___block_invoke_3;
    block[3] = &unk_1E7ADC4C0;
    v7 = v3;
    v9 = *(a1 + 40);
    v8 = *(a1 + 32);
    v5 = v3;
    dispatch_async(v4, block);
  }
}

void __83__DMCAlertManager_promptUserToLogIntoiTunesWithTitle_message_assertion_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *DMCLogObjects(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    *buf = 67109120;
    v19 = [v4 count];
    _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_DEFAULT, "Calling completions for %d iTunes login events.", buf, 8u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        (*(v11 + 16))(v11, *(a1 + 48));
        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

@end