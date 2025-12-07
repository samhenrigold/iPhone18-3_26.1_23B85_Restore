@interface PSGMigrationController
+ (BOOL)canHandleURL:(id)l;
+ (BOOL)isEnabled;
- (PSGMigrationController)init;
- (id)specifiers;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation PSGMigrationController

- (PSGMigrationController)init
{
  v6.receiver = self;
  v6.super_class = PSGMigrationController;
  v2 = [(PSGMigrationController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D28890]);
    presenter = v2->_presenter;
    v2->_presenter = v3;
  }

  return v2;
}

- (void)viewDidLoad
{
  v27[4] = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = PSGMigrationController;
  [(PSGMigrationController *)&v26 viewDidLoad];
  table = [(PSGMigrationController *)self table];
  [table setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = MEMORY[0x277CCAAD0];
  table2 = [(PSGMigrationController *)self table];
  leadingAnchor = [table2 leadingAnchor];
  view = [(PSGMigrationController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v27[0] = v21;
  table3 = [(PSGMigrationController *)self table];
  trailingAnchor = [table3 trailingAnchor];
  view2 = [(PSGMigrationController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v27[1] = v15;
  table4 = [(PSGMigrationController *)self table];
  topAnchor = [table4 topAnchor];
  view3 = [(PSGMigrationController *)self view];
  topAnchor2 = [view3 topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v27[2] = v7;
  table5 = [(PSGMigrationController *)self table];
  bottomAnchor = [table5 bottomAnchor];
  view4 = [(PSGMigrationController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v27[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
  [v16 activateConstraints:v13];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PSGMigrationController;
  [(PSGMigrationController *)&v4 viewDidAppear:appear];
  [(MKPresenter *)self->_presenter presentMigrationViewControllerUsingParentViewController:self];
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PSGMigrationController;
  [(PSGMigrationController *)&v5 loadView];
  table = [(PSGMigrationController *)self table];
  [table setScrollEnabled:0];

  table2 = [(PSGMigrationController *)self table];
  [table2 _setTopPadding:0.0];
}

- (id)specifiers
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D3FC48];
  v3 = *(&self->super.super.super.super.super.isa + v2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277D3FAD8]);
    title = [MEMORY[0x277D28890] title];
    v8 = [v6 initWithName:title target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v8 setButtonAction:sel_transferToAndroid];
    identifier = [MEMORY[0x277D28890] identifier];
    [v8 setIdentifier:identifier];

    v14[0] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v11 = *(&self->super.super.super.super.super.isa + v2);
    *(&self->super.super.super.super.super.isa + v2) = v10;
    v12 = v10;

    v4 = *(&self->super.super.super.super.super.isa + v2);
  }

  return v4;
}

+ (BOOL)isEnabled
{
  if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
  {
    return 0;
  }

  v3 = MEMORY[0x277D28890];

  return [v3 isEnabled];
}

+ (BOOL)canHandleURL:(id)l
{
  lCopy = l;
  if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277D28890] canHandleURL:lCopy];
  }

  return v4;
}

@end