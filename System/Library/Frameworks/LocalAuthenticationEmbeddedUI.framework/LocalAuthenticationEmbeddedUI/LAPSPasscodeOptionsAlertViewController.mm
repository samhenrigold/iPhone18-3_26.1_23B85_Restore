@interface LAPSPasscodeOptionsAlertViewController
- (LAPSPasscodeOptionsAlertViewController)initWithConfiguration:(id)configuration;
- (LAPSPasscodeOptionsViewControllerDelegate)delegate;
- (unint64_t)supportedInterfaceOrientations;
- (void)_addActionForPasscodeType:(id)type;
- (void)_addActionForRecoveryEnabled:(BOOL)enabled restricted:(BOOL)restricted;
- (void)_addActionWithTitle:(id)title style:(int64_t)style completion:(id)completion;
- (void)_dismiss;
- (void)_setActionWithTitle:(id)title enabled:(BOOL)enabled;
- (void)_setup;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation LAPSPasscodeOptionsAlertViewController

- (LAPSPasscodeOptionsAlertViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = LAPSPasscodeOptionsAlertViewController;
  v6 = [(LAPSPasscodeOptionsAlertViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, configuration);
  }

  return v7;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = LAPSPasscodeOptionsAlertViewController;
  [(LAPSPasscodeOptionsAlertViewController *)&v3 viewDidLoad];
  [(LAPSPasscodeOptionsAlertViewController *)self _setup];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = LAPSPasscodeOptionsAlertViewController;
  [(LAPSPasscodeOptionsAlertViewController *)&v5 viewDidDisappear:disappear];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeOptionsViewControllerDidDisappear:self];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = LAPSPasscodeOptionsAlertViewController;
  [(LAPSPasscodeOptionsAlertViewController *)&v5 viewWillDisappear:disappear];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeOptionsViewControllerWillDisappear:self];
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)_setup
{
  v14 = *MEMORY[0x277D85DE8];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [(LAPSPasscodeOptionsAlertViewController *)self _addSectionDelimiter];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  allowedPasscodeTypes = [(LAPSPasscodeOptionsViewControllerConfiguration *)self->_config allowedPasscodeTypes];
  v4 = [allowedPasscodeTypes countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allowedPasscodeTypes);
        }

        [(LAPSPasscodeOptionsAlertViewController *)self _addActionForPasscodeType:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [allowedPasscodeTypes countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  if ([(LAPSPasscodeOptionsViewControllerConfiguration *)self->_config isPasscodeRecoverySupported]&& [(LAPSPasscodeOptionsViewControllerConfiguration *)self->_config isPasscodeRecoveryOptionVisible])
  {
    [(LAPSPasscodeOptionsAlertViewController *)self _addActionForRecoveryEnabled:[(LAPSPasscodeOptionsViewControllerConfiguration *)self->_config isPasscodeRecoveryEnabled] restricted:[(LAPSPasscodeOptionsViewControllerConfiguration *)self->_config isPasscodeRecoveryRestricted]];
  }

  cancelTitle = [(LAPSPasscodeOptionsViewControllerConfiguration *)self->_config cancelTitle];
  [(LAPSPasscodeOptionsAlertViewController *)self _addActionWithTitle:cancelTitle style:1 completion:&__block_literal_global_6];
}

- (void)_addActionForPasscodeType:(id)type
{
  typeCopy = type;
  localizedName = [typeCopy localizedName];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__LAPSPasscodeOptionsAlertViewController__addActionForPasscodeType___block_invoke;
  v7[3] = &unk_278A66070;
  v8 = typeCopy;
  v6 = typeCopy;
  [(LAPSPasscodeOptionsAlertViewController *)self _addActionWithTitle:localizedName style:0 completion:v7];
}

void __68__LAPSPasscodeOptionsAlertViewController__addActionForPasscodeType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 delegate];
  [v4 passcodeOptionsViewController:v3 didSelectPasscodeType:*(a1 + 32)];
}

- (void)_addActionForRecoveryEnabled:(BOOL)enabled restricted:(BOOL)restricted
{
  v6 = [(LAPSPasscodeOptionsViewControllerConfiguration *)self->_config isPasscodeRecoveryEnabled:enabled];
  config = self->_config;
  if (v6)
  {
    [(LAPSPasscodeOptionsViewControllerConfiguration *)config passcodeRecoveryEnabledTitle];
  }

  else
  {
    [(LAPSPasscodeOptionsViewControllerConfiguration *)config passcodeRecoveryDisabledTitle];
  }
  v8 = ;
  if ([(LAPSPasscodeOptionsViewControllerConfiguration *)self->_config isPasscodeRecoveryEnabled])
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__LAPSPasscodeOptionsAlertViewController__addActionForRecoveryEnabled_restricted___block_invoke;
  v10[3] = &__block_descriptor_33_e48_v16__0__LAPSPasscodeOptionsAlertViewController_8l;
  enabledCopy = enabled;
  [(LAPSPasscodeOptionsAlertViewController *)self _addActionWithTitle:v8 style:v9 completion:v10];
  [(LAPSPasscodeOptionsAlertViewController *)self _setActionWithTitle:v8 enabled:[(LAPSPasscodeOptionsViewControllerConfiguration *)self->_config isPasscodeRecoveryRestricted]^ 1];
}

void __82__LAPSPasscodeOptionsAlertViewController__addActionForRecoveryEnabled_restricted___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 delegate];
  [v4 passcodeOptionsViewController:v3 didSetPasscodeRecoveryEnabled:(*(a1 + 32) & 1) == 0];
}

- (void)_addActionWithTitle:(id)title style:(int64_t)style completion:(id)completion
{
  titleCopy = title;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__LAPSPasscodeOptionsAlertViewController__addActionWithTitle_style_completion___block_invoke;
  v11[3] = &unk_278A660B8;
  objc_copyWeak(&v13, &location);
  v10 = completionCopy;
  v12 = v10;
  [(LAPSPasscodeOptionsAlertViewController *)self _addActionWithTitle:titleCopy style:style handler:v11 shouldDismissHandler:&__block_literal_global_10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

uint64_t __79__LAPSPasscodeOptionsAlertViewController__addActionWithTitle_style_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = [v5 _dismiss];
    v3 = v5;
  }

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

- (void)_setActionWithTitle:(id)title enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v20 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  actions = [(LAPSPasscodeOptionsAlertViewController *)self actions];
  v8 = [actions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(actions);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        title = [v12 title];
        v14 = [title isEqualToString:titleCopy];

        if (v14)
        {
          [v12 setEnabled:enabledCopy];
        }
      }

      v9 = [actions countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)_dismiss
{
  presentingViewController = [(LAPSPasscodeOptionsAlertViewController *)self presentingViewController];

  if (presentingViewController)
  {
    [(LAPSPasscodeOptionsAlertViewController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_12];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained passcodeOptionsViewControllerWillDisappear:self];
  }
}

- (LAPSPasscodeOptionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end