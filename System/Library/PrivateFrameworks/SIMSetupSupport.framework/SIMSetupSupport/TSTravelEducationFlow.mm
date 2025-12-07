@interface TSTravelEducationFlow
- (TSTravelEducationFlow)initWithOptions:(id)options;
- (id)_getSFSafariViewControllerWithURL:(id)l;
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)from;
- (void)firstViewController;
- (void)firstViewController:(id)controller;
@end

@implementation TSTravelEducationFlow

- (TSTravelEducationFlow)initWithOptions:(id)options
{
  optionsCopy = options;
  v8.receiver = self;
  v8.super_class = TSTravelEducationFlow;
  v5 = [(TSSIMSetupFlow *)&v8 init];
  options = v5->_options;
  v5->_options = optionsCopy;

  return v5;
}

- (id)firstViewController
{
  v2 = _TSLogDomain(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(TSTravelEducationFlow *)v2 firstViewController];
  }

  return 0;
}

- (void)firstViewController:(id)controller
{
  v14 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (controllerCopy)
  {
    mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
    getSupportedFlowTypes = [mEMORY[0x277CF96D8] getSupportedFlowTypes];

    if (getSupportedFlowTypes)
    {
      v7 = [[TSTravelEducationIntroViewController alloc] initWithOptions:self->_options];
      v8 = _TSLogDomain(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        options = self->_options;
        v10 = 138412546;
        v11 = options;
        v12 = 2080;
        v13 = "[TSTravelEducationFlow firstViewController:]";
        _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "options: %@ @%s", &v10, 0x16u);
      }

      [(TSTravelEducationIntroViewController *)v7 setDelegate:self];
      [(TSSIMSetupFlow *)self setTopViewController:v7];
      controllerCopy[2](controllerCopy, v7);
    }

    else
    {
      controllerCopy[2](controllerCopy, 0);
    }
  }
}

- (id)nextViewControllerFrom:(id)from
{
  v18[3] = *MEMORY[0x277D85DE8];
  fromCopy = from;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = 0;
      goto LABEL_20;
    }

    v5 = fromCopy;
    selectedCarrierItem = [v5 selectedCarrierItem];

    if (selectedCarrierItem)
    {
      v11 = [TSSubFlowViewController alloc];
      v18[0] = &unk_287583E20;
      v17[0] = @"FlowTypeKey";
      v17[1] = @"Plan";
      selectedCarrierItem2 = [v5 selectedCarrierItem];
      plan = [selectedCarrierItem2 plan];
      v17[2] = @"HostViewController";
      v18[1] = plan;
      v18[2] = v5;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
      navigationController = [v5 navigationController];
      v9 = [(TSSubFlowViewController *)v11 initWithOptions:v13 navigationController:navigationController delegate:self];

      goto LABEL_9;
    }

    goto LABEL_16;
  }

  v5 = fromCopy;
  if (![v5 isRoamingTapped])
  {
    if ([v5 isExistingPlanTapped])
    {
      v15 = TSTravelEducationExistingPlanViewController;
      goto LABEL_18;
    }

    if ([v5 isPurchaseLocalPlanTapped])
    {
      if (!+[TSUtilities isPad])
      {
        roamingInfo2 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/ht212780?cid=mc-ols-esim-article_ht212780-ios_ui-07192022"];
        goto LABEL_5;
      }

      v15 = TSCarrierItemListViewController;
LABEL_18:
      v9 = objc_alloc_init(v15);
      goto LABEL_19;
    }

LABEL_16:
    v9 = 0;
    goto LABEL_19;
  }

  roamingInfo = [v5 roamingInfo];

  if (!roamingInfo)
  {
    v15 = TSTravelEducationRoamingViewController;
    goto LABEL_18;
  }

  roamingInfo2 = [v5 roamingInfo];
LABEL_5:
  selectedCarrierItem2 = roamingInfo2;
  v9 = [(TSTravelEducationFlow *)self _getSFSafariViewControllerWithURL:roamingInfo2];
LABEL_9:

LABEL_19:
LABEL_20:

  return v9;
}

- (id)_getSFSafariViewControllerWithURL:(id)l
{
  v4 = MEMORY[0x277CDB708];
  lCopy = l;
  v6 = objc_alloc_init(v4);
  [v6 setEntersReaderIfAvailable:0];
  [v6 _setEphemeral:1];
  [v6 set_isBeingUsedForCellularServiceBootstrap:1];
  v7 = [objc_alloc(MEMORY[0x277CDB700]) initWithURL:lCopy configuration:v6];

  [v7 setDelegate:self];
  [v7 _setShowingLinkPreview:0];
  [v7 _setShowingLinkPreviewWithMinimalUI:0];
  [v7 setDismissButtonStyle:0];

  return v7;
}

- (void)firstViewController
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[TSTravelEducationFlow firstViewController]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E](UIViewController *)firstViewController is deprecated, please use (void)firstViewController:(void (^)(UIViewController *))completion @%s", &v1, 0xCu);
}

@end