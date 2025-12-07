@interface ISUIKitDialogOperation
- (void)_cleanupAlert;
- (void)_showAlertWithCompletion:(id)completion;
- (void)handleButtonSelected:(int64_t)selected withResponseDictionary:(id)dictionary;
- (void)run;
@end

@implementation ISUIKitDialogOperation

- (void)run
{
  selfCopy = self;
  v69 = *MEMORY[0x277D85DE8];
  dialog = [(ISDialogOperation *)self dialog];
  v4 = dialog;
  if (dialog && ([dialog isDisplayable] & 1) != 0)
  {
    v46 = dispatch_semaphore_create(0);
    UIAlertControllerClass = getUIAlertControllerClass();
    title = [v4 title];
    message = [v4 message];
    v8 = [(objc_class *)UIAlertControllerClass alertControllerWithTitle:title message:message preferredStyle:1];
    alert = selfCopy->_alert;
    selfCopy->_alert = v8;

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v45 = v4;
    textFields = [v4 textFields];
    v11 = [textFields countByEnumeratingWithState:&v61 objects:v66 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v62;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v62 != v13)
          {
            objc_enumerationMutation(textFields);
          }

          v15 = *(*(&v61 + 1) + 8 * i);
          v16 = selfCopy->_alert;
          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v60[2] = __29__ISUIKitDialogOperation_run__block_invoke;
          v60[3] = &unk_27A670E50;
          v60[4] = v15;
          [(UIAlertController *)v16 addTextFieldWithConfigurationHandler:v60];
        }

        v12 = [textFields countByEnumeratingWithState:&v61 objects:v66 count:16];
      }

      while (v12);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v4 = v45;
    buttons = [v45 buttons];
    v18 = [buttons countByEnumeratingWithState:&v56 objects:v65 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = 0;
      v22 = *v57;
      obj = buttons;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          v24 = selfCopy;
          if (*v57 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v56 + 1) + 8 * j);
          title2 = [v25 title];
          lowercaseString = [title2 lowercaseString];
          v28 = [lowercaseString isEqualToString:@"cancel"];

          if (v28)
          {
            v29 = v25;

            v21 = v29;
            selfCopy = v24;
          }

          else
          {
            UIAlertActionClass = getUIAlertActionClass();
            title3 = [v25 title];
            v53[0] = MEMORY[0x277D85DD0];
            v53[1] = 3221225472;
            v53[2] = __29__ISUIKitDialogOperation_run__block_invoke_2;
            v53[3] = &unk_27A670E78;
            selfCopy = v24;
            v53[4] = v24;
            v55 = v20;
            v54 = v46;
            v32 = [(objc_class *)UIAlertActionClass actionWithTitle:title3 style:0 handler:v53];

            [(UIAlertController *)v24->_alert addAction:v32];
            ++v20;
          }
        }

        v19 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
      }

      while (v19);

      if (v21)
      {
        v33 = getUIAlertActionClass();
        title4 = [v21 title];
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __29__ISUIKitDialogOperation_run__block_invoke_3;
        v50[3] = &unk_27A670E78;
        v50[4] = selfCopy;
        v52 = v20;
        v35 = v46;
        v51 = v46;
        v36 = [(objc_class *)v33 actionWithTitle:title4 style:1 handler:v50];

        [(UIAlertController *)selfCopy->_alert addAction:v36];
        v4 = v45;
LABEL_38:
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __29__ISUIKitDialogOperation_run__block_invoke_4;
        v48[3] = &unk_27A670EA0;
        v49 = v35;
        v44 = v35;
        [(ISUIKitDialogOperation *)selfCopy _showAlertWithCompletion:v48];
        dispatch_semaphore_wait(v44, 0xFFFFFFFFFFFFFFFFLL);

        goto LABEL_39;
      }

      v4 = v45;
    }

    else
    {

      v21 = 0;
    }

    v35 = v46;
    goto LABEL_38;
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v39 = shouldLog | 2;
  }

  else
  {
    v39 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v41 = v39;
  }

  else
  {
    v41 = v39 & 2;
  }

  if (!v41)
  {
    goto LABEL_33;
  }

  v67 = 138412290;
  v68 = objc_opt_class();
  v42 = v68;
  v43 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &dword_275BC3000, oSLogObject, 1, "%@: Skipping non-displayable dialog", &v67, 12);

  if (v43)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v43 encoding:4];
    free(v43);
    SSFileLog();
LABEL_33:
  }

  [(ISOperation *)selfCopy setSuccess:1];
LABEL_39:
}

void __29__ISUIKitDialogOperation_run__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 keyboardType];
  if (v5 == 7 || v5 == 4)
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 == 0;
  }

  [v4 setKeyboardType:v7];
  [v4 setSecureTextEntry:{objc_msgSend(*(a1 + 32), "isSecure")}];
  v8 = [*(a1 + 32) title];
  [v4 setPlaceholder:v8];

  v9 = [*(a1 + 32) value];
  [v4 setText:v9];
}

intptr_t __29__ISUIKitDialogOperation_run__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) handleButtonSelected:*(a1 + 48) withResponseDictionary:0];
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

intptr_t __29__ISUIKitDialogOperation_run__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) handleButtonSelected:*(a1 + 48) withResponseDictionary:0];
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

intptr_t __29__ISUIKitDialogOperation_run__block_invoke_4(intptr_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return dispatch_semaphore_signal(*(result + 32));
  }

  return result;
}

- (void)_cleanupAlert
{
  [(UIWindow *)self->_window setHidden:1];
  window = self->_window;
  self->_window = 0;
}

- (void)_showAlertWithCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = completionCopy;
  if (!self->_alert)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v8) = shouldLog | 2;
    }

    else
    {
      LODWORD(v8) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v14 = 138412290;
      v15 = objc_opt_class();
      v10 = v15;
      v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%@: Cannot present nil dialog", &v14, 12);

      if (!v11)
      {
LABEL_15:

        v5[2](v5, 0);
        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:4];
      free(v11);
      SSFileLog();
    }

    goto LABEL_15;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ISUIKitDialogOperation__showAlertWithCompletion___block_invoke;
  block[3] = &unk_27A670EC8;
  block[4] = self;
  v13 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

LABEL_16:
}

void __51__ISUIKitDialogOperation__showAlertWithCompletion___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getUIWindowClass());
  v3 = [(objc_class *)getUIScreenClass() mainScreen];
  [v3 bounds];
  v4 = [v2 initWithFrame:?];
  v5 = *(a1 + 32);
  v6 = *(v5 + 384);
  *(v5 + 384) = v4;

  v7 = *(*(a1 + 32) + 384);
  v8 = objc_alloc_init(getUIViewControllerClass());
  [v7 setRootViewController:v8];

  v9 = [(objc_class *)getUIApplicationClass() sharedApplication];
  v10 = [v9 delegate];

  if (objc_opt_respondsToSelector())
  {
    v11 = *(*(a1 + 32) + 384);
    v12 = [v10 window];
    v13 = [v12 tintColor];
    [v11 setTintColor:v13];
  }

  v14 = [(objc_class *)getUIApplicationClass() sharedApplication];
  v15 = [v14 windows];
  v16 = [v15 lastObject];

  if (v16)
  {
    v17 = *(*(a1 + 32) + 384);
    [v16 windowLevel];
    [v17 setWindowLevel:v18 + 1.0];
    [*(*(a1 + 32) + 384) makeKeyAndVisible];
    v19 = [*(*(a1 + 32) + 384) rootViewController];
    if (v19)
    {
      v20 = *(*(a1 + 32) + 376);
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __51__ISUIKitDialogOperation__showAlertWithCompletion___block_invoke_8;
      v33[3] = &unk_27A670840;
      v34 = *(a1 + 40);
      [v19 presentViewController:v20 animated:1 completion:v33];

LABEL_32:
      goto LABEL_33;
    }

    v27 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v27)
    {
      v27 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v28 = [v27 shouldLog];
    if ([v27 shouldLogToDisk])
    {
      LODWORD(v29) = v28 | 2;
    }

    else
    {
      LODWORD(v29) = v28;
    }

    v30 = [v27 OSLogObject];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v29 = v29;
    }

    else
    {
      v29 &= 2u;
    }

    if (v29)
    {
      v35 = 138412290;
      v36 = objc_opt_class();
      v31 = v36;
      v32 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &dword_275BC3000, v30, 16, "%@: Cannot present dialog over nil view controller", &v35, 12);

      if (!v32)
      {
LABEL_31:

        (*(*(a1 + 40) + 16))(*(a1 + 40));
        goto LABEL_32;
      }

      v30 = [MEMORY[0x277CCACA8] stringWithCString:v32 encoding:4];
      free(v32);
      SSFileLog();
    }

    goto LABEL_31;
  }

  v21 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v21)
  {
    v21 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v22 = [v21 shouldLog];
  if ([v21 shouldLogToDisk])
  {
    LODWORD(v23) = v22 | 2;
  }

  else
  {
    LODWORD(v23) = v22;
  }

  v24 = [v21 OSLogObject];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v23 = v23;
  }

  else
  {
    v23 &= 2u;
  }

  if (!v23)
  {
    goto LABEL_17;
  }

  v35 = 138412290;
  v36 = objc_opt_class();
  v25 = v36;
  v26 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &dword_275BC3000, v24, 16, "%@: Running process does not have a UIWindow to present dialog", &v35, 12);

  if (v26)
  {
    v24 = [MEMORY[0x277CCACA8] stringWithCString:v26 encoding:4];
    free(v26);
    SSFileLog();
LABEL_17:
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
LABEL_33:
}

- (void)handleButtonSelected:(int64_t)selected withResponseDictionary:(id)dictionary
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = [(ISDialogOperation *)self dialog:selected];
  buttons = [v6 buttons];

  if (selected < 0 || [buttons count] <= selected || (objc_msgSend(buttons, "objectAtIndexedSubscript:", selected), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v12) = shouldLog | 2;
    }

    else
    {
      LODWORD(v12) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 = v12;
    }

    else
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v33 = 138412546;
      v34 = objc_opt_class();
      v35 = 2048;
      selectedCopy = selected;
      v14 = v34;
      v15 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%@: Failed to handle nil button. Index: %ld", &v33, 22);

      if (v15)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:4];
        free(v15);
        SSFileLog();
      }
    }

    else
    {
    }
  }

  else
  {
    mEMORY[0x277D69B38] = v8;
    delegate = [(ISOperation *)self delegate];
    v27 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [delegate operation:self selectedButton:mEMORY[0x277D69B38]];
    }

    else if ([(ISDialogOperation *)self performDefaultActions])
    {
      dialog = [(ISDialogOperation *)self dialog];
      [mEMORY[0x277D69B38] performDefaultActionForDialog:dialog];
    }

    [(ISDialogOperation *)self setSelectedButton:mEMORY[0x277D69B38]];
    [(ISOperation *)self lock];
    textFieldValues = self->super._textFieldValues;
    self->super._textFieldValues = 0;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    textFields = [(UIAlertController *)self->_alert textFields];
    v21 = [textFields countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v29;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(textFields);
          }

          text = [*(*(&v28 + 1) + 8 * i) text];
          [(NSArray *)v19 addObject:text];
        }

        v22 = [textFields countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v22);
    }

    v26 = self->super._textFieldValues;
    self->super._textFieldValues = v19;

    [(ISOperation *)self unlock];
    [(ISOperation *)self setSuccess:1];
    [(ISUIKitDialogOperation *)self _cleanupAlert];
  }
}

@end