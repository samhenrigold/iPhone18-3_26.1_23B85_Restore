@interface WFPencilActionConfigurationViewController
- (WFPencilActionConfigurationViewController)init;
- (void)configureSheetPresentationStyle;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFPencilActionConfigurationViewController

- (void)configureSheetPresentationStyle
{
  v3 = +[WFPencilActionConfigurationMetricsProvider sharedProvider];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  [(WFPencilActionConfigurationViewController *)self interfaceOrientation];
  if (v3)
  {
    objc_msgSend_metricsWithInterfaceOrientation_(v3);
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
  }

  [(WFPencilActionConfigurationViewController *)self setModalPresentationStyle:2];
  sheetPresentationController = [(WFPencilActionConfigurationViewController *)self sheetPresentationController];
  [sheetPresentationController setPrefersGrabberVisible:_UISolariumEnabled() ^ 1];

  sheetPresentationController2 = [(WFPencilActionConfigurationViewController *)self sheetPresentationController];
  [sheetPresentationController2 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];

  sheetPresentationController3 = [(WFPencilActionConfigurationViewController *)self sheetPresentationController];
  [sheetPresentationController3 _setWantsBottomAttached:1];

  sheetPresentationController4 = [(WFPencilActionConfigurationViewController *)self sheetPresentationController];
  [sheetPresentationController4 _setGrabberTopSpacing:*&v19];

  sheetPresentationController5 = [(WFPencilActionConfigurationViewController *)self sheetPresentationController];
  v9 = *&v20;
  view = [(WFPencilActionConfigurationViewController *)self view];
  _UISheetMinimumTopInset();
  [sheetPresentationController5 _setAdditionalMinimumTopInset:v9 - v11];

  sheetPresentationController6 = [(WFPencilActionConfigurationViewController *)self sheetPresentationController];
  [sheetPresentationController6 setPreferredCornerRadius:*(&v19 + 1)];

  v13[8] = v22;
  v13[9] = v23;
  v13[10] = v24;
  v13[4] = v18;
  v13[5] = v19;
  v13[6] = v20;
  v13[7] = v21;
  v13[0] = v14;
  v13[1] = v15;
  v13[2] = v16;
  v13[3] = v17;
  [v3 sheetPreferredContentSizeWithMetrics:v13];
  [(WFPencilActionConfigurationViewController *)self setPreferredContentSize:?];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = WFPencilActionConfigurationViewController;
  [(WFPencilActionConfigurationViewController *)&v3 viewDidLayoutSubviews];
  [(WFPencilActionConfigurationViewController *)self configureSheetPresentationStyle];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = WFPencilActionConfigurationViewController;
  [(WFPencilActionConfigurationViewController *)&v4 viewWillAppear:appear];
  [(WFPencilActionConfigurationViewController *)self configureSheetPresentationStyle];
}

- (WFPencilActionConfigurationViewController)init
{
  v6.receiver = self;
  v6.super_class = WFPencilActionConfigurationViewController;
  v2 = [(WFSystemActionConfigurationViewController *)&v6 initWithConfigurationContext:@"WFSystemActionConfigurationContextPencilSettings"];
  v3 = v2;
  if (v2)
  {
    [(WFPencilActionConfigurationViewController *)v2 configureSheetPresentationStyle];
    v4 = v3;
  }

  return v3;
}

@end