@interface ASCredentialRequestConfirmButtonSubPane
+ (id)_createMainStackView;
- (ASCredentialRequestConfirmButtonSubPane)initWithActivity:(id)activity auditTokenData:(id)data testOptions:(id)options addButtonPadding:(BOOL)padding;
- (ASCredentialRequestSubPaneConfirmButtonDelegate)delegate;
- (BOOL)_isDelegateReadyForAuthorization;
- (BOOL)_shouldAllowFallbackToPasscodeAuthentication;
- (BOOL)authorizationCapabilityEnabled;
- (BOOL)isBiometricAuthenticationAvailable;
- (BOOL)shouldOverrideLocalAuthenticationForTesting;
- (NSString)buttonText;
- (id)_setUpAlertImageWithConstraints;
- (id)_verticalSpacerWithConstant:(double)constant;
- (void)_addArrangedSpaceToMainStackView:(double)view;
- (void)_authorizationButtonBioSelected:(id)selected;
- (void)_authorizationButtonCompanionSelected:(id)selected;
- (void)_authorizationWithPasscodeOrPasswordButtonSelected:(id)selected;
- (void)_authorizeAccountViaDelegationWithPasswordButtonSelected:(id)selected;
- (void)_continueButtonTapped;
- (void)_enableLAUIAuthenticationMechanism;
- (void)_enterProcessingStateWithCompletionHandler:(id)handler;
- (void)_initializeAuthorizationButtonAddingButtonPadding:(BOOL)padding;
- (void)_performCompanionValidation:(id)validation;
- (void)_setGlyphViewGestureRecognizerEnabled:(BOOL)enabled;
- (void)_setupBiometricButtonWithConstraints:(id)constraints;
- (void)_setupLabelWithTitle:(id)title animated:(BOOL)animated;
- (void)_switchToBiometricsView:(int64_t)view withAuthenticationMechanismEnabled:(BOOL)enabled showAlert:(BOOL)alert alertString:(id)string;
- (void)_switchToPasscodeOrPassword;
- (void)_updateLabelAnimatedWithTitle:(id)title;
- (void)_waitForTimeInterval:(double)interval withGroup:(id)group;
- (void)_windowDidBecomeKey:(id)key;
- (void)addToStackView:(id)view withCustomSpacingAfter:(double)after context:(id)context;
- (void)authenticationResult:(id)result error:(id)error context:(id)context;
- (void)biometricAuthenticationFailureWithAlertString:(id)string;
- (void)dealloc;
- (void)disableBiometricView;
- (void)finishProcessingWithCompletionHandler:(id)handler;
- (void)invalidateProcessingState;
- (void)performPasscodeOrPasswordValidation:(id)validation;
- (void)processBiometricMatchWithCompletionHandler:(id)handler;
- (void)setAuthorizationCapabilityEnabled:(BOOL)enabled forLoginChoice:(id)choice;
- (void)setButtonText:(id)text;
- (void)setUpButtonInPaneContext:(id)context buttonTitle:(id)title;
- (void)showActivityIndicator;
- (void)showAlertContinuingWithPassword:(BOOL)password;
- (void)showAuthenticationMechanismForExternalPasswordCredential;
- (void)showContinueButton;
- (void)showContinueButtonWithTitle:(id)title;
- (void)showContinueWithPasswordButtonWithTitle:(id)title;
@end

@implementation ASCredentialRequestConfirmButtonSubPane

- (ASCredentialRequestConfirmButtonSubPane)initWithActivity:(id)activity auditTokenData:(id)data testOptions:(id)options addButtonPadding:(BOOL)padding
{
  paddingCopy = padding;
  activityCopy = activity;
  dataCopy = data;
  optionsCopy = options;
  _createMainStackView = [objc_opt_class() _createMainStackView];
  v23.receiver = self;
  v23.super_class = ASCredentialRequestConfirmButtonSubPane;
  v15 = [(ASCredentialRequestSubPane *)&v23 initWithView:_createMainStackView];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_authorizationActivity, activity);
    objc_storeStrong(&v16->_testOptions, options);
    objc_storeStrong(&v16->_mainStackView, _createMainStackView);
    LODWORD(v17) = 1148846080;
    [(UIStackView *)v16->_mainStackView setContentCompressionResistancePriority:1 forAxis:v17];
    v16->_canPerformBiometricAuthentication = [(ASCredentialRequestConfirmButtonSubPane *)v16 isBiometricAuthenticationAvailable];
    v16->_canPerformCompanionAuthentication = [MEMORY[0x1E698E020] isCompanionAuthenticationAvailable];
    [(ASCredentialRequestConfirmButtonSubPane *)v16 _initializeAuthorizationButtonAddingButtonPadding:paddingCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v16 selector:sel__windowDidBecomeKey_ name:*MEMORY[0x1E69DE7B0] object:0];

    v19 = [dataCopy copy];
    auditTokenData = v16->_auditTokenData;
    v16->_auditTokenData = v19;

    v21 = v16;
  }

  return v16;
}

- (NSString)buttonText
{
  authorizationButton = [(ASCredentialRequestConfirmButtonSubPane *)self authorizationButton];
  buttonText = [authorizationButton buttonText];

  return buttonText;
}

- (void)setButtonText:(id)text
{
  textCopy = text;
  authorizationButton = [(ASCredentialRequestConfirmButtonSubPane *)self authorizationButton];
  [authorizationButton setButtonText:textCopy];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASCredentialRequestConfirmButtonSubPane;
  [(ASCredentialRequestConfirmButtonSubPane *)&v4 dealloc];
}

+ (id)_createMainStackView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setAccessibilityIdentifier:@"ASAuthorizationControllerContinueButton"];
  [v3 setSpacing:0.0];
  [v3 setAlignment:{objc_msgSend(self, "_mainStackViewAlignment")}];
  [v3 setAxis:1];
  [v3 setDistribution:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:clearColor];

  return v3;
}

- (void)_initializeAuthorizationButtonAddingButtonPadding:(BOOL)padding
{
  paddingCopy = padding;
  v32[5] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E69DD250]);
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [v5 initWithFrame:{*MEMORY[0x1E695F058], v7, v8, v9}];
  authorizationButtonContainerView = self->_authorizationButtonContainerView;
  self->_authorizationButtonContainerView = v10;

  [(UIView *)self->_authorizationButtonContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [[ASCredentialRequestButtonContinue alloc] initWithFrame:v6, v7, v8, v9];
  authorizationButton = self->_authorizationButton;
  self->_authorizationButton = &v12->super;

  [(ASCredentialRequestButton *)self->_authorizationButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_authorizationButtonContainerView addSubview:self->_authorizationButton];
  [(UIStackView *)self->_mainStackView addArrangedSubview:self->_authorizationButtonContainerView];
  v14 = 0.0;
  if (paddingCopy)
  {
    +[ASViewServiceInterfaceUtilities continueButtonTitleMargin];
    v14 = v15 + v15;
  }

  centerXAnchor = [(ASCredentialRequestButton *)self->_authorizationButton centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_authorizationButtonContainerView centerXAnchor];
  v29 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v32[0] = v29;
  centerYAnchor = [(ASCredentialRequestButton *)self->_authorizationButton centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_authorizationButtonContainerView centerYAnchor];
  v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v32[1] = v16;
  widthAnchor = [(UIView *)self->_authorizationButtonContainerView widthAnchor];
  widthAnchor2 = [(ASCredentialRequestButton *)self->_authorizationButton widthAnchor];
  v19 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:v14];
  v32[2] = v19;
  heightAnchor = [(UIView *)self->_authorizationButtonContainerView heightAnchor];
  heightAnchor2 = [(ASCredentialRequestButton *)self->_authorizationButton heightAnchor];
  v22 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v32[3] = v22;
  heightAnchor3 = [(ASCredentialRequestButton *)self->_authorizationButton heightAnchor];
  +[ASViewServiceInterfaceUtilities continueButtonHeight];
  v24 = [heightAnchor3 constraintEqualToConstant:?];
  v32[4] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:5];
  [v26 activateConstraints:v25];
}

- (void)_windowDidBecomeKey:(id)key
{
  if ([(LAUIAuthenticationView *)self->_biometricsView isMechanismEnabled:4])
  {

    [(ASCredentialRequestConfirmButtonSubPane *)self _enableLAUIAuthenticationMechanism];
  }
}

- (void)_enableLAUIAuthenticationMechanism
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__ASCredentialRequestConfirmButtonSubPane__enableLAUIAuthenticationMechanism__block_invoke;
  block[3] = &unk_1E7AF7608;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __77__ASCredentialRequestConfirmButtonSubPane__enableLAUIAuthenticationMechanism__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[8];
  v10 = 0;
  v4 = [v3 enableMechanism:objc_msgSend(v2 error:{"_authenticationMechanism"), &v10}];
  v5 = v10;
  v6 = v5;
  if (v5 || (v4 & 1) == 0)
  {
    v7 = *(*(a1 + 32) + 88);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __77__ASCredentialRequestConfirmButtonSubPane__enableLAUIAuthenticationMechanism__block_invoke_2;
    v8[3] = &unk_1E7AF7608;
    v9 = v5;
    os_activity_apply(v7, v8);
  }
}

void __77__ASCredentialRequestConfirmButtonSubPane__enableLAUIAuthenticationMechanism__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __77__ASCredentialRequestConfirmButtonSubPane__enableLAUIAuthenticationMechanism__block_invoke_2_cold_1(a1, v3);
  }
}

- (void)setAuthorizationCapabilityEnabled:(BOOL)enabled forLoginChoice:(id)choice
{
  enabledCopy = enabled;
  choiceCopy = choice;
  if ([MEMORY[0x1E698E020] biometryType] == 1 && self->_canPerformBiometricAuthentication)
  {
    v6 = choiceCopy;
    loginChoiceKind = [v6 loginChoiceKind];
    if (loginChoiceKind == 2)
    {
      if ([v6 isRegistrationRequest])
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }
    }

    else if (loginChoiceKind == 1)
    {
      v8 = 3;
    }

    else
    {
      v8 = 4;
    }

    selfCopy2 = self;
    v10 = v8;
    v11 = 1;
  }

  else
  {
    selfCopy2 = self;
    v10 = 0;
    v11 = enabledCopy;
  }

  [(ASCredentialRequestConfirmButtonSubPane *)selfCopy2 _switchToBiometricsView:v10 withAuthenticationMechanismEnabled:v11 showAlert:0 alertString:0];
}

- (BOOL)authorizationCapabilityEnabled
{
  authorizationButton = [(ASCredentialRequestConfirmButtonSubPane *)self authorizationButton];
  isEnabled = [authorizationButton isEnabled];

  return isEnabled;
}

- (void)showAlertContinuingWithPassword:(BOOL)password
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__ASCredentialRequestConfirmButtonSubPane_showAlertContinuingWithPassword___block_invoke;
  block[3] = &unk_1E7AF7608;
  block[4] = self;
  v5 = MEMORY[0x1E69E96A0];
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v6 = dispatch_time(0, 1700000000);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__ASCredentialRequestConfirmButtonSubPane_showAlertContinuingWithPassword___block_invoke_2;
  v7[3] = &unk_1E7AF8BB8;
  passwordCopy = password;
  v7[4] = self;
  dispatch_after(v6, v5, v7);
}

void __75__ASCredentialRequestConfirmButtonSubPane_showAlertContinuingWithPassword___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _WBSLocalizedString();
  [v1 _switchToBiometricsView:0 withAuthenticationMechanismEnabled:0 showAlert:1 alertString:v2];
}

uint64_t __75__ASCredentialRequestConfirmButtonSubPane_showAlertContinuingWithPassword___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [*(a1 + 32) _passcodeOrPasswordButtonTitle];
    [*(*(a1 + 32) + 128) setButtonText:v2];

    [*(*(a1 + 32) + 128) addTarget:*(a1 + 32) action:sel__authorizeAccountViaDelegationWithPasswordButtonSelected_];
  }

  v3 = *(a1 + 32);

  return [v3 _switchToBiometricsView:0 withAuthenticationMechanismEnabled:1 showAlert:0 alertString:0];
}

- (void)setUpButtonInPaneContext:(id)context buttonTitle:(id)title
{
  v16[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  titleCopy = title;
  if (self->_canPerformBiometricAuthentication)
  {
    v8 = &selRef__authorizationButtonBioSelected_;
  }

  else if (self->_canPerformCompanionAuthentication)
  {
    v8 = &selRef__authorizationButtonCompanionSelected_;
  }

  else
  {
    os_activity_apply(self->_authorizationActivity, &__block_literal_global_23);
    v8 = &selRef__authorizationWithPasscodeOrPasswordButtonSelected_;
  }

  v9 = *v8;
  if (!titleCopy)
  {
    titleCopy = _WBSLocalizedString();
  }

  v10 = MEMORY[0x1E696ACD8];
  widthAnchor = [(UIStackView *)self->_mainStackView widthAnchor];
  stackView = [contextCopy stackView];
  widthAnchor2 = [stackView widthAnchor];
  v14 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v16[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v10 activateConstraints:v15];

  [(ASCredentialRequestButton *)self->_authorizationButton setButtonText:titleCopy];
  [(ASCredentialRequestButton *)self->_authorizationButton addTarget:self action:v9];
}

void __80__ASCredentialRequestConfirmButtonSubPane_setUpButtonInPaneContext_buttonTitle___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1B1C8D000, v2, OS_LOG_TYPE_INFO, "Biometric authentication not available. Falling back to passcode.", v3, 2u);
  }
}

- (void)showContinueButton
{
  v3 = _WBSLocalizedString();
  [(ASCredentialRequestConfirmButtonSubPane *)self showContinueButtonWithTitle:v3];
}

- (void)showContinueButtonWithTitle:(id)title
{
  [(ASCredentialRequestButton *)self->_authorizationButton setButtonText:title];
  [(ASCredentialRequestButton *)self->_authorizationButton addTarget:self action:sel__continueButtonTapped];

  [(ASCredentialRequestConfirmButtonSubPane *)self _switchToBiometricsView:0 withAuthenticationMechanismEnabled:1 showAlert:0 alertString:0];
}

- (void)showAuthenticationMechanismForExternalPasswordCredential
{
  if (self->_canPerformBiometricAuthentication)
  {

    [(ASCredentialRequestConfirmButtonSubPane *)self _switchToBiometricsView:3 withAuthenticationMechanismEnabled:1 showAlert:0 alertString:0];
  }

  else if ([(ASCredentialRequestConfirmButtonSubPane *)self _shouldAllowFallbackToPasscodeAuthentication])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __99__ASCredentialRequestConfirmButtonSubPane_showAuthenticationMechanismForExternalPasswordCredential__block_invoke;
    v4[3] = &unk_1E7AF8BE0;
    v4[4] = self;
    [(ASCredentialRequestConfirmButtonSubPane *)self performPasscodeOrPasswordValidation:v4];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained confirmButtonSubPaneDidFailBiometry:self allowingPasscodeFallback:0];
  }
}

void __99__ASCredentialRequestConfirmButtonSubPane_showAuthenticationMechanismForExternalPasswordCredential__block_invoke(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = a3;
    WeakRetained = objc_loadWeakRetained((v4 + 136));
    [WeakRetained performAuthorization:*(a1 + 32) withAuthenticatedLAContext:v5];
  }
}

- (void)_authorizationButtonBioSelected:(id)selected
{
  if ([(ASCredentialRequestConfirmButtonSubPane *)self _isDelegateReadyForAuthorization])
  {

    [(ASCredentialRequestConfirmButtonSubPane *)self _switchToBiometricsView:1 withAuthenticationMechanismEnabled:1 showAlert:0 alertString:0];
  }
}

- (void)_authorizationButtonCompanionSelected:(id)selected
{
  if ([(ASCredentialRequestConfirmButtonSubPane *)self _isDelegateReadyForAuthorization])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __81__ASCredentialRequestConfirmButtonSubPane__authorizationButtonCompanionSelected___block_invoke;
    v4[3] = &unk_1E7AF8BE0;
    v4[4] = self;
    [(ASCredentialRequestConfirmButtonSubPane *)self _performCompanionValidation:v4];
  }
}

void __81__ASCredentialRequestConfirmButtonSubPane__authorizationButtonCompanionSelected___block_invoke(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = a3;
    WeakRetained = objc_loadWeakRetained((v4 + 136));
    [WeakRetained performAuthorization:*(a1 + 32) withAuthenticatedLAContext:v5];
  }
}

- (void)_authorizationWithPasscodeOrPasswordButtonSelected:(id)selected
{
  if ([(ASCredentialRequestConfirmButtonSubPane *)self _isDelegateReadyForAuthorization])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __94__ASCredentialRequestConfirmButtonSubPane__authorizationWithPasscodeOrPasswordButtonSelected___block_invoke;
    v4[3] = &unk_1E7AF8BE0;
    v4[4] = self;
    [(ASCredentialRequestConfirmButtonSubPane *)self performPasscodeOrPasswordValidation:v4];
  }
}

void __94__ASCredentialRequestConfirmButtonSubPane__authorizationWithPasscodeOrPasswordButtonSelected___block_invoke(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = a3;
    WeakRetained = objc_loadWeakRetained((v4 + 136));
    [WeakRetained performAuthorization:*(a1 + 32) withAuthenticatedLAContext:v5];
  }
}

- (void)_authorizeAccountViaDelegationWithPasswordButtonSelected:(id)selected
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained performPasswordAuthentication:self];
}

- (void)_continueButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained userTappedContinueButton];
}

- (void)_performCompanionValidation:(id)validation
{
  v17[2] = *MEMORY[0x1E69E9840];
  validationCopy = validation;
  v5 = objc_alloc_init(MEMORY[0x1E696EE50]);
  _passcodeOrPasswordButtonTitle = [(ASCredentialRequestConfirmButtonSubPane *)self _passcodeOrPasswordButtonTitle];
  v7 = MEMORY[0x1E695DF90];
  v16[0] = &unk_1F28F0578;
  v16[1] = &unk_1F28F0590;
  v17[0] = _passcodeOrPasswordButtonTitle;
  v17[1] = &stru_1F28DE020;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v9 = [v7 dictionaryWithDictionary:v8];

  auditTokenData = self->_auditTokenData;
  if (auditTokenData)
  {
    [v9 setObject:auditTokenData forKey:&unk_1F28F05A8];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__ASCredentialRequestConfirmButtonSubPane__performCompanionValidation___block_invoke;
  v13[3] = &unk_1E7AF8C08;
  v14 = v5;
  v15 = validationCopy;
  v13[4] = self;
  v11 = v5;
  v12 = validationCopy;
  [v11 evaluatePolicy:3 options:v9 reply:v13];
}

void __71__ASCredentialRequestConfirmButtonSubPane__performCompanionValidation___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = *(*(a1 + 32) + 88);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__ASCredentialRequestConfirmButtonSubPane__performCompanionValidation___block_invoke_2;
    block[3] = &unk_1E7AF7608;
    v8 = v4;
    os_activity_apply(v6, block);
  }

  (*(*(a1 + 48) + 16))();
}

void __71__ASCredentialRequestConfirmButtonSubPane__performCompanionValidation___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __71__ASCredentialRequestConfirmButtonSubPane__performCompanionValidation___block_invoke_2_cold_1(a1, v3);
  }
}

- (void)performPasscodeOrPasswordValidation:(id)validation
{
  v14[2] = *MEMORY[0x1E69E9840];
  validationCopy = validation;
  v5 = objc_alloc_init(MEMORY[0x1E696EE50]);
  _passcodeOrPasswordButtonTitle = [(ASCredentialRequestConfirmButtonSubPane *)self _passcodeOrPasswordButtonTitle];
  v13[0] = &unk_1F28F0578;
  v13[1] = &unk_1F28F0590;
  v14[0] = _passcodeOrPasswordButtonTitle;
  v14[1] = &stru_1F28DE020;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__ASCredentialRequestConfirmButtonSubPane_performPasscodeOrPasswordValidation___block_invoke;
  v10[3] = &unk_1E7AF8C08;
  v11 = v5;
  v12 = validationCopy;
  v10[4] = self;
  v8 = v5;
  v9 = validationCopy;
  [v8 evaluatePolicy:1007 options:v7 reply:v10];
}

void __79__ASCredentialRequestConfirmButtonSubPane_performPasscodeOrPasswordValidation___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = *(*(a1 + 32) + 88);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__ASCredentialRequestConfirmButtonSubPane_performPasscodeOrPasswordValidation___block_invoke_2;
    block[3] = &unk_1E7AF7608;
    v8 = v4;
    os_activity_apply(v6, block);
  }

  (*(*(a1 + 48) + 16))();
}

void __79__ASCredentialRequestConfirmButtonSubPane_performPasscodeOrPasswordValidation___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __79__ASCredentialRequestConfirmButtonSubPane_performPasscodeOrPasswordValidation___block_invoke_2_cold_1(a1, v3);
  }
}

- (BOOL)_isDelegateReadyForAuthorization
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained validateReadyForAuthorization:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)_switchToBiometricsView:(int64_t)view withAuthenticationMechanismEnabled:(BOOL)enabled showAlert:(BOOL)alert alertString:(id)string
{
  alertCopy = alert;
  enabledCopy = enabled;
  v33 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  self->_lastAuthenticationViewVisibility = view;
  if (!view || !enabledCopy || !self->_biometricsView)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    subviews = [(UIStackView *)self->_mainStackView subviews];
    v12 = [subviews copy];

    v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v28 + 1) + 8 * i) removeFromSuperview];
        }

        v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v14);
    }

    if (alertCopy)
    {
      [(ASCredentialRequestConfirmButtonSubPane *)self disableBiometricView];
      [(ASCredentialRequestConfirmButtonSubPane *)self _addArrangedSpaceToMainStackView:12.0];
      _setUpAlertImageWithConstraints = [(ASCredentialRequestConfirmButtonSubPane *)self _setUpAlertImageWithConstraints];
      [(ASCredentialRequestConfirmButtonSubPane *)self _setupLabelWithTitle:stringCopy animated:1];
      [MEMORY[0x1E696ACD8] activateConstraints:_setUpAlertImageWithConstraints];
LABEL_17:

      goto LABEL_34;
    }

    if (!view)
    {
      [(ASCredentialRequestConfirmButtonSubPane *)self disableBiometricView];
      [(UIStackView *)self->_mainStackView addArrangedSubview:self->_authorizationButtonContainerView];
      authorizationButton = [(ASCredentialRequestConfirmButtonSubPane *)self authorizationButton];
      [authorizationButton setEnabled:enabledCopy];

      goto LABEL_34;
    }

    if ([(ASCredentialRequestConfirmButtonSubPane *)self shouldOverrideLocalAuthenticationForTesting])
    {
      _setUpAlertImageWithConstraints = objc_alloc_init(MEMORY[0x1E696EE50]);
      [(ASCredentialRequestConfirmButtonSubPane *)self authenticationResult:0 error:0 context:_setUpAlertImageWithConstraints];
      goto LABEL_17;
    }

    biometricsContainerView = self->_biometricsContainerView;
    if (!biometricsContainerView)
    {
      v20 = objc_alloc_init(MEMORY[0x1E69DCF90]);
      [(UIStackView *)v20 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIStackView *)v20 setSpacing:12.0];
      [(UIStackView *)v20 setAxis:1];
      [(UIStackView *)v20 setAlignment:3];
      v21 = self->_biometricsContainerView;
      self->_biometricsContainerView = v20;

      biometricsContainerView = self->_biometricsContainerView;
    }

    [(UIStackView *)self->_mainStackView addArrangedSubview:biometricsContainerView];
    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(ASCredentialRequestConfirmButtonSubPane *)self _setupBiometricButtonWithConstraints:v22];
    biometryType = [MEMORY[0x1E698E020] biometryType];
    if (biometryType == 2)
    {
      v24 = _WBSLocalizedString();
      selfCopy2 = self;
      v26 = v24;
      v27 = 1;
    }

    else
    {
      if (!biometryType)
      {
        os_activity_apply(self->_authorizationActivity, &__block_literal_global_49_0);
LABEL_33:
        [MEMORY[0x1E696ACD8] activateConstraints:v22];

        goto LABEL_34;
      }

      if (view > 2)
      {
        if (view != 3 && view != 4)
        {
          goto LABEL_33;
        }
      }

      else if (view != 1 && view != 2)
      {
        goto LABEL_33;
      }

      v24 = _WBSLocalizedString();
      selfCopy2 = self;
      v26 = v24;
      v27 = 0;
    }

    [(ASCredentialRequestConfirmButtonSubPane *)selfCopy2 _setupLabelWithTitle:v26 animated:v27];

    goto LABEL_33;
  }

  [(ASCredentialRequestConfirmButtonSubPane *)self _enableLAUIAuthenticationMechanism];
LABEL_34:
}

void __124__ASCredentialRequestConfirmButtonSubPane__switchToBiometricsView_withAuthenticationMechanismEnabled_showAlert_alertString___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __124__ASCredentialRequestConfirmButtonSubPane__switchToBiometricsView_withAuthenticationMechanismEnabled_showAlert_alertString___block_invoke_cold_1(v2);
  }
}

- (void)disableBiometricView
{
  biometricsView = self->_biometricsView;
  if (biometricsView)
  {
    [(LAUIAuthenticationView *)biometricsView setDelegate:0];
    v4 = self->_biometricsView;
    v13 = 0;
    v5 = [(LAUIAuthenticationView *)v4 disableMechanism:4 error:&v13];
    v6 = v13;
    v7 = v6;
    if (v6 || (v5 & 1) == 0)
    {
      authorizationActivity = self->_authorizationActivity;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __63__ASCredentialRequestConfirmButtonSubPane_disableBiometricView__block_invoke;
      v11[3] = &unk_1E7AF7608;
      v12 = v6;
      os_activity_apply(authorizationActivity, v11);
    }

    biometricsContainerView = self->_biometricsContainerView;
    self->_biometricsContainerView = 0;

    v10 = self->_biometricsView;
    self->_biometricsView = 0;
  }
}

void __63__ASCredentialRequestConfirmButtonSubPane_disableBiometricView__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __63__ASCredentialRequestConfirmButtonSubPane_disableBiometricView__block_invoke_cold_1(a1, v3);
  }
}

- (void)_addArrangedSpaceToMainStackView:(double)view
{
  v4 = [(ASCredentialRequestConfirmButtonSubPane *)self _verticalSpacerWithConstant:view];
  [(UIStackView *)self->_mainStackView addArrangedSubview:v4];
}

- (id)_verticalSpacerWithConstant:(double)constant
{
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  heightAnchor = [v4 heightAnchor];
  v6 = [heightAnchor constraintEqualToConstant:constant];
  [v4 addConstraint:v6];

  return v4;
}

- (id)_setUpAlertImageWithConstraints
{
  v17[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  redColor = [MEMORY[0x1E69DC888] redColor];
  [v3 setTintColor:redColor];

  v5 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:3 weight:50.0];
  [v3 setPreferredSymbolConfiguration:v5];

  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.circle"];
  [v3 setImage:v6];

  [v3 setContentMode:1];
  [v3 setFrame:{0.0, 0.0, 50.0, 50.0}];
  [(UIStackView *)self->_mainStackView addArrangedSubview:v3];
  heightAnchor = [v3 heightAnchor];
  v8 = [heightAnchor constraintEqualToConstant:50.0];
  widthAnchor = [v3 widthAnchor];
  v10 = [widthAnchor constraintEqualToConstant:50.0];
  v17[1] = v10;
  centerXAnchor = [v3 centerXAnchor];
  view = [(ASCredentialRequestSubPane *)self view];
  centerXAnchor2 = [view centerXAnchor];
  v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v17[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];

  return v15;
}

- (void)_setupLabelWithTitle:(id)title animated:(BOOL)animated
{
  animatedCopy = animated;
  titleCopy = title;
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(UILabel *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
  v8 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0 weight:*MEMORY[0x1E69DB978]];
  v9 = [defaultMetrics scaledFontForFont:v8];
  [(UILabel *)v6 setFont:v9];

  [(UILabel *)v6 setTextAlignment:1];
  [(UILabel *)v6 setNumberOfLines:1];
  [(UILabel *)v6 setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)v6 setAdjustsFontSizeToFitWidth:1];
  if (animatedCopy)
  {
    v10 = &stru_1F28DE020;
  }

  else
  {
    v10 = titleCopy;
  }

  [(UILabel *)v6 setText:v10];
  LODWORD(v11) = 1148846080;
  [(UILabel *)v6 setContentCompressionResistancePriority:1 forAxis:v11];
  [(UILabel *)v6 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC38]];
  [(UIStackView *)self->_biometricsContainerView addArrangedSubview:v6];
  biometricLabel = self->_biometricLabel;
  self->_biometricLabel = v6;

  if (animatedCopy)
  {
    [(ASCredentialRequestConfirmButtonSubPane *)self _updateLabelAnimatedWithTitle:titleCopy];
  }
}

- (void)_updateLabelAnimatedWithTitle:(id)title
{
  v4 = MEMORY[0x1E6979538];
  titleCopy = title;
  animation = [v4 animation];
  v6 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
  [animation setTimingFunction:v6];

  v7 = *MEMORY[0x1E697A030];
  [animation setType:*MEMORY[0x1E697A030]];
  [animation setDuration:0.15];
  layer = [(UILabel *)self->_biometricLabel layer];
  [layer addAnimation:animation forKey:v7];

  [(UILabel *)self->_biometricLabel setText:titleCopy];
}

- (void)_setupBiometricButtonWithConstraints:(id)constraints
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69AD2E0];
  constraintsCopy = constraints;
  v6 = [[v4 alloc] initWithFrame:4 mechanisms:{0.0, 0.0, 50.0, 50.0}];
  biometricsView = self->_biometricsView;
  self->_biometricsView = v6;

  [(LAUIAuthenticationView *)self->_biometricsView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(LAUIAuthenticationView *)self->_biometricsView setDelegate:self];
  [(UIStackView *)self->_biometricsContainerView addArrangedSubview:self->_biometricsView];
  widthAnchor = [(LAUIAuthenticationView *)self->_biometricsView widthAnchor];
  v9 = [widthAnchor constraintEqualToConstant:50.0];
  v13[0] = v9;
  heightAnchor = [(LAUIAuthenticationView *)self->_biometricsView heightAnchor];
  v11 = [heightAnchor constraintEqualToConstant:50.0];
  v13[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  [constraintsCopy addObjectsFromArray:v12];
}

- (void)_switchToPasscodeOrPassword
{
  _passcodeOrPasswordButtonTitle = [(ASCredentialRequestConfirmButtonSubPane *)self _passcodeOrPasswordButtonTitle];
  [(ASCredentialRequestButton *)self->_authorizationButton setButtonText:_passcodeOrPasswordButtonTitle];

  [(ASCredentialRequestButton *)self->_authorizationButton addTarget:self action:sel__authorizationWithPasscodeOrPasswordButtonSelected_];

  [(ASCredentialRequestConfirmButtonSubPane *)self _switchToBiometricsView:0 withAuthenticationMechanismEnabled:1 showAlert:0 alertString:0];
}

- (void)showContinueWithPasswordButtonWithTitle:(id)title
{
  [(ASCredentialRequestButton *)self->_authorizationButton setButtonText:title];
  [(ASCredentialRequestButton *)self->_authorizationButton addTarget:self action:sel__authorizeAccountViaDelegationWithPasswordButtonSelected_];

  [(ASCredentialRequestConfirmButtonSubPane *)self _switchToBiometricsView:0 withAuthenticationMechanismEnabled:1 showAlert:0 alertString:0];
}

- (void)_enterProcessingStateWithCompletionHandler:(id)handler
{
  aBlock = handler;
  if (*&self->_processingStateCompletionHandler == 0)
  {
    v4 = dispatch_group_create();
    processingStateGroup = self->_processingStateGroup;
    self->_processingStateGroup = v4;

    v6 = _Block_copy(aBlock);
    processingStateCompletionHandler = self->_processingStateCompletionHandler;
    self->_processingStateCompletionHandler = v6;

    [(ASCredentialRequestConfirmButtonSubPane *)self _setGlyphViewGestureRecognizerEnabled:0];
  }

  else
  {
    os_activity_apply(self->_authorizationActivity, &__block_literal_global_81);
    aBlock[2]();
  }
}

void __86__ASCredentialRequestConfirmButtonSubPane__enterProcessingStateWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1B1C8D000, v2, OS_LOG_TYPE_INFO, "ASCredentialRequestConfirmButtonSubPane already in processing state, ignoring attempt.", v3, 2u);
  }
}

- (void)_waitForTimeInterval:(double)interval withGroup:(id)group
{
  groupCopy = group;
  v6 = dispatch_time(0, (interval * 1000000000.0));
  dispatch_group_enter(groupCopy);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__ASCredentialRequestConfirmButtonSubPane__waitForTimeInterval_withGroup___block_invoke;
  block[3] = &unk_1E7AF7608;
  v9 = groupCopy;
  v7 = groupCopy;
  dispatch_after(v6, MEMORY[0x1E69E96A0], block);
}

- (void)_setGlyphViewGestureRecognizerEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  subviews = [(LAUIAuthenticationView *)self->_biometricsView subviews];
  firstObject = [subviews firstObject];

  v5 = firstObject;
  if (firstObject)
  {
    gestureRecognizers = [firstObject gestureRecognizers];
    firstObject2 = [gestureRecognizers firstObject];

    [firstObject2 setEnabled:enabledCopy];
    v5 = firstObject;
  }
}

- (void)biometricAuthenticationFailureWithAlertString:(id)string
{
  [(ASCredentialRequestConfirmButtonSubPane *)self _switchToBiometricsView:0 withAuthenticationMechanismEnabled:0 showAlert:1 alertString:string];
  v4 = dispatch_time(0, 1700000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__ASCredentialRequestConfirmButtonSubPane_biometricAuthenticationFailureWithAlertString___block_invoke;
  block[3] = &unk_1E7AF7608;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x1E69E96A0], block);
}

- (void)finishProcessingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__ASCredentialRequestConfirmButtonSubPane_finishProcessingWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7AF7E28;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __81__ASCredentialRequestConfirmButtonSubPane_finishProcessingWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 112);
  v3 = _Block_copy(*(*(a1 + 32) + 104));
  if (!(v2 | v3))
  {
    goto LABEL_6;
  }

  v4 = *(a1 + 32);
  v5 = _WBSLocalizedString();
  [v4 _updateLabelAnimatedWithTitle:v5];

  [*(a1 + 32) _waitForTimeInterval:v2 withGroup:1.0];
  if (v3)
  {
    (*(v3 + 16))(v3);
  }

  if (v2)
  {
    objc_initWeak(&location, *(a1 + 32));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__ASCredentialRequestConfirmButtonSubPane_finishProcessingWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E7AF8C30;
    objc_copyWeak(&v8, &location);
    v7 = *(a1 + 40);
    dispatch_group_notify(v2, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
LABEL_6:
    (*(*(a1 + 40) + 16))();
  }
}

void __81__ASCredentialRequestConfirmButtonSubPane_finishProcessingWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidateProcessingState];
  (*(*(a1 + 32) + 16))();
}

- (void)invalidateProcessingState
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __68__ASCredentialRequestConfirmButtonSubPane_invalidateProcessingState__block_invoke;
  v2[3] = &unk_1E7AF75E0;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __68__ASCredentialRequestConfirmButtonSubPane_invalidateProcessingState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[14];
    WeakRetained[14] = 0;
    v4 = WeakRetained;

    v3 = v4[13];
    v4[13] = 0;

    [v4 _setGlyphViewGestureRecognizerEnabled:1];
    WeakRetained = v4;
  }
}

- (BOOL)_shouldAllowFallbackToPasscodeAuthentication
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696EE50]);
  v6[0] = &unk_1F28F05C0;
  v6[1] = &unk_1F28F05D8;
  v7[0] = MEMORY[0x1E695E118];
  v7[1] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = [v2 evaluatePolicy:1025 options:v3 error:0];

  return v4 != 0;
}

- (void)showActivityIndicator
{
  v18[4] = *MEMORY[0x1E69E9840];
  [(ASCredentialRequestButton *)self->_authorizationButton setHidden:1];
  v3 = objc_alloc_init(MEMORY[0x1E69DC638]);
  [v3 setHidden:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_authorizationButtonContainerView addSubview:v3];
  v15 = MEMORY[0x1E696ACD8];
  centerXAnchor = [v3 centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_authorizationButtonContainerView centerXAnchor];
  v4 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v18[0] = v4;
  centerYAnchor = [v3 centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_authorizationButtonContainerView centerYAnchor];
  v7 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v18[1] = v7;
  heightAnchor = [v3 heightAnchor];
  +[ASViewServiceInterfaceUtilities continueButtonHeight];
  v10 = [heightAnchor constraintEqualToConstant:v9 * 0.5];
  v18[2] = v10;
  widthAnchor = [v3 widthAnchor];
  +[ASViewServiceInterfaceUtilities continueButtonHeight];
  v13 = [widthAnchor constraintEqualToConstant:v12 * 0.5];
  v18[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];
  [v15 activateConstraints:v14];

  [v3 startAnimating];
}

- (void)authenticationResult:(id)result error:(id)error context:(id)context
{
  v26[1] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  errorCopy = error;
  contextCopy = context;
  v11 = contextCopy;
  if (!errorCopy)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __78__ASCredentialRequestConfirmButtonSubPane_authenticationResult_error_context___block_invoke;
    v23[3] = &unk_1E7AF76A8;
    v23[4] = self;
    v24 = contextCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v23);
    v19 = v24;
    goto LABEL_9;
  }

  v25 = *MEMORY[0x1E696EE30];
  v26[0] = &unk_1F28F0518;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v13 = [errorCopy safari_matchesErrorDomainsAndCodes:v12];

  _shouldAllowFallbackToPasscodeAuthentication = [(ASCredentialRequestConfirmButtonSubPane *)self _shouldAllowFallbackToPasscodeAuthentication];
  authorizationActivity = self->_authorizationActivity;
  if (v13)
  {
    v16 = !_shouldAllowFallbackToPasscodeAuthentication;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v17 = _shouldAllowFallbackToPasscodeAuthentication;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__ASCredentialRequestConfirmButtonSubPane_authenticationResult_error_context___block_invoke_2;
    block[3] = &unk_1E7AF7608;
    v21 = errorCopy;
    os_activity_apply(authorizationActivity, block);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained confirmButtonSubPaneDidFailBiometry:self allowingPasscodeFallback:v17];

    v19 = v21;
LABEL_9:

    goto LABEL_10;
  }

  os_activity_apply(self->_authorizationActivity, &__block_literal_global_96);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __78__ASCredentialRequestConfirmButtonSubPane_authenticationResult_error_context___block_invoke_97;
  v22[3] = &unk_1E7AF7608;
  v22[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], v22);
LABEL_10:
}

void __78__ASCredentialRequestConfirmButtonSubPane_authenticationResult_error_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
  [WeakRetained confirmButtonSubPaneDidEnterProcessingState:*(a1 + 32) withAuthenticatedContext:*(a1 + 40)];
}

void __78__ASCredentialRequestConfirmButtonSubPane_authenticationResult_error_context___block_invoke_94(uint64_t a1, uint64_t a2)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1B1C8D000, v2, OS_LOG_TYPE_INFO, "Biometric auth failed or locked out. Switching to passcode authentication.", v3, 2u);
  }
}

void __78__ASCredentialRequestConfirmButtonSubPane_authenticationResult_error_context___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __78__ASCredentialRequestConfirmButtonSubPane_authenticationResult_error_context___block_invoke_2_cold_1(a1, v3);
  }
}

- (void)processBiometricMatchWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__ASCredentialRequestConfirmButtonSubPane_processBiometricMatchWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7AF7E28;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void *__86__ASCredentialRequestConfirmButtonSubPane_processBiometricMatchWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = _WBSLocalizedString();
  [v2 _updateLabelAnimatedWithTitle:v3];

  [*(a1 + 32) _enterProcessingStateWithCompletionHandler:*(a1 + 40)];
  result = [MEMORY[0x1E698E020] biometryType];
  if (result == 1)
  {
    v5 = *(a1 + 32);
    v6 = v5[14];

    return [v5 _waitForTimeInterval:v6 withGroup:2.2];
  }

  return result;
}

- (void)addToStackView:(id)view withCustomSpacingAfter:(double)after context:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = ASCredentialRequestConfirmButtonSubPane;
  [(ASCredentialRequestSubPane *)&v10 addToStackView:view withCustomSpacingAfter:contextCopy context:after];
  paneContext = self->_paneContext;
  self->_paneContext = contextCopy;
}

- (ASCredentialRequestSubPaneConfirmButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)shouldOverrideLocalAuthenticationForTesting
{
  selfCopy = self;
  v3 = sub_1B1D24E50();

  return v3 & 1;
}

- (BOOL)isBiometricAuthenticationAvailable
{
  selfCopy = self;
  testOptions = [(ASCredentialRequestConfirmButtonSubPane *)selfCopy testOptions];
  if (testOptions && (v4 = testOptions, v5 = sub_1B1D7B7DC(), v7 = v6, v4, (v7 & 1) == 0))
  {

    return v5 != 0;
  }

  else
  {
    isBiometricAuthenticationAvailable = [objc_opt_self() isBiometricAuthenticationAvailable];

    return isBiometricAuthenticationAvailable;
  }
}

void __77__ASCredentialRequestConfirmButtonSubPane__enableLAUIAuthenticationMechanism__block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  v3 = [OUTLINED_FUNCTION_1_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v4, v5, "Error enabling biometrics in credential picker: %{public}@", v6, v7, v8, v9);
}

void __71__ASCredentialRequestConfirmButtonSubPane__performCompanionValidation___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  v3 = [OUTLINED_FUNCTION_1_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v4, v5, "Companion authentication in ASAuthorizationController credential picker failed with error: %{public}@", v6, v7, v8, v9);
}

void __79__ASCredentialRequestConfirmButtonSubPane_performPasscodeOrPasswordValidation___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  v3 = [OUTLINED_FUNCTION_1_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v4, v5, "Passcode authentication in ASAuthorizationController credential picker failed with error: %{public}@", v6, v7, v8, v9);
}

void __63__ASCredentialRequestConfirmButtonSubPane_disableBiometricView__block_invoke_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  v3 = [OUTLINED_FUNCTION_1_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v4, v5, "Error disabling biometrics UI: %{public}@", v6, v7, v8, v9);
}

void __78__ASCredentialRequestConfirmButtonSubPane_authenticationResult_error_context___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  v3 = [OUTLINED_FUNCTION_1_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v4, v5, "Biometric auth failed with error: %{public}@", v6, v7, v8, v9);
}

@end