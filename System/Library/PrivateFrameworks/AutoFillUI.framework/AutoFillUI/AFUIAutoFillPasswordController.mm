@interface AFUIAutoFillPasswordController
- (AFUIAutoFillPasswordController)initWithDocumentTraits:(id)traits presentingViewController:(id)controller textOperationsHandler:(id)handler;
- (AFUIModalUIDelegate)modalUIDelegate;
- (UIViewController)presentingViewController;
- (id)_keyboardDictionaryWithCredential:(id)credential;
- (id)_menuItemImageForOneTimeCodeSuggestion:(id)suggestion;
- (void)_loadAccountSuggestions:(id)suggestions;
- (void)_loadOneTimeCodeSuggestions:(id)suggestions;
- (void)_performTextOperationsWithAccountSuggestion:(id)suggestion;
- (void)_performTextOperationsWithCredential:(id)credential;
- (void)_performTextOperationsWithOneTimeCodeSuggestion:(id)suggestion;
- (void)_performTextOperationsWithStringValue:(id)value;
- (void)_reloadOneTimeCodeSuggestions;
- (void)_showAllPasswordsView;
- (void)generateInitialMenu:(id)menu menuChanged:(id)changed;
- (void)passwordsControllerDidFinish:(id)finish;
@end

@implementation AFUIAutoFillPasswordController

- (AFUIAutoFillPasswordController)initWithDocumentTraits:(id)traits presentingViewController:(id)controller textOperationsHandler:(id)handler
{
  traitsCopy = traits;
  controllerCopy = controller;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = AFUIAutoFillPasswordController;
  v11 = [(AFUIAutoFillPasswordController *)&v18 init];
  if (v11)
  {
    v12 = [traitsCopy copy];
    documentTraits = v11->_documentTraits;
    v11->_documentTraits = v12;

    objc_storeWeak(&v11->_presentingViewController, controllerCopy);
    v14 = MEMORY[0x1D38AFC90](handlerCopy);
    textOperationsHandler = v11->_textOperationsHandler;
    v11->_textOperationsHandler = v14;

    v16 = v11;
  }

  return v11;
}

- (void)generateInitialMenu:(id)menu menuChanged:(id)changed
{
  menuCopy = menu;
  v6 = MEMORY[0x1D38AFC90](changed);
  menuChanged = self->_menuChanged;
  self->_menuChanged = v6;

  if ([(RTIDocumentTraits *)self->_documentTraits autofillMode]== 1)
  {
    [(AFUIAutoFillPasswordController *)self _loadAccountSuggestions:menuCopy];
  }

  else
  {
    [(AFUIAutoFillPasswordController *)self _loadOneTimeCodeSuggestions:menuCopy];

    menuCopy = [MEMORY[0x1E696AD88] defaultCenter];
    [menuCopy addObserver:self selector:sel__reloadOneTimeCodeSuggestions name:@"com.apple.AutoFillCore.AFOneTimeCodeSuggestionsDidChangeNotification" object:0];
  }
}

- (void)_loadAccountSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  array = [MEMORY[0x1E695DF70] array];
  objc_initWeak(&location, self);
  mEMORY[0x1E698E1C0] = [MEMORY[0x1E698E1C0] sharedInstance];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    mEMORY[0x1E698E1C0]2 = [MEMORY[0x1E698E1C0] sharedInstance];
    documentTraits = self->_documentTraits;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__AFUIAutoFillPasswordController__loadAccountSuggestions___block_invoke;
    v10[3] = &unk_1E8424508;
    objc_copyWeak(&v13, &location);
    v11 = array;
    v12 = suggestionsCopy;
    [mEMORY[0x1E698E1C0]2 generateAutoFillSuggestionsWithAutoFillMode:1 textPrefix:0 documentTraits:documentTraits externalizedContext:0 completionHandler:v10];

    objc_destroyWeak(&v13);
  }

  objc_destroyWeak(&location);
}

void __58__AFUIAutoFillPasswordController__loadAccountSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v32 = a2;
  v3 = [v32 indexesOfObjectsPassingTest:&__block_literal_global];
  v4 = [v32 objectsAtIndexes:v3];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v5)
  {
    v6 = *v39;
    v7 = *MEMORY[0x1E698E028];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v39 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v38 + 1) + 8 * i);
        v10 = [v9 usernameAndPasswordPayload];
        v11 = [v10 objectForKeyedSubscript:v7];
        v12 = @"person.badge.key.fill";
        if (!v11)
        {
          v12 = @"key.fill";
        }

        v13 = v12;

        v14 = MEMORY[0x1E69DC628];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __58__AFUIAutoFillPasswordController__loadAccountSuggestions___block_invoke_3;
        v36[3] = &unk_1E84244B8;
        objc_copyWeak(&v37, (a1 + 48));
        v36[4] = v9;
        v15 = [v14 actionWithHandler:v36];
        v16 = [v9 title];
        [v15 setTitle:v16];

        v17 = [v9 subTitle];
        [v15 setSubtitle:v17];

        v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:v13];
        [v15 setImage:v18];

        [*(a1 + 32) addObject:v15];
        objc_destroyWeak(&v37);
      }

      v5 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v5);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    WeakRetained[32] = [obj count] != 0;
  }

  v20 = [obj count] == 0;
  v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v22 = v21;
  if (v20)
  {
    v23 = @"Passwords…";
  }

  else
  {
    v23 = @"Other Passwords…";
  }

  v24 = [v21 localizedStringForKey:v23 value:&stru_1F4E9A028 table:@"Localizable"];

  v25 = MEMORY[0x1E69DC628];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __58__AFUIAutoFillPasswordController__loadAccountSuggestions___block_invoke_4;
  v34[3] = &unk_1E84244E0;
  objc_copyWeak(&v35, (a1 + 48));
  v26 = [v25 actionWithHandler:v34];
  [v26 setTitle:v24];
  v27 = MEMORY[0x1E69DCC60];
  v42 = v26;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  v29 = [v27 menuWithTitle:&stru_1F4E9A028 image:0 identifier:0 options:1 children:v28];

  [*(a1 + 32) addObject:v29];
  v30 = *(a1 + 40);
  v31 = [MEMORY[0x1E69DCC60] menuWithChildren:*(a1 + 32)];
  (*(v30 + 16))(v30, v31);

  objc_destroyWeak(&v35);
}

BOOL __58__AFUIAutoFillPasswordController__loadAccountSuggestions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 usernameAndPasswordPayload];
  v3 = [v2 count] != 0;

  return v3;
}

void __58__AFUIAutoFillPasswordController__loadAccountSuggestions___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performTextOperationsWithAccountSuggestion:*(a1 + 32)];
}

void __58__AFUIAutoFillPasswordController__loadAccountSuggestions___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showAllPasswordsView];
}

- (void)_loadOneTimeCodeSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  array = [MEMORY[0x1E695DF70] array];
  objc_initWeak(&location, self);
  mEMORY[0x1E698E1C0] = [MEMORY[0x1E698E1C0] sharedInstance];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    mEMORY[0x1E698E1C0]2 = [MEMORY[0x1E698E1C0] sharedInstance];
    documentTraits = self->_documentTraits;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__AFUIAutoFillPasswordController__loadOneTimeCodeSuggestions___block_invoke;
    v10[3] = &unk_1E8424530;
    objc_copyWeak(&v13, &location);
    v10[4] = self;
    v11 = array;
    v12 = suggestionsCopy;
    [mEMORY[0x1E698E1C0]2 generateAutoFillSuggestionsWithAutoFillMode:8 textPrefix:0 documentTraits:documentTraits externalizedContext:0 completionHandler:v10];

    objc_destroyWeak(&v13);
  }

  objc_destroyWeak(&location);
}

void __62__AFUIAutoFillPasswordController__loadOneTimeCodeSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v3)
  {
    v4 = *v31;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v31 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v30 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          WeakRetained = obj;
          goto LABEL_16;
        }

        v7 = MEMORY[0x1E69DC628];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __62__AFUIAutoFillPasswordController__loadOneTimeCodeSuggestions___block_invoke_2;
        v28[3] = &unk_1E84244B8;
        objc_copyWeak(&v29, (a1 + 56));
        v28[4] = v6;
        v8 = [v7 actionWithHandler:v28];
        v9 = [v6 title];
        [v8 setTitle:v9];

        v10 = [v6 subTitle];
        [v8 setSubtitle:v10];

        v11 = [*(a1 + 32) _menuItemImageForOneTimeCodeSuggestion:v6];
        [v8 setImage:v11];

        [*(a1 + 40) addObject:v8];
        objc_destroyWeak(&v29);
      }

      v3 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    *(WeakRetained + 33) = [obj count] != 0;
  }

  v13 = [*(WeakRetained + 3) autofillMode] == 8;
  v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v15 = v14;
  if (v13)
  {
    v16 = @"Passwords & Verification Codes…";
  }

  else
  {
    v16 = @"Passwords…";
  }

  v17 = [v14 localizedStringForKey:v16 value:&stru_1F4E9A028 table:@"Localizable"];

  v18 = MEMORY[0x1E69DC628];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __62__AFUIAutoFillPasswordController__loadOneTimeCodeSuggestions___block_invoke_3;
  v26[3] = &unk_1E84244E0;
  objc_copyWeak(&v27, (a1 + 56));
  v19 = [v18 actionWithHandler:v26];
  [v19 setTitle:v17];
  v20 = MEMORY[0x1E69DCC60];
  v34 = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v22 = [v20 menuWithTitle:&stru_1F4E9A028 image:0 identifier:0 options:1 children:v21];

  [*(a1 + 40) addObject:v22];
  v23 = *(a1 + 48);
  v24 = [MEMORY[0x1E69DCC60] menuWithChildren:*(a1 + 40)];
  (*(v23 + 16))(v23, v24);

  objc_destroyWeak(&v27);
LABEL_16:
}

void __62__AFUIAutoFillPasswordController__loadOneTimeCodeSuggestions___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performTextOperationsWithOneTimeCodeSuggestion:*(a1 + 32)];
}

void __62__AFUIAutoFillPasswordController__loadOneTimeCodeSuggestions___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showAllPasswordsView];
}

- (void)_reloadOneTimeCodeSuggestions
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__AFUIAutoFillPasswordController__reloadOneTimeCodeSuggestions__block_invoke;
  v3[3] = &unk_1E8424558;
  objc_copyWeak(&v4, &location);
  [(AFUIAutoFillPasswordController *)self _loadOneTimeCodeSuggestions:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __63__AFUIAutoFillPasswordController__reloadOneTimeCodeSuggestions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  (*(WeakRetained[2] + 16))();
}

- (void)_showAllPasswordsView
{
  if (!self->_passwordsController)
  {
    v3 = [[AFUIPasswordsController alloc] initWithDocumentTraits:self->_documentTraits];
    passwordsController = self->_passwordsController;
    self->_passwordsController = v3;

    [(AFUIPasswordsController *)self->_passwordsController setPasswordPickerDelegate:self];
  }

  modalUIDelegate = [(AFUIAutoFillPasswordController *)self modalUIDelegate];
  [modalUIDelegate passwordsUIWillBeginForSessionUUID:0 completion:0];

  v6 = self->_passwordsController;
  presentingViewController = [(AFUIAutoFillPasswordController *)self presentingViewController];
  [(AFUIPasswordsController *)v6 presentPasswordPickerFromViewController:presentingViewController didFinishAuthenticationBlock:0];
}

- (void)_performTextOperationsWithAccountSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__AFUIAutoFillPasswordController__performTextOperationsWithAccountSuggestion___block_invoke;
  v16[3] = &unk_1E84245A8;
  v16[4] = self;
  v5 = suggestionCopy;
  v17 = v5;
  v6 = MEMORY[0x1D38AFC90](v16);
  v7 = self->_documentTraits;
  modalUIDelegate = [(AFUIAutoFillPasswordController *)self modalUIDelegate];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__AFUIAutoFillPasswordController__performTextOperationsWithAccountSuggestion___block_invoke_3;
  v12[3] = &unk_1E84245D0;
  v13 = v5;
  v14 = v7;
  v15 = v6;
  v9 = v6;
  v10 = v7;
  v11 = v5;
  [modalUIDelegate authenticationWillBeginForSessionUUID:0 completion:v12];
}

void __78__AFUIAutoFillPasswordController__performTextOperationsWithAccountSuggestion___block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) modalUIDelegate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__AFUIAutoFillPasswordController__performTextOperationsWithAccountSuggestion___block_invoke_2;
  v7[3] = &unk_1E8424580;
  v10 = a2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  [v4 authenticationDidEndForSessionUUID:0 completion:v7];
}

void __78__AFUIAutoFillPasswordController__performTextOperationsWithAccountSuggestion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69C6FA8]);
    v3 = [*(a1 + 32) usernameAndPasswordPayload];
    v4 = [v3 mutableCopy];
    v5 = [v6 keyboardOutput];
    [v5 setCustomInfo:v4];

    (*(*(*(a1 + 40) + 8) + 16))();
  }
}

void __78__AFUIAutoFillPasswordController__performTextOperationsWithAccountSuggestion___block_invoke_3(void *a1)
{
  v2 = [MEMORY[0x1E698E1C0] sharedInstance];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [MEMORY[0x1E698E1C0] sharedInstance];
    [v4 authenticateIfNecessaryForSuggestion:a1[4] documentTraits:a1[5] withCompletionHandler:a1[6]];
  }
}

- (void)_performTextOperationsWithCredential:(id)credential
{
  v4 = MEMORY[0x1E69C6FA8];
  credentialCopy = credential;
  v8 = objc_alloc_init(v4);
  v6 = [(AFUIAutoFillPasswordController *)self _keyboardDictionaryWithCredential:credentialCopy];

  keyboardOutput = [v8 keyboardOutput];
  [keyboardOutput setCustomInfo:v6];

  (*(self->_textOperationsHandler + 2))();
}

- (void)_performTextOperationsWithOneTimeCodeSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __82__AFUIAutoFillPasswordController__performTextOperationsWithOneTimeCodeSuggestion___block_invoke;
  v16[3] = &unk_1E84245A8;
  v16[4] = self;
  v5 = suggestionCopy;
  v17 = v5;
  v6 = MEMORY[0x1D38AFC90](v16);
  v7 = self->_documentTraits;
  modalUIDelegate = [(AFUIAutoFillPasswordController *)self modalUIDelegate];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__AFUIAutoFillPasswordController__performTextOperationsWithOneTimeCodeSuggestion___block_invoke_3;
  v12[3] = &unk_1E84245D0;
  v13 = v5;
  v14 = v7;
  v15 = v6;
  v9 = v6;
  v10 = v7;
  v11 = v5;
  [modalUIDelegate authenticationWillBeginForSessionUUID:0 completion:v12];
}

void __82__AFUIAutoFillPasswordController__performTextOperationsWithOneTimeCodeSuggestion___block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) modalUIDelegate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__AFUIAutoFillPasswordController__performTextOperationsWithOneTimeCodeSuggestion___block_invoke_2;
  v7[3] = &unk_1E8424580;
  v10 = a2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  [v4 authenticationDidEndForSessionUUID:0 completion:v7];
}

void __82__AFUIAutoFillPasswordController__performTextOperationsWithOneTimeCodeSuggestion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v3 = [*(a1 + 32) oneTimeCodePayload];
    v8 = [v3 objectForKeyedSubscript:@"OneTimeCode"];

    if (v8)
    {
      v4 = [MEMORY[0x1E695DF90] dictionary];
      v5 = [v8 code];
      [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69D9880]];

      v6 = objc_alloc_init(MEMORY[0x1E69C6FA8]);
      v7 = [v6 keyboardOutput];
      [v7 setCustomInfo:v4];

      (*(*(*(a1 + 40) + 8) + 16))();
    }
  }
}

void __82__AFUIAutoFillPasswordController__performTextOperationsWithOneTimeCodeSuggestion___block_invoke_3(void *a1)
{
  v2 = [MEMORY[0x1E698E1C0] sharedInstance];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [MEMORY[0x1E698E1C0] sharedInstance];
    [v4 authenticateIfNecessaryForSuggestion:a1[4] documentTraits:a1[5] withCompletionHandler:a1[6]];
  }
}

- (id)_menuItemImageForOneTimeCodeSuggestion:(id)suggestion
{
  oneTimeCodePayload = [suggestion oneTimeCodePayload];
  v4 = [oneTimeCodePayload objectForKeyedSubscript:@"OneTimeCode"];

  source = [v4 source];
  switch(source)
  {
    case 0:
      v6 = @"message.fill";
      goto LABEL_7;
    case 3:
      v6 = @"key.fill";
      goto LABEL_7;
    case 1:
      v6 = @"envelope.fill";
LABEL_7:
      v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:v6];
      goto LABEL_9;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (id)_keyboardDictionaryWithCredential:(id)credential
{
  v3 = MEMORY[0x1E695DF90];
  credentialCopy = credential;
  dictionary = [v3 dictionary];
  user = [credentialCopy user];
  v7 = user;
  if (user)
  {
    v8 = user;
  }

  else
  {
    v8 = &stru_1F4E9A028;
  }

  [dictionary setObject:v8 forKeyedSubscript:*MEMORY[0x1E69D98A0]];

  password = [credentialCopy password];

  if (password)
  {
    v10 = password;
  }

  else
  {
    v10 = &stru_1F4E9A028;
  }

  [dictionary setObject:v10 forKeyedSubscript:*MEMORY[0x1E69D9888]];

  return dictionary;
}

- (void)_performTextOperationsWithStringValue:(id)value
{
  v4 = MEMORY[0x1E69C6FA8];
  valueCopy = value;
  v6 = objc_alloc_init(v4);
  [v6 _assertOrInsertText:valueCopy documentTraits:self->_documentTraits];

  (*(self->_textOperationsHandler + 2))();
}

- (void)passwordsControllerDidFinish:(id)finish
{
  modalUIDelegate = [(AFUIAutoFillPasswordController *)self modalUIDelegate];
  [modalUIDelegate passwordsUIDidEndForSessionUUID:0 completion:0];
}

- (AFUIModalUIDelegate)modalUIDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->modalUIDelegate);

  return WeakRetained;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end