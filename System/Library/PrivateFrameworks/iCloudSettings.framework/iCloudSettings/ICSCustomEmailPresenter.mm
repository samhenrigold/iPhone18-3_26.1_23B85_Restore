@interface ICSCustomEmailPresenter
- (ICSCustomEmailPresenter)initWithAccountManager:(id)manager presenter:(id)presenter;
- (void)showCustomEmailDomainView;
@end

@implementation ICSCustomEmailPresenter

- (ICSCustomEmailPresenter)initWithAccountManager:(id)manager presenter:(id)presenter
{
  managerCopy = manager;
  presenterCopy = presenter;
  v17.receiver = self;
  v17.super_class = ICSCustomEmailPresenter;
  v8 = [(ICSCustomEmailPresenter *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v10 = LogSubsystem(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ICSCustomEmailPresenter initWithAccountManager:managerCopy presenter:v10];
    }

    v11 = [MEMORY[0x277CCA8D8] ics_loadBundle:@"MailAccountSettings.bundle" atPath:@"System/Library/PreferenceBundles/AccountSettings"];
    v12 = NSClassFromString(&cfstr_Byodspecifierp_0.isa);
    v13 = [(objc_class *)v12 conformsToProtocol:&unk_2884BC2B8];
    if (v13)
    {
      v14 = [[v12 alloc] initWithAccountManager:managerCopy presenter:presenterCopy];
      customEmailSpecifierProvider = v9->_customEmailSpecifierProvider;
      v9->_customEmailSpecifierProvider = v14;
    }

    else
    {
      customEmailSpecifierProvider = LogSubsystem(v13);
      if (os_log_type_enabled(customEmailSpecifierProvider, OS_LOG_TYPE_ERROR))
      {
        [ICSCustomEmailPresenter initWithAccountManager:v11 presenter:customEmailSpecifierProvider];
      }
    }
  }

  return v9;
}

- (void)showCustomEmailDomainView
{
  specifiers = [(AAUISpecifierProvider *)self->_customEmailSpecifierProvider specifiers];
  firstObject = [specifiers firstObject];

  if (firstObject)
  {
    [firstObject performControllerLoadAction];
  }

  else
  {
    v5 = LogSubsystem(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ICSCustomEmailPresenter *)v5 showCustomEmailDomainView];
    }
  }
}

- (void)initWithAccountManager:(void *)a1 presenter:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a1 accounts];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_275819000, a2, OS_LOG_TYPE_DEBUG, "AccountManager: %@, account: %@", &v6, 0x16u);
}

- (void)initWithAccountManager:(uint64_t)a1 presenter:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
}

@end