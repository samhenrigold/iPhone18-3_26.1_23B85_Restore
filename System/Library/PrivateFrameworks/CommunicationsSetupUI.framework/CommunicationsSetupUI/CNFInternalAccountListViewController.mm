@interface CNFInternalAccountListViewController
- (CNFInternalAccountListViewController)initWithServiceType:(int64_t)type;
- (id)accountNameForSpecifier:(id)specifier;
- (id)specifiers;
- (void)_handleAccountNotification:(id)notification;
- (void)_startListeningForNotifications;
- (void)_stopListeningForNotifications;
- (void)accountTappedWithSpecifier:(id)specifier;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CNFInternalAccountListViewController

- (CNFInternalAccountListViewController)initWithServiceType:(int64_t)type
{
  v12.receiver = self;
  v12.super_class = CNFInternalAccountListViewController;
  v4 = [(CNFInternalAccountListViewController *)&v12 init];
  if (v4)
  {
    v5 = FTCServiceNameForServiceType();
    v6 = [MEMORY[0x277D18DE0] serviceWithInternalName:v5];
    if (!v6)
    {

      v10 = 0;
      goto LABEL_6;
    }

    v7 = v6;
    [(CNFInternalAccountListViewController *)v4 setService:v6];
    v8 = [[FTRegConnectionHandler alloc] initWithServiceType:type name:@"InternalAccountList"];
    connectionHandler = v4->_connectionHandler;
    v4->_connectionHandler = v8;
  }

  v10 = v4;
LABEL_6:

  return v10;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CNFInternalAccountListViewController;
  [(CNFInternalAccountListViewController *)&v4 viewDidAppear:appear];
  [(CNFInternalAccountListViewController *)self _startListeningForNotifications];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CNFInternalAccountListViewController;
  [(CNFInternalAccountListViewController *)&v4 viewWillDisappear:disappear];
  [(CNFInternalAccountListViewController *)self _stopListeningForNotifications];
}

- (id)specifiers
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = 0x277D3F000uLL;
    v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:@"Accounts"];
    [v5 addObject:v7];
    if ([(FTRegConnectionHandler *)self->_connectionHandler isConnectedToDaemon])
    {
      v25 = v7;
      v26 = v3;
      v28 = v5;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      mEMORY[0x277D18D28] = [MEMORY[0x277D18D28] sharedInstance];
      service = [(CNFInternalAccountListViewController *)self service];
      v10 = [mEMORY[0x277D18D28] accountsForService:service];

      obj = v10;
      v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v30;
        v14 = *MEMORY[0x277D3FF38];
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v30 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v29 + 1) + 8 * i);
            login = [v16 login];
            v18 = login;
            if (!login || ![(__CFString *)login length])
            {

              v18 = @"Unnamed";
            }

            v19 = v6;
            v20 = [*(v6 + 2776) preferenceSpecifierNamed:v18 target:self set:0 get:0 detail:0 cell:2 edit:0];
            v21 = v20;
            if (v20)
            {
              [v20 setProperty:v16 forKey:@"cnf-internal-account"];
              [v21 setButtonAction:sel_accountTappedWithSpecifier_];
              [v21 setProperty:MEMORY[0x277CBEC38] forKey:v14];
              [v28 addObject:v21];
            }

            v6 = v19;
          }

          v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v12);
      }

      v7 = v25;
      v3 = v26;
      v5 = v28;
    }

    else
    {
      v22 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Disconnected" target:self set:0 get:0 detail:0 cell:2 edit:0];
      [v5 addObject:v22];
    }

    v23 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)accountNameForSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:@"cnf-internal-account"];
  login = [v3 login];
  v5 = login;
  if (!login || ![(__CFString *)login length])
  {

    v5 = @"Unnamed";
  }

  return v5;
}

- (void)accountTappedWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = [specifierCopy propertyForKey:@"cnf-internal-account"];
  if (v4)
  {
    v5 = [[CNFInternalAccountViewController alloc] initWithAccount:v4];
    [(CNFInternalAccountViewController *)v5 setSpecifier:specifierCopy];
    rootController = [(CNFInternalAccountListViewController *)self rootController];
    [(CNFInternalAccountViewController *)v5 setRootController:rootController];

    [(CNFInternalAccountListViewController *)self showController:v5 animate:1];
  }
}

- (void)_startListeningForNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleDaemonConnected_ name:*MEMORY[0x277D18CE0] object:0];
  [defaultCenter addObserver:self selector:sel__handleDaemonDisconnected_ name:*MEMORY[0x277D18CE8] object:0];
  [defaultCenter addObserver:self selector:sel__handleAccountNotification_ name:*MEMORY[0x277D18C18] object:0];
  [defaultCenter addObserver:self selector:sel__handleAccountNotification_ name:*MEMORY[0x277D18C20] object:0];
}

- (void)_stopListeningForNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D18CE0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D18CE8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D18C18] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D18C20] object:0];
}

- (void)_handleAccountNotification:(id)notification
{
  if ([(FTRegConnectionHandler *)self->_connectionHandler isConnectedToDaemon])
  {

    [(CNFInternalAccountListViewController *)self reloadSpecifiers];
  }
}

@end