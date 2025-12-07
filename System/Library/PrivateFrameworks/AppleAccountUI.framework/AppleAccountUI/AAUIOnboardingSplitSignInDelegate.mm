@interface AAUIOnboardingSplitSignInDelegate
- (AAUIOnboardingSplitSignInDelegate)initWithServiceSignInController:(id)controller;
- (void)_handleAIDAResultErrorInSignInController:(id)controller;
- (void)onboardingSignInController:(id)controller didCompleteWithOperationsResults:(id)results;
- (void)onboardingSignInController:(id)controller didSkipWithReason:(int64_t)reason;
- (void)onboardingSignInControllerDidCancel:(id)cancel;
@end

@implementation AAUIOnboardingSplitSignInDelegate

- (AAUIOnboardingSplitSignInDelegate)initWithServiceSignInController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = AAUIOnboardingSplitSignInDelegate;
  v6 = [(AAUIOnboardingSplitSignInDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originatingServiceSignInController, controller);
  }

  return v7;
}

- (void)onboardingSignInController:(id)controller didCompleteWithOperationsResults:(id)results
{
  v35 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  resultsCopy = results;
  v8 = *MEMORY[0x1E698C218];
  v9 = [resultsCopy objectForKey:*MEMORY[0x1E698C218]];

  if (v9)
  {
    v11 = _AAUILogSystem(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [resultsCopy objectForKey:v8];
      v33 = 138412290;
      v34 = v12;
      _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "Split onboarding sign in for service cloud returned %@", &v33, 0xCu);
    }

    v13 = [resultsCopy objectForKey:v8];
    error = [v13 error];

    if (!error)
    {
      objc_storeStrong(&self->_semiFinalResults, results);
      v15 = [[AAUIAppleIDSignInConfigSplitAccountStore alloc] initWithNavController:controllerCopy];
      v16 = [[AAUIOnboardingSignInController alloc] initWithSetupSignInConfig:v15];
      storeSignInController = self->_storeSignInController;
      self->_storeSignInController = v16;

      [(AAUIOnboardingSignInController *)self->_storeSignInController setDelegate:self];
      authenticationController = [(AAUIServiceSignInController *)self->_originatingServiceSignInController authenticationController];
      serviceController = [(AAUIOnboardingSignInController *)self->_storeSignInController serviceController];
      signInViewController = [serviceController signInViewController];
      [signInViewController setAuthenticationController:authenticationController];

      serviceOwnersManager = [(AAUIServiceSignInController *)self->_originatingServiceSignInController serviceOwnersManager];
      serviceController2 = [(AAUIOnboardingSignInController *)self->_storeSignInController serviceController];
      [serviceController2 setServiceOwnersManager:serviceOwnersManager];

      [(AAUIOnboardingSignInController *)self->_storeSignInController start];
LABEL_12:

      goto LABEL_13;
    }

LABEL_8:
    [(AAUIOnboardingSplitSignInDelegate *)self _handleAIDAResultErrorInSignInController:controllerCopy];
    goto LABEL_13;
  }

  v23 = *MEMORY[0x1E698C238];
  v24 = [resultsCopy objectForKey:*MEMORY[0x1E698C238]];

  if (v24)
  {
    v25 = [resultsCopy objectForKey:v23];
    error2 = [v25 error];

    if (!error2)
    {
      v28 = _AAUILogSystem(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [resultsCopy objectForKey:v8];
        v33 = 138412290;
        v34 = v29;
        _os_log_impl(&dword_1C5355000, v28, OS_LOG_TYPE_DEFAULT, "Split onboarding sign in for service store returned %@", &v33, 0xCu);
      }

      v15 = [(NSDictionary *)self->_semiFinalResults mutableCopy];
      v30 = [resultsCopy objectForKey:v23];
      [(AAUIAppleIDSignInConfigSplitAccountStore *)v15 setObject:v30 forKey:v23];

      originatingServiceSignInController = self->_originatingServiceSignInController;
      v32 = [(AAUIAppleIDSignInConfigSplitAccountStore *)v15 copy];
      [(AAUIServiceSignInController *)originatingServiceSignInController controllerFinishedWithAIDAResults:v32];

      goto LABEL_12;
    }

    goto LABEL_8;
  }

LABEL_13:
}

- (void)_handleAIDAResultErrorInSignInController:(id)controller
{
  controllerCopy = controller;
  topViewController = [controllerCopy topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [controllerCopy popViewControllerAnimated:1];
  }
}

- (void)onboardingSignInControllerDidCancel:(id)cancel
{
  signInViewController = [(AAUIServiceSignInController *)self->_originatingServiceSignInController signInViewController];
  delegate = [signInViewController delegate];

  if (objc_opt_respondsToSelector())
  {
    signInViewController2 = [(AAUIServiceSignInController *)self->_originatingServiceSignInController signInViewController];
    [delegate signInViewControllerDidCancel:signInViewController2];
  }
}

- (void)onboardingSignInController:(id)controller didSkipWithReason:(int64_t)reason
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = _AAUILogSystem(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    reasonCopy = reason;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Split onboarding sign in skipped with reason reason %ld", &v14, 0xCu);
  }

  if (self->_storeSignInController)
  {
    v7 = objc_alloc(MEMORY[0x1E698C260]);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698B7E0] code:-8014 userInfo:0];
    v9 = *MEMORY[0x1E698C238];
    v10 = [v7 initWithSuccess:0 error:v8 type:*MEMORY[0x1E698C238]];

    v11 = [(NSDictionary *)self->_semiFinalResults mutableCopy];
    [v11 setObject:v10 forKey:v9];
    originatingServiceSignInController = self->_originatingServiceSignInController;
    v13 = [v11 copy];
    [(AAUIServiceSignInController *)originatingServiceSignInController controllerFinishedWithAIDAResults:v13];
  }
}

@end