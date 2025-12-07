@interface TUIReportDetailsViewController
- (TUIReportDetailsViewController)initWithReportManager:(id)manager;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TUIReportDetailsViewController

- (TUIReportDetailsViewController)initWithReportManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = TUIReportDetailsViewController;
  v6 = [(TUIReportDetailsViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reportManager, manager);
  }

  return v7;
}

- (void)loadView
{
  v3 = objc_opt_new();
  [(TUIReportDetailsViewController *)self setView:v3];

  view = [(TUIReportDetailsViewController *)self view];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];
}

- (void)viewDidLoad
{
  v38[4] = *MEMORY[0x277D85DE8];
  v37.receiver = self;
  v37.super_class = TUIReportDetailsViewController;
  [(TUIReportDetailsViewController *)&v37 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"DETAILS_TITLE" value:&stru_287F92480 table:@"Localizable"];
  [(TUIReportDetailsViewController *)self setTitle:v4];

  v5 = objc_alloc(MEMORY[0x277D75C40]);
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  reportDetailsTextView = self->_reportDetailsTextView;
  self->_reportDetailsTextView = v6;

  [(UITextView *)self->_reportDetailsTextView setEditable:0];
  [(UITextView *)self->_reportDetailsTextView setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = self->_reportDetailsTextView;
  labelColor = [MEMORY[0x277D75348] labelColor];
  [(UITextView *)v8 setTextColor:labelColor];

  v10 = self->_reportDetailsTextView;
  v11 = MEMORY[0x277D74300];
  [MEMORY[0x277D74300] systemFontSize];
  v12 = [v11 monospacedSystemFontOfSize:? weight:?];
  [(UITextView *)v10 setFont:v12];

  v13 = self->_reportDetailsTextView;
  reportDetails = [(TUIReportManager *)self->_reportManager reportDetails];
  [(UITextView *)v13 setText:reportDetails];

  [(UITextView *)self->_reportDetailsTextView setTextContainerInset:0.0, 8.0, 0.0, 8.0];
  view = [(TUIReportDetailsViewController *)self view];
  [view addSubview:self->_reportDetailsTextView];

  v28 = MEMORY[0x277CCAAD0];
  topAnchor = [(UITextView *)self->_reportDetailsTextView topAnchor];
  view2 = [(TUIReportDetailsViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v38[0] = v32;
  leadingAnchor = [(UITextView *)self->_reportDetailsTextView leadingAnchor];
  view3 = [(TUIReportDetailsViewController *)self view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v38[1] = v26;
  trailingAnchor = [(UITextView *)self->_reportDetailsTextView trailingAnchor];
  view4 = [(TUIReportDetailsViewController *)self view];
  safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v38[2] = v20;
  bottomAnchor = [(UITextView *)self->_reportDetailsTextView bottomAnchor];
  view5 = [(TUIReportDetailsViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v38[3] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
  [v28 activateConstraints:v25];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = TUIReportDetailsViewController;
  [(TUIReportDetailsViewController *)&v3 viewDidLayoutSubviews];
  [(UITextView *)self->_reportDetailsTextView setContentOffset:0 animated:0.0, 0.0];
}

@end