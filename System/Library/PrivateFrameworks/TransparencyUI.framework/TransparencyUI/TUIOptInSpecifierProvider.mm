@interface TUIOptInSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (BOOL)handleURL:(id)l;
- (NSArray)specifiers;
- (TUIOptInSpecifierProvider)initWithAccountManager:(id)manager;
- (id)_transparencyPaneSpecifier;
- (void)_beginObservingTransparencyStatusChangedNotification;
- (void)_checkKTStatus;
- (void)_showTransparencyPane;
- (void)_stopObservingTransparencyStatusChangedNotification;
- (void)_transparencyStatusChangedNotificationHandler:(id)handler;
- (void)dealloc;
- (void)reloadSpecifiers;
- (void)specifiers;
@end

@implementation TUIOptInSpecifierProvider

- (TUIOptInSpecifierProvider)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_4 != -1)
  {
    [TUIOptInSpecifierProvider initWithAccountManager:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_DEBUG))
  {
    [TUIOptInSpecifierProvider initWithAccountManager:];
  }

  v17.receiver = self;
  v17.super_class = TUIOptInSpecifierProvider;
  v6 = [(TUIOptInSpecifierProvider *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, manager);
    v8 = objc_alloc(MEMORY[0x277D73558]);
    v9 = *MEMORY[0x277D735B0];
    v10 = [v8 initWithApplication:*MEMORY[0x277D735B0]];
    optInManager = v7->_optInManager;
    v7->_optInManager = v10;

    v12 = [objc_alloc(MEMORY[0x277D73568]) initWithApplication:v9];
    keyTransparencyStatus = v7->_keyTransparencyStatus;
    v7->_keyTransparencyStatus = v12;

    v14 = objc_opt_new();
    stateManager = v7->_stateManager;
    v7->_stateManager = v14;

    [(TUIOptInSpecifierProvider *)v7 _checkKTStatus];
    [(TUIOptInSpecifierProvider *)v7 _beginObservingTransparencyStatusChangedNotification];
  }

  return v7;
}

uint64_t __52__TUIOptInSpecifierProvider_initWithAccountManager___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, v6);
}

uint64_t __36__TUIOptInSpecifierProvider_dealloc__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (BOOL)handleURL:(id)l
{
  lCopy = l;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_4 != -1)
  {
    [TUIOptInSpecifierProvider handleURL:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_DEBUG))
  {
    [TUIOptInSpecifierProvider handleURL:];
  }

  v5 = [lCopy copy];
  handleURLResourceDictionary = self->_handleURLResourceDictionary;
  self->_handleURLResourceDictionary = v5;

  return 0;
}

uint64_t __39__TUIOptInSpecifierProvider_handleURL___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_checkKTStatus
{
  v11 = *MEMORY[0x277D85DE8];
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_4 != -1)
  {
    [TUIOptInSpecifierProvider _checkKTStatus];
  }

  v3 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[TUIOptInSpecifierProvider _checkKTStatus]";
    v9 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_26F50B000, v3, OS_LOG_TYPE_DEFAULT, "%s getting CKV status on %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v4 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__TUIOptInSpecifierProvider__checkKTStatus__block_invoke_47;
  block[3] = &unk_279DDAB28;
  objc_copyWeak(&v6, buf);
  dispatch_async(v4, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

uint64_t __43__TUIOptInSpecifierProvider__checkKTStatus__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __43__TUIOptInSpecifierProvider__checkKTStatus__block_invoke_47(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc(MEMORY[0x277D73568]);
    v3 = [v2 initWithApplication:*MEMORY[0x277D735B0]];
    v11 = 0;
    v4 = [v3 status:&v11];
    v5 = v11;
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_4 != -1)
    {
      __43__TUIOptInSpecifierProvider__checkKTStatus__block_invoke_47_cold_1();
    }

    v6 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v13 = WeakRetained;
      v14 = 2114;
      v15 = v4;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_26F50B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ got CKV status = %{public}@, error = %{public}@", buf, 0x20u);
    }

    v7 = [WeakRetained stateManager];
    [v7 updateStateWithKTStatusResult:v4];

    objc_initWeak(buf, WeakRetained);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43__TUIOptInSpecifierProvider__checkKTStatus__block_invoke_53;
    v9[3] = &unk_279DDAB28;
    objc_copyWeak(&v10, buf);
    dispatch_async(MEMORY[0x277D85CD0], v9);
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_4 != -1)
    {
      __43__TUIOptInSpecifierProvider__checkKTStatus__block_invoke_47_cold_2();
    }

    v8 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "[TUIOptInSpecifierProvider _checkKTStatus]_block_invoke";
      _os_log_impl(&dword_26F50B000, v8, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", buf, 0xCu);
    }
  }
}

uint64_t __43__TUIOptInSpecifierProvider__checkKTStatus__block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __43__TUIOptInSpecifierProvider__checkKTStatus__block_invoke_50()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __43__TUIOptInSpecifierProvider__checkKTStatus__block_invoke_53(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained reloadSpecifiers];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_4 != -1)
    {
      __43__TUIOptInSpecifierProvider__checkKTStatus__block_invoke_53_cold_1();
    }

    v3 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315138;
      v5 = "[TUIOptInSpecifierProvider _checkKTStatus]_block_invoke";
      _os_log_impl(&dword_26F50B000, v3, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v4, 0xCu);
    }
  }
}

uint64_t __43__TUIOptInSpecifierProvider__checkKTStatus__block_invoke_2_54()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_beginObservingTransparencyStatusChangedNotification
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, v6);
}

uint64_t __81__TUIOptInSpecifierProvider__beginObservingTransparencyStatusChangedNotification__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_stopObservingTransparencyStatusChangedNotification
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, v6);
}

uint64_t __80__TUIOptInSpecifierProvider__stopObservingTransparencyStatusChangedNotification__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_transparencyStatusChangedNotificationHandler:(id)handler
{
  v12 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_4 != -1)
  {
    [TUIOptInSpecifierProvider _transparencyStatusChangedNotificationHandler:];
  }

  v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[TUIOptInSpecifierProvider _transparencyStatusChangedNotificationHandler:]";
    v8 = 2114;
    v9 = handlerCopy;
    v10 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_26F50B000, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %{public}@", &v6, 0x20u);
  }

  [(TUIOptInSpecifierProvider *)self _checkKTStatus];
}

uint64_t __75__TUIOptInSpecifierProvider__transparencyStatusChangedNotificationHandler___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (NSArray)specifiers
{
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_4 != -1)
  {
    [TUIOptInSpecifierProvider specifiers];
  }

  v3 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_DEBUG))
  {
    [(TUIOptInSpecifierProvider *)self specifiers];
  }

  specifiers = self->_specifiers;
  if (!specifiers)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"TRANSPARENCY_GROUP"];
    [array addObject:v6];
    _transparencyPaneSpecifier = [(TUIOptInSpecifierProvider *)self _transparencyPaneSpecifier];
    [array addObject:_transparencyPaneSpecifier];

    v8 = [array copy];
    v9 = self->_specifiers;
    self->_specifiers = v8;

    specifiers = self->_specifiers;
  }

  return specifiers;
}

uint64_t __39__TUIOptInSpecifierProvider_specifiers__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)reloadSpecifiers
{
  v3 = self->_specifiers;
  specifiers = self->_specifiers;
  self->_specifiers = 0;

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__TUIOptInSpecifierProvider_reloadSpecifiers__block_invoke;
  v6[3] = &unk_279DDAA10;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __45__TUIOptInSpecifierProvider_reloadSpecifiers__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_4 != -1)
  {
    __45__TUIOptInSpecifierProvider_reloadSpecifiers__block_invoke_cold_1();
  }

  v2 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_26F50B000, v2, OS_LOG_TYPE_INFO, "%{public}@ attempting to reload specifiers...", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  [v4 reloadSpecifiersForProvider:*(a1 + 32) oldSpecifiers:*(a1 + 40) animated:1];
}

uint64_t __45__TUIOptInSpecifierProvider_reloadSpecifiers__block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (id)_transparencyPaneSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"DEVICE_VERIFICATION_SPECIFIER_TITLE" value:&stru_287F92480 table:@"Localizable"];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:2 edit:0];

  [v6 setControllerLoadAction:sel__showTransparencyPane];
  [v6 setIdentifier:@"TRANSPARENCY"];
  [v6 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  v7 = *MEMORY[0x277D40160];
  [v6 setProperty:&stru_287F92480 forKey:*MEMORY[0x277D40160]];
  [v6 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40020]];
  [v6 setProperty:@"com.apple.graphic-icon.account.contact-key-verification" forKey:*MEMORY[0x277D3FFD8]];
  _shouldShowErrorUI = [(TUIOptInSpecifierProvider *)self _shouldShowErrorUI];
  stateManager = self->_stateManager;
  if (!_shouldShowErrorUI)
  {
    if ([(TUIKTStateManager *)stateManager optIn]== 2)
    {
      goto LABEL_12;
    }

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [v6 setProperty:secondaryLabelColor forKey:*MEMORY[0x277D40158]];

    optIn = [(TUIKTStateManager *)self->_stateManager optIn];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    stateLabel = v13;
    if (optIn == 1)
    {
      v14 = @"ACTIVE";
    }

    else
    {
      v14 = @"OFF";
    }

    v15 = [v13 localizedStringForKey:v14 value:&stru_287F92480 table:@"Localizable"];
    [v6 setProperty:v15 forKey:v7];

    goto LABEL_11;
  }

  if ([(TUIKTStateManager *)stateManager state]!= 6 && [(TUIKTStateManager *)self->_stateManager state]!= 10 && [(TUIKTStateManager *)self->_stateManager state]!= 11)
  {
    stateLabel = [(TUIKTStateManager *)self->_stateManager stateLabel];
    [v6 setProperty:stateLabel forKey:v7];
LABEL_11:
  }

LABEL_12:

  return v6;
}

- (void)_showTransparencyPane
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, v6);
}

uint64_t __50__TUIOptInSpecifierProvider__showTransparencyPane__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithAccountManager:.cold.2()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_26F50B000, v0, v1, "%s %{public}@ on %{public}@", v2);
}

- (void)handleURL:.cold.2()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_26F50B000, v0, v1, "%s %{public}@ on %{public}@", v2);
}

- (void)specifiers
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(self + 56);
  v4 = a2;
  stateDescription = [v3 stateDescription];
  v6 = *(self + 16);
  v7 = 136315906;
  v8 = "[TUIOptInSpecifierProvider specifiers]";
  v9 = 2114;
  v10 = stateDescription;
  v11 = 2114;
  v12 = v6;
  v13 = 2114;
  selfCopy = self;
  _os_log_debug_impl(&dword_26F50B000, v4, OS_LOG_TYPE_DEBUG, "%s %{public}@, specifiers = %{public}@ on %{public}@", &v7, 0x2Au);
}

@end