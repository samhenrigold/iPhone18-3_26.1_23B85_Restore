@interface TUIKTLearnMorePresenter
- (TUIKTLearnMorePresenter)init;
- (void)dealloc;
- (void)init;
- (void)presentWithPresentingViewController:(id)controller;
@end

@implementation TUIKTLearnMorePresenter

- (TUIKTLearnMorePresenter)init
{
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_3 != -1)
  {
    [TUIKTLearnMorePresenter init];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_3, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTLearnMorePresenter init];
  }

  v7.receiver = self;
  v7.super_class = TUIKTLearnMorePresenter;
  v3 = [(TUIKTLearnMorePresenter *)&v7 init];
  if (v3)
  {
    v4 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.contactkey"];
    privacyPresenter = v3->_privacyPresenter;
    v3->_privacyPresenter = v4;
  }

  return v3;
}

uint64_t __31__TUIKTLearnMorePresenter_init__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_3 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_26F50B000, v0, OS_LOG_TYPE_DEBUG, "%s  on %{public}@", v1, 0x16u);
}

uint64_t __34__TUIKTLearnMorePresenter_dealloc__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_3 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)presentWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_3 != -1)
  {
    [TUIKTLearnMorePresenter presentWithPresentingViewController:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_3, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTLearnMorePresenter presentWithPresentingViewController:];
  }

  [(OBPrivacyPresenter *)self->_privacyPresenter setPresentingViewController:controllerCopy];
  [(OBPrivacyPresenter *)self->_privacyPresenter present];
}

uint64_t __63__TUIKTLearnMorePresenter_presentWithPresentingViewController___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_3 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_26F50B000, v0, OS_LOG_TYPE_DEBUG, "%s  on %{public}@", v1, 0x16u);
}

- (void)presentWithPresentingViewController:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v4 = v0;
  v5 = v1;
  _os_log_debug_impl(&dword_26F50B000, v2, OS_LOG_TYPE_DEBUG, "%s presentingViewController = %{public}@ on %{public}@", v3, 0x20u);
}

@end