@interface AKAuthorizationPaneViewController
- (AKAuthorizationEditableDataSources)editableDataSources;
- (AKAuthorizationPaneDelegate)paneDelegate;
- (AKAuthorizationPaneViewController)init;
- (AKAuthorizationPaneViewController)initWithCoder:(id)coder;
- (AKAuthorizationPaneViewController)initWithNibName:(id)name bundle:(id)bundle;
- (AKAuthorizationPaneViewController)initWithStyle:(int64_t)style;
- (BOOL)_isContentUnderNavigationBar;
- (BOOL)_isContentUnderTray;
- (BOOL)_shouldEmbedContentTray;
- (double)_contentTrayOffsetAdjustedForScrollInset:(BOOL)inset;
- (double)_deviceSafeAreaBottomInset;
- (double)_navigationBarHeaderHeight;
- (double)contentScrollOffset;
- (double)intrinsicContentHeight;
- (double)maximumContentHeight;
- (double)maximumContentWidth;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_indexPathForLastRow;
- (id)_newContainerView;
- (id)_newStackView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)_safeIndexWithCount:(int64_t)count;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_adjustForPositionOfScrollView:(id)view;
- (void)_configureContentTrayIfNeeded;
- (void)_setCompressedHeightForView:(id)view;
- (void)_setupContexts;
- (void)_updateBlurForTray;
- (void)scrollViewDidScroll:(id)scroll;
- (void)sizeToFitPaneContent;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation AKAuthorizationPaneViewController

- (AKAuthorizationPaneViewController)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = AKAuthorizationPaneViewController;
  v6 = [(AKAuthorizationPaneViewController *)&v4 initWithNibName:0 bundle:?];
  objc_storeStrong(&v6, v6);
  [(AKAuthorizationPaneViewController *)v6 setModalInPresentation:1];
  v3 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (void)viewDidLoad
{
  v98[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v95 = a2;
  v94.receiver = self;
  v94.super_class = AKAuthorizationPaneViewController;
  [(AKAuthorizationPaneViewController *)&v94 viewDidLoad];
  view = [(AKAuthorizationPaneViewController *)selfCopy view];
  [view bounds];
  v91 = v99;
  CGRectGetWidth(v99);
  CGRectMake_0();
  *&v92 = v2;
  *(&v92 + 1) = v3;
  *&v93 = v4;
  *(&v93 + 1) = v5;
  MEMORY[0x277D82BD8](view);
  v34 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:+[AKAuthorizationAppearance tableViewStyle](AKAuthorizationAppearance style:{"tableViewStyle"), v92, v93}];
  [(AKAuthorizationPaneViewController *)selfCopy setTableView:?];
  +[AKAuthorizationPaneMetrics tableSectionFooterHeight];
  v35 = v6;
  tableView = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView setSectionFooterHeight:v35];
  *&v7 = MEMORY[0x277D82BD8](tableView).n128_u64[0];
  tableView2 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView2 setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  tableView3 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView3 setBackgroundColor:clearColor];
  MEMORY[0x277D82BD8](tableView3);
  *&v8 = MEMORY[0x277D82BD8](clearColor).n128_u64[0];
  tableView4 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView4 setAlwaysBounceVertical:0];
  *&v9 = MEMORY[0x277D82BD8](tableView4).n128_u64[0];
  tableView5 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView5 setShowsVerticalScrollIndicator:0];
  *&v10 = MEMORY[0x277D82BD8](tableView5).n128_u64[0];
  _newStackView = [(AKAuthorizationPaneViewController *)selfCopy _newStackView];
  paneHeaderStackView = selfCopy->_paneHeaderStackView;
  selfCopy->_paneHeaderStackView = _newStackView;
  *&v13 = MEMORY[0x277D82BD8](paneHeaderStackView).n128_u64[0];
  _newContainerView = [(AKAuthorizationPaneViewController *)selfCopy _newContainerView];
  tableView6 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView6 setTableHeaderView:_newContainerView];
  MEMORY[0x277D82BD8](tableView6);
  *&v14 = MEMORY[0x277D82BD8](_newContainerView).n128_u64[0];
  tableView7 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableHeaderView = [(UITableView *)tableView7 tableHeaderView];
  [(UIView *)tableHeaderView addSubview:selfCopy->_paneHeaderStackView];
  MEMORY[0x277D82BD8](tableHeaderView);
  MEMORY[0x277D82BD8](tableView7);
  v90 = 0;
  v15 = objc_alloc(MEMORY[0x277D75D68]);
  v16 = [v15 initWithEffect:v90];
  blurryTray = selfCopy->_blurryTray;
  selfCopy->_blurryTray = v16;
  *&v18 = MEMORY[0x277D82BD8](blurryTray).n128_u64[0];
  [(UIVisualEffectView *)selfCopy->_blurryTray setTranslatesAutoresizingMaskIntoConstraints:0, v18];
  _newStackView2 = [(AKAuthorizationPaneViewController *)selfCopy _newStackView];
  paneFooterStackView = selfCopy->_paneFooterStackView;
  selfCopy->_paneFooterStackView = _newStackView2;
  *&v21 = MEMORY[0x277D82BD8](paneFooterStackView).n128_u64[0];
  contentView = [(UIVisualEffectView *)selfCopy->_blurryTray contentView];
  [(UIView *)contentView addSubview:selfCopy->_paneFooterStackView];
  MEMORY[0x277D82BD8](contentView);
  [(UIStackView *)selfCopy->_paneFooterStackView setSpacing:1.17549435e-38];
  view2 = [(AKAuthorizationPaneViewController *)selfCopy view];
  tableView8 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [view2 addSubview:?];
  MEMORY[0x277D82BD8](tableView8);
  *&v22 = MEMORY[0x277D82BD8](view2).n128_u64[0];
  view3 = [(AKAuthorizationPaneViewController *)selfCopy view];
  [view3 setAccessibilityIdentifier:*MEMORY[0x277CEFEA0]];
  *&v23 = MEMORY[0x277D82BD8](view3).n128_u64[0];
  [(AKAuthorizationPaneViewController *)selfCopy _setupContexts];
  array = [MEMORY[0x277CBEB18] array];
  v50 = array;
  paneHeaderStackView = [(AKAuthorizationPaneViewController *)selfCopy paneHeaderStackView];
  topAnchor = [(UIStackView *)paneHeaderStackView topAnchor];
  tableView9 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableHeaderView2 = [(UITableView *)tableView9 tableHeaderView];
  topAnchor2 = [(UIView *)tableHeaderView2 topAnchor];
  v70 = [topAnchor constraintEqualToAnchor:?];
  v98[0] = v70;
  paneHeaderStackView2 = [(AKAuthorizationPaneViewController *)selfCopy paneHeaderStackView];
  bottomAnchor = [(UIStackView *)paneHeaderStackView2 bottomAnchor];
  tableView10 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableHeaderView3 = [(UITableView *)tableView10 tableHeaderView];
  bottomAnchor2 = [(UIView *)tableHeaderView3 bottomAnchor];
  v64 = [bottomAnchor constraintEqualToAnchor:?];
  v98[1] = v64;
  paneHeaderStackView3 = [(AKAuthorizationPaneViewController *)selfCopy paneHeaderStackView];
  leadingAnchor = [(UIStackView *)paneHeaderStackView3 leadingAnchor];
  tableView11 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableHeaderView4 = [(UITableView *)tableView11 tableHeaderView];
  leadingAnchor2 = [(UIView *)tableHeaderView4 leadingAnchor];
  v58 = [leadingAnchor constraintEqualToAnchor:?];
  v98[2] = v58;
  paneHeaderStackView4 = [(AKAuthorizationPaneViewController *)selfCopy paneHeaderStackView];
  trailingAnchor = [(UIStackView *)paneHeaderStackView4 trailingAnchor];
  tableView12 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableHeaderView5 = [(UITableView *)tableView12 tableHeaderView];
  trailingAnchor2 = [(UIView *)tableHeaderView5 trailingAnchor];
  v52 = [trailingAnchor constraintEqualToAnchor:?];
  v98[3] = v52;
  v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:4];
  [v50 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](v52);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](tableHeaderView5);
  MEMORY[0x277D82BD8](tableView12);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](paneHeaderStackView4);
  MEMORY[0x277D82BD8](v58);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](tableHeaderView4);
  MEMORY[0x277D82BD8](tableView11);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](paneHeaderStackView3);
  MEMORY[0x277D82BD8](v64);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](tableHeaderView3);
  MEMORY[0x277D82BD8](tableView10);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](paneHeaderStackView2);
  MEMORY[0x277D82BD8](v70);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](tableHeaderView2);
  MEMORY[0x277D82BD8](tableView9);
  MEMORY[0x277D82BD8](topAnchor);
  *&v24 = MEMORY[0x277D82BD8](paneHeaderStackView).n128_u64[0];
  v77 = array;
  v76 = MEMORY[0x277CCAAD0];
  tableView13 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  view4 = [(AKAuthorizationPaneViewController *)selfCopy view];
  v78 = [v76 ak_constraintsForView:tableView13 equalToView:?];
  [v77 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v78);
  MEMORY[0x277D82BD8](view4);
  *&v25 = MEMORY[0x277D82BD8](tableView13).n128_u64[0];
  paneHeaderStackView5 = [(AKAuthorizationPaneViewController *)selfCopy paneHeaderStackView];
  widthAnchor = [(UIStackView *)paneHeaderStackView5 widthAnchor];
  v26 = [widthAnchor constraintEqualToConstant:0.0];
  headerWidthConstraint = selfCopy->_headerWidthConstraint;
  selfCopy->_headerWidthConstraint = v26;
  MEMORY[0x277D82BD8](headerWidthConstraint);
  MEMORY[0x277D82BD8](widthAnchor);
  *&v28 = MEMORY[0x277D82BD8](paneHeaderStackView5).n128_u64[0];
  paneFooterStackView = [(AKAuthorizationPaneViewController *)selfCopy paneFooterStackView];
  widthAnchor2 = [(UIStackView *)paneFooterStackView widthAnchor];
  v29 = [widthAnchor2 constraintEqualToConstant:0.0];
  footerWidthConstraint = selfCopy->_footerWidthConstraint;
  selfCopy->_footerWidthConstraint = v29;
  MEMORY[0x277D82BD8](footerWidthConstraint);
  MEMORY[0x277D82BD8](widthAnchor2);
  *&v31 = MEMORY[0x277D82BD8](paneFooterStackView).n128_u64[0];
  v85 = array;
  headerWidthConstraint = [(AKAuthorizationPaneViewController *)selfCopy headerWidthConstraint];
  v97[0] = headerWidthConstraint;
  footerWidthConstraint = [(AKAuthorizationPaneViewController *)selfCopy footerWidthConstraint];
  v97[1] = footerWidthConstraint;
  v86 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:2];
  [v85 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v86);
  MEMORY[0x277D82BD8](footerWidthConstraint);
  *&v32 = MEMORY[0x277D82BD8](headerWidthConstraint).n128_u64[0];
  [MEMORY[0x277CCAAD0] activateConstraints:{array, v32}];
  [(AKAuthorizationPaneViewController *)selfCopy sizeToFitPaneContent];
  objc_storeStrong(&array, 0);
  objc_storeStrong(&v90, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v19 = a2;
  appearCopy = appear;
  v17.receiver = self;
  v17.super_class = AKAuthorizationPaneViewController;
  [(AKAuthorizationPaneViewController *)&v17 viewWillAppear:appear];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  *&v3 = MEMORY[0x277D82BD8](currentDevice).n128_u64[0];
  if (userInterfaceIdiom == 1)
  {
    navigationController = [(AKAuthorizationPaneViewController *)selfCopy navigationController];
    view = [navigationController view];
    [view frame];
    v14 = v4;
    v15 = v5;
    MEMORY[0x277D82BD8](view);
    *&v6 = MEMORY[0x277D82BD8](navigationController).n128_u64[0];
    navigationController2 = [(AKAuthorizationPaneViewController *)selfCopy navigationController];
    navigationBar = [navigationController2 navigationBar];
    [navigationBar size];
    v16 = v14 - v7;
    MEMORY[0x277D82BD8](navigationBar);
    MEMORY[0x277D82BD8](navigationController2);
    [(AKAuthorizationPaneViewController *)selfCopy setPreferredContentSize:v15, v16];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v11 = a2;
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = AKAuthorizationPaneViewController;
  [(AKAuthorizationPaneViewController *)&v9 viewDidAppear:appear];
  view = [(AKAuthorizationPaneViewController *)selfCopy view];
  [view setNeedsLayout];
  *&v3 = MEMORY[0x277D82BD8](view).n128_u64[0];
  view2 = [(AKAuthorizationPaneViewController *)selfCopy view];
  [view2 layoutIfNeeded];
  *&v4 = MEMORY[0x277D82BD8](view2).n128_u64[0];
  v7 = selfCopy;
  tableView = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(AKAuthorizationPaneViewController *)v7 _adjustForPositionOfScrollView:?];
  MEMORY[0x277D82BD8](tableView);
}

- (void)viewSafeAreaInsetsDidChange
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = AKAuthorizationPaneViewController;
  [(AKAuthorizationPaneViewController *)&v5 viewSafeAreaInsetsDidChange];
  blurryTray = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
  [(UIVisualEffectView *)blurryTray setNeedsUpdateConstraints];
  *&v2 = MEMORY[0x277D82BD8](blurryTray).n128_u64[0];
  blurryTray2 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
  [(UIVisualEffectView *)blurryTray2 layoutIfNeeded];
  MEMORY[0x277D82BD8](blurryTray2);
}

- (void)_setupContexts
{
  v2 = [AKAuthorizationPaneContext alloc];
  paneHeaderStackView = [(AKAuthorizationPaneViewController *)self paneHeaderStackView];
  v3 = [(AKAuthorizationPaneContext *)v2 initWithPaneViewController:self stackView:?];
  [(AKAuthorizationPaneViewController *)self setHeaderPaneContext:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](paneHeaderStackView);
  v5 = [AKAuthorizationPaneContext alloc];
  paneFooterStackView = [(AKAuthorizationPaneViewController *)self paneFooterStackView];
  v6 = [(AKAuthorizationPaneContext *)v5 initWithPaneViewController:self stackView:?];
  [(AKAuthorizationPaneViewController *)self setFooterPaneContext:?];
  MEMORY[0x277D82BD8](v6);
  array = [MEMORY[0x277CBEB18] array];
  [(AKAuthorizationPaneViewController *)self setMutableConstraints:?];
  MEMORY[0x277D82BD8](array);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = AKAuthorizationPaneViewController;
  [(AKAuthorizationPaneViewController *)&v7 viewWillLayoutSubviews];
  view = [(AKAuthorizationPaneViewController *)selfCopy view];
  [view frame];
  v4 = v2;
  MEMORY[0x277D82BD8](view);
  headerWidthConstraint = [(AKAuthorizationPaneViewController *)selfCopy headerWidthConstraint];
  [(NSLayoutConstraint *)headerWidthConstraint setConstant:v4];
  MEMORY[0x277D82BD8](headerWidthConstraint);
  footerWidthConstraint = [(AKAuthorizationPaneViewController *)selfCopy footerWidthConstraint];
  [(NSLayoutConstraint *)footerWidthConstraint setConstant:v4];
  MEMORY[0x277D82BD8](footerWidthConstraint);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  v47 = a2;
  v46.receiver = self;
  v46.super_class = AKAuthorizationPaneViewController;
  [(AKAuthorizationPaneViewController *)&v46 viewDidLayoutSubviews];
  tableView = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableHeaderView = [(UITableView *)tableView tableHeaderView];
  *&v2 = MEMORY[0x277D82BD8](tableView).n128_u64[0];
  if (tableHeaderView)
  {
    [(AKAuthorizationPaneViewController *)selfCopy _setCompressedHeightForView:tableHeaderView, v2];
  }

  tableView2 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  location = [(UITableView *)tableView2 tableFooterView];
  *&v3 = MEMORY[0x277D82BD8](tableView2).n128_u64[0];
  if (location)
  {
    [(AKAuthorizationPaneViewController *)selfCopy _setCompressedHeightForView:location, v3];
  }

  [(AKAuthorizationPaneViewController *)selfCopy _contentTrayOffsetAdjustedForScrollInset:1, v3];
  UIEdgeInsetsMake_0();
  v40 = v4;
  v41 = v5;
  v42 = v6;
  v43 = v7;
  tableView3 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView3 _setContentScrollInset:v40, v41, v42, v43];
  *&v8 = MEMORY[0x277D82BD8](tableView3).n128_u64[0];
  tableView4 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableHeaderView2 = [(UITableView *)tableView4 tableHeaderView];
  [(UIView *)tableHeaderView2 setNeedsLayout];
  MEMORY[0x277D82BD8](tableHeaderView2);
  *&v9 = MEMORY[0x277D82BD8](tableView4).n128_u64[0];
  tableView5 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableHeaderView3 = [(UITableView *)tableView5 tableHeaderView];
  [(UIView *)tableHeaderView3 layoutIfNeeded];
  MEMORY[0x277D82BD8](tableHeaderView3);
  *&v10 = MEMORY[0x277D82BD8](tableView5).n128_u64[0];
  tableView6 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableView7 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableHeaderView4 = [(UITableView *)tableView7 tableHeaderView];
  [(UITableView *)tableView6 setTableHeaderView:?];
  MEMORY[0x277D82BD8](tableHeaderView4);
  MEMORY[0x277D82BD8](tableView7);
  *&v11 = MEMORY[0x277D82BD8](tableView6).n128_u64[0];
  tableView8 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableFooterView = [(UITableView *)tableView8 tableFooterView];
  [(UIView *)tableFooterView setNeedsLayout];
  MEMORY[0x277D82BD8](tableFooterView);
  *&v12 = MEMORY[0x277D82BD8](tableView8).n128_u64[0];
  tableView9 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableFooterView2 = [(UITableView *)tableView9 tableFooterView];
  [(UIView *)tableFooterView2 layoutIfNeeded];
  MEMORY[0x277D82BD8](tableFooterView2);
  *&v13 = MEMORY[0x277D82BD8](tableView9).n128_u64[0];
  tableView10 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableView11 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableFooterView3 = [(UITableView *)tableView11 tableFooterView];
  [(UITableView *)tableView10 setTableFooterView:?];
  MEMORY[0x277D82BD8](tableFooterView3);
  MEMORY[0x277D82BD8](tableView11);
  *&v14 = MEMORY[0x277D82BD8](tableView10).n128_u64[0];
  tableView12 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView12 setNeedsLayout];
  *&v15 = MEMORY[0x277D82BD8](tableView12).n128_u64[0];
  tableView13 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView13 layoutIfNeeded];
  *&v16 = MEMORY[0x277D82BD8](tableView13).n128_u64[0];
  blurryTray = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
  [(UIVisualEffectView *)blurryTray setNeedsLayout];
  *&v17 = MEMORY[0x277D82BD8](blurryTray).n128_u64[0];
  blurryTray2 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
  [(UIVisualEffectView *)blurryTray2 layoutIfNeeded];
  *&v18 = MEMORY[0x277D82BD8](blurryTray2).n128_u64[0];
  [(AKAuthorizationPaneViewController *)selfCopy _configureContentTrayIfNeeded];
  [(AKAuthorizationPaneViewController *)selfCopy sizeToFitPaneContent];
  [(AKAuthorizationPaneViewController *)selfCopy _updateBlurForTray];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&tableHeaderView, 0);
}

- (void)_setCompressedHeightForView:(id)view
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  [location[0] systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
  v8 = v3;
  [location[0] frame];
  if (v7 != v8)
  {
    [location[0] setFrame:{v4, v5, v6, v8}];
  }

  objc_storeStrong(location, 0);
}

- (void)_configureContentTrayIfNeeded
{
  v134[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v129 = a2;
  tableView = [(AKAuthorizationPaneViewController *)self tableView];
  tableFooterView = [(UITableView *)tableView tableFooterView];
  v119 = tableFooterView != 0;
  MEMORY[0x277D82BD8](tableFooterView);
  v128 = v119;
  _shouldEmbedContentTray = [(AKAuthorizationPaneViewController *)selfCopy _shouldEmbedContentTray];
  v124 = 0;
  v122 = 0;
  v120 = 1;
  if (_shouldEmbedContentTray == v119)
  {
    blurryTray = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
    v124 = 1;
    superview = [(UIVisualEffectView *)blurryTray superview];
    v122 = 1;
    v120 = superview == 0;
  }

  if (v122)
  {
    MEMORY[0x277D82BD8](superview);
  }

  if (v124)
  {
    MEMORY[0x277D82BD8](blurryTray);
  }

  v126 = v120;
  if (v120)
  {
    blurryTray2 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
    superview2 = [(UIVisualEffectView *)blurryTray2 superview];
    MEMORY[0x277D82BD8](superview2);
    v3 = MEMORY[0x277D82BD8](blurryTray2).n128_u64[0];
    if (superview2)
    {
      blurryTray3 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      [(UIVisualEffectView *)blurryTray3 removeFromSuperview];
      v3 = MEMORY[0x277D82BD8](blurryTray3).n128_u64[0];
    }

    tableView2 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
    tableFooterView2 = [(UITableView *)tableView2 tableFooterView];
    MEMORY[0x277D82BD8](tableFooterView2);
    v4 = MEMORY[0x277D82BD8](tableView2).n128_u64[0];
    if (tableFooterView2)
    {
      tableView3 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
      [(UITableView *)tableView3 setTableFooterView:0];
      v4 = MEMORY[0x277D82BD8](tableView3).n128_u64[0];
    }

    array = [MEMORY[0x277CBEB18] array];
    mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
    isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
    *&v5 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
    if (isAuthKitSolariumFeatureEnabled)
    {
      paneFooterStackView = [(AKAuthorizationPaneViewController *)selfCopy paneFooterStackView];
      topAnchor = [(UIStackView *)paneFooterStackView topAnchor];
      blurryTray4 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      contentView = [(UIVisualEffectView *)blurryTray4 contentView];
      topAnchor2 = [(UIView *)contentView topAnchor];
      v104 = [topAnchor constraintEqualToAnchor:?];
      v134[0] = v104;
      paneFooterStackView2 = [(AKAuthorizationPaneViewController *)selfCopy paneFooterStackView];
      bottomAnchor = [(UIStackView *)paneFooterStackView2 bottomAnchor];
      blurryTray5 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      contentView2 = [(UIVisualEffectView *)blurryTray5 contentView];
      bottomAnchor2 = [(UIView *)contentView2 bottomAnchor];
      v98 = [bottomAnchor constraintEqualToAnchor:?];
      v134[1] = v98;
      paneFooterStackView3 = [(AKAuthorizationPaneViewController *)selfCopy paneFooterStackView];
      leadingAnchor = [(UIStackView *)paneFooterStackView3 leadingAnchor];
      blurryTray6 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      contentView3 = [(UIVisualEffectView *)blurryTray6 contentView];
      leadingAnchor2 = [(UIView *)contentView3 leadingAnchor];
      v92 = [leadingAnchor constraintEqualToAnchor:?];
      v134[2] = v92;
      paneFooterStackView4 = [(AKAuthorizationPaneViewController *)selfCopy paneFooterStackView];
      trailingAnchor = [(UIStackView *)paneFooterStackView4 trailingAnchor];
      blurryTray7 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      contentView4 = [(UIVisualEffectView *)blurryTray7 contentView];
      trailingAnchor2 = [(UIView *)contentView4 trailingAnchor];
      v86 = [trailingAnchor constraintEqualToAnchor:?];
      v134[3] = v86;
      v85 = [MEMORY[0x277CBEA60] arrayWithObjects:v134 count:4];
      [array addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v85);
      MEMORY[0x277D82BD8](v86);
      MEMORY[0x277D82BD8](trailingAnchor2);
      MEMORY[0x277D82BD8](contentView4);
      MEMORY[0x277D82BD8](blurryTray7);
      MEMORY[0x277D82BD8](trailingAnchor);
      MEMORY[0x277D82BD8](paneFooterStackView4);
      MEMORY[0x277D82BD8](v92);
      MEMORY[0x277D82BD8](leadingAnchor2);
      MEMORY[0x277D82BD8](contentView3);
      MEMORY[0x277D82BD8](blurryTray6);
      MEMORY[0x277D82BD8](leadingAnchor);
      MEMORY[0x277D82BD8](paneFooterStackView3);
      MEMORY[0x277D82BD8](v98);
      MEMORY[0x277D82BD8](bottomAnchor2);
      MEMORY[0x277D82BD8](contentView2);
      MEMORY[0x277D82BD8](blurryTray5);
      MEMORY[0x277D82BD8](bottomAnchor);
      MEMORY[0x277D82BD8](paneFooterStackView2);
      MEMORY[0x277D82BD8](v104);
      MEMORY[0x277D82BD8](topAnchor2);
      MEMORY[0x277D82BD8](contentView);
      MEMORY[0x277D82BD8](blurryTray4);
      MEMORY[0x277D82BD8](topAnchor);
      v6 = MEMORY[0x277D82BD8](paneFooterStackView).n128_u64[0];
    }

    else
    {
      paneFooterStackView5 = [(AKAuthorizationPaneViewController *)selfCopy paneFooterStackView];
      topAnchor3 = [(UIStackView *)paneFooterStackView5 topAnchor];
      blurryTray8 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      contentView5 = [(UIVisualEffectView *)blurryTray8 contentView];
      topAnchor4 = [(UIView *)contentView5 topAnchor];
      v79 = [topAnchor3 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:1.0 multiplier:?];
      v133[0] = v79;
      paneFooterStackView6 = [(AKAuthorizationPaneViewController *)selfCopy paneFooterStackView];
      bottomAnchor3 = [(UIStackView *)paneFooterStackView6 bottomAnchor];
      blurryTray9 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      contentView6 = [(UIVisualEffectView *)blurryTray9 contentView];
      bottomAnchor4 = [(UIView *)contentView6 bottomAnchor];
      v73 = [bottomAnchor3 constraintLessThanOrEqualToSystemSpacingBelowAnchor:-1.0 multiplier:?];
      v133[1] = v73;
      paneFooterStackView7 = [(AKAuthorizationPaneViewController *)selfCopy paneFooterStackView];
      centerYAnchor = [(UIStackView *)paneFooterStackView7 centerYAnchor];
      blurryTray10 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      contentView7 = [(UIVisualEffectView *)blurryTray10 contentView];
      centerYAnchor2 = [(UIView *)contentView7 centerYAnchor];
      v67 = [centerYAnchor constraintEqualToAnchor:?];
      v133[2] = v67;
      paneFooterStackView8 = [(AKAuthorizationPaneViewController *)selfCopy paneFooterStackView];
      leadingAnchor3 = [(UIStackView *)paneFooterStackView8 leadingAnchor];
      blurryTray11 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      contentView8 = [(UIVisualEffectView *)blurryTray11 contentView];
      leadingAnchor4 = [(UIView *)contentView8 leadingAnchor];
      v61 = [leadingAnchor3 constraintEqualToAnchor:?];
      v133[3] = v61;
      paneFooterStackView9 = [(AKAuthorizationPaneViewController *)selfCopy paneFooterStackView];
      trailingAnchor3 = [(UIStackView *)paneFooterStackView9 trailingAnchor];
      blurryTray12 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      contentView9 = [(UIVisualEffectView *)blurryTray12 contentView];
      trailingAnchor4 = [(UIView *)contentView9 trailingAnchor];
      v55 = [trailingAnchor3 constraintEqualToAnchor:?];
      v133[4] = v55;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v133 count:5];
      [array addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v54);
      MEMORY[0x277D82BD8](v55);
      MEMORY[0x277D82BD8](trailingAnchor4);
      MEMORY[0x277D82BD8](contentView9);
      MEMORY[0x277D82BD8](blurryTray12);
      MEMORY[0x277D82BD8](trailingAnchor3);
      MEMORY[0x277D82BD8](paneFooterStackView9);
      MEMORY[0x277D82BD8](v61);
      MEMORY[0x277D82BD8](leadingAnchor4);
      MEMORY[0x277D82BD8](contentView8);
      MEMORY[0x277D82BD8](blurryTray11);
      MEMORY[0x277D82BD8](leadingAnchor3);
      MEMORY[0x277D82BD8](paneFooterStackView8);
      MEMORY[0x277D82BD8](v67);
      MEMORY[0x277D82BD8](centerYAnchor2);
      MEMORY[0x277D82BD8](contentView7);
      MEMORY[0x277D82BD8](blurryTray10);
      MEMORY[0x277D82BD8](centerYAnchor);
      MEMORY[0x277D82BD8](paneFooterStackView7);
      MEMORY[0x277D82BD8](v73);
      MEMORY[0x277D82BD8](bottomAnchor4);
      MEMORY[0x277D82BD8](contentView6);
      MEMORY[0x277D82BD8](blurryTray9);
      MEMORY[0x277D82BD8](bottomAnchor3);
      MEMORY[0x277D82BD8](paneFooterStackView6);
      MEMORY[0x277D82BD8](v79);
      MEMORY[0x277D82BD8](topAnchor4);
      MEMORY[0x277D82BD8](contentView5);
      MEMORY[0x277D82BD8](blurryTray8);
      MEMORY[0x277D82BD8](topAnchor3);
      v6 = MEMORY[0x277D82BD8](paneFooterStackView5).n128_u64[0];
    }

    if (_shouldEmbedContentTray)
    {
      tableView4 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
      _newContainerView = [(AKAuthorizationPaneViewController *)selfCopy _newContainerView];
      [(UITableView *)tableView4 setTableFooterView:?];
      MEMORY[0x277D82BD8](_newContainerView);
      tableView5 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
      tableFooterView3 = [(UITableView *)tableView5 tableFooterView];
      blurryTray13 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      [(UIView *)tableFooterView3 addSubview:?];
      MEMORY[0x277D82BD8](blurryTray13);
      MEMORY[0x277D82BD8](tableFooterView3);
      blurryTray14 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      topAnchor5 = [(UIVisualEffectView *)blurryTray14 topAnchor];
      tableView6 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
      tableFooterView4 = [(UITableView *)tableView6 tableFooterView];
      topAnchor6 = [(UIView *)tableFooterView4 topAnchor];
      v48 = [topAnchor5 constraintEqualToAnchor:?];
      v132[0] = v48;
      blurryTray15 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      bottomAnchor5 = [(UIVisualEffectView *)blurryTray15 bottomAnchor];
      tableView7 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
      tableFooterView5 = [(UITableView *)tableView7 tableFooterView];
      bottomAnchor6 = [(UIView *)tableFooterView5 bottomAnchor];
      v42 = [bottomAnchor5 constraintEqualToAnchor:?];
      v132[1] = v42;
      blurryTray16 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      leadingAnchor5 = [(UIVisualEffectView *)blurryTray16 leadingAnchor];
      tableView8 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
      tableFooterView6 = [(UITableView *)tableView8 tableFooterView];
      leadingAnchor6 = [(UIView *)tableFooterView6 leadingAnchor];
      v36 = [leadingAnchor5 constraintEqualToAnchor:?];
      v132[2] = v36;
      blurryTray17 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      trailingAnchor5 = [(UIVisualEffectView *)blurryTray17 trailingAnchor];
      tableView9 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
      tableFooterView7 = [(UITableView *)tableView9 tableFooterView];
      trailingAnchor6 = [(UIView *)tableFooterView7 trailingAnchor];
      v30 = [trailingAnchor5 constraintEqualToAnchor:?];
      v132[3] = v30;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v132 count:4];
      [array addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](trailingAnchor6);
      MEMORY[0x277D82BD8](tableFooterView7);
      MEMORY[0x277D82BD8](tableView9);
      MEMORY[0x277D82BD8](trailingAnchor5);
      MEMORY[0x277D82BD8](blurryTray17);
      MEMORY[0x277D82BD8](v36);
      MEMORY[0x277D82BD8](leadingAnchor6);
      MEMORY[0x277D82BD8](tableFooterView6);
      MEMORY[0x277D82BD8](tableView8);
      MEMORY[0x277D82BD8](leadingAnchor5);
      MEMORY[0x277D82BD8](blurryTray16);
      MEMORY[0x277D82BD8](v42);
      MEMORY[0x277D82BD8](bottomAnchor6);
      MEMORY[0x277D82BD8](tableFooterView5);
      MEMORY[0x277D82BD8](tableView7);
      MEMORY[0x277D82BD8](bottomAnchor5);
      MEMORY[0x277D82BD8](blurryTray15);
      MEMORY[0x277D82BD8](v48);
      MEMORY[0x277D82BD8](topAnchor6);
      MEMORY[0x277D82BD8](tableFooterView4);
      MEMORY[0x277D82BD8](tableView6);
      MEMORY[0x277D82BD8](topAnchor5);
      v7 = MEMORY[0x277D82BD8](blurryTray14).n128_u64[0];
    }

    else
    {
      view = [(AKAuthorizationPaneViewController *)selfCopy view];
      blurryTray18 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      [view addSubview:?];
      MEMORY[0x277D82BD8](blurryTray18);
      blurryTray19 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      heightAnchor = [(UIVisualEffectView *)blurryTray19 heightAnchor];
      +[AKAuthorizationPaneMetrics blurryTrayHeight];
      v21 = [heightAnchor constraintGreaterThanOrEqualToConstant:?];
      v131[0] = v21;
      blurryTray20 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      bottomAnchor7 = [(UIVisualEffectView *)blurryTray20 bottomAnchor];
      view2 = [(AKAuthorizationPaneViewController *)selfCopy view];
      bottomAnchor8 = [view2 bottomAnchor];
      v16 = [bottomAnchor7 constraintEqualToAnchor:?];
      v131[1] = v16;
      blurryTray21 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      centerXAnchor = [(UIVisualEffectView *)blurryTray21 centerXAnchor];
      view3 = [(AKAuthorizationPaneViewController *)selfCopy view];
      centerXAnchor2 = [view3 centerXAnchor];
      v11 = [centerXAnchor constraintEqualToAnchor:?];
      v131[2] = v11;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v131 count:3];
      [array addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](centerXAnchor2);
      MEMORY[0x277D82BD8](view3);
      MEMORY[0x277D82BD8](centerXAnchor);
      MEMORY[0x277D82BD8](blurryTray21);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](bottomAnchor8);
      MEMORY[0x277D82BD8](view2);
      MEMORY[0x277D82BD8](bottomAnchor7);
      MEMORY[0x277D82BD8](blurryTray20);
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](heightAnchor);
      v7 = MEMORY[0x277D82BD8](blurryTray19).n128_u64[0];
    }

    [MEMORY[0x277CCAAD0] activateConstraints:{array, *&v7}];
    objc_storeStrong(&array, 0);
  }
}

- (void)_updateBlurForTray
{
  v8[2] = self;
  v8[1] = a2;
  v2 = MEMORY[0x277D75D18];
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __55__AKAuthorizationPaneViewController__updateBlurForTray__block_invoke;
  v7 = &unk_2784A5C90;
  v8[0] = MEMORY[0x277D82BE0](self);
  [v2 animateWithDuration:0.2 animations:?];
  objc_storeStrong(v8, 0);
}

double __55__AKAuthorizationPaneViewController__updateBlurForTray__block_invoke(uint64_t a1)
{
  v7 = 0;
  v6 = 0;
  if ([*(a1 + 32) _isContentUnderTray])
  {
    v8 = [MEMORY[0x277CF0228] sharedManager];
    v7 = 1;
    v6 = [v8 isAuthKitSolariumFeatureEnabled] == 0;
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (v6)
  {
    v4 = [MEMORY[0x277D75210] effectWithStyle:{+[AKAuthorizationAppearance paneBlurEffectStyle](AKAuthorizationAppearance, "paneBlurEffectStyle")}];
    v3 = [*(a1 + 32) blurryTray];
    [v3 setEffect:v4];
    MEMORY[0x277D82BD8](v3);
    *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  }

  else
  {
    v2 = [*(a1 + 32) blurryTray];
    [v2 setEffect:0];
    *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  }

  return result;
}

- (double)_contentTrayOffsetAdjustedForScrollInset:(BOOL)inset
{
  selfCopy = self;
  v43 = a2;
  insetCopy = inset;
  if ([(AKAuthorizationPaneViewController *)self _shouldEmbedContentTray])
  {
    return 0.0;
  }

  location = [(AKAuthorizationPaneViewController *)selfCopy _indexPathForLastRow];
  if ([location row] == 0x7FFFFFFFFFFFFFFFLL)
  {
    tableView = [(AKAuthorizationPaneViewController *)selfCopy tableView];
    tableHeaderView = [(UITableView *)tableView tableHeaderView];
    [(UIView *)tableHeaderView frame];
    *&v35 = v7;
    *(&v35 + 1) = v8;
    *&v36 = v9;
    *(&v36 + 1) = v10;
    v39 = v35;
    v40 = v36;
    MEMORY[0x277D82BD8](tableHeaderView);
    MEMORY[0x277D82BD8](tableView);
  }

  else
  {
    tableView2 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
    [(UITableView *)tableView2 rectForRowAtIndexPath:location];
    *&v37 = v3;
    *(&v37 + 1) = v4;
    *&v38 = v5;
    *(&v38 + 1) = v6;
    v39 = v37;
    v40 = v38;
    MEMORY[0x277D82BD8](tableView2);
  }

  tableView3 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  view = [(AKAuthorizationPaneViewController *)selfCopy view];
  [(UITableView *)tableView3 convertRect:v39 toView:v40];
  v34.origin.x = v11;
  v34.origin.y = v12;
  v34.size.width = v13;
  v34.size.height = v14;
  MEMORY[0x277D82BD8](view);
  v15 = MEMORY[0x277D82BD8](tableView3).n128_u64[0];
  if (insetCopy)
  {
    tableView4 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
    [(UITableView *)tableView4 contentOffset];
    v26 = v16;
    [(AKAuthorizationPaneViewController *)selfCopy _navigationBarHeaderHeight];
    v34.origin.y = v34.origin.y + v26 + v17;
    v15 = MEMORY[0x277D82BD8](tableView4).n128_u64[0];
  }

  v32 = 0;
  if (insetCopy)
  {
    [(AKAuthorizationPaneViewController *)selfCopy contentScrollOffset];
    Height = v18;
  }

  else
  {
    blurryTray = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
    v32 = 1;
    [(UIVisualEffectView *)blurryTray frame];
    Height = CGRectGetHeight(v46);
  }

  if (v32)
  {
    MEMORY[0x277D82BD8](blurryTray);
  }

  MaxY = CGRectGetMaxY(v34);
  view2 = [(AKAuthorizationPaneViewController *)selfCopy view];
  [view2 frame];
  v23 = MaxY - (CGRectGetMaxY(v47) - Height);
  MEMORY[0x277D82BD8](view2);
  if (insetCopy && v23 > 0.0)
  {
    v45 = Height;
  }

  else
  {
    v19 = CGFloatMax(v23, 0.0);
    v45 = CGFloatMin(Height, v19);
  }

  objc_storeStrong(&location, 0);
  return v45;
}

- (BOOL)_isContentUnderTray
{
  [(AKAuthorizationPaneViewController *)self _contentTrayOffsetAdjustedForScrollInset:0];
  v5 = v2;
  +[AKAuthorizationPaneMetrics contentOffsetThresholdToShowBlurTray];
  return v5 > v3;
}

- (BOOL)_isContentUnderNavigationBar
{
  tableView = [(AKAuthorizationPaneViewController *)self tableView];
  [(UITableView *)tableView contentOffset];
  v5 = v2;
  navigationController = [(AKAuthorizationPaneViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  v8 = v5 > -CGRectGetHeight(v10);
  MEMORY[0x277D82BD8](navigationBar);
  MEMORY[0x277D82BD8](navigationController);
  MEMORY[0x277D82BD8](tableView);
  return v8;
}

- (double)contentScrollOffset
{
  blurryTray = [(AKAuthorizationPaneViewController *)self blurryTray];
  [(UIVisualEffectView *)blurryTray frame];
  Height = CGRectGetHeight(v5);
  MEMORY[0x277D82BD8](blurryTray);
  return Height;
}

- (BOOL)_shouldEmbedContentTray
{
  v6 = 0;
  if ([(AKAuthorizationPaneViewController *)self shouldEmbedContentTrayIfNeeded])
  {
    [(AKAuthorizationPaneViewController *)self intrinsicContentHeight];
    v5 = v2;
    [(AKAuthorizationPaneViewController *)self maximumContentHeight];
    return v5 >= v3;
  }

  return v6;
}

- (double)intrinsicContentHeight
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(AKAuthorizationPaneViewController *)self tableView];
  tableHeaderView = [location[0] tableHeaderView];
  v10 = MEMORY[0x277D76C78];
  [tableHeaderView systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
  v9 = v2;
  MEMORY[0x277D82BD8](tableHeaderView);
  tableFooterView = [location[0] tableFooterView];
  [tableFooterView systemLayoutSizeFittingSize:{*v10, v10[1]}];
  v12 = v3;
  MEMORY[0x277D82BD8](tableFooterView);
  v16 = 0;
  if (v12 == 0.0)
  {
    blurryTray = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
    v16 = 1;
    [(UIVisualEffectView *)blurryTray frame];
    Height = CGRectGetHeight(v20);
  }

  else
  {
    Height = 0.0;
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](blurryTray);
  }

  +[AKAuthorizationPaneMetrics paneAdditionSafeAreaInsets];
  v15 = v4;
  v14 = 0.0;
  for (i = 0; ; ++i)
  {
    v6 = 0;
    if (i < [location[0] numberOfSections])
    {
      v6 = [location[0] numberOfRowsInSection:i] != 0;
    }

    if (!v6)
    {
      break;
    }

    [location[0] rectForSection:i];
    v14 = v14 + CGRectGetHeight(v21);
  }

  if (v14 == 0.0)
  {
    v14 = 12.0;
  }

  objc_storeStrong(location, 0);
  return v9 + v14 + v12 + Height + v15;
}

- (double)maximumContentHeight
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v11 = v2;
  MEMORY[0x277D82BD8](mainScreen);
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  v21 = 0;
  v19 = 0;
  v17 = 0;
  v15 = 0;
  v13 = 0;
  if ([mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled])
  {
    view = [(AKAuthorizationPaneViewController *)self view];
    v21 = 1;
    window = [view window];
    v19 = 1;
    v9 = 1;
    if ([window interfaceOrientation] != 4)
    {
      view2 = [(AKAuthorizationPaneViewController *)self view];
      v17 = 1;
      window2 = [view2 window];
      v15 = 1;
      v9 = [window2 interfaceOrientation] == 3;
    }

    v13 = v9;
  }

  if (v15)
  {
    MEMORY[0x277D82BD8](window2);
  }

  if (v17)
  {
    MEMORY[0x277D82BD8](view2);
  }

  if (v19)
  {
    MEMORY[0x277D82BD8](window);
  }

  if (v21)
  {
    MEMORY[0x277D82BD8](view);
  }

  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  if (v13)
  {
    return v11 * 4.0 / 5.0;
  }

  +[AKAuthorizationPaneMetrics maximumContentHeightFactor];
  v14 = v11 * v3;
  mEMORY[0x277CF0228]2 = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228]2 isLisbonAvailable];
  *&v4 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]2).n128_u64[0];
  if (!isLisbonAvailable)
  {
    [(AKAuthorizationPaneViewController *)self _navigationBarHeaderHeight];
    return v14 - v5;
  }

  return v14;
}

- (double)maximumContentWidth
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  v17 = 0;
  v15 = 0;
  v13 = 0;
  v11 = 0;
  v10 = 0;
  if ([mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled])
  {
    view = [(AKAuthorizationPaneViewController *)self view];
    v17 = 1;
    window = [view window];
    v15 = 1;
    v8 = 1;
    if ([window interfaceOrientation] != 4)
    {
      view2 = [(AKAuthorizationPaneViewController *)self view];
      v13 = 1;
      window2 = [view2 window];
      v11 = 1;
      v8 = [window2 interfaceOrientation] == 3;
    }

    v10 = v8;
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](window2);
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](view2);
  }

  if (v15)
  {
    MEMORY[0x277D82BD8](window);
  }

  if (v17)
  {
    MEMORY[0x277D82BD8](view);
  }

  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (v10)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v20 = v3 / 2.0;
    MEMORY[0x277D82BD8](mainScreen);
  }

  else
  {
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 bounds];
    v20 = v4;
    MEMORY[0x277D82BD8](mainScreen2);
  }

  return v20;
}

- (void)sizeToFitPaneContent
{
  v50[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v48 = a2;
  if ([(AKAuthorizationPaneViewController *)self isViewLoaded])
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];
    *&v2 = MEMORY[0x277D82BD8](currentDevice).n128_u64[0];
    if (userInterfaceIdiom != 1)
    {
      view = [(AKAuthorizationPaneViewController *)selfCopy view];
      [view bounds];
      v46 = v51;
      Width = CGRectGetWidth(v51);
      MEMORY[0x277D82BD8](view);
      v47 = Width;
      [(AKAuthorizationPaneViewController *)selfCopy intrinsicContentHeight];
      v45 = v3;
      v27 = v3;
      [(AKAuthorizationPaneViewController *)selfCopy maximumContentHeight];
      if (v27 > v4)
      {
        [(AKAuthorizationPaneViewController *)selfCopy maximumContentHeight];
        v45 = v5;
      }

      v6 = v47;
      if (v47 == 0.0 || ([(AKAuthorizationPaneViewController *)selfCopy maximumContentWidth], v8 = v7, v6 = v47, v47 > v8))
      {
        [(AKAuthorizationPaneViewController *)selfCopy maximumContentWidth];
        v47 = v9;
      }

      CGSizeMake_0();
      *&v44 = v10;
      *(&v44 + 1) = v11;
      v43 = v44;
      [(AKAuthorizationPaneViewController *)selfCopy setPreferredContentSize:v10, v11];
      mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
      isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
      *&v12 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
      if (isAuthKitSolariumFeatureEnabled)
      {
        sheetPresentationController = [(AKAuthorizationPaneViewController *)selfCopy sheetPresentationController];
        if (sheetPresentationController)
        {
          [sheetPresentationController setDelegate:selfCopy];
          v41 = MEMORY[0x277D82BE0](@"detentIdentifier");
          v19 = MEMORY[0x277D75A28];
          v18 = v41;
          v34 = MEMORY[0x277D85DD0];
          v35 = -1073741824;
          v36 = 0;
          v37 = __57__AKAuthorizationPaneViewController_sizeToFitPaneContent__block_invoke;
          v38 = &unk_2784A5E70;
          v39 = MEMORY[0x277D82BE0](selfCopy);
          location = [v19 customDetentWithIdentifier:v18 resolver:&v34];
          view2 = [(AKAuthorizationPaneViewController *)selfCopy view];
          window = [view2 window];
          v32 = 0;
          v30 = 0;
          v22 = 1;
          if ([window interfaceOrientation] != 4)
          {
            view3 = [(AKAuthorizationPaneViewController *)selfCopy view];
            v32 = 1;
            window2 = [view3 window];
            v30 = 1;
            v22 = [window2 interfaceOrientation] == 3;
          }

          if (v30)
          {
            MEMORY[0x277D82BD8](window2);
          }

          if (v32)
          {
            MEMORY[0x277D82BD8](view3);
          }

          MEMORY[0x277D82BD8](window);
          *&v13 = MEMORY[0x277D82BD8](view2).n128_u64[0];
          if (v22)
          {
            [sheetPresentationController setPrefersEdgeAttachedInCompactHeight:{1, v13}];
            [sheetPresentationController setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
          }

          else
          {
            v16 = sheetPresentationController;
            v50[0] = location;
            v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:{1, v13}];
            [v16 setDetents:?];
            *&v14 = MEMORY[0x277D82BD8](v17).n128_u64[0];
            [sheetPresentationController setSelectedDetentIdentifier:{v41, v14}];
          }

          objc_storeStrong(&location, 0);
          objc_storeStrong(&v39, 0);
          objc_storeStrong(&v41, 0);
        }

        objc_storeStrong(&sheetPresentationController, 0);
      }

      view4 = [(AKAuthorizationPaneViewController *)selfCopy view];
      [view4 layoutIfNeeded];
      MEMORY[0x277D82BD8](view4);
    }
  }
}

double __57__AKAuthorizationPaneViewController_sizeToFitPaneContent__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] preferredContentSize];
  v6 = v2;
  +[AKAuthorizationPaneMetrics magicPocketPadding];
  v7 = v6 + v3;
  objc_storeStrong(location, 0);
  return v7;
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v8.receiver = selfCopy;
  v8.super_class = AKAuthorizationPaneViewController;
  [(AKAuthorizationPaneViewController *)&v8 traitCollectionDidChange:location[0]];
  traitCollection = [(AKAuthorizationPaneViewController *)selfCopy traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [location[0] preferredContentSizeCategory];
  v7 = [preferredContentSizeCategory isEqualToString:?];
  MEMORY[0x277D82BD8](preferredContentSizeCategory2);
  MEMORY[0x277D82BD8](preferredContentSizeCategory);
  *&v3 = MEMORY[0x277D82BD8](traitCollection).n128_u64[0];
  if (!v7)
  {
    [(AKAuthorizationPaneViewController *)selfCopy sizeToFitPaneContent];
  }

  objc_storeStrong(location, 0);
}

- (double)_deviceSafeAreaBottomInset
{
  v7[2] = self;
  v7[1] = a2;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  windows = [mEMORY[0x277D75128] windows];
  v7[0] = [windows firstObject];
  MEMORY[0x277D82BD8](windows);
  MEMORY[0x277D82BD8](mEMORY[0x277D75128]);
  [v7[0] _sceneSafeAreaInsetsIncludingStatusBar:0];
  v6 = v2;
  objc_storeStrong(v7, 0);
  return v6;
}

- (double)_navigationBarHeaderHeight
{
  navigationController = [(AKAuthorizationPaneViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  Height = CGRectGetHeight(v6);
  MEMORY[0x277D82BD8](navigationBar);
  MEMORY[0x277D82BD8](navigationController);
  return Height;
}

- (void)scrollViewDidScroll:(id)scroll
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scroll);
  [(AKAuthorizationPaneViewController *)selfCopy _adjustForPositionOfScrollView:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_adjustForPositionOfScrollView:(id)view
{
  v20[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  [location[0] contentOffset];
  v14 = v3;
  navigationController = [(AKAuthorizationPaneViewController *)selfCopy navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  v16 = 0;
  v15 = 0;
  if (v14 > -CGRectGetHeight(v21))
  {
    mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
    v16 = 1;
    v15 = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled] == 0;
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  }

  MEMORY[0x277D82BD8](navigationBar);
  *&v4 = MEMORY[0x277D82BD8](navigationController).n128_u64[0];
  if (v15)
  {
    v11 = [MEMORY[0x277D75210] effectWithStyle:{+[AKAuthorizationAppearance paneBlurEffectStyle](AKAuthorizationAppearance, "paneBlurEffectStyle", v4)}];
    v20[0] = v11;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    navigationController2 = [(AKAuthorizationPaneViewController *)selfCopy navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    [navigationBar2 setBackgroundEffects:v10];
    MEMORY[0x277D82BD8](navigationBar2);
    MEMORY[0x277D82BD8](navigationController2);
    MEMORY[0x277D82BD8](v10);
    v5 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  }

  else
  {
    navigationController3 = [(AKAuthorizationPaneViewController *)selfCopy navigationController];
    navigationBar3 = [navigationController3 navigationBar];
    [navigationBar3 setBackgroundEffects:0];
    MEMORY[0x277D82BD8](navigationBar3);
    v5 = MEMORY[0x277D82BD8](navigationController3).n128_u64[0];
  }

  [(AKAuthorizationPaneViewController *)selfCopy _updateBlurForTray];
  objc_storeStrong(location, 0);
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 0;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 0;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v5 = *MEMORY[0x277D76F30];
  objc_storeStrong(location, 0);
  return v5;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if (section)
  {
    +[AKAuthorizationPaneMetrics interScopeFieldSpacing];
  }

  else
  {
    +[AKAuthorizationPaneMetrics infoLabelToTableSpacing];
  }

  v8 = v4;
  objc_storeStrong(location, 0);
  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v6 = 0;
  objc_storeStrong(&v6, path);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 0;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 0;
}

- (id)_newContainerView
{
  v5[2] = self;
  v5[1] = a2;
  v5[0] = objc_alloc_init(MEMORY[0x277D75D18]);
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v5[0] setBackgroundColor:?];
  MEMORY[0x277D82BD8](clearColor);
  v4 = MEMORY[0x277D82BE0](v5[0]);
  objc_storeStrong(v5, 0);
  return v4;
}

- (id)_newStackView
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = objc_alloc_init(MEMORY[0x277D75A68]);
  [v4[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4[0] setAlignment:3];
  [v4[0] setAxis:1];
  [v4[0] setDistribution:0];
  v3 = MEMORY[0x277D82BE0](v4[0]);
  objc_storeStrong(v4, 0);
  return v3;
}

- (id)_indexPathForLastRow
{
  tableView = [(AKAuthorizationPaneViewController *)self tableView];
  v7 = [(AKAuthorizationPaneViewController *)self _safeIndexWithCount:[(UITableView *)tableView numberOfSections]];
  *&v2 = MEMORY[0x277D82BD8](tableView).n128_u64[0];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [MEMORY[0x277CCAA70] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:v2];
  }

  else
  {
    tableView2 = [(AKAuthorizationPaneViewController *)self tableView];
    v8 = [(AKAuthorizationPaneViewController *)self _safeIndexWithCount:[(UITableView *)tableView2 numberOfRowsInSection:v7]];
    v10 = [MEMORY[0x277CCAA70] indexPathForRow:v8 inSection:{v7, MEMORY[0x277D82BD8](tableView2).n128_f64[0]}];
  }

  return v10;
}

- (int64_t)_safeIndexWithCount:(int64_t)count
{
  if (count - 1 < 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return count - 1;
  }
}

- (AKAuthorizationPaneViewController)initWithNibName:(id)name bundle:(id)bundle
{
  selfCopy = self;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, name);
  v6 = 0;
  objc_storeStrong(&v6, bundle);
  [(AKAuthorizationPaneViewController *)selfCopy doesNotRecognizeSelector:v8];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return 0;
}

- (AKAuthorizationPaneViewController)initWithCoder:(id)coder
{
  selfCopy = self;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, coder);
  [(AKAuthorizationPaneViewController *)selfCopy doesNotRecognizeSelector:v5];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return 0;
}

- (AKAuthorizationPaneViewController)initWithStyle:(int64_t)style
{
  selfCopy = self;
  [(AKAuthorizationPaneViewController *)self doesNotRecognizeSelector:a2];
  objc_storeStrong(&selfCopy, 0);
  return 0;
}

- (AKAuthorizationPaneDelegate)paneDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_paneDelegate);

  return WeakRetained;
}

- (AKAuthorizationEditableDataSources)editableDataSources
{
  WeakRetained = objc_loadWeakRetained(&self->_editableDataSources);

  return WeakRetained;
}

@end