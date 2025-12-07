@interface AAUITwoFactorCodeHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_generateLoginCode:(id)code;
- (void)generateLoginCodeWithPresenter:(id)presenter completion:(id)completion;
@end

@implementation AAUITwoFactorCodeHook

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"code:generate"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  modelCopy = model;
  objc_opt_class();
  clientInfo = [modelCopy clientInfo];

  v5 = [clientInfo objectForKeyedSubscript:*MEMORY[0x1E69C7058]];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 isEqualToString:@"code:generate"];
  return v7;
}

- (void)_generateLoginCode:(id)code
{
  codeCopy = code;
  delegate = [(AAUITwoFactorCodeHook *)self delegate];
  v5 = [delegate presentationContextForHook:self];
  [(AAUITwoFactorCodeHook *)self generateLoginCodeWithPresenter:v5 completion:codeCopy];
}

- (void)generateLoginCodeWithPresenter:(id)presenter completion:(id)completion
{
  presenterCopy = presenter;
  completionCopy = completion;
  v8 = _AAUILogSystem(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Starting to generate verification code...", buf, 2u);
  }

  v9 = objc_alloc_init(MEMORY[0x1E698DCC0]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__AAUITwoFactorCodeHook_generateLoginCodeWithPresenter_completion___block_invoke;
  v12[3] = &unk_1E820CED8;
  v12[4] = self;
  v13 = presenterCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = presenterCopy;
  [v9 generateLoginCodeWithCompletion:v12];
}

void __67__AAUITwoFactorCodeHook_generateLoginCodeWithPresenter_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__AAUITwoFactorCodeHook_generateLoginCodeWithPresenter_completion___block_invoke_2;
  block[3] = &unk_1E820CEB0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v9 = *(a1 + 48);
  v16 = v5;
  v17 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __67__AAUITwoFactorCodeHook_generateLoginCodeWithPresenter_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v3 = _AAUILogSystem(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v29 = v4;
      _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Failed to generate login code. Error: %@", buf, 0xCu);
    }

    v5 = MEMORY[0x1E69DC650];
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"HSA2_CODE_GENERATOR_FAILED_TITLE" value:&stru_1F447F790 table:@"Localizable"];
    v8 = [v5 alertWithTitle:v7 message:0];

    v9 = *(a1 + 48);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __67__AAUITwoFactorCodeHook_generateLoginCodeWithPresenter_completion___block_invoke_46;
    v25[3] = &unk_1E820B7A8;
    v27 = *(a1 + 64);
    v26 = *(a1 + 32);
    [v9 presentViewController:v8 animated:1 completion:v25];
  }

  else
  {
    v10 = MEMORY[0x1E698DD90];
    v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"HSA2_CODE_GENERATOR_TITLE_REBRAND" value:&stru_1F447F790 table:@"Localizable"];
    v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"HSA2_CODE_GENERATOR_BODY" value:&stru_1F447F790 table:@"Localizable"];
    v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"HSA2_CODE_GENERATOR_FOOTER" value:&stru_1F447F790 table:@"Localizable"];
    v17 = [v10 buildLoginCodeNotificationWithTitle:v12 body:v14 footer:v16 loginCode:*(a1 + 56)];

    if (v17)
    {
      v19 = MEMORY[0x1E698B9E0];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __67__AAUITwoFactorCodeHook_generateLoginCodeWithPresenter_completion___block_invoke_2_59;
      v22[3] = &unk_1E820CE88;
      v24 = v17;
      v23 = *(a1 + 64);
      [v19 waitForResponseToNotification:v17 completion:v22];
    }

    else
    {
      v20 = _AAUILogSystem(v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5355000, v20, OS_LOG_TYPE_DEFAULT, "Unable to create CFUserNotificationRef!", buf, 2u);
      }

      v21 = *(a1 + 64);
      if (v21)
      {
        (*(v21 + 16))(v21, 0, 0);
      }
    }
  }
}

uint64_t __67__AAUITwoFactorCodeHook_generateLoginCodeWithPresenter_completion___block_invoke_46(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

uint64_t __67__AAUITwoFactorCodeHook_generateLoginCodeWithPresenter_completion___block_invoke_2_59(uint64_t a1)
{
  CFRelease(*(a1 + 40));
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end