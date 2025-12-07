@interface MRURoutingViewController
- (BOOL)_operationRequiresOptimisticState:(int64_t)state routes:(id)routes;
- (BOOL)_shouldShowShowMoreButton;
- (BOOL)_wouldEndGroupSessionForViewItem:(id)item operation:(int64_t)operation pickedRoutes:(id)routes;
- (BOOL)_wouldShareAudioForPickedRoute:(id)route operation:(int64_t)operation pickedRoutes:(id)routes;
- (BOOL)canUseUncoalescedResults;
- (BOOL)handleSelectedRoutingViewItem:(id)item operation:(int64_t)operation;
- (BOOL)hasCarKitRoute;
- (BOOL)isInCarPlay;
- (BOOL)isInVehicle;
- (BOOL)isVendorSpecificGroupStatusRecorded:(id)recorded;
- (BOOL)routesContainAirPlayGroupableRoute:(id)route;
- (BOOL)routesContainMultipleBuiltIn:(id)in;
- (BOOL)routesContainSplitterCapableRoute:(id)route;
- (BOOL)shouldSuppressNativeRoutesStatusDisplay;
- (BOOL)tableView:(id)view shouldHaveFullLengthBottomSeparatorForSection:(int64_t)section;
- (BOOL)wasVendorSpecificGroupDisplayedAsExpanded:(id)expanded;
- (MRURoutingViewController)init;
- (MRURoutingViewController)initWithRoutingController:(id)controller;
- (MRURoutingViewControllerDelegate)delegate;
- (UIEdgeInsets)contentEdgeInsets;
- (UIEdgeInsets)scrollIndicatorInsets;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_airPlayRoutesInRoutes:(id)routes;
- (id)_createRoutingViewItemsForUpdate:(id)update;
- (id)_createSectionedCollection:(id)collection withPickedRoutes:(id)routes;
- (id)_displayAsPickedRoutesInRoutes:(id)routes;
- (id)_displayableRoutesInRoutes:(id)routes;
- (id)_fullStateDumpObject;
- (id)_mergeRoutes:(id)routes withCoalescedResult:(id)result;
- (id)_recommendedRoutesFromRoutes:(id)routes;
- (id)_stateDumpObject;
- (id)endpointGroupUID;
- (id)groupUIDForRoute:(id)route;
- (id)symbolNameForVendorSpecificRoute:(id)route;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)subtitleAccessoryForItem:(id)item nowPlayingInfo:(id)info;
- (void)_applyUpdate:(id)update;
- (void)_collapseAllGroups;
- (void)_collapseAllGroupsAfterDelay;
- (void)_configureVolumeForUpdate:(id)update volumeCapableRoutes:(id *)routes volumeController:(id *)controller;
- (void)_createUpdateWithRefreshOnly:(BOOL)only completion:(id)completion;
- (void)_displayEndGroupSessionWithCompletion:(id)completion;
- (void)_displayGroupSessionAlertWithTitle:(id)title body:(id)body confirmTitle:(id)confirmTitle cancelTitle:(id)cancelTitle completion:(id)completion;
- (void)_displayShareAudioDisabledAlertForReason:(id)reason;
- (void)_enqueueUpdate:(id)update;
- (void)_refreshDisplayedRoutes;
- (void)_reloadDisplayedRoutes;
- (void)_setNeedsDisplayedRoutesUpdate;
- (void)_setNeedsRouteDiscoveryModeUpdate;
- (void)_setupUpdateTimerIfNecessary;
- (void)_updateDisplayedRoutes;
- (void)_updateGroupSessionDiscovery;
- (void)applyVendorSpecificGroupExpandedRecord:(id)record;
- (void)clearVendorSpecificGroupExpandedRecordFor:(id)for;
- (void)dealloc;
- (void)didReceiveInteraction:(id)interaction;
- (void)ensureVendorSpecificGroupTreeIsVisible:(id)visible;
- (void)fetchAvailableRoutesWithCompletionHandler:(id)handler;
- (void)groupSession:(id)session didInvalidateWithError:(id)error;
- (void)groupSessionDidConnect:(id)connect;
- (void)groupSessionDiscovery:(id)discovery activeSessionDidChange:(id)change;
- (void)groupSessionDiscovery:(id)discovery discoveredSessionsDidChange:(id)change;
- (void)handleGroupSessionJoinWithPickedRoute:(id)route;
- (void)hearingAidConnectionDidChange;
- (void)loadView;
- (void)playingSessionsDidChangeNotification:(id)notification;
- (void)resetDisplayedRoutes;
- (void)routingCellDidTapToExpand:(id)expand;
- (void)routingController:(id)controller shouldHijackRoute:(id)route alertStyle:(int64_t)style busyRouteName:(id)name presentingAppName:(id)appName completion:(id)completion;
- (void)routingControllerAvailableRoutesDidChange:(id)change;
- (void)selectRoutes:(id)routes operation:(int64_t)operation routingViewItem:(id)item;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)setContentEdgeInsets:(UIEdgeInsets)insets;
- (void)setCustomRows:(id)rows;
- (void)setDiscoveryMode:(int64_t)mode;
- (void)setEndpointRoute:(id)route;
- (void)setGroupSessionDiscovery:(id)discovery;
- (void)setNowPlayingControllers:(id)controllers;
- (void)setOnScreen:(BOOL)screen;
- (void)setOptimisticUpdate:(id)update;
- (void)setPresentingAppBundleID:(id)d;
- (void)setRoutingController:(id)controller;
- (void)setScrollIndicatorInsets:(UIEdgeInsets)insets;
- (void)setStylingProvider:(id)provider;
- (void)setVendorSpecificManager:(id)manager;
- (void)setVolumeGroupCoordinator:(id)coordinator;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forIndexPath:(id)path;
- (void)updateExpandedGroups;
- (void)updateHeaderView:(id)view forSection:(int64_t)section;
- (void)updateMetadata;
- (void)updateMetadataForNowPlayingController:(id)controller;
- (void)updateNowPlayingControllersForRoutes:(id)routes;
- (void)updateSubtitle;
- (void)updateVendorSpecificCell:(id)cell forIndexPath:(id)path;
- (void)updateVendorSpecificCustomRowCell:(id)cell forIndexPath:(id)path;
- (void)updateVendorSpecificGroupExpandedRecordFor:(id)for;
- (void)updateVendorSpecificSpeakerGroupCell:(id)cell forIndexPath:(id)path;
- (void)updateVendorSpecificSubRouteCell:(id)cell forIndexPath:(id)path;
- (void)vendorSpecificCellDidTapToExpand:(id)expand;
- (void)vendorSpecificManager:(id)manager deviceNowPlayingInfoDidChange:(id)change;
- (void)vendorSpecificManager:(id)manager deviceStateDidChange:(id)change;
- (void)vendorSpecificManagerDeviceListDidChange:(id)change;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MRURoutingViewController

- (MRURoutingViewController)init
{
  v3 = objc_alloc(MEMORY[0x1E6970490]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithName:v5];

  v7 = [(MRURoutingViewController *)self initWithRoutingController:v6];
  return v7;
}

- (MRURoutingViewController)initWithRoutingController:(id)controller
{
  controllerCopy = controller;
  v28.receiver = self;
  v28.super_class = MRURoutingViewController;
  v6 = [(MRURoutingViewController *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_routingController, controller);
    [(MPAVRoutingController *)v7->_routingController setDelegate:v7];
    v7->_discoveryMode = 0;
    v8 = [MEMORY[0x1E695DFA8] set];
    expandedGroupUIDs = v7->_expandedGroupUIDs;
    v7->_expandedGroupUIDs = v8;

    v10 = [MEMORY[0x1E695DFA8] set];
    expandedItemUIDs = v7->_expandedItemUIDs;
    v7->_expandedItemUIDs = v10;

    v12 = [MEMORY[0x1E695DFA8] set];
    expandedRouteUIDs = v7->_expandedRouteUIDs;
    v7->_expandedRouteUIDs = v12;

    v14 = [MEMORY[0x1E695DFA8] set];
    collapsedVendorSpecificGroupUIDs = v7->_collapsedVendorSpecificGroupUIDs;
    v7->_collapsedVendorSpecificGroupUIDs = v14;

    v16 = [MEMORY[0x1E695DFA8] set];
    expandedVendorSpecificGroupUIDs = v7->_expandedVendorSpecificGroupUIDs;
    v7->_expandedVendorSpecificGroupUIDs = v16;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    vendorSpecificGroupDisplayedSubroutes = v7->_vendorSpecificGroupDisplayedSubroutes;
    v7->_vendorSpecificGroupDisplayedSubroutes = dictionary;

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __54__MRURoutingViewController_initWithRoutingController___block_invoke;
    v26[3] = &unk_1E7664C58;
    v20 = v7;
    v27 = v20;
    v20->_stateHandle = __54__MRURoutingViewController_initWithRoutingController___block_invoke(v26);
    array = [MEMORY[0x1E695DF70] array];
    staticCustomRowItems = v20->_staticCustomRowItems;
    v20->_staticCustomRowItems = array;

    v20->_didExpandVendorSpecificSpeakerGroup = 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v20 selector:sel_routeRecommenderDidUpdateRecommendations_ name:MRURouteRecommenderDidUpdateRecommendationsNotification object:0];

    v24 = +[MRURouteRecommender sharedInstance];
    [v24 updateRecommendations];
  }

  return v7;
}

uint64_t __54__MRURoutingViewController_initWithRoutingController___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p", objc_opt_class(), *(a1 + 32)];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__MRURoutingViewController_initWithRoutingController___block_invoke_2;
  v5[3] = &unk_1E7664C30;
  objc_copyWeak(&v6, &location);
  v3 = MCLogAddStateHandlerWithName(v2, v5);
  objc_destroyWeak(&v6);

  objc_destroyWeak(&location);
  return v3;
}

id __54__MRURoutingViewController_initWithRoutingController___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      v4 = [WeakRetained _fullStateDumpObject];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setRoutingController:(id)controller
{
  controllerCopy = controller;
  [(MPAVRoutingController *)self->_routingController setDelegate:0];
  routingController = self->_routingController;
  self->_routingController = controllerCopy;
  v6 = controllerCopy;

  [(MPAVRoutingController *)self->_routingController setDelegate:self];
  [(MRURoutingViewController *)self _setNeedsRouteDiscoveryModeUpdate];
  [(MRURoutingViewController *)self _setNeedsDisplayedRoutesUpdate];
  [(MRURoutingViewController *)self updateMetadata];
  [(MRURoutingViewController *)self updateSubtitle];
  view = [(MRURoutingViewController *)self view];
  tableView = [view tableView];
  [tableView reloadData];
}

- (void)dealloc
{
  os_state_remove_handler();
  notify_cancel(self->_airPlayPasswordAlertDidAppearToken);
  notify_cancel(self->_airPlayPasswordAlertDidCancelToken);
  [(MPWeakTimer *)self->_updateTimer invalidate];
  [(MPWeakTimer *)self->_subtitleUpdateTimer invalidate];
  [(NSTimer *)self->_collapseTimer invalidate];
  v3.receiver = self;
  v3.super_class = MRURoutingViewController;
  [(MRURoutingViewController *)&v3 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc_init(MRURoutingView);
  [(MRURoutingViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v46.receiver = self;
  v46.super_class = MRURoutingViewController;
  [(MRURoutingViewController *)&v46 viewDidLoad];
  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  view = [(MRURoutingViewController *)self view];
  [view setContentEdgeInsets:{top, left, bottom, right}];

  v8 = self->_scrollIndicatorInsets.top;
  v9 = self->_scrollIndicatorInsets.left;
  v10 = self->_scrollIndicatorInsets.bottom;
  v11 = self->_scrollIndicatorInsets.right;
  view2 = [(MRURoutingViewController *)self view];
  tableView = [view2 tableView];
  [tableView setScrollIndicatorInsets:{v8, v9, v10, v11}];

  view3 = [(MRURoutingViewController *)self view];
  tableView2 = [view3 tableView];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  [tableView2 registerClass:v16 forHeaderFooterViewReuseIdentifier:v18];

  view4 = [(MRURoutingViewController *)self view];
  tableView3 = [view4 tableView];
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  [tableView3 registerClass:v21 forHeaderFooterViewReuseIdentifier:v23];

  view5 = [(MRURoutingViewController *)self view];
  tableView4 = [view5 tableView];
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = NSStringFromClass(v27);
  [tableView4 registerClass:v26 forCellReuseIdentifier:v28];

  view6 = [(MRURoutingViewController *)self view];
  tableView5 = [view6 tableView];
  [tableView5 setDataSource:self];

  view7 = [(MRURoutingViewController *)self view];
  tableView6 = [view7 tableView];
  [tableView6 setDelegate:self];

  [(MRURoutingViewController *)self _updateGroupSessionDiscovery];
  v33 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__MRURoutingViewController_viewDidLoad__block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(v33, block);

  v34 = objc_alloc_init(MEMORY[0x1E6993960]);
  carPlaySessionStatus = self->_carPlaySessionStatus;
  self->_carPlaySessionStatus = v34;

  [(CARSessionStatus *)self->_carPlaySessionStatus addSessionObserver:self];
  v36 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  percentageFormatter = self->_percentageFormatter;
  self->_percentageFormatter = v36;

  [(NSNumberFormatter *)self->_percentageFormatter setNumberStyle:3];
  [(NSNumberFormatter *)self->_percentageFormatter setUsesSignificantDigits:0];
  [(NSNumberFormatter *)self->_percentageFormatter setUsesGroupingSeparator:0];
  v38 = [[MediaControlsInteractionRecognizer alloc] initWithTarget:self action:sel_didReceiveInteraction_];
  [(MediaControlsInteractionRecognizer *)v38 setCancelsTouchesInView:0];
  view8 = [(MRURoutingViewController *)self view];
  [view8 addGestureRecognizer:v38];

  [(MediaControlsInteractionRecognizer *)v38 setDelegate:self];
  objc_initWeak(&location, self);
  v40 = MEMORY[0x1E69E96A0];
  v41 = MEMORY[0x1E69E96A0];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __39__MRURoutingViewController_viewDidLoad__block_invoke_2;
  handler[3] = &unk_1E76649F0;
  objc_copyWeak(&v43, &location);
  notify_register_dispatch("com.apple.mediaplayer.airPlayPasswordAlertDidCancel", &self->_airPlayPasswordAlertDidCancelToken, v40, handler);

  self->_didLastPickNativeRoute = 0;
  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
}

void __39__MRURoutingViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v3 = MEMORY[0x1E69AECC8];
  v6[0] = *MEMORY[0x1E69AECC8];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [v2 setAttribute:v4 forKey:*MEMORY[0x1E69AECD8] error:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:*(a1 + 32) selector:sel_playingSessionsDidChangeNotification_ name:*v3 object:0];
}

void __39__MRURoutingViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained routingController];
    [v2 clearCachedRoutes];

    [v3 _setNeedsDisplayedRoutesUpdate];
    WeakRetained = v3;
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MRURoutingViewController;
  [(MRURoutingViewController *)&v4 viewWillAppear:appear];
  [(MRURoutingViewController *)self setOnScreen:1];
  [(MRURoutingViewController *)self playingSessionsDidChangeNotification:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = MRURoutingViewController;
  [(MRURoutingViewController *)&v4 viewWillDisappear:disappear];
  [(MRURoutingViewController *)self setOnScreen:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = MRURoutingViewController;
  [(MRURoutingViewController *)&v5 viewDidDisappear:disappear];
  [(MPWeakTimer *)self->_updateTimer invalidate];
  updateTimer = self->_updateTimer;
  self->_updateTimer = 0;

  [(NSTimer *)self->_collapseTimer invalidate];
  [(MRURoutingViewController *)self _collapseAllGroups];
  [(MRURoutingViewController *)self resetDisplayedRoutes];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = MRURoutingViewController;
  [(MRURoutingViewController *)&v6 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  if (!self->_onScreen)
  {
    [(MPWeakTimer *)self->_updateTimer invalidate];
    updateTimer = self->_updateTimer;
    self->_updateTimer = 0;
  }
}

- (void)setDiscoveryMode:(int64_t)mode
{
  if (self->_discoveryMode != mode)
  {
    self->_discoveryMode = mode;
    [(MRURoutingViewController *)self _setNeedsRouteDiscoveryModeUpdate];
  }
}

- (void)setOnScreen:(BOOL)screen
{
  if (self->_onScreen != screen)
  {
    self->_onScreen = screen;
    [(MRURoutingViewController *)self _setNeedsRouteDiscoveryModeUpdate];
    [(MRURoutingViewController *)self _setNeedsDisplayedRoutesUpdate];
    [(MRURoutingViewController *)self updateMetadata];
    [(MRURoutingViewController *)self updateSubtitle];
    if (self->_onScreen)
    {
      view = [(MRURoutingViewController *)self view];
      tableView = [view tableView];
      [tableView reloadData];
    }
  }
}

- (void)setVolumeGroupCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  volumeGroupCoordinator = self->_volumeGroupCoordinator;
  v8 = coordinatorCopy;
  if (volumeGroupCoordinator != coordinatorCopy)
  {
    [(MRUVolumeGroupCoordinator *)volumeGroupCoordinator setVolumeControllers:0];
    objc_storeStrong(&self->_volumeGroupCoordinator, coordinator);
    outputDeviceVolumeControllers = self->_outputDeviceVolumeControllers;
    self->_outputDeviceVolumeControllers = 0;
  }

  [(MRURoutingViewController *)self _reloadDisplayedRoutes];
}

- (void)setNowPlayingControllers:(id)controllers
{
  v42 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  objc_storeStrong(&self->_nowPlayingControllers, controllers);
  selfCopy = self;
  v6 = [(NSArray *)self->_cachedDisplayableAvailableRoutes mutableCopy];
  v7 = MEMORY[0x1E695DFA8];
  v8 = [v6 msv_compactMap:&__block_literal_global_27];
  v9 = [v7 setWithArray:v8];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = controllersCopy;
  v28 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v28)
  {
    v27 = *v36;
    do
    {
      v10 = 0;
      do
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v10;
        endpointController = [*(*(&v35 + 1) + 8 * v10) endpointController];
        route = [endpointController route];
        endpointObject = [route endpointObject];

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = endpointObject;
        outputDevices = [endpointObject outputDevices];
        v15 = [outputDevices countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v32;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v32 != v17)
              {
                objc_enumerationMutation(outputDevices);
              }

              v19 = *(*(&v31 + 1) + 8 * i);
              v20 = [v19 uid];
              v21 = [v9 containsObject:v20];

              if ((v21 & 1) == 0)
              {
                v22 = objc_alloc(MEMORY[0x1E6970470]);
                v39 = v19;
                v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
                v24 = [v22 initWithOutputDevices:v23];
                [v6 addObject:v24];
              }
            }

            v16 = [outputDevices countByEnumeratingWithState:&v31 objects:v40 count:16];
          }

          while (v16);
        }

        v10 = v30 + 1;
      }

      while (v30 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v28);
  }

  [(MRURoutingViewController *)selfCopy updateNowPlayingControllersForRoutes:v6];
  [(MRURoutingViewController *)selfCopy updateMetadata];
}

- (void)setPresentingAppBundleID:(id)d
{
  dCopy = d;
  v5 = self->_presentingAppBundleID;
  v6 = v5;
  if (v5 == dCopy)
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_presentingAppBundleID, d);
      [(MRURoutingViewController *)self _updateGroupSessionDiscovery];
    }
  }
}

- (void)setGroupSessionDiscovery:(id)discovery
{
  v14 = *MEMORY[0x1E69E9840];
  discoveryCopy = discovery;
  v6 = discoveryCopy;
  if (self->_groupSessionDiscovery != discoveryCopy && ([(MRGroupSessionDiscovery *)discoveryCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_groupSessionDiscovery, discovery);
    v8 = MCLogCategoryDefault(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_groupSessionDiscovery != 0;
      presentingAppBundleID = self->_presentingAppBundleID;
      v11[0] = 67109378;
      v11[1] = v9;
      v12 = 2114;
      v13 = presentingAppBundleID;
      _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "[MRURoutingViewController] GroupSession discovery enabled: %{BOOL}u. PresentingBundle: %{public}@", v11, 0x12u);
    }

    [(MRURoutingViewController *)self _updateDisplayedRoutes];
  }
}

- (BOOL)isInCarPlay
{
  currentSession = [(CARSessionStatus *)self->_carPlaySessionStatus currentSession];
  v3 = currentSession != 0;

  return v3;
}

- (BOOL)hasCarKitRoute
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  availableRoutes = [(MPAVRoutingController *)self->_routingController availableRoutes];
  v3 = [availableRoutes countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(availableRoutes);
        }

        if ([*(*(&v7 + 1) + 8 * i) routeSubtype] == 19)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [availableRoutes countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)isInVehicle
{
  if ([(MRURoutingViewController *)self isInCarPlay])
  {
    return 1;
  }

  return [(MRURoutingViewController *)self hasCarKitRoute];
}

- (BOOL)canUseUncoalescedResults
{
  devices = [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager devices];
  v3 = [devices count] == 0;

  return v3;
}

- (BOOL)shouldSuppressNativeRoutesStatusDisplay
{
  activatedDeviceIDs = [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager activatedDeviceIDs];

  if (activatedDeviceIDs && !self->_presentingAppHasActiveAVSession)
  {
    activatedDeviceIDs2 = [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager activatedDeviceIDs];
    if ([activatedDeviceIDs2 count])
    {
      v4 = !self->_didLastPickNativeRoute;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    return 0;
  }

  return v4;
}

- (void)resetDisplayedRoutes
{
  self->_hasUserSelections = 0;
  self->_didSelectShowMore = 0;
  [(MRURoutingViewController *)self _updateDisplayedRoutes];
}

- (void)setStylingProvider:(id)provider
{
  objc_storeStrong(&self->_stylingProvider, provider);

  [(MRURoutingViewController *)self _setNeedsDisplayedRoutesUpdate];
}

- (void)setContentEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  self->_contentEdgeInsets = insets;
  viewIfLoaded = [(MRURoutingViewController *)self viewIfLoaded];
  [viewIfLoaded setContentEdgeInsets:{top, left, bottom, right}];

  [(MRURoutingViewController *)self _reloadDisplayedRoutes];
}

- (void)setScrollIndicatorInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  self->_scrollIndicatorInsets = insets;
  view = [(MRURoutingViewController *)self view];
  tableView = [view tableView];
  [tableView setScrollIndicatorInsets:{top, left, bottom, right}];
}

- (void)setVendorSpecificManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    v8 = managerCopy;
    objc_storeStrong(&self->_vendorSpecificManager, manager);
    [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager setDelegate:self];
    view = [(MRURoutingViewController *)self view];
    tableView = [view tableView];
    [tableView reloadData];

    managerCopy = v8;
  }
}

- (void)setCustomRows:(id)rows
{
  v51 = *MEMORY[0x1E69E9840];
  rowsCopy = rows;
  objc_storeStrong(&self->_customRows, rows);
  selfCopy = self;
  if (!self->_staticCustomRowItems)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(rowsCopy, "count")}];
    staticCustomRowItems = self->_staticCustomRowItems;
    self->_staticCustomRowItems = v6;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = rowsCopy;
  v41 = [v8 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v41)
  {
    v10 = *v43;
    v11 = 0x1E69A8000uLL;
    *&v9 = 138412546;
    v36 = v9;
    v37 = *v43;
    v38 = v8;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v43 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v42 + 1) + 8 * i);
        type = [v13 type];
        v15 = *(v11 + 2624);
        identifier = [type identifier];
        v17 = [v15 symbolForTypeIdentifier:identifier error:0];

        if (v17)
        {
          mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
          [mainScreen scale];
          v20 = [v17 imageForSize:20.0 scale:{20.0, v19}];

          v21 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{objc_msgSend(v20, "CGImage")}];
          v22 = [v21 imageWithRenderingMode:2];

          if (v22)
          {
            v40 = v22;
            localizedDescription = [type localizedDescription];

            if (localizedDescription)
            {
              localizedDescription2 = [type localizedDescription];
              titleOverride = [v13 titleOverride];
              if (titleOverride)
              {
                v26 = titleOverride;
                titleOverride2 = [v13 titleOverride];
                v28 = [titleOverride2 isEqualToString:&stru_1F1445548];

                if ((v28 & 1) == 0)
                {
                  titleOverride3 = [v13 titleOverride];

                  localizedDescription2 = titleOverride3;
                }
              }

              v30 = MCLogCategoryDeviceAccess(titleOverride);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                identifier2 = [v13 identifier];
                *buf = v36;
                v47 = localizedDescription2;
                v48 = 2112;
                v49 = identifier2;
                _os_log_impl(&dword_1A20FC000, v30, OS_LOG_TYPE_DEFAULT, "MRURoutingViewController - Adding Custom Row with title: %@, identifier: %@", buf, 0x16u);
              }

              v32 = selfCopy->_staticCustomRowItems;
              v33 = MEMORY[0x1E6970498];
              identifier3 = [v13 identifier];
              v35 = [v33 itemWithVendorSpecificCustomRowTitle:localizedDescription2 icon:v40 identifier:identifier3];
              [(NSMutableArray *)v32 addObject:v35];

              v10 = v37;
              v8 = v38;
              v11 = 0x1E69A8000;
            }
          }
        }
      }

      v41 = [v8 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v41);
  }
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  if (!section)
  {
    return 0.0;
  }

  v4 = +[MRUFeatureFlagProvider isNewControlsEnabled];
  result = *MEMORY[0x1E69DE3D0];
  if (v4)
  {
    return 4.5;
  }

  return result;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  mru_routingTitleFont = [MEMORY[0x1E69DB878] mru_routingTitleFont];
  [mru_routingTitleFont lineHeight];

  mru_routingSubtitleFont = [MEMORY[0x1E69DB878] mru_routingSubtitleFont];
  [mru_routingSubtitleFont lineHeight];

  traitCollection = [(MRURoutingViewController *)self traitCollection];
  [traitCollection displayScale];
  UIRoundToScale();
  v9 = v8;

  return v9;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  [v10 setAccessibilityIdentifier:0];
  v11 = [(MPSectionedCollection *)self->_routingViewItems itemAtIndexPath:pathCopy];
  type = [v11 type];
  if (type > 5)
  {
    if (type == 6)
    {
      [v10 setIsVendorSpecific:1];
      [(MRURoutingViewController *)self updateVendorSpecificCustomRowCell:v10 forIndexPath:pathCopy];
      goto LABEL_11;
    }

    if (type == 7)
    {
      [v10 setIsVendorSpecific:1];
      [(MRURoutingViewController *)self updateVendorSpecificSpeakerGroupCell:v10 forIndexPath:pathCopy];
      goto LABEL_11;
    }
  }

  else
  {
    if ((type - 3) < 2)
    {
      [v10 setIsVendorSpecific:1];
      [(MRURoutingViewController *)self updateVendorSpecificCell:v10 forIndexPath:pathCopy];
      goto LABEL_11;
    }

    if (type == 5)
    {
      [v10 setIsVendorSpecific:1];
      [(MRURoutingViewController *)self updateVendorSpecificSubRouteCell:v10 forIndexPath:pathCopy];
      goto LABEL_11;
    }
  }

  [v10 setIsVendorSpecific:0];
  [(MRURoutingViewController *)self updateCell:v10 forIndexPath:pathCopy];
LABEL_11:

  return v10;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section)
  {
    if (+[MRUFeatureFlagProvider isNewControlsEnabled])
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v8];

      [v9 setStylingProvider:self->_stylingProvider];
    }

    else
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v9 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v11];

      [(MRURoutingViewController *)self updateHeaderView:v9 forSection:section];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v95 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v8 = [(MPSectionedCollection *)self->_routingViewItems itemAtIndexPath:pathCopy];
  mainRoute = [v8 mainRoute];
  if (([(MPAVRoutingController *)self->_routingController routeIsPendingPick:mainRoute]& 1) != 0)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = [mainRoute isPicked] ^ 1;
  }

  v11 = [(MPAVRoutingController *)self->_routingController routeIsPendingPick:mainRoute];
  if (v11)
  {
    LOBYTE(v11) = [mainRoute isPicked];
  }

  v12 = v10 | v11;
  if ((v10 | v11))
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v78 = [viewCopy cellForRowAtIndexPath:pathCopy];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v12)
  {
    if (isKindOfClass)
    {
      [mainRoute connect];
      v15 = v78;
      routingAccessoryView = [v78 routingAccessoryView];
      WeakRetained = routingAccessoryView;
      v18 = 2;
LABEL_14:
      [routingAccessoryView setState:v18];
LABEL_15:

      goto LABEL_16;
    }
  }

  else
  {
    if (isKindOfClass)
    {
      [mainRoute disconnect];
      v15 = v78;
      routingAccessoryView = [v78 routingAccessoryView];
      WeakRetained = routingAccessoryView;
      v18 = 0;
      goto LABEL_14;
    }

    if ([mainRoute isHearingDeviceRoute])
    {
      +[MRUVirtualHearingAidRoute disconnect];
      v15 = v78;
      goto LABEL_16;
    }
  }

  selfCopy = self;
  type = [v8 type];
  v20 = 1;
  if (type > 3)
  {
    if (type > 5)
    {
      if (type == 6)
      {
        device4 = MCLogCategoryDeviceAccess(6);
        if (os_log_type_enabled(device4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v56 = "selected vendor specific custom row";
LABEL_75:
          _os_log_impl(&dword_1A20FC000, device4, OS_LOG_TYPE_DEFAULT, v56, buf, 2u);
        }

LABEL_76:

        goto LABEL_96;
      }

      if (type != 7)
      {
        goto LABEL_96;
      }

      v76 = viewCopy;
      v77 = mainRoute;
      v75 = pathCopy;
      v31 = MCLogCategoryDeviceAccess(7);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A20FC000, v31, OS_LOG_TYPE_DEFAULT, "selected vendor specific speaker group", buf, 2u);
      }

      selfCopy2 = self;
      self->_hasUserSelections = 1;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v74 = v8;
      obj = [v8 routes];
      v33 = [obj countByEnumeratingWithState:&v87 objects:v92 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v88;
        v79 = *v88;
        do
        {
          v36 = 0;
          v80 = v34;
          do
          {
            if (*v88 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v37 = *(*(&v87 + 1) + 8 * v36);
            objc_opt_class();
            v38 = objc_opt_isKindOfClass();
            if ((v38 & 1) == 0)
            {
              v39 = MCLogCategoryDeviceAccess(v38);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v94 = v37;
                _os_log_impl(&dword_1A20FC000, v39, OS_LOG_TYPE_DEFAULT, "Error: VS speaker group contains bad class object: %@", buf, 0xCu);
              }
            }

            v40 = v37;
            if ([v40 isGroup])
            {
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              subroutes = [v40 subroutes];
              v42 = [subroutes countByEnumeratingWithState:&v83 objects:v91 count:16];
              if (v42)
              {
                v43 = v42;
                v44 = *v84;
                while (2)
                {
                  for (i = 0; i != v43; ++i)
                  {
                    if (*v84 != v44)
                    {
                      objc_enumerationMutation(subroutes);
                    }

                    v46 = *(*(&v83 + 1) + 8 * i);
                    cachedActivatedVendorSpecificDeviceIDs = selfCopy2->_cachedActivatedVendorSpecificDeviceIDs;
                    routeUID = [v46 routeUID];
                    LODWORD(cachedActivatedVendorSpecificDeviceIDs) = [(NSArray *)cachedActivatedVendorSpecificDeviceIDs containsObject:routeUID];

                    if (cachedActivatedVendorSpecificDeviceIDs)
                    {
                      selfCopy2 = selfCopy;
                      vendorSpecificManager = selfCopy->_vendorSpecificManager;
                      device = [v46 device];
                      [(MRUVendorSpecificDeviceManager *)vendorSpecificManager setDevice:device picked:1];

                      goto LABEL_59;
                    }

                    selfCopy2 = selfCopy;
                  }

                  v43 = [subroutes countByEnumeratingWithState:&v83 objects:v91 count:16];
                  if (v43)
                  {
                    continue;
                  }

                  break;
                }

LABEL_59:
                v35 = v79;
                v34 = v80;
              }
            }

            else
            {
              v49 = selfCopy2->_vendorSpecificManager;
              subroutes = [v40 device];
              [(MRUVendorSpecificDeviceManager *)v49 setDevice:subroutes picked:1];
            }

            ++v36;
          }

          while (v36 != v34);
          v34 = [obj countByEnumeratingWithState:&v87 objects:v92 count:16];
        }

        while (v34);
      }

      v20 = 1;
      pathCopy = v75;
      viewCopy = v76;
      v8 = v74;
    }

    else
    {
      if (type != 4)
      {
        v25 = MCLogCategoryDeviceAccess(5);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A20FC000, v25, OS_LOG_TYPE_DEFAULT, "selected vendor specific sub route", buf, 2u);
        }

        self->_hasUserSelections = 1;
        v26 = mainRoute;
        [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager resolverSetLastSelectedRoute:v26];
        isAirPlayRoute = [v26 isAirPlayRoute];
        v28 = isAirPlayRoute;
        v29 = MCLogCategoryDeviceAccess(isAirPlayRoute);
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
        if (v28)
        {
          if (v30)
          {
            *buf = 0;
            _os_log_impl(&dword_1A20FC000, v29, OS_LOG_TYPE_DEFAULT, "sub route is AirPlay", buf, 2u);
          }

          v20 = [(MRURoutingViewController *)self handleSelectedRoutingViewItem:v8 operation:v13];
        }

        else
        {
          if (v30)
          {
            *buf = 0;
            _os_log_impl(&dword_1A20FC000, v29, OS_LOG_TYPE_DEFAULT, "sub route is not AirPlay", buf, 2u);
          }

          self->_didLastPickNativeRoute = 0;
          device2 = [v26 device];
          v20 = 1;
          [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager setDevice:device2 picked:1];
        }

        goto LABEL_96;
      }

      v55 = MCLogCategoryDeviceAccess(4);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A20FC000, v55, OS_LOG_TYPE_DEFAULT, "selected vendor specific group", buf, 2u);
      }

      if ([v78 showChevronExpanded])
      {
        [v78 setShowChevronExpanded:{objc_msgSend(v78, "showChevronExpanded") ^ 1}];
        [(MRURoutingViewController *)self vendorSpecificCellDidTapToExpand:v78];
        v20 = 1;
        goto LABEL_96;
      }

      v61 = v8;
      v77 = mainRoute;
      v62 = mainRoute;
      routeUID2 = [v62 routeUID];
      mostRecentlyInteractedVendorSpecificGroupRouteID = self->_mostRecentlyInteractedVendorSpecificGroupRouteID;
      self->_mostRecentlyInteractedVendorSpecificGroupRouteID = routeUID2;

      vendorSpecificGroupDisplayedSubroutes = self->_vendorSpecificGroupDisplayedSubroutes;
      routeUID3 = [v62 routeUID];
      v67 = [(NSMutableDictionary *)vendorSpecificGroupDisplayedSubroutes objectForKeyedSubscript:routeUID3];

      if (v67)
      {
        self->_hasUserSelections = 1;
        [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager resolverSetLastSelectedRoute:v67];
        isAirPlayRoute2 = [v67 isAirPlayRoute];
        v69 = isAirPlayRoute2;
        v70 = MCLogCategoryDeviceAccess(isAirPlayRoute2);
        v71 = os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT);
        if (v69)
        {
          if (v71)
          {
            *buf = 0;
            _os_log_impl(&dword_1A20FC000, v70, OS_LOG_TYPE_DEFAULT, "group row tap -- act on AirPlay subroute", buf, 2u);
          }

          v20 = [(MRURoutingViewController *)self handleSelectedRoutingViewItem:v61 operation:v13];
        }

        else
        {
          if (v71)
          {
            *buf = 0;
            _os_log_impl(&dword_1A20FC000, v70, OS_LOG_TYPE_DEFAULT, "group row tap -- act on Vendor Specific subroute", buf, 2u);
          }

          self->_didLastPickNativeRoute = 0;
          device3 = [v67 device];
          v20 = 1;
          [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager setDevice:device3 picked:1];
        }
      }

      else
      {
        [v78 setShowChevronExpanded:{objc_msgSend(v78, "showChevronExpanded") ^ 1}];
        [(MRURoutingViewController *)self vendorSpecificCellDidTapToExpand:v78];
        v20 = 1;
      }

      v8 = v61;
    }

    mainRoute = v77;
    goto LABEL_96;
  }

  if (type < 2)
  {
    isPickable = [v8 isPickable];
    v53 = isPickable;
    device4 = MCLogCategoryDeviceAccess(isPickable);
    v54 = os_log_type_enabled(device4, OS_LOG_TYPE_DEFAULT);
    if (v53)
    {
      if (v54)
      {
        *buf = 0;
        _os_log_impl(&dword_1A20FC000, device4, OS_LOG_TYPE_DEFAULT, "selected native routes", buf, 2u);
      }

      v20 = [(MRURoutingViewController *)self handleSelectedRoutingViewItem:v8 operation:v13];
      goto LABEL_96;
    }

    if (v54)
    {
      *buf = 0;
      v56 = "selected unpickable native route";
      goto LABEL_75;
    }

    goto LABEL_76;
  }

  if (type == 2)
  {
    v57 = MCLogCategoryDefault(2);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      actionIdentifier = [v8 actionIdentifier];
      *buf = 138543362;
      v94 = actionIdentifier;
      _os_log_impl(&dword_1A20FC000, v57, OS_LOG_TYPE_DEFAULT, "[MRURoutingViewController] RCS user selected: %{public}@", buf, 0xCu);
    }

    actionIdentifier2 = [v8 actionIdentifier];
    v60 = [actionIdentifier2 isEqualToString:@"Show more"];

    if (v60)
    {
      [(MRURoutingViewController *)self showMoreAction];
    }
  }

  else if (type == 3)
  {
    v21 = MCLogCategoryDeviceAccess(3);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A20FC000, v21, OS_LOG_TYPE_DEFAULT, "selected vendor specific route", buf, 2u);
    }

    self->_hasUserSelections = 1;
    self->_didLastPickNativeRoute = 0;
    v22 = self->_vendorSpecificManager;
    v23 = mainRoute;
    [(MRUVendorSpecificDeviceManager *)v22 resolverSetLastSelectedRoute:v23];
    device4 = [v23 device];

    [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager setDevice:device4 picked:1];
    goto LABEL_76;
  }

LABEL_96:
  v15 = v78;
  if (v8 && v20)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained routingViewController:selfCopy didSelectRoutingViewItem:v8];
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (BOOL)tableView:(id)view shouldHaveFullLengthBottomSeparatorForSection:(int64_t)section
{
  viewCopy = view;
  v6 = +[MRUFeatureFlagProvider isNewControlsEnabled](MRUFeatureFlagProvider, "isNewControlsEnabled") || [viewCopy numberOfSections] - 1 == section;

  return v6;
}

- (void)vendorSpecificManagerDeviceListDidChange:(id)change
{
  v4 = MCLogCategoryDeviceAccess(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "DA device list did change - vendorSpecificManagerDeviceListDidChange", v5, 2u);
  }

  [(MRURoutingViewController *)self _refreshDisplayedRoutes];
}

- (void)vendorSpecificManager:(id)manager deviceStateDidChange:(id)change
{
  v5 = MCLogCategoryDeviceAccess(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "DA - deviceStateDidChange", v6, 2u);
  }

  [(MRURoutingViewController *)self _updateDisplayedRoutes];
}

- (void)vendorSpecificManager:(id)manager deviceNowPlayingInfoDidChange:(id)change
{
  v47 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  view = [(MRURoutingViewController *)self view];
  tableView = [view tableView];
  indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

  selfCopy = self;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = indexPathsForVisibleRows;
  v41 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v41)
  {
    selfCopy2 = self;
    v40 = *v43;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v43 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v42 + 1) + 8 * i);
        v12 = [(MPSectionedCollection *)selfCopy->_routingViewItems safeItemAtIndexPath:v11];
        if ([v12 type] == 5)
        {
          mainRoute = [v12 mainRoute];
          device = [mainRoute device];
          identifier = [device identifier];
          [changeCopy identifier];
          v17 = v16 = changeCopy;
          v18 = [identifier isEqualToString:v17];

          if (!v18)
          {
            changeCopy = v16;
LABEL_23:

            goto LABEL_24;
          }

          view2 = [(MRURoutingViewController *)selfCopy view];
          tableView2 = [view2 tableView];
          v21 = [tableView2 cellForRowAtIndexPath:v11];

          mediaPlaybackState = [v16 mediaPlaybackState];
          subtitleStateController = [v21 subtitleStateController];
          changeCopy = v16;
          goto LABEL_18;
        }

        if ([v12 type] == 3 || objc_msgSend(v12, "type") == 4)
        {
          mainRoute = [v12 mainRoute];
          if ([mainRoute isGroup])
          {
            preferredSubroute = [mainRoute preferredSubroute];
            device2 = [preferredSubroute device];
            identifier2 = [device2 identifier];
            [changeCopy identifier];
            v28 = v27 = changeCopy;
            v29 = [identifier2 isEqualToString:v28];

            changeCopy = v27;
            if ((v29 & 1) == 0)
            {
LABEL_22:
              selfCopy = selfCopy2;
              goto LABEL_23;
            }
          }

          else
          {
            device3 = [mainRoute device];
            identifier3 = [device3 identifier];
            identifier4 = [changeCopy identifier];
            v33 = [identifier3 isEqualToString:identifier4];

            if (!v33)
            {
              goto LABEL_22;
            }
          }

          view3 = [(MRURoutingViewController *)selfCopy2 view];
          tableView3 = [view3 tableView];
          v21 = [tableView3 cellForRowAtIndexPath:v11];

          if (!v21)
          {
            goto LABEL_22;
          }

          mediaPlaybackState = [changeCopy mediaPlaybackState];
          subtitleStateController = [v21 subtitleStateController];
          selfCopy = selfCopy2;
LABEL_18:
          nowPlayingSubtitle = [changeCopy nowPlayingSubtitle];
          if (mediaPlaybackState == 2)
          {
            v37 = 2;
          }

          else
          {
            v37 = 1;
          }

          [subtitleStateController setText:nowPlayingSubtitle forState:3 accessory:v37];

          goto LABEL_23;
        }

LABEL_24:
      }

      v41 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v41);
  }
}

- (void)vendorSpecificCellDidTapToExpand:(id)expand
{
  expandCopy = expand;
  view = [(MRURoutingViewController *)self view];
  tableView = [view tableView];
  obj = [tableView indexPathForCell:expandCopy];

  v7 = [(MPSectionedCollection *)self->_routingViewItems itemAtIndexPath:obj];
  mainRoute = [v7 mainRoute];

  routeUID = [mainRoute routeUID];
  mostRecentlyInteractedVendorSpecificGroupRouteID = self->_mostRecentlyInteractedVendorSpecificGroupRouteID;
  self->_mostRecentlyInteractedVendorSpecificGroupRouteID = routeUID;

  [mainRoute setExpanded:{objc_msgSend(expandCopy, "showChevronExpanded")}];
  [(MRURoutingViewController *)self updateVendorSpecificGroupExpandedRecordFor:mainRoute];
  LODWORD(v7) = [expandCopy showChevronExpanded];

  if (v7)
  {
    objc_storeStrong(&self->_vendorSpecificGroupThatWasJustExpanded, obj);
  }

  [(MRURoutingViewController *)self _refreshDisplayedRoutes];
}

- (void)routingControllerAvailableRoutesDidChange:(id)change
{
  updatesSincePresentation = self->_updatesSincePresentation;
  self->_updatesSincePresentation = updatesSincePresentation + 1;
  if (updatesSincePresentation > 4)
  {
    [(MRURoutingViewController *)self _setNeedsDisplayedRoutesUpdate];
  }

  else
  {
    [(MRURoutingViewController *)self _updateDisplayedRoutes];
  }
}

- (void)routingController:(id)controller shouldHijackRoute:(id)route alertStyle:(int64_t)style busyRouteName:(id)name presentingAppName:(id)appName completion:(id)completion
{
  controllerCopy = controller;
  routeCopy = route;
  nameCopy = name;
  appNameCopy = appName;
  completionCopy = completion;
  v32 = nameCopy;
  v33 = routeCopy;
  v30 = appNameCopy;
  if (!style)
  {
    if ([routeCopy isTVRoute])
    {
      controllerCopy = +[MRUStringsProvider routingHijackTVTitle];
      +[MRUStringsProvider routingHijackTVMessage];
    }

    else
    {
      controllerCopy = +[MRUStringsProvider routingHijackSpeakerTitle];
      +[MRUStringsProvider routingHijackSpeakerMessage];
    }
    v19 = ;
    goto LABEL_9;
  }

  if (style == 1)
  {
    controllerCopy = [MRUStringsProvider routingHijackLocalTitle:nameCopy, appNameCopy, nameCopy, routeCopy, controllerCopy];
    v19 = [MRUStringsProvider routingHijackLocalMessagePresentingApp:appNameCopy busyRouteName:nameCopy];
LABEL_9:
    v20 = v19;
    goto LABEL_10;
  }

  v20 = 0;
  controllerCopy = 0;
LABEL_10:
  v21 = [MEMORY[0x1E69DC650] alertControllerWithTitle:controllerCopy message:v20 preferredStyle:{1, v30}];
  v22 = MEMORY[0x1E69DC648];
  v23 = +[MRUStringsProvider routingHijackCancelTitle];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __118__MRURoutingViewController_routingController_shouldHijackRoute_alertStyle_busyRouteName_presentingAppName_completion___block_invoke;
  v37[3] = &unk_1E7664CA0;
  v24 = completionCopy;
  v38 = v24;
  v25 = [v22 actionWithTitle:v23 style:1 handler:v37];
  [v21 addAction:v25];

  v26 = MEMORY[0x1E69DC648];
  v27 = +[MRUStringsProvider routingHijackConfirmTitle];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __118__MRURoutingViewController_routingController_shouldHijackRoute_alertStyle_busyRouteName_presentingAppName_completion___block_invoke_2;
  v35[3] = &unk_1E7664CA0;
  v36 = v24;
  v28 = v24;
  v29 = [v26 actionWithTitle:v27 style:0 handler:v35];
  [v21 addAction:v29];

  [(MRURoutingViewController *)self showViewController:v21 sender:self];
}

- (void)routingCellDidTapToExpand:(id)expand
{
  expandCopy = expand;
  view = [(MRURoutingViewController *)self view];
  tableView = [view tableView];
  v6 = [tableView indexPathForCell:expandCopy];

  v7 = [(MPSectionedCollection *)self->_routingViewItems itemAtIndexPath:v6];
  LODWORD(tableView) = [v7 isExpandable];
  type = [v7 type];
  if (tableView)
  {
    if (type == 1)
    {
      mainRoute = [v7 mainRoute];
      mainRoute3 = [(MRURoutingViewController *)self groupUIDForRoute:mainRoute];

      [(NSMutableSet *)self->_expandedGroupUIDs addObject:mainRoute3];
    }

    else
    {
      expandedRouteUIDs = self->_expandedRouteUIDs;
      mainRoute2 = [v7 mainRoute];
      routeUID = [mainRoute2 routeUID];
      v14 = [(NSMutableSet *)expandedRouteUIDs containsObject:routeUID];

      v15 = self->_expandedRouteUIDs;
      mainRoute3 = [v7 mainRoute];
      routeUID2 = [mainRoute3 routeUID];
      if (v14)
      {
        [(NSMutableSet *)v15 removeObject:routeUID2];
      }

      else
      {
        [(NSMutableSet *)v15 addObject:routeUID2];
      }
    }

    goto LABEL_13;
  }

  if (type == 4)
  {
    [(MRURoutingViewController *)self vendorSpecificCellDidTapToExpand:expandCopy];
    goto LABEL_14;
  }

  if ([v7 type] == 7)
  {
    self->_didExpandVendorSpecificSpeakerGroup = 1;
    self->_hasUserSelections = 0;
LABEL_13:
    [(MRURoutingViewController *)self _updateDisplayedRoutes];
  }

LABEL_14:
}

- (void)sessionDidConnect:(id)connect
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = MCLogCategoryDefault(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = [(MRURoutingViewController *)self isInCarPlay];
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_INFO, "[MRURoutingViewController] CarPlay connected: %{BOOL}u", v5, 8u);
  }

  [(MRURoutingViewController *)self _refreshDisplayedRoutes];
}

- (void)sessionDidDisconnect:(id)disconnect
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = MCLogCategoryDefault(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = [(MRURoutingViewController *)self isInCarPlay];
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_INFO, "[MRURoutingViewController] CarPlay disconnected: %{BOOL}u", v5, 8u);
  }

  [(MRURoutingViewController *)self _refreshDisplayedRoutes];
}

- (void)playingSessionsDidChangeNotification:(id)notification
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__MRURoutingViewController_playingSessionsDidChangeNotification___block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(v4, block);
}

void __65__MRURoutingViewController_playingSessionsDidChangeNotification___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v3 = [v2 attributeForKey:*MEMORY[0x1E69AEB08]];

  if (v3)
  {
    v5 = MCLogCategoryDeviceAccess(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v3;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "sessions: %@", buf, 0xCu);
    }

    v7 = MCLogCategoryDeviceAccess(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(a1 + 32) + 1172);
      *buf = 67109120;
      LODWORD(v25) = v8;
      _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "presentingAppPID: %d", buf, 8u);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = v3;
    v9 = v3;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      v13 = MEMORY[0x1E69AEB20];
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = [*(*(&v19 + 1) + 8 * v14) objectForKeyedSubscript:{*v13, v17}];
          v16 = *(*(a1 + 32) + 1172);
          if (v16 == [v15 intValue])
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __65__MRURoutingViewController_playingSessionsDidChangeNotification___block_invoke_196;
            block[3] = &unk_1E7663898;
            block[4] = *(a1 + 32);
            dispatch_async(MEMORY[0x1E69E96A0], block);
          }

          ++v14;
        }

        while (v11 != v14);
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    v3 = v17;
  }
}

- (void)setEndpointRoute:(id)route
{
  routeCopy = route;
  if (self->_endpointRoute != routeCopy)
  {
    objc_storeStrong(&self->_endpointRoute, route);
    msv_dispatch_on_main_queue();
  }
}

void __45__MRURoutingViewController_setEndpointRoute___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1280);
  *(v2 + 1280) = 0;

  v4 = objc_alloc_init(MRURoutingViewControllerUpdate);
  [(MRURoutingViewControllerUpdate *)v4 setShouldReload:1];
  *(*(a1 + 32) + 1145) = 0;
  [*(a1 + 32) _enqueueUpdate:v4];
}

- (BOOL)_operationRequiresOptimisticState:(int64_t)state routes:(id)routes
{
  v21 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  v16 = 0u;
  v17 = 0u;
  v6 = [routesCopy count] > 1;
  v18 = 0u;
  v19 = 0u;
  v7 = routesCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v8)
  {

LABEL_12:
    v14 = (state == 2) & v6;
    goto LABEL_13;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v17;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v16 + 1) + 8 * i);
      v10 |= [v13 isDeviceRoute];
      v6 &= [v13 isSmartAudio];
    }

    v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v9);

  if (((state == 1) & v10) != 1 || [v7 count] != 1)
  {
    goto LABEL_12;
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)updateVendorSpecificSubRouteCell:(id)cell forIndexPath:(id)path
{
  v32 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  pathCopy = path;
  v8 = MCLogCategoryDeviceAccess(pathCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 138412290;
    v31 = pathCopy;
    _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "updateVendorSpecificSubRouteCell forIndexPath: %@", &v30, 0xCu);
  }

  v9 = [(MPSectionedCollection *)self->_routingViewItems itemAtIndexPath:pathCopy];
  mainRoute = [v9 mainRoute];
  protocolIcon = [mainRoute protocolIcon];
  [cellCopy setProtocolIcon:protocolIcon];

  protocolName = [mainRoute protocolName];
  [cellCopy setProtocolName:protocolName];

  protocolIcon2 = [mainRoute protocolIcon];
  [cellCopy setIconImage:protocolIcon2];

  protocolName2 = [mainRoute protocolName];
  [cellCopy setTitle:protocolName2];

  [cellCopy setIndentationLevel:1];
  if ([mainRoute isAirPlayRoute])
  {
    underlyingNativeRoute = [mainRoute underlyingNativeRoute];
    if ([mainRoute supportsAirPlayGrouping])
    {
      v16 = [(MRURoutingViewController *)self routesContainAirPlayGroupableRoute:self->_cachedDisplayAsPickedRoutes];
    }

    else
    {
      v16 = 0;
    }

    v20 = [(NSArray *)self->_cachedDisplayAsPickedRoutes containsObject:underlyingNativeRoute];
    v21 = [(NSArray *)self->_cachedPendingPickedRoutes containsObject:underlyingNativeRoute];
    routingAccessoryView = [cellCopy routingAccessoryView];
    subtitleStateController = routingAccessoryView;
    if (v21)
    {
      v24 = 2;
    }

    else if (v20)
    {
      if (v16)
      {
        v24 = 4;
      }

      else
      {
        v24 = 3;
      }
    }

    else
    {
      v24 = v16;
    }

    [routingAccessoryView setState:v24];
  }

  else
  {
    underlyingNativeRoute = [mainRoute device];
    v17 = [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager isGroupingAvailableForDevice:underlyingNativeRoute];
    v18 = [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager latestStateForDevice:underlyingNativeRoute];
    v19 = 2;
    if (v18 != 10 && v18 != 30)
    {
      if (v18 == 20)
      {
        if (v17)
        {
          v19 = 4;
        }

        else
        {
          v19 = 3;
        }
      }

      else
      {
        v19 = v17;
      }
    }

    routingAccessoryView2 = [cellCopy routingAccessoryView];
    [routingAccessoryView2 setState:v19];

    mediaPlaybackState = [underlyingNativeRoute mediaPlaybackState];
    subtitleStateController = [cellCopy subtitleStateController];
    nowPlayingSubtitle = [underlyingNativeRoute nowPlayingSubtitle];
    if (mediaPlaybackState == 2)
    {
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    [subtitleStateController setText:nowPlayingSubtitle forState:3 accessory:v28];
  }

  [(MRURoutingViewController *)self contentEdgeInsets];
  [cellCopy setContentEdgeInsets:?];
  stylingProvider = [(MRURoutingViewController *)self stylingProvider];
  [cellCopy setStylingProvider:stylingProvider];
}

- (void)updateVendorSpecificCell:(id)cell forIndexPath:(id)path
{
  v140 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  pathCopy = path;
  v8 = MCLogCategoryDeviceAccess(pathCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v139 = pathCopy;
    _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "updateVendorSpecificCell forIndexPath: %@", buf, 0xCu);
  }

  v9 = [(MPSectionedCollection *)self->_routingViewItems itemAtIndexPath:pathCopy];
  mainRoute = [v9 mainRoute];
  v11 = MCLogCategoryDeviceAccess(mainRoute);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    routeName = [mainRoute routeName];
    *buf = 138412290;
    v139 = routeName;
    _os_log_impl(&dword_1A20FC000, v11, OS_LOG_TYPE_DEFAULT, "updateVendorSpecificCell device: %@", buf, 0xCu);
  }

  device = [mainRoute device];
  if ([mainRoute isGroup])
  {
    [cellCopy setEnabled:1];
    [cellCopy setShowChevron:1];
    expandedVendorSpecificGroupUIDs = self->_expandedVendorSpecificGroupUIDs;
    routeUID = [mainRoute routeUID];
    [cellCopy setShowChevronExpanded:{-[NSMutableSet containsObject:](expandedVendorSpecificGroupUIDs, "containsObject:", routeUID)}];

    v16 = MEMORY[0x1E69DCAB8];
    v17 = [(MRURoutingViewController *)self symbolNameForVendorSpecificRoute:mainRoute];
    v18 = [v16 systemImageNamed:v17];
    [cellCopy setIconImage:v18];

    routeName2 = [mainRoute routeName];
    v111 = v9;
    v113 = pathCopy;
    v109 = device;
    if (routeName2 && (v20 = routeName2, [mainRoute routeName], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", &stru_1F1445548), v21, v20, (v22 & 1) == 0))
    {
      routeName3 = [mainRoute routeName];
      [cellCopy setTitle:routeName3];
    }

    else
    {
      [cellCopy setTitle:{@"Unknown Device", device, v9, pathCopy}];
    }

    subroutes = [mainRoute subroutes];
    v132[0] = MEMORY[0x1E69E9820];
    v132[1] = 3221225472;
    v132[2] = __66__MRURoutingViewController_updateVendorSpecificCell_forIndexPath___block_invoke;
    v132[3] = &unk_1E7664CC8;
    v116 = cellCopy;
    v133 = v116;
    selfCopy = self;
    v118 = [subroutes msv_compactMap:v132];

    subroutes2 = [mainRoute subroutes];
    v131[0] = MEMORY[0x1E69E9820];
    v131[1] = 3221225472;
    v131[2] = __66__MRURoutingViewController_updateVendorSpecificCell_forIndexPath___block_invoke_2;
    v131[3] = &unk_1E7664CF0;
    v131[4] = self;
    v117 = [subroutes2 msv_compactMap:v131];

    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v115 = mainRoute;
    subroutes3 = [mainRoute subroutes];
    v34 = [subroutes3 countByEnumeratingWithState:&v127 objects:v137 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v128;
      while (2)
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v128 != v36)
          {
            objc_enumerationMutation(subroutes3);
          }

          v38 = *(*(&v127 + 1) + 8 * i);
          if ([v38 isAirPlayRoute])
          {
            if ([(MRURoutingViewController *)self routesContainAirPlayGroupableRoute:self->_cachedDisplayAsPickedRoutes])
            {
              goto LABEL_25;
            }
          }

          else
          {
            vendorSpecificManager = self->_vendorSpecificManager;
            device2 = [v38 device];
            LOBYTE(vendorSpecificManager) = [(MRUVendorSpecificDeviceManager *)vendorSpecificManager isGroupingAvailableForDevice:device2];

            if (vendorSpecificManager)
            {
LABEL_25:
              mainRoute = v115;
              [v115 setTempPreferredSubrouteOverride:v38];

              v41 = 1;
              goto LABEL_26;
            }
          }
        }

        v35 = [subroutes3 countByEnumeratingWithState:&v127 objects:v137 count:16];
        if (v35)
        {
          continue;
        }

        break;
      }
    }

    mainRoute = v115;
    [v115 setTempPreferredSubrouteOverride:0];
    v41 = 0;
LABEL_26:
    v42 = v118;
    v43 = v117;
    if ([v118 count])
    {
      if ([v118 count] == 1)
      {
        firstObject = [v118 firstObject];
        v45 = 3;
        goto LABEL_73;
      }

      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v52 = v118;
      v53 = [v52 countByEnumeratingWithState:&v119 objects:v135 count:16];
      if (v53)
      {
        v54 = v53;
        firstObject = 0;
        v55 = *v120;
        do
        {
          for (j = 0; j != v54; ++j)
          {
            if (*v120 != v55)
            {
              objc_enumerationMutation(v52);
            }

            v57 = *(*(&v119 + 1) + 8 * j);
            if (([v57 isAirPlayRoute] & 1) == 0)
            {
              v58 = v57;

              firstObject = v58;
            }
          }

          v54 = [v52 countByEnumeratingWithState:&v119 objects:v135 count:16];
        }

        while (v54);
      }

      else
      {
        firstObject = 0;
      }

      v45 = 3;
    }

    else
    {
      if (![v117 count])
      {
        preferredSubroute = [mainRoute preferredSubroute];

        if (preferredSubroute)
        {
          firstObject = [mainRoute preferredSubroute];
          v45 = 1;
        }

        else
        {
          v45 = 0;
          firstObject = 0;
        }

LABEL_73:
        vendorSpecificGroupDisplayedSubroutes = self->_vendorSpecificGroupDisplayedSubroutes;
        routeUID2 = [mainRoute routeUID];
        [(NSMutableDictionary *)vendorSpecificGroupDisplayedSubroutes setObject:firstObject forKeyedSubscript:routeUID2];

        if (!firstObject)
        {
          goto LABEL_108;
        }

        protocolIcon = [firstObject protocolIcon];
        [v116 setProtocolIcon:protocolIcon];

        protocolName = [firstObject protocolName];
        [v116 setProtocolName:protocolName];

        if ([v116 showChevronExpanded])
        {
          goto LABEL_108;
        }

        isAirPlayRoute = [firstObject isAirPlayRoute];
        subtitleStateController = [v116 subtitleStateController];
        protocolName2 = [v116 protocolName];
        if (isAirPlayRoute)
        {
          [subtitleStateController setText:protocolName2 forState:6];
        }

        else
        {
          protocolIcon2 = [v116 protocolIcon];
          [subtitleStateController setText:protocolName2 icon:protocolIcon2 forState:6];
        }

        if (v45 > 1)
        {
          if (v45 == 2)
          {
            routingAccessoryView = [v116 routingAccessoryView];
            [routingAccessoryView setState:2];
LABEL_94:

            v83 = v116;
            goto LABEL_95;
          }

          if (v41)
          {
            v86 = 4;
          }

          else
          {
            v86 = 3;
          }

          routingAccessoryView2 = [v116 routingAccessoryView];
          [routingAccessoryView2 setState:v86];

          if ([firstObject isAirPlayRoute])
          {
            routingAccessoryView = [firstObject underlyingNativeRoute];
            if ([(NSArray *)self->_cachedVolumeCapableRoutes containsObject:routingAccessoryView])
            {
              outputDeviceVolumeControllers = self->_outputDeviceVolumeControllers;
              routeUID3 = [routingAccessoryView routeUID];
              v90 = [(NSDictionary *)outputDeviceVolumeControllers objectForKeyedSubscript:routeUID3];
              [v116 setVolumeController:v90];
            }

            goto LABEL_94;
          }
        }

        else
        {
          v83 = v116;
          if (!v45 || ([v116 routingAccessoryView], v84 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v84, "setState:", v41), v84, (objc_msgSend(firstObject, "isAirPlayRoute") & 1) != 0))
          {
LABEL_95:
            objc_opt_class();
            v42 = v118;
            if (objc_opt_isKindOfClass())
            {
              v96 = mainRoute;
              [v96 setHearingAidDelegate:self];
              if ([v96 isConnecting])
              {
                routingAccessoryView3 = [v83 routingAccessoryView];
                [routingAccessoryView3 setState:2];
              }
            }

            if ([firstObject isAirPlayRoute])
            {
              underlyingNativeRoute = [firstObject underlyingNativeRoute];
              if (![(NSArray *)self->_cachedVolumeCapableRoutes containsObject:underlyingNativeRoute])
              {
LABEL_107:

                v43 = v117;
LABEL_108:

                subtitleStateController4 = v133;
                v9 = v112;
                pathCopy = v114;
                device = v110;
                goto LABEL_109;
              }

              v99 = self->_outputDeviceVolumeControllers;
              routeUID4 = [underlyingNativeRoute routeUID];
              nowPlayingSubtitle = [(NSDictionary *)v99 objectForKeyedSubscript:routeUID4];
              [v116 setVolumeController:nowPlayingSubtitle];
            }

            else
            {
              subtitleStateController2 = [v83 subtitleStateController];
              protocolName3 = [v83 protocolName];
              protocolIcon3 = [v83 protocolIcon];
              [subtitleStateController2 setText:protocolName3 icon:protocolIcon3 forState:6];

              device3 = [firstObject device];
              mediaPlaybackState = [device3 mediaPlaybackState];

              underlyingNativeRoute = [v83 subtitleStateController];
              routeUID4 = [firstObject device];
              nowPlayingSubtitle = [routeUID4 nowPlayingSubtitle];
              if (mediaPlaybackState == 2)
              {
                v107 = 2;
              }

              else
              {
                v107 = 1;
              }

              [underlyingNativeRoute setText:nowPlayingSubtitle forState:3 accessory:v107];
            }

            goto LABEL_107;
          }
        }

        device4 = [firstObject device];
        mediaPlaybackState2 = [device4 mediaPlaybackState];

        routingAccessoryView = [v116 subtitleStateController];
        device5 = [firstObject device];
        nowPlayingSubtitle2 = [device5 nowPlayingSubtitle];
        if (mediaPlaybackState2 == 2)
        {
          v95 = 2;
        }

        else
        {
          v95 = 1;
        }

        [routingAccessoryView setText:nowPlayingSubtitle2 forState:3 accessory:v95];

        goto LABEL_94;
      }

      if ([v117 count] == 1)
      {
        firstObject = [v117 firstObject];
        v45 = 2;
        goto LABEL_73;
      }

      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v68 = v117;
      v69 = [v68 countByEnumeratingWithState:&v123 objects:v136 count:16];
      if (v69)
      {
        v70 = v69;
        firstObject = 0;
        v71 = *v124;
        do
        {
          for (k = 0; k != v70; ++k)
          {
            if (*v124 != v71)
            {
              objc_enumerationMutation(v68);
            }

            v73 = *(*(&v123 + 1) + 8 * k);
            if (([v73 isAirPlayRoute] & 1) == 0)
            {
              v74 = v73;

              firstObject = v74;
            }
          }

          v70 = [v68 countByEnumeratingWithState:&v123 objects:v136 count:16];
        }

        while (v70);
      }

      else
      {
        firstObject = 0;
      }

      v45 = 2;
    }

    mainRoute = v115;
    v43 = v117;
    v42 = v118;
    goto LABEL_73;
  }

  [cellCopy setShowChevron:0];
  v23 = MEMORY[0x1E69DCAB8];
  v24 = [(MRURoutingViewController *)self symbolNameForVendorSpecificRoute:mainRoute];
  v25 = [v23 systemImageNamed:v24];
  [cellCopy setIconImage:v25];

  routeName4 = [mainRoute routeName];
  if (routeName4 && (v27 = routeName4, [mainRoute routeName], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "isEqualToString:", &stru_1F1445548), v28, v27, (v29 & 1) == 0))
  {
    routeName5 = [mainRoute routeName];
    [cellCopy setTitle:routeName5];
  }

  else
  {
    [cellCopy setTitle:@"Unknown Device"];
  }

  protocolIcon4 = [mainRoute protocolIcon];
  [cellCopy setProtocolIcon:protocolIcon4];

  protocolName4 = [mainRoute protocolName];
  [cellCopy setProtocolName:protocolName4];

  v49 = [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager isGroupingAvailableForDevice:device];
  v50 = [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager latestStateForDevice:device];
  v51 = 2;
  if (v50 != 10 && v50 != 30)
  {
    if (v50 == 20)
    {
      if (v49)
      {
        v51 = 4;
      }

      else
      {
        v51 = 3;
      }
    }

    else
    {
      v51 = v49;
    }
  }

  routingAccessoryView4 = [cellCopy routingAccessoryView];
  [routingAccessoryView4 setState:v51];

  subtitleStateController3 = [cellCopy subtitleStateController];
  protocolName5 = [cellCopy protocolName];
  protocolIcon5 = [cellCopy protocolIcon];
  [subtitleStateController3 setText:protocolName5 icon:protocolIcon5 forState:6];

  mediaPlaybackState3 = [device mediaPlaybackState];
  subtitleStateController4 = [cellCopy subtitleStateController];
  nowPlayingSubtitle3 = [device nowPlayingSubtitle];
  if (mediaPlaybackState3 == 2)
  {
    v66 = 2;
  }

  else
  {
    v66 = 1;
  }

  [subtitleStateController4 setText:nowPlayingSubtitle3 forState:3 accessory:v66];

LABEL_109:
  [cellCopy setDelegate:self];
  [(MRURoutingViewController *)self contentEdgeInsets];
  [cellCopy setContentEdgeInsets:?];
  stylingProvider = [(MRURoutingViewController *)self stylingProvider];
  [cellCopy setStylingProvider:stylingProvider];
}

id __66__MRURoutingViewController_updateVendorSpecificCell_forIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAirPlayRoute])
  {
    v4 = [v3 underlyingNativeRoute];
    v5 = [v4 isMacRoute];

    if (v5)
    {
      v6 = MEMORY[0x1E6970490];
      v7 = [v3 underlyingNativeRoute];
      v8 = [v6 _symbolImageForRoute:v7];
      [*(a1 + 32) setIconImage:v8];
    }

    v9 = *(*(a1 + 40) + 1056);
    v10 = [v3 underlyingNativeRoute];
    LOBYTE(v9) = [v9 containsObject:v10];

    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = *(*(a1 + 40) + 1104);
    v13 = [v3 routeUID];
    LODWORD(v12) = [v12 containsObject:v13];

    if (!v12)
    {
LABEL_5:
      v11 = 0;
      goto LABEL_8;
    }
  }

  v11 = v3;
LABEL_8:

  return v11;
}

id __66__MRURoutingViewController_updateVendorSpecificCell_forIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isAirPlayRoute];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = *(v5 + 1048);
    v7 = [v3 underlyingNativeRoute];
    LOBYTE(v6) = [v6 containsObject:v7];

    if ((v6 & 1) == 0)
    {
LABEL_3:
      v8 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = *(v5 + 1112);
    v10 = [v3 routeUID];
    LODWORD(v9) = [v9 containsObject:v10];

    if (!v9)
    {
      goto LABEL_3;
    }
  }

  v8 = v3;
LABEL_6:

  return v8;
}

- (void)updateVendorSpecificCustomRowCell:(id)cell forIndexPath:(id)path
{
  v15 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  cellCopy = cell;
  v8 = MCLogCategoryDeviceAccess(cellCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = pathCopy;
    _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "updateVendorSpecificCustomRowCell forIndexPath: %@", &v13, 0xCu);
  }

  v9 = [(MPSectionedCollection *)self->_routingViewItems itemAtIndexPath:pathCopy];
  image = [v9 image];
  [cellCopy setIconImage:image];

  localizedTitle = [v9 localizedTitle];
  [cellCopy setTitle:localizedTitle];

  [(MRURoutingViewController *)self contentEdgeInsets];
  [cellCopy setContentEdgeInsets:?];
  stylingProvider = [(MRURoutingViewController *)self stylingProvider];
  [cellCopy setStylingProvider:stylingProvider];
}

- (void)updateVendorSpecificSpeakerGroupCell:(id)cell forIndexPath:(id)path
{
  v21 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  cellCopy = cell;
  v8 = MCLogCategoryDeviceAccess(cellCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = pathCopy;
    _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "updateVendorSpecificSpeakerGroupCell forIndexPath: %@", &v19, 0xCu);
  }

  v9 = [(MPSectionedCollection *)self->_routingViewItems itemAtIndexPath:pathCopy];
  [cellCopy setEnabled:1];
  [cellCopy setShowChevron:1];
  [cellCopy setShowChevronExpanded:self->_didExpandVendorSpecificSpeakerGroup];
  leader = [v9 leader];
  v11 = MEMORY[0x1E69DCAB8];
  v12 = [(MRURoutingViewController *)self symbolNameForVendorSpecificRoute:leader];
  v13 = [v11 systemImageNamed:v12];
  [cellCopy setIconImage:v13];

  [cellCopy setDelegate:self];
  localizedTitle = [v9 localizedTitle];
  [cellCopy setTitle:localizedTitle];

  subtitleStateController = [cellCopy subtitleStateController];
  localizedSubtitle = [v9 localizedSubtitle];
  [subtitleStateController setText:localizedSubtitle forState:4];

  routingAccessoryView = [cellCopy routingAccessoryView];
  [routingAccessoryView setState:4];

  [(MRURoutingViewController *)self contentEdgeInsets];
  [cellCopy setContentEdgeInsets:?];
  stylingProvider = [(MRURoutingViewController *)self stylingProvider];
  [cellCopy setStylingProvider:stylingProvider];
}

- (void)updateCell:(id)cell forIndexPath:(id)path
{
  v78 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  v7 = [(MPSectionedCollection *)self->_routingViewItems itemAtIndexPath:path];
  mainRoute = [v7 mainRoute];
  routeUID = [mainRoute routeUID];
  image = [v7 image];
  if (image)
  {

LABEL_3:
    image2 = [v7 image];
    goto LABEL_4;
  }

  mainRoute2 = [v7 mainRoute];

  if (!mainRoute2)
  {
    goto LABEL_3;
  }

  type = [v7 type];
  v35 = MEMORY[0x1E6970490];
  if (type == 1)
  {
    routes = [v7 routes];
    v36 = [v35 _symbolImageForRoutes:routes];
    [cellCopy setIconImage:v36];

    goto LABEL_5;
  }

  image2 = [MEMORY[0x1E6970490] _symbolImageForRoute:mainRoute];
LABEL_4:
  routes = image2;
  [cellCopy setIconImage:image2];
LABEL_5:

  if (!-[MRURoutingViewController routesContainMultipleBuiltIn:](self, "routesContainMultipleBuiltIn:", self->_cachedDisplayableAvailableRoutes) && ([mainRoute routeSubtype] == 1 || objc_msgSend(mainRoute, "routeSubtype") == 3))
  {
    localizedTitle = MSVCopyLocalizedModelName();
  }

  else
  {
    localizedTitle = [v7 localizedTitle];
  }

  v14 = localizedTitle;
  [cellCopy setTitle:localizedTitle];

  subtitleStateController = [cellCopy subtitleStateController];
  v16 = [mainRoute routingBatteryTextWithFormatter:self->_percentageFormatter];
  [subtitleStateController setText:v16 forState:1];

  subtitleStateController2 = [cellCopy subtitleStateController];
  routingPairedDeviceText = [mainRoute routingPairedDeviceText];
  [subtitleStateController2 setText:routingPairedDeviceText forState:2];

  subtitleStateController3 = [cellCopy subtitleStateController];
  localizedSubtitle = [v7 localizedSubtitle];
  [subtitleStateController3 setText:localizedSubtitle forState:4];

  if (routeUID)
  {
    v21 = [(NSDictionary *)self->_indexedNowPlayingControllers objectForKeyedSubscript:routeUID];
    metadataController = [v21 metadataController];
    nowPlayingInfo = [metadataController nowPlayingInfo];

    v24 = [(MRURoutingViewController *)self subtitleAccessoryForItem:v7 nowPlayingInfo:nowPlayingInfo];
    subtitleStateController4 = [cellCopy subtitleStateController];
    v26 = [nowPlayingInfo stringForComponents:59];
    [subtitleStateController4 setText:v26 forState:3 accessory:v24];
  }

  mainRoute3 = [v7 mainRoute];
  v72 = routeUID;
  if (mainRoute3)
  {
    v28 = mainRoute3;
    currentSettings = [MEMORY[0x1E69B0B28] currentSettings];
    addDebugBadgeToRecommendedRoutes = [currentSettings addDebugBadgeToRecommendedRoutes];

    if (addDebugBadgeToRecommendedRoutes)
    {
      mainRoute4 = [v7 mainRoute];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        outputDevice = [mainRoute4 outputDevice];
      }

      else
      {
        outputDevice = 0;
      }

      v70 = mainRoute4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37 = outputDevice;
      }

      else
      {
        v37 = 0;
      }

      v38 = v37;
      recommendation = [v38 recommendation];
      reason = [recommendation reason];
      v41 = reason;
      v42 = @"(no reason provided)";
      if (reason)
      {
        v42 = reason;
      }

      v43 = v42;

      recommendation2 = [v38 recommendation];
      sortingHint = [recommendation2 sortingHint];

      if (sortingHint)
      {
        v46 = MEMORY[0x1E696AEC0];
        recommendation3 = [v38 recommendation];
        sortingHint2 = [recommendation3 sortingHint];
        v49 = [v46 stringWithFormat:@"Hint: %@, %@", sortingHint2, v43];

        v43 = v49;
      }

      subtitleStateController5 = [cellCopy subtitleStateController];
      [subtitleStateController5 setText:v43 forState:5];
    }
  }

  mainRoute5 = [v7 mainRoute];
  routeUID2 = [mainRoute5 routeUID];
  [cellCopy setAccessibilityIdentifier:routeUID2];

  if ([mainRoute isSplitterCapable])
  {
    v53 = [(MRURoutingViewController *)self routesContainSplitterCapableRoute:self->_cachedDisplayAsPickedRoutes];
LABEL_32:
    v54 = v53;
    goto LABEL_34;
  }

  if ([mainRoute supportsAirPlayGrouping])
  {
    v53 = [(MRURoutingViewController *)self routesContainAirPlayGroupableRoute:self->_cachedDisplayAsPickedRoutes];
    goto LABEL_32;
  }

  v54 = 0;
LABEL_34:
  type2 = [v7 type];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  routes2 = [v7 routes];
  v56 = [routes2 countByEnumeratingWithState:&v73 objects:v77 count:16];
  if (!v56)
  {

    if (![(MRURoutingViewController *)self shouldSuppressNativeRoutesStatusDisplay])
    {
      goto LABEL_50;
    }

LABEL_45:
    routingAccessoryView = [cellCopy routingAccessoryView];
    [routingAccessoryView setState:0];
    v65 = v72;
LABEL_55:

    goto LABEL_56;
  }

  v57 = v56;
  v68 = v54;
  v69 = cellCopy;
  v58 = 0;
  v59 = 0;
  v60 = *v74;
  do
  {
    for (i = 0; i != v57; ++i)
    {
      if (*v74 != v60)
      {
        objc_enumerationMutation(routes2);
      }

      v62 = *(*(&v73 + 1) + 8 * i);
      v59 |= [(NSArray *)self->_cachedDisplayAsPickedRoutes containsObject:v62];
      v58 |= [(NSArray *)self->_cachedPendingPickedRoutes containsObject:v62];
    }

    v57 = [routes2 countByEnumeratingWithState:&v73 objects:v77 count:16];
  }

  while (v57);

  cellCopy = v69;
  v54 = v68;
  if ([(MRURoutingViewController *)self shouldSuppressNativeRoutesStatusDisplay])
  {
    goto LABEL_45;
  }

  if (v58)
  {
    v63 = 2;
    goto LABEL_51;
  }

  if ((v59 & 1) == 0)
  {
LABEL_50:
    v63 = v54;
    goto LABEL_51;
  }

  if (v68)
  {
    v63 = 4;
  }

  else
  {
    v63 = 3;
  }

LABEL_51:
  v65 = v72;
  routingAccessoryView2 = [cellCopy routingAccessoryView];
  [routingAccessoryView2 setState:v63];

  if ([(NSArray *)self->_cachedVolumeCapableRoutes containsObject:mainRoute]&& v72 && type2 != 1)
  {
    routingAccessoryView = [(NSDictionary *)self->_outputDeviceVolumeControllers objectForKey:v72];
    [cellCopy setVolumeController:routingAccessoryView];
    goto LABEL_55;
  }

LABEL_56:
  [cellCopy setDelegate:self];
  [cellCopy setShowChevron:{objc_msgSend(v7, "isExpandable")}];
  [cellCopy setShowChevronExpanded:{-[NSMutableSet containsObject:](self->_expandedRouteUIDs, "containsObject:", v65)}];
  [cellCopy setIndentationLevel:{objc_msgSend(v7, "nestedLevel")}];
  [cellCopy setEnabled:{objc_msgSend(v7, "enabled")}];
  [(MRURoutingViewController *)self contentEdgeInsets];
  [cellCopy setContentEdgeInsets:?];
  stylingProvider = [(MRURoutingViewController *)self stylingProvider];
  [cellCopy setStylingProvider:stylingProvider];
}

- (void)updateHeaderView:(id)view forSection:(int64_t)section
{
  routingViewItems = self->_routingViewItems;
  viewCopy = view;
  v8 = [(MPSectionedCollection *)routingViewItems sectionAtIndex:section];
  [viewCopy setTitle:v8];

  [(MRURoutingViewController *)self contentEdgeInsets];
  [viewCopy setContentEdgeInsets:?];
  stylingProvider = [(MRURoutingViewController *)self stylingProvider];
  [viewCopy setStylingProvider:stylingProvider];
}

- (void)updateNowPlayingControllersForRoutes:(id)routes
{
  v46 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  v27 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(routesCopy, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = routesCopy;
  v5 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v41;
    v28 = *v41;
    do
    {
      v8 = 0;
      v29 = v6;
      do
      {
        if (*v41 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v40 + 1) + 8 * v8);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v31 = v8;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = self->_nowPlayingControllers;
          v10 = [(NSArray *)v34 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v37;
            v32 = v9;
            while (2)
            {
              v13 = 0;
              v33 = v11;
              do
              {
                if (*v37 != v12)
                {
                  objc_enumerationMutation(v34);
                }

                v14 = *(*(&v36 + 1) + 8 * v13);
                identifier = [v14 identifier];
                endpointController = [v14 endpointController];
                routeUID = [v9 routeUID];
                if ([endpointController containsOutputDeviceWithRouteUID:routeUID] && (objc_msgSend(v9, "routeUID"), (v18 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v19 = v18;
                  v20 = v12;
                  [(MRURoutingViewController *)self endpointRoute];
                  v22 = v21 = self;
                  routeUID2 = [v22 routeUID];
                  if (![routeUID2 isEqualToString:identifier])
                  {

                    self = v21;
                    v9 = v32;
LABEL_22:
                    routeUID3 = [v9 routeUID];
                    [v27 setObject:v14 forKeyedSubscript:routeUID3];

                    [v14 addObserver:self];
                    goto LABEL_23;
                  }

                  showMetadataForEndpointRoute = v21->_showMetadataForEndpointRoute;

                  self = v21;
                  v12 = v20;
                  v9 = v32;
                  v11 = v33;
                  if (showMetadataForEndpointRoute)
                  {
                    goto LABEL_22;
                  }
                }

                else
                {
                }

                ++v13;
              }

              while (v11 != v13);
              v11 = [(NSArray *)v34 countByEnumeratingWithState:&v36 objects:v44 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

LABEL_23:

          v7 = v28;
          v6 = v29;
          v8 = v31;
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v6);
  }

  v25 = [v27 copy];
  indexedNowPlayingControllers = self->_indexedNowPlayingControllers;
  self->_indexedNowPlayingControllers = v25;
}

- (void)updateMetadata
{
  v42 = *MEMORY[0x1E69E9840];
  if (self->_onScreen)
  {
    selfCopy = self;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    view = [(MRURoutingViewController *)self view];
    tableView = [view tableView];
    indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

    obj = indexPathsForVisibleRows;
    v6 = [indexPathsForVisibleRows countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v38;
      v9 = &OBJC_IVAR___MediaControlsPresentationController__presentingView;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v38 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v37 + 1) + 8 * i);
          v12 = [*(&selfCopy->super.super.super.isa + v9[304]) safeItemAtIndexPath:v11];
          type = [v12 type];
          type2 = [v12 type];
          type3 = [v12 type];
          type4 = [v12 type];
          if (type != 3 && type2 != 4 && type3 != 5 && type4 != 6)
          {
            indexedNowPlayingControllers = selfCopy->_indexedNowPlayingControllers;
            mainRoute = [v12 mainRoute];
            routeUID = [mainRoute routeUID];
            v36 = [(NSDictionary *)indexedNowPlayingControllers objectForKeyedSubscript:routeUID];

            view2 = [(MRURoutingViewController *)selfCopy view];
            tableView2 = [view2 tableView];
            v35 = [tableView2 cellForRowAtIndexPath:v11];

            metadataController = [v36 metadataController];
            nowPlayingInfo = [metadataController nowPlayingInfo];

            v27 = [(MRURoutingViewController *)selfCopy subtitleAccessoryForItem:v12 nowPlayingInfo:nowPlayingInfo];
            [v35 subtitleStateController];
            v28 = selfCopy;
            v29 = v9;
            v31 = v30 = v8;
            [nowPlayingInfo stringForComponents:59];
            v33 = v32 = v7;
            [v31 setText:v33 forState:3 accessory:v27];

            v7 = v32;
            v8 = v30;
            v9 = v29;
            selfCopy = v28;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v7);
    }
  }
}

- (void)updateMetadataForNowPlayingController:(id)controller
{
  v37 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  view = [(MRURoutingViewController *)self view];
  tableView = [view tableView];
  indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = indexPathsForVisibleRows;
  v31 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v31)
  {
    v9 = *v33;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [(MPSectionedCollection *)self->_routingViewItems safeItemAtIndexPath:v11, v30];
        mainRoute = [v12 mainRoute];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          indexedNowPlayingControllers = self->_indexedNowPlayingControllers;
          mainRoute2 = [v12 mainRoute];
          routeUID = [mainRoute2 routeUID];
          v18 = [(NSDictionary *)indexedNowPlayingControllers objectForKeyedSubscript:routeUID];

          if (v18 == controllerCopy)
          {
            view2 = [(MRURoutingViewController *)self view];
            tableView2 = [view2 tableView];
            v30 = [tableView2 cellForRowAtIndexPath:v11];

            metadataController = [controllerCopy metadataController];
            nowPlayingInfo = [metadataController nowPlayingInfo];

            v23 = [(MRURoutingViewController *)self subtitleAccessoryForItem:v12 nowPlayingInfo:nowPlayingInfo];
            subtitleStateController = [v30 subtitleStateController];
            [nowPlayingInfo stringForComponents:59];
            selfCopy = self;
            v26 = v9;
            v27 = v8;
            v29 = v28 = controllerCopy;
            [subtitleStateController setText:v29 forState:3 accessory:v23];

            controllerCopy = v28;
            v8 = v27;
            v9 = v26;
            self = selfCopy;
          }
        }
      }

      v31 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v31);
  }
}

- (void)updateSubtitle
{
  onScreen = self->_onScreen;
  subtitleUpdateTimer = self->_subtitleUpdateTimer;
  if (onScreen)
  {
    if (!subtitleUpdateTimer)
    {
      v5 = objc_alloc(MEMORY[0x1E6970A50]);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __42__MRURoutingViewController_updateSubtitle__block_invoke;
      v9[3] = &unk_1E7663898;
      v9[4] = self;
      v6 = [v5 initWithInterval:MEMORY[0x1E69E96A0] queue:v9 block:0.24 * 2.0 + 4.0];
      v7 = self->_subtitleUpdateTimer;
      self->_subtitleUpdateTimer = v6;
    }
  }

  else
  {
    [(MPWeakTimer *)subtitleUpdateTimer invalidate];
    v8 = self->_subtitleUpdateTimer;
    self->_subtitleUpdateTimer = 0;
  }
}

void __42__MRURoutingViewController_updateSubtitle__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) view];
  v3 = [v2 tableView];
  v4 = [v3 indexPathsForVisibleRows];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [*(a1 + 32) view];
        v11 = [v10 tableView];
        v12 = [v11 cellForRowAtIndexPath:v9];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v12 transitionToNextVisibleStateWithDuration:0.24];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (int64_t)subtitleAccessoryForItem:(id)item nowPlayingInfo:(id)info
{
  itemCopy = item;
  infoCopy = info;
  type = [itemCopy type];
  if (type == 1)
  {
    if ([infoCopy isPlaying])
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }
  }

  else if (type)
  {
    v9 = 0;
  }

  else if ([infoCopy isPlaying])
  {
    mainRoute = [itemCopy mainRoute];
    if ([mainRoute isProxyGroupPlayer])
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)_wouldShareAudioForPickedRoute:(id)route operation:(int64_t)operation pickedRoutes:(id)routes
{
  routeCopy = route;
  routesCopy = routes;
  firstObject = [routesCopy firstObject];
  if (operation == 1 && [routesCopy count] == 1 && objc_msgSend(routeCopy, "supportsGrouping"))
  {
    supportsGrouping = [firstObject supportsGrouping];
  }

  else
  {
    supportsGrouping = 0;
  }

  return supportsGrouping;
}

- (BOOL)_wouldEndGroupSessionForViewItem:(id)item operation:(int64_t)operation pickedRoutes:(id)routes
{
  routesCopy = routes;
  routes = [item routes];
  v9 = [routesCopy mutableCopy];
  switch(operation)
  {
    case 0:
      goto LABEL_9;
    case 1:
      firstObject = [routesCopy firstObject];
      if ([firstObject supportsGrouping])
      {
        firstObject2 = [routes firstObject];
        supportsGrouping = [firstObject2 supportsGrouping];

        if (supportsGrouping)
        {
          v19 = [routesCopy arrayByAddingObjectsFromArray:routes];
          break;
        }
      }

      else
      {
      }

LABEL_9:
      v20 = [routes mutableCopy];

      v9 = v20;
      break;
    case 2:
      v10 = MEMORY[0x1E695DFD8];
      v11 = [routes msv_map:&__block_literal_global_214];
      v12 = [v10 setWithArray:v11];

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __84__MRURoutingViewController__wouldEndGroupSessionForViewItem_operation_pickedRoutes___block_invoke_2;
      v24[3] = &unk_1E7664D38;
      v25 = v12;
      v13 = v12;
      v14 = [v9 msv_filter:v24];
      v15 = [v14 mutableCopy];

      v9 = v15;
      break;
  }

  v21 = [v9 msv_compactMap:&__block_literal_global_218];
  v22 = MRGroupSessionRouteTypeForOutputDevices() == 0;

  return v22;
}

uint64_t __84__MRURoutingViewController__wouldEndGroupSessionForViewItem_operation_pickedRoutes___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 routeUID];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (void)handleGroupSessionJoinWithPickedRoute:(id)route
{
  v11[3] = *MEMORY[0x1E69E9840];
  routeCopy = route;
  v4 = *MEMORY[0x1E69B0938];
  v11[0] = &unk_1F148B208;
  v5 = *MEMORY[0x1E69B0930];
  v10[0] = v4;
  v10[1] = v5;
  discoveredGroupSession = [routeCopy discoveredGroupSession];
  identifier = [discoveredGroupSession identifier];
  v10[2] = *MEMORY[0x1E69B0940];
  v11[1] = identifier;
  v11[2] = MEMORY[0x1E695E118];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v9 = routeCopy;
  MRGroupSessionSendEvent();
}

void __66__MRURoutingViewController_handleGroupSessionJoinWithPickedRoute___block_invoke(int8x16_t *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = MCLogCategoryDefault(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = a1[2].i64[0];
      *buf = 138543362;
      v10 = v4;
      _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_ERROR, "[MRURoutingViewController] Failed to launch Music for group session: %{public}@", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MRURoutingViewController_handleGroupSessionJoinWithPickedRoute___block_invoke_221;
  block[3] = &unk_1E76639D0;
  v6 = a1[2];
  v5 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __66__MRURoutingViewController_handleGroupSessionJoinWithPickedRoute___block_invoke_221(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v6 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E6970498] itemWithRoute:*(a1 + 40)];
    [v6 routingViewController:v4 didSelectRoutingViewItem:v5];
  }
}

- (void)_displayShareAudioDisabledAlertForReason:(id)reason
{
  v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:reason preferredStyle:1];
  v4 = MEMORY[0x1E69DC648];
  v5 = +[MRUStringsProvider ok];
  v6 = [v4 actionWithTitle:v5 style:0 handler:0];
  [v7 addAction:v6];

  [(MRURoutingViewController *)self showViewController:v7 sender:self];
}

- (void)_displayEndGroupSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = +[MRUStringsProvider groupSessionEndTitle];
  v5 = +[MRUStringsProvider groupSessionEndBody];
  v6 = +[MRUStringsProvider groupSessionEndConfirm];
  v7 = +[MRUStringsProvider groupSessionEndCancel];
  [(MRURoutingViewController *)self _displayGroupSessionAlertWithTitle:v8 body:v5 confirmTitle:v6 cancelTitle:v7 completion:completionCopy];
}

- (void)_displayGroupSessionAlertWithTitle:(id)title body:(id)body confirmTitle:(id)confirmTitle cancelTitle:(id)cancelTitle completion:(id)completion
{
  completionCopy = completion;
  v13 = MEMORY[0x1E69DC650];
  cancelTitleCopy = cancelTitle;
  confirmTitleCopy = confirmTitle;
  v16 = [v13 alertControllerWithTitle:title message:body preferredStyle:1];
  v17 = MEMORY[0x1E69DC648];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __104__MRURoutingViewController__displayGroupSessionAlertWithTitle_body_confirmTitle_cancelTitle_completion___block_invoke;
  v28[3] = &unk_1E7664CA0;
  v18 = completionCopy;
  v29 = v18;
  v19 = [v17 actionWithTitle:confirmTitleCopy style:2 handler:v28];

  [v16 addAction:v19];
  v20 = MEMORY[0x1E69DC648];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __104__MRURoutingViewController__displayGroupSessionAlertWithTitle_body_confirmTitle_cancelTitle_completion___block_invoke_2;
  v26 = &unk_1E7664CA0;
  v27 = v18;
  v21 = v18;
  v22 = [v20 actionWithTitle:cancelTitleCopy style:0 handler:&v23];

  [v16 addAction:{v22, v23, v24, v25, v26}];
  [(MRURoutingViewController *)self showViewController:v16 sender:self];
}

- (void)_setNeedsRouteDiscoveryModeUpdate
{
  if (self->_onScreen)
  {
    discoveryMode = self->_discoveryMode;
  }

  else
  {
    discoveryMode = 0;
  }

  if ([(MPAVRoutingController *)self->_routingController discoveryMode]!= discoveryMode)
  {
    [(MPAVRoutingController *)self->_routingController setDiscoveryMode:discoveryMode];

    notify_post("com.apple.airplay.startlogging");
  }
}

- (void)_setNeedsDisplayedRoutesUpdate
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__MRURoutingViewController__setNeedsDisplayedRoutesUpdate__block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_setupUpdateTimerIfNecessary
{
  if (self->_onScreen && !self->_updateTimer)
  {
    v3 = MEMORY[0x1E69E96A0];
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x1E6970A50]);
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __56__MRURoutingViewController__setupUpdateTimerIfNecessary__block_invoke;
    v10 = &unk_1E7663AE8;
    objc_copyWeak(&v11, &location);
    v5 = [v4 initWithInterval:MEMORY[0x1E69E96A0] queue:&v7 block:2.0];
    updateTimer = self->_updateTimer;
    self->_updateTimer = v5;

    [(MRURoutingViewController *)self _updateDisplayedRoutes:v7];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __56__MRURoutingViewController__setupUpdateTimerIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained needsDisplayedRoutesUpdate])
  {
    [WeakRetained _updateDisplayedRoutes];
  }
}

- (void)_updateGroupSessionDiscovery
{
  presentingAppBundleID = self->_presentingAppBundleID;
  if (presentingAppBundleID)
  {
    v4 = presentingAppBundleID;
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    v4 = bundleIdentifier;
  }

  v10 = v4;
  v6 = MRBundlePermittedForGroupSessions();
  groupSessionDiscovery = self->_groupSessionDiscovery;
  if (v6)
  {
    if (!groupSessionDiscovery)
    {
      v8 = [objc_alloc(MEMORY[0x1E69B0A38]) initWithDelegate:self];
      [(MRURoutingViewController *)self setGroupSessionDiscovery:v8];
    }
  }

  else if (groupSessionDiscovery)
  {
    [(MRURoutingViewController *)self setGroupSessionDiscovery:0];
  }
}

- (id)_displayableRoutesInRoutes:(id)routes
{
  routesCopy = routes;
  currentSettings = [MEMORY[0x1E69B0B28] currentSettings];
  supportRouteRecommendations = [currentSettings supportRouteRecommendations];

  if (supportRouteRecommendations)
  {
    v7 = [(MRURoutingViewController *)self _recommendedRoutesFromRoutes:routesCopy];

    routesCopy = v7;
  }

  v8 = [MEMORY[0x1E695DF70] arrayWithArray:routesCopy];
  currentSettings2 = [MEMORY[0x1E69B0B28] currentSettings];
  routePickerAirPlayAllowList = [currentSettings2 routePickerAirPlayAllowList];

  currentSettings3 = [MEMORY[0x1E69B0B28] currentSettings];
  routePickerAirPlayDenyList = [currentSettings3 routePickerAirPlayDenyList];

  if ([routePickerAirPlayAllowList count])
  {
    v13 = v21;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v14 = __55__MRURoutingViewController__displayableRoutesInRoutes___block_invoke;
    v15 = routePickerAirPlayAllowList;
  }

  else
  {
    if (![routePickerAirPlayDenyList count])
    {
      goto LABEL_8;
    }

    v13 = v20;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v14 = __55__MRURoutingViewController__displayableRoutesInRoutes___block_invoke_2;
    v15 = routePickerAirPlayDenyList;
  }

  v13[2] = v14;
  v13[3] = &unk_1E7664D38;
  v13[4] = v15;
  v16 = [routesCopy msv_filter:v13];
  v17 = [v16 mutableCopy];

  v8 = v17;
LABEL_8:
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __55__MRURoutingViewController__displayableRoutesInRoutes___block_invoke_3;
  v19[3] = &unk_1E7664DA8;
  v19[4] = self;
  v19[5] = 577;
  [v8 sortUsingComparator:v19];

  return v8;
}

uint64_t __55__MRURoutingViewController__displayableRoutesInRoutes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAirPlayRoute])
  {
    v4 = *(a1 + 32);
    v5 = [v3 routeUID];
    v6 = [v4 containsObject:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t __55__MRURoutingViewController__displayableRoutesInRoutes___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAirPlayRoute])
  {
    v4 = *(a1 + 32);
    v5 = [v3 routeUID];
    v6 = [v4 containsObject:v5] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t __55__MRURoutingViewController__displayableRoutesInRoutes___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (*(v7 + 1145) == 1)
  {
    v8 = [*(v7 + 1040) indexOfObject:v5];
    v9 = [*(*(a1 + 32) + 1040) indexOfObject:v6];
    v10 = v8 < v9 ? -1 : 1;
    if (v8 != 0x7FFFFFFFFFFFFFFFLL && v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_69;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = [*(*(a1 + 32) + 1176) dataSource];
      v42 = [v18 routeIsLeaderOfEndpoint:v5];

      v19 = [*(*(a1 + 32) + 1176) dataSource];
      v41 = [v19 routeIsLeaderOfEndpoint:v6];

      v46 = [v5 supportsGrouping];
      v45 = [v6 supportsGrouping];
      v44 = [v5 isHomePodRoute];
      v43 = [v6 isHomePodRoute];
      v53 = [v5 isW1Route];
      v52 = [v6 isW1Route];
      v55 = [v5 isH1Route];
      v54 = [v6 isH1Route];
      v57 = [v5 isDisplayedAsPicked];
      v56 = [v6 isDisplayedAsPicked];
      if ([v5 isAppleTVRoute] & 1) != 0 || (objc_msgSend(v5, "isTVRoute"))
      {
        v50 = 1;
      }

      else
      {
        v50 = [v5 containsDeviceWithSubtype:18];
      }

      if ([v6 isAppleTVRoute] & 1) != 0 || (objc_msgSend(v6, "isTVRoute"))
      {
        v49 = 1;
      }

      else
      {
        v49 = [v6 containsDeviceWithSubtype:18];
      }

      v48 = [v5 supportsGrouping];
      v47 = [v6 supportsGrouping];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v5;
      }

      else
      {
        v20 = 0;
      }

      v16 = v20;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v6;
      }

      else
      {
        v21 = 0;
      }

      v17 = v21;
      v22 = [v16 outputDevice];
      v23 = [v22 recommendation];
      v59 = [v23 sortingHint];

      v24 = [v17 outputDevice];
      v25 = [v24 recommendation];
      v58 = [v25 sortingHint];

      v26 = [v16 outputDevice];
      v27 = [v26 recommendation];
      v51 = [v27 isConservativelyFiltered];

      v28 = [v17 outputDevice];
      v29 = [v28 recommendation];
      v30 = [v29 isConservativelyFiltered];

      v31 = [v16 outputDevice];
      v32 = [v31 isActivatedForContinuityScreen];

      v33 = [v17 outputDevice];
      v34 = [v33 isActivatedForContinuityScreen];

      if ([*(a1 + 32) sortByIsVideoRoute])
      {
        LOBYTE(v35) = 0;
      }

      else
      {
        v35 = [*(*(a1 + 32) + 1176) representsLongFormVideoContent] ^ 1;
      }

      if (![v5 pickableRouteType] && objc_msgSend(v6, "pickableRouteType"))
      {
        goto LABEL_64;
      }

      if (![v6 pickableRouteType] && objc_msgSend(v5, "pickableRouteType"))
      {
LABEL_66:
        v10 = 1;
        goto LABEL_67;
      }

      if (v34 & 1 | ((v32 & 1) == 0))
      {
        if (!(v32 & 1 | ((v34 & 1) == 0)))
        {
          goto LABEL_66;
        }

        if (v56 & 1 | ((v57 & 1) == 0))
        {
          if (!(v57 & 1 | ((v56 & 1) == 0)))
          {
            goto LABEL_66;
          }

          if (v54 & 1 | ((v55 & 1) == 0))
          {
            if (!(v55 & 1 | ((v54 & 1) == 0)))
            {
              goto LABEL_66;
            }

            if (v52 & 1 | ((v53 & 1) == 0))
            {
              if (!(v53 & 1 | ((v52 & 1) == 0)))
              {
                goto LABEL_66;
              }

              if (![v5 isKnown] || objc_msgSend(v6, "isKnown"))
              {
                if ([v5 isKnown] & 1) == 0 && (objc_msgSend(v6, "isKnown"))
                {
                  goto LABEL_66;
                }

                if (v51 & 1 | ((v30 & 1) == 0))
                {
                  if (!(v30 & 1 | ((v51 & 1) == 0)))
                  {
                    goto LABEL_66;
                  }

                  if (![v5 isNearby] || objc_msgSend(v6, "isNearby"))
                  {
                    if ([v5 isNearby] & 1) == 0 && (objc_msgSend(v6, "isNearby"))
                    {
                      goto LABEL_66;
                    }

                    if (!v59 || v58)
                    {
                      if (!v59 && v58)
                      {
                        goto LABEL_66;
                      }

                      if (v59 && v58)
                      {
                        v10 = [v59 compare:v58];
LABEL_67:

                        goto LABEL_68;
                      }

                      if (v35 & 1 | ((v48 & v50 & 1) == 0) | v47 & v49 & 1)
                      {
                        if (!(v35 & 1 | ((v47 & v49 & 1) == 0) | v48 & v50 & 1))
                        {
                          goto LABEL_66;
                        }

                        if (v45 & 1 | ((v46 & 1) == 0))
                        {
                          if (!(v46 & 1 | ((v45 & 1) == 0)))
                          {
                            goto LABEL_66;
                          }

                          if (v35 & 1 | ((v50 & 1) == 0) | v49 & 1)
                          {
                            if (!(v35 & 1 | ((v49 & 1) == 0) | v50 & 1))
                            {
                              goto LABEL_66;
                            }

                            if (v43 & 1 | ((v44 & 1) == 0))
                            {
                              if (!(v44 & 1 | ((v43 & 1) == 0)))
                              {
                                goto LABEL_66;
                              }

                              if (v41 & 1 | ((v42 & 1) == 0))
                              {
                                if (v42 & 1 | ((v41 & 1) == 0))
                                {
                                  v37 = [v5 routeName];
                                  v38 = [v6 routeName];
                                  v10 = [v37 compare:v38 options:*(a1 + 40)];

                                  if (!v10)
                                  {
                                    v39 = [v5 routeUID];
                                    v40 = [v6 routeUID];
                                    v10 = [v39 compare:v40 options:*(a1 + 40)];
                                  }

                                  goto LABEL_67;
                                }

                                goto LABEL_66;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_64:
      v10 = -1;
      goto LABEL_67;
    }
  }

  v12 = [v5 isDisplayedAsPicked];
  v13 = [v6 isDisplayedAsPicked];
  if (v12 && !v13)
  {
    v10 = -1;
    goto LABEL_69;
  }

  if (!(v12 & 1 | ((v13 & 1) == 0)))
  {
    v10 = 1;
    goto LABEL_69;
  }

  v14 = [v5 routeName];
  v15 = [v6 routeName];
  v10 = [v14 compare:v15 options:*(a1 + 40)];

  if (!v10)
  {
    v16 = [v5 routeUID];
    v17 = [v6 routeUID];
    v10 = [v16 compare:v17 options:*(a1 + 40)];
LABEL_68:
  }

LABEL_69:

  return v10;
}

- (id)_recommendedRoutesFromRoutes:(id)routes
{
  routesCopy = routes;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__MRURoutingViewController__recommendedRoutesFromRoutes___block_invoke_3;
  v7[3] = &unk_1E7664E38;
  v8 = routesCopy;
  v9 = &__block_literal_global_229;
  v4 = routesCopy;
  v5 = [v4 msv_compactMap:v7];

  return v5;
}

id __57__MRURoutingViewController__recommendedRoutesFromRoutes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__MRURoutingViewController__recommendedRoutesFromRoutes___block_invoke_2;
  v8[3] = &unk_1E7664DF0;
  v9 = v4;
  v5 = v4;
  v6 = [a3 msv_compactMap:v8];

  return v6;
}

id __57__MRURoutingViewController__recommendedRoutesFromRoutes___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAirPlayRoute])
  {
    v4 = [v3 groupUID];
    v5 = [*(a1 + 32) groupUID];
    if (([v4 isEqualToString:v5] & 1) != 0 || objc_msgSend(v3, "isEqual:", *(a1 + 32)))
    {
      v6 = v3;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __57__MRURoutingViewController__recommendedRoutesFromRoutes___block_invoke_3(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 isAirPlayRoute])
  {
    v4 = (*(*(a1 + 40) + 16))();
    v5 = [v4 msv_flatMap:&__block_literal_global_232];
    if ([v5 count])
    {
      v6 = +[MRURouteRecommender sharedInstance];
      v7 = [v6 recommendationForGroupedOutputDevices:v5];

      if (!v7)
      {
        v8 = +[MRURouteRecommender sharedInstance];
        [v8 donateGroupedOutputDevices:v5];
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = v5;
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v16;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [*(*(&v15 + 1) + 8 * i) setRecommendation:{v7, v15}];
          }

          v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v11);
      }
    }
  }

  return v3;
}

void *__57__MRURoutingViewController__recommendedRoutesFromRoutes___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 outputDevices];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

- (id)_displayAsPickedRoutesInRoutes:(id)routes
{
  v17 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = routesCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isDisplayedAsPicked])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_airPlayRoutesInRoutes:(id)routes
{
  v17 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = routesCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 isAirPlayRoute])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_mergeRoutes:(id)routes withCoalescedResult:(id)result
{
  v149 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  resultCopy = result;
  v104 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(resultCopy, "count") + objc_msgSend(routesCopy, "count")}];
  v106 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(resultCopy, "count")}];
  v111 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(routesCopy, "count")}];
  v114 = routesCopy;
  v112 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(routesCopy, "count")}];
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  obj = resultCopy;
  v108 = [obj countByEnumeratingWithState:&v137 objects:v148 count:16];
  if (!v108)
  {
    goto LABEL_71;
  }

  v107 = *v138;
  p_superclass = MediaControlsMaterialView.superclass;
  selfCopy = self;
  do
  {
    v9 = 0;
    do
    {
      if (*v138 != v107)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v137 + 1) + 8 * v9);
      endpoints = [v10 endpoints];
      v12 = [endpoints count];

      if (v12 >= 2)
      {
        v13 = [objc_alloc((p_superclass + 64)) initWithDevice:v10];
        v14 = MCLogCategoryDeviceAccess(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          endpoints2 = [v10 endpoints];
          v16 = [endpoints2 count];
          *buf = 134218242;
          v145 = v16;
          v146 = 2112;
          v147 = v13;
          _os_log_impl(&dword_1A20FC000, v14, OS_LOG_TYPE_DEFAULT, "_mergeRoutes - Found a route group with %lu endpoints: %@", buf, 0x16u);
        }

        v109 = v9;
        if ([(MRURoutingViewController *)self isVendorSpecificGroupStatusRecorded:v13])
        {
          [(MRURoutingViewController *)self applyVendorSpecificGroupExpandedRecord:v13];
        }

        else
        {
          [(MRURoutingViewController *)self updateVendorSpecificGroupExpandedRecordFor:v13];
        }

        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        endpoints3 = [v10 endpoints];
        allValues = [endpoints3 allValues];

        v119 = allValues;
        v40 = [allValues countByEnumeratingWithState:&v133 objects:v143 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v134;
          v115 = *v134;
          v116 = v13;
          do
          {
            v43 = 0;
            v118 = v41;
            do
            {
              if (*v134 != v42)
              {
                objc_enumerationMutation(v119);
              }

              v44 = *(*(&v133 + 1) + 8 * v43);
              v45 = objc_alloc((p_superclass + 64));
              underlyingDADevice = [v44 underlyingDADevice];
              v47 = [v45 initWithDevice:underlyingDADevice];

              [v47 setIsPreferredRoute:{objc_msgSend(v44, "selected")}];
              device = [v47 device];

              if (device)
              {
                activatedDeviceIDs = [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager activatedDeviceIDs];
                routeUID = [v47 routeUID];
                [v47 setIsPicked:{objc_msgSend(activatedDeviceIDs, "containsObject:", routeUID)}];

                [v13 addSubRoute:v47];
              }

              else
              {
                v120 = v47;
                v131 = 0u;
                v132 = 0u;
                v129 = 0u;
                v130 = 0u;
                v51 = v114;
                v52 = [v51 countByEnumeratingWithState:&v129 objects:v142 count:16];
                if (v52)
                {
                  v53 = v52;
                  v54 = *v130;
LABEL_26:
                  v55 = 0;
                  while (1)
                  {
                    if (*v130 != v54)
                    {
                      objc_enumerationMutation(v51);
                    }

                    v56 = *(*(&v129 + 1) + 8 * v55);
                    routeUID2 = [v56 routeUID];
                    airplayDeviceID = [v44 airplayDeviceID];
                    v59 = [routeUID2 isEqualToString:airplayDeviceID];

                    if (v59)
                    {
                      break;
                    }

                    if (v53 == ++v55)
                    {
                      v53 = [v51 countByEnumeratingWithState:&v129 objects:v142 count:16];
                      if (v53)
                      {
                        goto LABEL_26;
                      }

                      goto LABEL_32;
                    }
                  }

                  v62 = MCLogCategoryDeviceAccess(v60);
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v145 = v56;
                    _os_log_impl(&dword_1A20FC000, v62, OS_LOG_TYPE_DEFAULT, "_mergeRoutes - Native route that was grouped: %@", buf, 0xCu);
                  }

                  v63 = v56;
                  v47 = v120;
                  [v120 setUnderlyingNativeRoute:v63];

                  v13 = v116;
                  v41 = v118;
                  if (v63)
                  {
                    [v111 addObject:v63];
                    [v112 addObject:v63];
                    [v116 addSubRoute:v120];
                    goto LABEL_39;
                  }
                }

                else
                {
LABEL_32:

                  v13 = v116;
                  v41 = v118;
                  v47 = v120;
                }

                v63 = MCLogCategoryDeviceAccess(v61);
                if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1A20FC000, v63, OS_LOG_TYPE_DEFAULT, "Was unable to find a current native route that matches the record in DA coalesced result", buf, 2u);
                }

LABEL_39:
                self = selfCopy;
                p_superclass = MediaControlsMaterialView.superclass;
                v42 = v115;
              }

              ++v43;
            }

            while (v43 != v41);
            v41 = [v119 countByEnumeratingWithState:&v133 objects:v143 count:16];
          }

          while (v41);
        }

        subroutes = [v13 subroutes];
        v65 = [subroutes count];

        if (v65 >= 2)
        {
          [v106 addObject:v13];
LABEL_65:
          v9 = v109;
          goto LABEL_66;
        }

        subroutes2 = [v13 subroutes];
        v70 = [subroutes2 count];

        if (v70)
        {
          subroutes3 = [v13 subroutes];
          firstObject = [subroutes3 firstObject];
          device2 = [firstObject device];

          if (device2)
          {
            v76 = MCLogCategoryDeviceAccess(v75);
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
            {
              subroutes4 = [v13 subroutes];
              firstObject2 = [subroutes4 firstObject];
              device3 = [firstObject2 device];
              *buf = 138412290;
              v145 = device3;
              _os_log_impl(&dword_1A20FC000, v76, OS_LOG_TYPE_DEFAULT, "Changing group route to single route instead with device: %@", buf, 0xCu);
            }

            v80 = objc_alloc((p_superclass + 64));
            subroutes5 = [v13 subroutes];
            firstObject3 = [subroutes5 firstObject];
            device4 = [firstObject3 device];
            v84 = [v80 initWithDevice:device4];

            activatedDeviceIDs2 = [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager activatedDeviceIDs];
            routeUID3 = [v84 routeUID];
            -[NSObject setIsPicked:](v84, "setIsPicked:", [activatedDeviceIDs2 containsObject:routeUID3]);

            [v106 addObject:v84];
            goto LABEL_63;
          }
        }

        else
        {
          v84 = MCLogCategoryDeviceAccess(v71);
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A20FC000, v84, OS_LOG_TYPE_DEFAULT, "Weird situation, DA coalesced route contains only airplay routes and they have disappeared?", buf, 2u);
          }

LABEL_63:
        }

        [(MRURoutingViewController *)self clearVendorSpecificGroupExpandedRecordFor:v13];
        goto LABEL_65;
      }

      endpoints4 = [v10 endpoints];
      v18 = [endpoints4 count];

      if (v18 == 1)
      {
        endpoints5 = [v10 endpoints];
        allValues2 = [endpoints5 allValues];
        firstObject4 = [allValues2 firstObject];
        underlyingDADevice2 = [firstObject4 underlyingDADevice];

        if (underlyingDADevice2)
        {
          v25 = v9;
          v26 = MCLogCategoryDeviceAccess(v24);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            endpoints6 = [v10 endpoints];
            allValues3 = [endpoints6 allValues];
            firstObject5 = [allValues3 firstObject];
            underlyingDADevice3 = [firstObject5 underlyingDADevice];
            *buf = 138412290;
            v145 = underlyingDADevice3;
            _os_log_impl(&dword_1A20FC000, v26, OS_LOG_TYPE_DEFAULT, "_mergeRoutes - Single Underlying DA route found: %@", buf, 0xCu);
          }

          v31 = objc_alloc((p_superclass + 64));
          endpoints7 = [v10 endpoints];
          allValues4 = [endpoints7 allValues];
          firstObject6 = [allValues4 firstObject];
          underlyingDADevice4 = [firstObject6 underlyingDADevice];
          v13 = [v31 initWithDevice:underlyingDADevice4];

          activatedDeviceIDs3 = [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager activatedDeviceIDs];
          routeUID4 = [v13 routeUID];
          [v13 setIsPicked:{objc_msgSend(activatedDeviceIDs3, "containsObject:", routeUID4)}];

          [v106 addObject:v13];
          v9 = v25;
        }

        else
        {
          v127 = 0u;
          v128 = 0u;
          v125 = 0u;
          v126 = 0u;
          v13 = v114;
          v87 = [v13 countByEnumeratingWithState:&v125 objects:v141 count:16];
          if (v87)
          {
            v88 = v87;
            v121 = v10;
            v117 = v13;
            v110 = v9;
            v89 = *v126;
            while (2)
            {
              for (i = 0; i != v88; ++i)
              {
                if (*v126 != v89)
                {
                  objc_enumerationMutation(v117);
                }

                v91 = *(*(&v125 + 1) + 8 * i);
                routeUID5 = [v91 routeUID];
                endpoints8 = [v121 endpoints];
                allValues5 = [endpoints8 allValues];
                firstObject7 = [allValues5 firstObject];
                airplayDeviceID2 = [firstObject7 airplayDeviceID];
                v97 = [routeUID5 isEqualToString:airplayDeviceID2];

                if (v97)
                {
                  [v112 addObject:v91];
                  goto LABEL_69;
                }
              }

              v88 = [v117 countByEnumeratingWithState:&v125 objects:v141 count:16];
              if (v88)
              {
                continue;
              }

              break;
            }

LABEL_69:
            self = selfCopy;
            p_superclass = (MediaControlsMaterialView + 8);
            v9 = v110;
            v13 = v117;
          }
        }
      }

      else
      {
        v66 = MCLogCategoryDeviceAccess(v19);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v145 = v10;
          _os_log_impl(&dword_1A20FC000, v66, OS_LOG_TYPE_DEFAULT, "_mergeRoutes - Single and UnCoalesced DA route found: %@", buf, 0xCu);
        }

        v13 = [objc_alloc((p_superclass + 64)) initWithDevice:v10];
        activatedDeviceIDs4 = [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager activatedDeviceIDs];
        routeUID6 = [v13 routeUID];
        [v13 setIsPicked:{objc_msgSend(activatedDeviceIDs4, "containsObject:", routeUID6)}];

        [v106 addObject:v13];
      }

LABEL_66:

      ++v9;
    }

    while (v9 != v108);
    v98 = [obj countByEnumeratingWithState:&v137 objects:v148 count:16];
    v108 = v98;
  }

  while (v98);
LABEL_71:

  if ([(MRURoutingViewController *)self canUseUncoalescedResults])
  {
    v99 = v114;
    v100 = v99;
  }

  else
  {
    v122[0] = MEMORY[0x1E69E9820];
    v122[1] = 3221225472;
    v122[2] = __61__MRURoutingViewController__mergeRoutes_withCoalescedResult___block_invoke;
    v122[3] = &unk_1E7664E60;
    v123 = v112;
    selfCopy2 = self;
    v100 = [v114 msv_compactMap:v122];
  }

  v101 = MCLogCategoryDeviceAccess(v99);
  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v145 = v100;
    _os_log_impl(&dword_1A20FC000, v101, OS_LOG_TYPE_DEFAULT, "nativeRoutesThatCanBeDisplayed: %@", buf, 0xCu);
  }

  [v104 addObjectsFromArray:v100];
  [v104 addObjectsFromArray:v106];
  v102 = [objc_alloc(MEMORY[0x1E69B1470]) initWithFirst:v104 second:v111];

  return v102;
}

id __61__MRURoutingViewController__mergeRoutes_withCoalescedResult___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isAirPlayRoute] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && !objc_msgSend(*(a1 + 32), "containsObject:", v3) && (objc_msgSend(*(*(a1 + 40) + 1184), "resolverManagedAirPlayRouteIDs"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "routeUID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "containsObject:", v5), v5, v4, (v6 & 1) != 0))
  {
    v8 = MCLogCategoryDeviceAccess(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "Merge routes: skipping native route because it has not gone through the resolver yet: %@", &v11, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v9 = v3;
  }

  return v9;
}

- (void)_createUpdateWithRefreshOnly:(BOOL)only completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__MRURoutingViewController__createUpdateWithRefreshOnly_completion___block_invoke;
  v8[3] = &unk_1E7664E88;
  onlyCopy = only;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(MRURoutingViewController *)self fetchAvailableRoutesWithCompletionHandler:v8];
}

void __68__MRURoutingViewController__createUpdateWithRefreshOnly_completion___block_invoke(uint64_t a1, void *a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MRURoutingViewControllerUpdate);
  v5 = [*(*(a1 + 32) + 1176) pickedRoutes];
  v6 = [v5 copy];
  [(MRURoutingViewControllerUpdate *)v4 setPickedRoutes:v6];

  v7 = [*(*(a1 + 32) + 1176) pendingPickedRoutes];
  v8 = [v7 allObjects];
  [(MRURoutingViewControllerUpdate *)v4 setPendingPickedRoutes:v8];

  [(MRURoutingViewControllerUpdate *)v4 setNativeRoutes:v3];
  v9 = [*(*(a1 + 32) + 1184) activatedDeviceIDs];
  [(MRURoutingViewControllerUpdate *)v4 setActivatedVendorSpecificDeviceIDs:v9];

  v10 = [*(*(a1 + 32) + 1184) activatingDeviceIDs];
  v11 = [*(*(a1 + 32) + 1184) invalidatingDeviceIDs];
  v12 = [v10 arrayByAddingObjectsFromArray:v11];
  [(MRURoutingViewControllerUpdate *)v4 setPendingVendorSpecificDeviceIDs:v12];

  v13 = [*(*(a1 + 32) + 1184) availableDeviceIDs];
  [(MRURoutingViewControllerUpdate *)v4 setAvailableVendorSpecificDeviceIDs:v13];

  v14 = *(a1 + 32);
  v15 = [v14[148] coalescedDevices];
  v16 = [v14 _mergeRoutes:v3 withCoalescedResult:v15];

  v17 = [v16 first];
  v18 = [v16 second];
  v19 = MCLogCategoryDeviceAccess(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v72 = v18;
    _os_log_impl(&dword_1A20FC000, v19, OS_LOG_TYPE_DEFAULT, "nativeRoutesInVendorSpecificGroup: %@", buf, 0xCu);
  }

  [(MRURoutingViewControllerUpdate *)v4 setNativeRoutesInVendorSpecificGroup:v18];
  v20 = [*(a1 + 32) _displayableRoutesInRoutes:v17];
  [(MRURoutingViewControllerUpdate *)v4 setDisplayableAvailableRoutes:v20];

  v56 = v17;
  v57 = v16;
  v55 = v18;
  if ([*(a1 + 32) shouldSuppressNativeRoutesStatusDisplay])
  {
    [(MRURoutingViewControllerUpdate *)v4 setDisplayAsPickedRoutes:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v21 = [*(a1 + 32) _displayAsPickedRoutesInRoutes:v3];
    [(MRURoutingViewControllerUpdate *)v4 setDisplayAsPickedRoutes:v21];
  }

  -[MRURoutingViewControllerUpdate setCanGroup:](v4, "setCanGroup:", [*(*(a1 + 32) + 1176) supportsMultipleSelection]);
  -[MRURoutingViewControllerUpdate setHasPendingPickedRoutes:](v4, "setHasPendingPickedRoutes:", [*(*(a1 + 32) + 1176) hasPendingPickedRoutes]);
  v22 = [*(a1 + 32) _airPlayRoutesInRoutes:v3];
  [(MRURoutingViewControllerUpdate *)v4 setAirPlayRoutes:v22];

  v58 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(*(a1 + 32) + 1080), "count")}];
  v23 = MEMORY[0x1E695DF70];
  v24 = [(MRURoutingViewControllerUpdate *)v4 airPlayRoutes];
  v54 = [v23 arrayWithCapacity:{objc_msgSend(v24, "count")}];

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v25 = *(*(a1 + 32) + 1080);
  v26 = [v25 countByEnumeratingWithState:&v65 objects:v70 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v66;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v66 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v65 + 1) + 8 * i);
        v31 = [(MRURoutingViewControllerUpdate *)v4 airPlayRoutes];
        v32 = [v31 containsObject:v30];

        if ((v32 & 1) == 0)
        {
          [v58 addObject:v30];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v65 objects:v70 count:16];
    }

    while (v27);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v33 = [(MRURoutingViewControllerUpdate *)v4 airPlayRoutes];
  v34 = [v33 countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v62;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v62 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v61 + 1) + 8 * j);
        if (([*(*(a1 + 32) + 1080) containsObject:v38] & 1) == 0)
        {
          [v54 addObject:v38];
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v35);
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    [*(*(a1 + 32) + 1184) resolverRemoveNativeRoutes:v58];
    [*(*(a1 + 32) + 1184) resolverAddNativeRoutes:v54];
  }

  v39 = *(a1 + 32);
  v59 = 0;
  v60 = 0;
  [v39 _configureVolumeForUpdate:v4 volumeCapableRoutes:&v60 volumeController:&v59];
  v40 = v60;
  v41 = v59;
  v42 = [v41 copy];
  v43 = *(a1 + 32);
  v44 = *(v43 + 1280);
  *(v43 + 1280) = v42;

  v45 = [v41 allValues];
  [*(*(a1 + 32) + 1208) setVolumeControllers:v45];

  v46 = [v40 copy];
  [(MRURoutingViewControllerUpdate *)v4 setVolumeCapableRoutes:v46];

  v47 = *(a1 + 32);
  v48 = [(MRURoutingViewControllerUpdate *)v4 displayableAvailableRoutes];
  [v47 updateNowPlayingControllersForRoutes:v48];

  v49 = *(a1 + 32);
  v50 = *(v49 + 1016);
  v51 = *(v49 + 1224);
  v52 = v51;
  if (v51 == v50)
  {
    v53 = 0;
  }

  else
  {
    v53 = [v51 isEqual:v50] ^ 1;
  }

  [(MRURoutingViewControllerUpdate *)v4 setShouldReload:v53];
  (*(*(a1 + 40) + 16))();
}

- (void)_updateDisplayedRoutes
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__MRURoutingViewController__updateDisplayedRoutes__block_invoke;
  v2[3] = &unk_1E7664EB0;
  v2[4] = self;
  [(MRURoutingViewController *)self _createUpdateWithRefreshOnly:0 completion:v2];
}

- (void)_refreshDisplayedRoutes
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __51__MRURoutingViewController__refreshDisplayedRoutes__block_invoke;
  v2[3] = &unk_1E7664EB0;
  v2[4] = self;
  [(MRURoutingViewController *)self _createUpdateWithRefreshOnly:1 completion:v2];
}

- (void)_reloadDisplayedRoutes
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__MRURoutingViewController__reloadDisplayedRoutes__block_invoke;
  v2[3] = &unk_1E7664EB0;
  v2[4] = self;
  [(MRURoutingViewController *)self _createUpdateWithRefreshOnly:1 completion:v2];
}

void __50__MRURoutingViewController__reloadDisplayedRoutes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setShouldReload:1];
  [*(a1 + 32) _enqueueUpdate:v3];
}

- (void)setOptimisticUpdate:(id)update
{
  updateCopy = update;
  v7 = updateCopy;
  if (updateCopy)
  {
    [(MRURoutingViewController *)self _enqueueUpdate:updateCopy];
    objc_storeStrong(&self->_optimisticUpdate, update);
  }

  else
  {
    optimisticUpdate = self->_optimisticUpdate;
    self->_optimisticUpdate = 0;

    [(MRURoutingViewController *)self _updateDisplayedRoutes];
  }
}

- (void)didReceiveInteraction:(id)interaction
{
  if (self->_collapseTimer)
  {
    [(MRURoutingViewController *)self _collapseAllGroupsAfterDelay];
  }
}

- (void)_enqueueUpdate:(id)update
{
  updateCopy = update;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!self->_optimisticUpdate)
  {
    if (self->_isAnimatingUpdate)
    {
      objc_storeStrong(&self->_pendingUpdate, update);
    }

    else
    {
      [(MRURoutingViewController *)self _applyUpdate:updateCopy];
    }
  }
}

- (void)_configureVolumeForUpdate:(id)update volumeCapableRoutes:(id *)routes volumeController:(id *)controller
{
  v57 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v9 = MEMORY[0x1E695DF70];
  displayAsPickedRoutes = [updateCopy displayAsPickedRoutes];
  v11 = [v9 arrayWithCapacity:{objc_msgSend(displayAsPickedRoutes, "count")}];

  v12 = objc_alloc(MEMORY[0x1E695DF90]);
  displayAsPickedRoutes2 = [updateCopy displayAsPickedRoutes];
  v14 = [v12 initWithCapacity:{objc_msgSend(displayAsPickedRoutes2, "count")}];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__MRURoutingViewController__configureVolumeForUpdate_volumeCapableRoutes_volumeController___block_invoke;
  aBlock[3] = &unk_1E7664ED8;
  aBlock[4] = self;
  v15 = v14;
  v54 = v15;
  v16 = _Block_copy(aBlock);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __91__MRURoutingViewController__configureVolumeForUpdate_volumeCapableRoutes_volumeController___block_invoke_2;
  v50[3] = &unk_1E7664F00;
  v17 = updateCopy;
  v51 = v17;
  selfCopy = self;
  v18 = _Block_copy(v50);
  if (v18[2]())
  {
    v35 = v18;
    v36 = v17;
    v37 = v15;
    routesCopy = routes;
    controllerCopy = controller;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = [v17 displayAsPickedRoutes];
    v19 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v47;
      v22 = &OBJC_IVAR___MediaControlsPresentationController__presentingView;
      do
      {
        v23 = 0;
        v40 = v20;
        do
        {
          if (*v47 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v46 + 1) + 8 * v23);
          v25 = *(&self->super.super.super.isa + v22[274]);
          routeUID = [v24 routeUID];
          LODWORD(v25) = [v25 containsObject:routeUID];

          if (v25)
          {
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            subRoutes = [v24 subRoutes];
            v28 = [subRoutes countByEnumeratingWithState:&v42 objects:v55 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v43;
              do
              {
                for (i = 0; i != v29; ++i)
                {
                  if (*v43 != v30)
                  {
                    objc_enumerationMutation(subRoutes);
                  }

                  v32 = *(*(&v42 + 1) + 8 * i);
                  v16[2](v16, v32);
                  if ([v32 isPicked])
                  {
                    [v11 addObject:v32];
                  }
                }

                v29 = [subRoutes countByEnumeratingWithState:&v42 objects:v55 count:16];
              }

              while (v29);
            }

            v22 = &OBJC_IVAR___MediaControlsPresentationController__presentingView;
            v20 = v40;
          }

          else
          {
            v16[2](v16, v24);
            [v11 addObject:v24];
          }

          ++v23;
        }

        while (v23 != v20);
        v20 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
      }

      while (v20);
    }

    routes = routesCopy;
    controller = controllerCopy;
    v17 = v36;
    v15 = v37;
    v18 = v35;
  }

  if (routes)
  {
    v33 = v11;
    *routes = v11;
  }

  if (controller)
  {
    v34 = v15;
    *controller = v15;
  }
}

void __91__MRURoutingViewController__configureVolumeForUpdate_volumeCapableRoutes_volumeController___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 routeUID];
  if (v3)
  {
    v4 = [*(*(a1 + 32) + 1280) objectForKey:v3];
    if (!v4)
    {
      v5 = objc_alloc(MEMORY[0x1E6970A20]);
      v6 = [*(a1 + 32) endpointRoute];
      v7 = [v5 initWithGroupRoute:v6 outputDeviceRoute:v8];

      v4 = [(MPVolumeController *)[MRUVolumeController alloc] initWithDataSource:v7];
    }

    [*(a1 + 40) setObject:v4 forKey:v3];
  }
}

uint64_t __91__MRURoutingViewController__configureVolumeForUpdate_volumeCapableRoutes_volumeController___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) displayAsPickedRoutes];
  v3 = [v2 count];

  if (v3 > 1)
  {
    return 1;
  }

  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 1312);
  v7 = [v5 displayAsPickedRoutes];
  v8 = [v7 firstObject];
  v9 = [v8 routeUID];
  v10 = [v6 containsObject:v9];

  return v10;
}

- (id)endpointGroupUID
{
  endpoint = [(MPAVEndpointRoute *)self->_endpointRoute endpoint];
  designatedGroupLeader = [endpoint designatedGroupLeader];
  groupID = [designatedGroupLeader groupID];
  v5 = groupID;
  if (groupID)
  {
    localDeviceUID = groupID;
  }

  else
  {
    localDeviceUID = [MEMORY[0x1E69B09A8] localDeviceUID];
  }

  v7 = localDeviceUID;

  return v7;
}

- (void)updateExpandedGroups
{
  v3 = MEMORY[0x1E695DFD8];
  allKeys = [(NSDictionary *)self->_cachedRouteGrouping allKeys];
  v7 = [v3 setWithArray:allKeys];

  [(NSMutableSet *)self->_expandedGroupUIDs intersectSet:v7];
  if ([(NSArray *)self->_cachedPickedRoutes count]== 1)
  {
    expandedGroupUIDs = self->_expandedGroupUIDs;
    endpointGroupUID = [(MRURoutingViewController *)self endpointGroupUID];
    [(NSMutableSet *)expandedGroupUIDs addObject:endpointGroupUID];
  }
}

- (BOOL)wasVendorSpecificGroupDisplayedAsExpanded:(id)expanded
{
  expandedVendorSpecificGroupUIDs = self->_expandedVendorSpecificGroupUIDs;
  routeUID = [expanded routeUID];
  LOBYTE(expandedVendorSpecificGroupUIDs) = [(NSMutableSet *)expandedVendorSpecificGroupUIDs containsObject:routeUID];

  return expandedVendorSpecificGroupUIDs;
}

- (BOOL)isVendorSpecificGroupStatusRecorded:(id)recorded
{
  recordedCopy = recorded;
  expandedVendorSpecificGroupUIDs = self->_expandedVendorSpecificGroupUIDs;
  routeUID = [recordedCopy routeUID];
  if (([(NSMutableSet *)expandedVendorSpecificGroupUIDs containsObject:routeUID]& 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    collapsedVendorSpecificGroupUIDs = self->_collapsedVendorSpecificGroupUIDs;
    routeUID2 = [recordedCopy routeUID];
    v7 = [(NSMutableSet *)collapsedVendorSpecificGroupUIDs containsObject:routeUID2];
  }

  return v7;
}

- (void)applyVendorSpecificGroupExpandedRecord:(id)record
{
  expandedVendorSpecificGroupUIDs = self->_expandedVendorSpecificGroupUIDs;
  recordCopy = record;
  routeUID = [recordCopy routeUID];
  [recordCopy setExpanded:{-[NSMutableSet containsObject:](expandedVendorSpecificGroupUIDs, "containsObject:", routeUID)}];
}

- (void)updateVendorSpecificGroupExpandedRecordFor:(id)for
{
  forCopy = for;
  expanded = [forCopy expanded];
  expandedVendorSpecificGroupUIDs = self->_expandedVendorSpecificGroupUIDs;
  routeUID = [forCopy routeUID];
  if (expanded)
  {
    [(NSMutableSet *)expandedVendorSpecificGroupUIDs addObject:routeUID];

    collapsedVendorSpecificGroupUIDs = self->_collapsedVendorSpecificGroupUIDs;
    routeUID2 = [forCopy routeUID];

    [(NSMutableSet *)collapsedVendorSpecificGroupUIDs removeObject:routeUID2];
  }

  else
  {
    [(NSMutableSet *)expandedVendorSpecificGroupUIDs removeObject:routeUID];

    v9 = self->_collapsedVendorSpecificGroupUIDs;
    routeUID2 = [forCopy routeUID];

    [(NSMutableSet *)v9 addObject:routeUID2];
  }
}

- (void)clearVendorSpecificGroupExpandedRecordFor:(id)for
{
  expandedVendorSpecificGroupUIDs = self->_expandedVendorSpecificGroupUIDs;
  forCopy = for;
  routeUID = [forCopy routeUID];
  [(NSMutableSet *)expandedVendorSpecificGroupUIDs removeObject:routeUID];

  collapsedVendorSpecificGroupUIDs = self->_collapsedVendorSpecificGroupUIDs;
  routeUID2 = [forCopy routeUID];

  [(NSMutableSet *)collapsedVendorSpecificGroupUIDs removeObject:routeUID2];
}

- (void)_applyUpdate:(id)update
{
  v54 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  view = [(MRURoutingViewController *)self view];
  tableView = [view tableView];

  if (!tableView)
  {
    goto LABEL_16;
  }

  v7 = [(MPSectionedCollection *)self->_routingViewItems copy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E6970938]);
  }

  v10 = v9;

  v11 = [(MRURoutingViewController *)self _createRoutingViewItemsForUpdate:updateCopy];
  routeGrouping = [v11 routeGrouping];
  pickedRoutes = [updateCopy pickedRoutes];
  v14 = [(MRURoutingViewController *)self _createSectionedCollection:v11 withPickedRoutes:pickedRoutes];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__MRURoutingViewController__applyUpdate___block_invoke;
  aBlock[3] = &unk_1E7664F28;
  aBlock[4] = self;
  v15 = updateCopy;
  v51 = v15;
  v16 = v14;
  v52 = v16;
  v32 = routeGrouping;
  v53 = v32;
  v17 = _Block_copy(aBlock);
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __41__MRURoutingViewController__applyUpdate___block_invoke_3;
  v47[3] = &unk_1E7664F70;
  v18 = v10;
  v48 = v18;
  v19 = v16;
  v49 = v19;
  v33 = _Block_copy(v47);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __41__MRURoutingViewController__applyUpdate___block_invoke_4;
  v41[3] = &unk_1E7664F98;
  v20 = v18;
  v42 = v20;
  v21 = v19;
  v43 = v21;
  v46 = &__block_literal_global_244;
  v22 = v15;
  v44 = v22;
  selfCopy = self;
  v34 = _Block_copy(v41);
  if (![(MRURoutingViewControllerUpdate *)v22 shouldReload])
  {
    v23 = [v20 changeDetailsToSectionedCollection:v21 isEqualBlock:v33 isUpdatedBlock:v34];
    if (v23)
    {
      self->_isAnimatingUpdate = 1;
      view2 = [(MRURoutingViewController *)self view];
      tableView2 = [view2 tableView];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __41__MRURoutingViewController__applyUpdate___block_invoke_246;
      v37[3] = &unk_1E7664FC0;
      v40 = v17;
      view3 = v23;
      v38 = view3;
      selfCopy2 = self;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __41__MRURoutingViewController__applyUpdate___block_invoke_3_249;
      v36[3] = &unk_1E7664FE8;
      v36[4] = self;
      [tableView2 performBatchUpdates:v37 completion:v36];

      tableView3 = v40;
LABEL_10:

      goto LABEL_11;
    }
  }

  v17[2](v17);
  objc_storeStrong(&self->_displayedEndpointRoute, self->_endpointRoute);
  if ([(MRURoutingViewControllerUpdate *)v22 shouldReload])
  {
    view3 = [(MRURoutingViewController *)self view];
    tableView3 = [view3 tableView];
    [tableView3 reloadData];
    goto LABEL_10;
  }

LABEL_11:
  self->_needsDisplayedRoutesUpdate = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v29 = objc_opt_respondsToSelector();

  if (v29)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__MRURoutingViewController__applyUpdate___block_invoke_254;
    block[3] = &unk_1E7663898;
    block[4] = self;
    v30 = MEMORY[0x1E69E96A0];
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  pendingUpdate = self->_pendingUpdate;
  if (pendingUpdate == v22)
  {
    self->_pendingUpdate = 0;
  }

LABEL_16:
}

uint64_t __41__MRURoutingViewController__applyUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) displayableAvailableRoutes];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1040);
  *(v3 + 1040) = v2;

  v5 = [*(a1 + 40) pickedRoutes];
  v6 = *(a1 + 32);
  v7 = *(v6 + 1032);
  *(v6 + 1032) = v5;

  v8 = [*(a1 + 40) pendingPickedRoutes];
  v9 = *(a1 + 32);
  v10 = *(v9 + 1048);
  *(v9 + 1048) = v8;

  v11 = [*(a1 + 40) displayAsPickedRoutes];
  v12 = *(a1 + 32);
  v13 = *(v12 + 1056);
  *(v12 + 1056) = v11;

  v14 = [*(a1 + 40) volumeCapableRoutes];
  v15 = *(a1 + 32);
  v16 = *(v15 + 1064);
  *(v15 + 1064) = v14;

  objc_storeStrong((*(a1 + 32) + 1024), *(a1 + 48));
  objc_storeStrong((*(a1 + 32) + 1072), *(a1 + 56));
  v17 = [*(a1 + 40) airPlayRoutes];
  v18 = *(a1 + 32);
  v19 = *(v18 + 1080);
  *(v18 + 1080) = v17;

  v20 = [*(a1 + 40) nativeRoutes];
  v21 = *(a1 + 32);
  v22 = *(v21 + 1088);
  *(v21 + 1088) = v20;

  v23 = [*(a1 + 40) nativeRoutesInVendorSpecificGroup];
  v24 = *(a1 + 32);
  v25 = *(v24 + 1096);
  *(v24 + 1096) = v23;

  v26 = [*(a1 + 40) activatedVendorSpecificDeviceIDs];
  v27 = *(a1 + 32);
  v28 = *(v27 + 1104);
  *(v27 + 1104) = v26;

  v29 = [*(a1 + 40) pendingVendorSpecificDeviceIDs];
  v30 = *(a1 + 32);
  v31 = *(v30 + 1112);
  *(v30 + 1112) = v29;

  v32 = [*(a1 + 40) availableVendorSpecificDeviceIDs];
  v33 = *(a1 + 32);
  v34 = *(v33 + 1120);
  *(v33 + 1120) = v32;

  v35 = *(a1 + 32);

  return [v35 updateExpandedGroups];
}

BOOL __41__MRURoutingViewController__applyUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v5 = 0;
  if ([v2 type] == 5)
  {
    v3 = [v2 mainRoute];
    v4 = [v3 isAirPlayRoute];

    if (v4)
    {
      v5 = 1;
    }
  }

  return v5;
}

uint64_t __41__MRURoutingViewController__applyUpdate___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 length];
  v8 = *(a1 + 32);
  if (v7 == 1)
  {
    v9 = [v6 section];

    v10 = [v8 sectionAtIndex:v9];
    v11 = *(a1 + 40);
    v12 = [v5 section];

    v13 = [v11 sectionAtIndex:v12];
    v14 = [v10 isEqualToString:v13];
  }

  else
  {
    v10 = [*(a1 + 32) itemAtIndexPath:v6];

    v13 = [*(a1 + 40) itemAtIndexPath:v5];

    v14 = [v10 isEqual:v13];
  }

  v15 = v14;

  return v15;
}

uint64_t __41__MRURoutingViewController__applyUpdate___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v302 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 length] == 1)
  {
    v7 = 0;
    goto LABEL_31;
  }

  v8 = [*(a1 + 32) itemAtIndexPath:v5];
  v205 = v6;
  v9 = [*(a1 + 40) itemAtIndexPath:v6];
  v10 = [v8 type];
  v207 = v9;
  v206 = v5;
  if (v10 != [v9 type])
  {
    goto LABEL_28;
  }

  v11 = [v8 type];
  if (v11 == 6)
  {
    goto LABEL_28;
  }

  v12 = v11;
  if (v11 == 2)
  {
    v7 = [v8 isEqual:v9] ^ 1;
    v13 = v9;
    goto LABEL_30;
  }

  v208 = v8;
  v254 = a1;
  if ((v11 - 3) >= 2)
  {
    v44 = (*(*(a1 + 64) + 16))();
    if (v12 == 5 && (v44 & 1) == 0)
    {
      if (((*(*(a1 + 64) + 16))() & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_28:
      v7 = 0;
      goto LABEL_29;
    }

    if (v12 == 7)
    {
      v276 = 0u;
      v277 = 0u;
      v274 = 0u;
      v275 = 0u;
      v67 = [v9 routes];
      v68 = [v67 countByEnumeratingWithState:&v274 objects:v299 count:16];
      if (v68)
      {
        v69 = v68;
        v70 = 0;
        v71 = 0;
        v72 = *v275;
        do
        {
          for (i = 0; i != v69; ++i)
          {
            if (*v275 != v72)
            {
              objc_enumerationMutation(v67);
            }

            v74 = *(*(&v274 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              goto LABEL_99;
            }

            v75 = [*(v254 + 48) activatedVendorSpecificDeviceIDs];
            v76 = [v74 routeUID];
            v71 |= [v75 containsObject:v76];

            v77 = [*(v254 + 48) pendingPickedRoutes];
            v70 |= [v77 containsObject:v74];
          }

          v69 = [v67 countByEnumeratingWithState:&v274 objects:v299 count:16];
        }

        while (v69);
      }

      else
      {
        v70 = 0;
        LOBYTE(v71) = 0;
      }

      v272 = 0u;
      v273 = 0u;
      v270 = 0u;
      v271 = 0u;
      v250 = [v208 routes];
      v132 = [v250 countByEnumeratingWithState:&v270 objects:v298 count:16];
      if (v132)
      {
        v133 = v132;
        v134 = 0;
        v135 = 0;
        v259 = *v271;
        while (1)
        {
          for (j = 0; j != v133; ++j)
          {
            if (*v271 != v259)
            {
              objc_enumerationMutation(v250);
            }

            v137 = *(*(&v270 + 1) + 8 * j);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

LABEL_99:
              v7 = 1;
              v8 = v208;
LABEL_29:
              v13 = v207;
              goto LABEL_30;
            }

            v138 = *(*(v254 + 56) + 1104);
            v139 = [v137 routeUID];
            v135 |= [v138 containsObject:v139];

            v140 = *(*(v254 + 56) + 1112);
            v141 = [v137 routeUID];
            v134 |= [v140 containsObject:v141];
          }

          v133 = [v250 countByEnumeratingWithState:&v270 objects:v298 count:16];
          if (!v133)
          {
            goto LABEL_104;
          }
        }
      }

      v134 = 0;
      LOBYTE(v135) = 0;
LABEL_104:

      v154 = v71 ^ v135;
      v155 = [v207 localizedTitle];
      v8 = v208;
      v156 = [v208 localizedTitle];
      v157 = [v155 isEqualToString:v156];

      v158 = [v207 localizedSubtitle];
      v159 = [v208 localizedSubtitle];
      v160 = [v158 isEqualToString:v159];

      v7 = 1;
      if ((v154 & 1) == 0)
      {
        v13 = v207;
        if (((v70 ^ v134) & 1) == 0)
        {
          v7 = v157 & v160 ^ 1;
        }

        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if (v12 >= 2 && !(*(*(a1 + 64) + 16))())
    {
      goto LABEL_28;
    }

    if ((*(*(a1 + 64) + 16))())
    {
      v91 = (*(*(a1 + 64) + 16))();
      if ((v91 & 1) == 0)
      {
        v151 = MCLogCategoryDeviceAccess(v91);
        if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A20FC000, v151, OS_LOG_TYPE_DEFAULT, "is update check: weird", buf, 2u);
        }

        v152 = 0;
        v153 = 0;
        v7 = 0;
        goto LABEL_147;
      }

      v92 = [v8 mainRoute];
      v93 = [v92 underlyingNativeRoute];

      v94 = [v9 mainRoute];
      v95 = [v94 underlyingNativeRoute];

      v96 = [*(a1 + 48) displayAsPickedRoutes];
      v97 = [v96 containsObject:v95];

      v98 = [*(a1 + 48) pickedRoutes];
      v99 = [v98 containsObject:v95];

      v100 = [*(a1 + 48) pendingPickedRoutes];
      v241 = v95;
      v101 = [v100 containsObject:v95];

      v102 = a1;
      v103 = [*(*(a1 + 56) + 1056) containsObject:v93];
      v104 = [*(*(v102 + 56) + 1032) containsObject:v93];
      v105 = [*(*(v102 + 56) + 1048) containsObject:v93];
    }

    else
    {
      v245 = [v8 mainRoute];
      v241 = [v9 mainRoute];
      v266 = 0u;
      v267 = 0u;
      v268 = 0u;
      v269 = 0u;
      v142 = [v9 routes];
      v143 = [v142 countByEnumeratingWithState:&v266 objects:v297 count:16];
      if (v143)
      {
        v144 = v143;
        v99 = 0;
        v101 = 0;
        v97 = 0;
        v145 = *v267;
        do
        {
          for (k = 0; k != v144; ++k)
          {
            if (*v267 != v145)
            {
              objc_enumerationMutation(v142);
            }

            v147 = *(*(&v266 + 1) + 8 * k);
            v148 = [*(v254 + 48) displayAsPickedRoutes];
            v97 |= [v148 containsObject:v147];

            v149 = [*(v254 + 48) pickedRoutes];
            v99 |= [v149 containsObject:v147];

            v150 = [*(v254 + 48) pendingPickedRoutes];
            v101 |= [v150 containsObject:v147];
          }

          v144 = [v142 countByEnumeratingWithState:&v266 objects:v297 count:16];
        }

        while (v144);
      }

      else
      {
        v99 = 0;
        v101 = 0;
        v97 = 0;
      }

      v264 = 0u;
      v265 = 0u;
      v262 = 0u;
      v263 = 0u;
      v251 = [v8 routes];
      v161 = [v251 countByEnumeratingWithState:&v262 objects:v296 count:16];
      if (v161)
      {
        v162 = v161;
        v105 = 0;
        v104 = 0;
        v103 = 0;
        v260 = *v263;
        do
        {
          for (m = 0; m != v162; ++m)
          {
            if (*v263 != v260)
            {
              objc_enumerationMutation(v251);
            }

            v164 = *(*(&v262 + 1) + 8 * m);
            v103 |= [*(*(v254 + 56) + 1056) containsObject:v164];
            v104 |= [*(*(v254 + 56) + 1032) containsObject:v164];
            v105 |= [*(*(v254 + 56) + 1048) containsObject:v164];
          }

          v162 = [v251 countByEnumeratingWithState:&v262 objects:v296 count:16];
        }

        while (v162);
      }

      else
      {
        v105 = 0;
        v104 = 0;
        v103 = 0;
      }

      v93 = v245;
    }

    v165 = [*(v254 + 48) volumeCapableRoutes];
    v252 = [v165 containsObject:v241];
    v237 = [*(*(v254 + 56) + 1064) containsObject:v241];

    v166 = [v93 batteryLevel];
    v167 = [v241 batteryLevel];
    v246 = v93;
    if (v166 == v167)
    {
      v261 = 0;
    }

    else
    {
      [v93 batteryLevel];
      v168 = logd = v166;
      v169 = [v241 batteryLevel];
      v261 = [v168 isEqual:v169] ^ 1;

      v93 = v246;
      v166 = logd;
    }

    v170 = [v93 alternateTransportType];
    v171 = [v241 alternateTransportType];
    v212 = [v170 isEqualToString:v171] ^ 1;

    v172 = [v93 alternateTransportType];
    v173 = MEMORY[0x1E6958720];
    if ([v172 isEqualToString:*MEMORY[0x1E6958720]])
    {

      v175 = v246;
    }

    else
    {
      v176 = [v241 alternateTransportType];
      v177 = [v176 isEqualToString:*v173];

      v175 = v246;
      if (!v177)
      {
        goto LABEL_127;
      }
    }

    v178 = MCLogCategoryDefault(v174);
    if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
    {
      v179 = [v175 routeName];
      v180 = [v175 alternateTransportType];
      [v241 routeName];
      v181 = loge = v178;
      v182 = [v241 alternateTransportType];
      *buf = 138544386;
      v287 = v179;
      v288 = 2114;
      v289 = v180;
      v290 = 2114;
      v291 = v181;
      v292 = 2114;
      v293 = v182;
      v294 = 1024;
      v295 = v212;
      _os_log_impl(&dword_1A20FC000, loge, OS_LOG_TYPE_DEFAULT, "MRURoutingViewController debug changed - old: %{public}@ | %{public}@ | new: %{public}@ | %{public}@ | changed: %{BOOL}u", buf, 0x30u);

      v178 = loge;
      v175 = v246;
    }

LABEL_127:
    v183 = [v175 routeName];
    v184 = v175;
    v185 = [v241 routeName];
    if (v183 == v185)
    {
      logb = 0;
    }

    else
    {
      v186 = [v184 routeName];
      v187 = [v241 routeName];
      logb = [v186 isEqual:v187] ^ 1;
    }

    v188 = [v208 localizedSubtitle];
    v189 = [v207 localizedSubtitle];
    if (v188 == v189)
    {
      v226 = 0;
    }

    else
    {
      v226 = [v188 isEqual:v189] ^ 1;
    }

    v253 = v252 ^ v237;
    objb = v97 ^ v103;
    v217 = v99 ^ v104;
    v214 = v105 ^ v101;
    if (([v246 isSplitterCapable] & 1) != 0 || objc_msgSend(v241, "isSplitterCapable"))
    {
      v190 = *(v254 + 56);
      v191 = [*(v254 + 48) displayAsPickedRoutes];
      LODWORD(v190) = [v190 routesContainSplitterCapableRoute:v191];
      v255 = v190 ^ [*(v254 + 56) routesContainSplitterCapableRoute:*(*(v254 + 56) + 1056)];
      v192 = v208;
    }

    else
    {
      v192 = v208;
      if (([v246 supportsAirPlayGrouping] & 1) == 0 && !objc_msgSend(v241, "supportsAirPlayGrouping"))
      {
        LOBYTE(v255) = 0;
LABEL_137:
        v193 = [v246 isNearby];
        v194 = [v241 isNearby];
        v195 = [v246 isKnown];
        v196 = [v241 isKnown];
        v197 = [v192 isExpanded];
        v198 = [v207 isExpanded];
        v199 = v192;
        v200 = [v192 isExpandable];
        v201 = [v207 isExpandable];
        v202 = [v199 isPickable];
        v203 = [v207 isPickable];
        v7 = 1;
        if ((objb | v217 | v214 | v261 | logb | v226 | v253) & 1) != 0 || (v255 & 1) != 0 || ((v193 ^ v194) & 1) != 0 || ((v195 ^ v196) & 1) != 0 || ((v197 ^ v198))
        {
          v8 = v208;
          v153 = v246;
        }

        else
        {
          v153 = v246;
          if (((v200 ^ v201) & 1) == 0)
          {
            v7 = v202 ^ v203 | v212;
          }

          v8 = v208;
        }

        v152 = v241;
LABEL_147:

        goto LABEL_29;
      }

      v204 = *(v254 + 56);
      v191 = [*(v254 + 48) displayAsPickedRoutes];
      LODWORD(v204) = [v204 routesContainAirPlayGroupableRoute:v191];
      v255 = v204 ^ [*(v254 + 56) routesContainAirPlayGroupableRoute:*(*(v254 + 56) + 1056)];
    }

    goto LABEL_137;
  }

  if (v11 == 3)
  {
LABEL_32:
    v46 = [v8 mainRoute];
    v47 = [v9 mainRoute];
    v48 = [*(a1 + 48) activatedVendorSpecificDeviceIDs];
    v49 = [v47 routeUID];
    LOBYTE(v17) = [v48 containsObject:v49];

    v50 = a1;
    v51 = *(*(a1 + 56) + 1104);
    v52 = [v46 routeUID];
    v257 = [v51 containsObject:v52];

    v53 = [*(a1 + 48) pendingVendorSpecificDeviceIDs];
    v54 = [v47 routeUID];
    v55 = [v53 containsObject:v54];

    v56 = *(*(a1 + 56) + 1112);
    v57 = [v46 routeUID];
    LOBYTE(v56) = [v56 containsObject:v57];

    log = v55;
    v234 = v56;
    v248 = v47;
    if ([v47 supportsGrouping])
    {
      v239 = [*(a1 + 56) vendorSpecificManager];
      objc = [*(a1 + 48) availableVendorSpecificDeviceIDs];
      v58 = [*(a1 + 48) activatedVendorSpecificDeviceIDs];
      [v47 protocolIdentifier];
      v59 = v224 = v46;
      v60 = [v239 isGroupingAvailableFor:objc activatedIDs:v58 forProtocolID:v59];
      v61 = [*(v50 + 56) vendorSpecificManager];
      v62 = *(v50 + 56);
      v63 = *(v62 + 1120);
      v64 = *(v62 + 1104);
      v65 = [v47 protocolIdentifier];
      v66 = v60 ^ [v61 isGroupingAvailableFor:v63 activatedIDs:v64 forProtocolID:v65];

      v46 = v224;
    }

    else
    {
      v66 = 0;
    }

    if ([v46 supportsGrouping])
    {
      v240 = [*(v254 + 56) vendorSpecificManager];
      v225 = [*(v254 + 48) availableVendorSpecificDeviceIDs];
      objd = [*(v254 + 48) activatedVendorSpecificDeviceIDs];
      v78 = [v46 protocolIdentifier];
      v79 = v46;
      v80 = [v240 isGroupingAvailableFor:v225 activatedIDs:objd forProtocolID:v78];
      v81 = [*(v254 + 56) vendorSpecificManager];
      v82 = *(v254 + 56);
      v83 = *(v82 + 1120);
      v84 = *(v82 + 1104);
      v85 = [v79 protocolIdentifier];
      v66 |= v80 ^ [v81 isGroupingAvailableFor:v83 activatedIDs:v84 forProtocolID:v85];
    }

    else
    {
      v79 = v46;
    }

    LOBYTE(v16) = log;
    LOBYTE(v86) = v257;
    LOBYTE(v87) = v234;

    v88 = 0;
    v89 = 0;
    v90 = 0;
    v13 = v207;
    goto LABEL_78;
  }

  v284 = 0u;
  v285 = 0u;
  v282 = 0u;
  v283 = 0u;
  v14 = [v9 mainRoute];
  v15 = [v14 subroutes];

  obj = v15;
  v238 = [v15 countByEnumeratingWithState:&v282 objects:v301 count:16];
  if (!v238)
  {
    v247 = 0;
    LOBYTE(v211) = 0;
    LOBYTE(v16) = 0;
    LOBYTE(v17) = 0;
    LOBYTE(v223) = 0;
    goto LABEL_55;
  }

  v247 = 0;
  LOBYTE(v211) = 0;
  v16 = 0;
  LODWORD(v17) = 0;
  v223 = 0;
  v233 = *v283;
  do
  {
    for (n = 0; n != v238; ++n)
    {
      if (*v283 != v233)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v282 + 1) + 8 * n);
      if ([v19 isAirPlayRoute])
      {
        v20 = [v19 underlyingNativeRoute];
        v21 = [*(a1 + 48) displayAsPickedRoutes];
        v223 |= [v21 containsObject:v20];

        v22 = [*(a1 + 48) pickedRoutes];
        v23 = [v22 containsObject:v20];

        v24 = [*(a1 + 48) pendingPickedRoutes];
        v243 = [v24 containsObject:v20];

        v25 = [*(a1 + 48) volumeCapableRoutes];
        v26 = [v25 containsObject:v20];
        v211 = v26 ^ [*(*(a1 + 56) + 1064) containsObject:v20];

        if ([v19 supportsAirPlayGrouping])
        {
          v256 = v23;
          v27 = *(a1 + 56);
          v28 = [*(a1 + 48) displayAsPickedRoutes];
          LODWORD(v27) = [v27 routesContainAirPlayGroupableRoute:v28];
          v29 = v27 ^ [*(a1 + 56) routesContainAirPlayGroupableRoute:*(*(a1 + 56) + 1056)];
          goto LABEL_19;
        }

        goto LABEL_20;
      }

      v30 = [*(a1 + 48) activatedVendorSpecificDeviceIDs];
      v31 = [v19 routeUID];
      v256 = [v30 containsObject:v31];

      v32 = [*(a1 + 48) pendingVendorSpecificDeviceIDs];
      v33 = [v19 routeUID];
      v34 = [v32 containsObject:v33];

      if ([v19 supportsGrouping])
      {
        v243 = v34;
        v20 = [*(a1 + 56) vendorSpecificManager];
        v28 = [*(a1 + 48) availableVendorSpecificDeviceIDs];
        v215 = [*(a1 + 48) activatedVendorSpecificDeviceIDs];
        [v19 protocolIdentifier];
        v35 = logc = v16;
        v36 = [v20 isGroupingAvailableFor:v28 activatedIDs:v215 forProtocolID:v35];
        v37 = [*(a1 + 56) vendorSpecificManager];
        v38 = *(v254 + 56);
        v39 = *(v38 + 1120);
        v40 = v17;
        v17 = *(v38 + 1104);
        v41 = [v19 protocolIdentifier];
        v42 = v39;
        v8 = v208;
        v43 = v17;
        LODWORD(v17) = v40;
        v29 = v36 ^ [v37 isGroupingAvailableFor:v42 activatedIDs:v43 forProtocolID:v41];

        a1 = v254;
        v16 = logc;

LABEL_19:
        v247 |= v29;

        v23 = v256;
LABEL_20:

        v34 = v243;
        goto LABEL_22;
      }

      v23 = v256;
LABEL_22:
      LODWORD(v17) = v17 | v23;
      v16 |= v34;
    }

    v238 = [obj countByEnumeratingWithState:&v282 objects:v301 count:16];
  }

  while (v238);
LABEL_55:

  v280 = 0u;
  v281 = 0u;
  v278 = 0u;
  v279 = 0u;
  v106 = [v8 mainRoute];
  v107 = [v106 subroutes];

  v213 = v107;
  v242 = [v107 countByEnumeratingWithState:&v278 objects:v300 count:16];
  v87 = 0;
  v86 = 0;
  if (!v242)
  {
    LOBYTE(obja) = 0;
    LOBYTE(v66) = v247;
    goto LABEL_72;
  }

  obja = 0;
  v216 = *v279;
  v66 = v247;
  v210 = v17;
  loga = v16;
  while (2)
  {
    v108 = 0;
    while (2)
    {
      if (*v279 != v216)
      {
        objc_enumerationMutation(v213);
      }

      v109 = *(*(&v278 + 1) + 8 * v108);
      if ([v109 isAirPlayRoute])
      {
        v110 = [v109 underlyingNativeRoute];
        obja |= [*(*(a1 + 56) + 1056) containsObject:v110];
        v258 = [*(*(a1 + 56) + 1032) containsObject:v110];
        v244 = [*(*(a1 + 56) + 1048) containsObject:v110];
        if ([v109 supportsAirPlayGrouping])
        {
          v235 = v87;
          v111 = *(a1 + 56);
          v112 = [*(a1 + 48) displayAsPickedRoutes];
          LODWORD(v111) = [v111 routesContainAirPlayGroupableRoute:v112];
          v113 = v111 ^ [*(a1 + 56) routesContainAirPlayGroupableRoute:*(*(a1 + 56) + 1056)];
          goto LABEL_65;
        }

        goto LABEL_66;
      }

      v114 = *(*(a1 + 56) + 1104);
      v115 = [v109 routeUID];
      v258 = [v114 containsObject:v115];

      v116 = *(*(a1 + 56) + 1112);
      v117 = [v109 routeUID];
      v118 = [v116 containsObject:v117];

      if ([v109 supportsGrouping])
      {
        v244 = v118;
        v235 = v87;
        v110 = [*(a1 + 56) vendorSpecificManager];
        v112 = [*(a1 + 48) availableVendorSpecificDeviceIDs];
        v209 = [*(a1 + 48) activatedVendorSpecificDeviceIDs];
        v119 = [v109 protocolIdentifier];
        v120 = [v110 isGroupingAvailableFor:v112 activatedIDs:v209 forProtocolID:v119];
        [*(v254 + 56) vendorSpecificManager];
        v121 = v249 = v66;
        v122 = *(v254 + 56);
        v16 = v86;
        v123 = *(v122 + 1120);
        v17 = *(v122 + 1104);
        v124 = [v109 protocolIdentifier];
        v125 = v123;
        v86 = v16;
        v113 = v120 ^ [v121 isGroupingAvailableFor:v125 activatedIDs:v17 forProtocolID:v124];

        v66 = v249;
        a1 = v254;

        LOBYTE(v17) = v210;
        LOBYTE(v16) = loga;
LABEL_65:
        v66 |= v113;

        v87 = v235;
LABEL_66:

        v118 = v244;
      }

      else
      {
        LOBYTE(v17) = v210;
        LOBYTE(v16) = loga;
      }

      v86 |= v258;
      v87 |= v118;
      if (v242 != ++v108)
      {
        continue;
      }

      break;
    }

    v242 = [v213 countByEnumeratingWithState:&v278 objects:v300 count:16];
    if (v242)
    {
      continue;
    }

    break;
  }

LABEL_72:

  if (*(*(a1 + 56) + 1368))
  {
    v236 = v87;
    v126 = v86;
    v127 = [v207 mainRoute];
    v128 = [v127 routeUID];
    v129 = [v128 isEqualToString:*(*(a1 + 56) + 1368)];

    if (v129)
    {
      v130 = *(a1 + 56);
      v131 = *(v130 + 1368);
      *(v130 + 1368) = 0;

      LOBYTE(v66) = 1;
    }

    v13 = v207;
    v8 = v208;
    v89 = v223;
    v88 = v211;
    LOBYTE(v86) = v126;
    LOBYTE(v87) = v236;
  }

  else
  {
    v13 = v207;
    v8 = v208;
    v89 = v223;
    v88 = v211;
  }

  v90 = obja;
LABEL_78:
  v7 = v89 ^ v90 | v17 ^ v86 | v16 ^ v87 | v88 | v66;
LABEL_30:

  v6 = v205;
  v5 = v206;
LABEL_31:

  return v7 & 1;
}

void __41__MRURoutingViewController__applyUpdate___block_invoke_246(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) deletedSections];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [*(a1 + 40) view];
    v5 = [v4 tableView];
    v6 = [*(a1 + 32) deletedSections];
    [v5 deleteSections:v6 withRowAnimation:0];
  }

  v7 = [*(a1 + 32) insertedSections];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [*(a1 + 40) view];
    v10 = [v9 tableView];
    v11 = [*(a1 + 32) insertedSections];
    [v10 insertSections:v11 withRowAnimation:0];
  }

  v12 = [*(a1 + 32) deletedItemIndexPaths];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [*(a1 + 40) view];
    v15 = [v14 tableView];
    v16 = [*(a1 + 32) deletedItemIndexPaths];
    [v15 deleteRowsAtIndexPaths:v16 withRowAnimation:0];
  }

  v17 = [*(a1 + 32) insertedItemIndexPaths];
  v18 = [v17 count];

  if (v18)
  {
    v19 = [*(a1 + 40) view];
    v20 = [v19 tableView];
    v21 = [*(a1 + 32) insertedItemIndexPaths];
    [v20 insertRowsAtIndexPaths:v21 withRowAnimation:0];
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __41__MRURoutingViewController__applyUpdate___block_invoke_2_247;
  v28[3] = &unk_1E7663FB0;
  v22 = *(a1 + 32);
  v28[4] = *(a1 + 40);
  [v22 enumerateItemMovesWithBlock:v28];
  v23 = [*(a1 + 32) updatedItemIndexPaths];
  v24 = [v23 count];

  if (v24)
  {
    v25 = [*(a1 + 40) view];
    v26 = [v25 tableView];
    v27 = [*(a1 + 32) updatedItemIndexPaths];
    [v26 reloadRowsAtIndexPaths:v27 withRowAnimation:0];
  }
}

void __41__MRURoutingViewController__applyUpdate___block_invoke_2_247(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [v4 view];
  v7 = [v8 tableView];
  [v7 moveRowAtIndexPath:v6 toIndexPath:v5];
}

void __41__MRURoutingViewController__applyUpdate___block_invoke_3_249(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__MRURoutingViewController__applyUpdate___block_invoke_4_250;
  block[3] = &unk_1E7663898;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void *__41__MRURoutingViewController__applyUpdate___block_invoke_4_250(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 1360))
  {
    [v2 ensureVendorSpecificGroupTreeIsVisible:?];
    v3 = *(a1 + 32);
    v4 = *(v3 + 1360);
    *(v3 + 1360) = 0;

    v2 = *(a1 + 32);
  }

  *(v2 + 1008) = 0;
  objc_storeStrong((*(a1 + 32) + 1016), *(*(a1 + 32) + 1224));
  result = *(a1 + 32);
  if (result[124])
  {

    return [result _applyUpdate:?];
  }

  return result;
}

void __41__MRURoutingViewController__applyUpdate___block_invoke_254(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1192));
  [WeakRetained routingViewControllerDidUpdateItems:*(a1 + 32)];
}

- (id)groupUIDForRoute:(id)route
{
  routeCopy = route;
  v4 = MRAVEndpointGetLocalEndpoint();
  outputDeviceUIDs = [v4 outputDeviceUIDs];
  routeUID = [routeCopy routeUID];
  v7 = [outputDeviceUIDs containsObject:routeUID];

  if (v7)
  {
    [MEMORY[0x1E69B09A8] localDeviceUID];
  }

  else
  {
    [routeCopy groupUID];
  }
  v8 = ;

  return v8;
}

- (id)_createRoutingViewItemsForUpdate:(id)update
{
  v184 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  displayableAvailableRoutes = [updateCopy displayableAvailableRoutes];
  v128 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(displayableAvailableRoutes, "count")}];
  v126 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(displayableAvailableRoutes, "count")}];
  v133 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(displayableAvailableRoutes, "count")}];
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(displayableAvailableRoutes, "count")}];
  v5 = MRAVEndpointGetLocalEndpoint();
  v6 = MEMORY[0x1E695DFD8];
  outputDeviceUIDs = [v5 outputDeviceUIDs];
  v137 = [v6 setWithArray:outputDeviceUIDs];

  localDeviceUID = [MEMORY[0x1E69B09A8] localDeviceUID];
  v111 = v5;
  outputDevices = [v5 outputDevices];
  firstObject = [outputDevices firstObject];
  v114 = [firstObject uid];

  v124 = [displayableAvailableRoutes mutableCopy];
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v10 = displayableAvailableRoutes;
  v11 = [v10 countByEnumeratingWithState:&v171 objects:v183 count:16];
  v112 = v10;
  if (!v11)
  {
    v135 = 0;
    v13 = 0;
    v138 = 0;
    goto LABEL_32;
  }

  v12 = v11;
  v135 = 0;
  v13 = 0;
  v138 = 0;
  v14 = *v172;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v172 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v171 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v16 isDeviceSpeakerRoute] & 1) == 0)
      {
        v17 = v16;
        v18 = [(MRURoutingViewController *)self groupUIDForRoute:v17];
        routeUID = [v17 routeUID];
        v20 = [routeUID isEqualToString:v114];

        if (v20)
        {
          v21 = v4;
          v22 = v17;
          v23 = localDeviceUID;
          goto LABEL_10;
        }

        if ([v17 isGroupLeader] && v18 && v18 != localDeviceUID)
        {
          v24 = [v4 objectForKeyedSubscript:v18];

          if (!v24)
          {
            v21 = v4;
            v22 = v17;
            v23 = v18;
LABEL_10:
            [v21 setObject:v22 forKeyedSubscript:v23];
LABEL_23:
            if (([v17 isLocalDeviceOrHeadphone] & 1) == 0)
            {
              if (([v17 isKnown] & 1) == 0)
              {
                ++v138;
                outputDevice = [v17 outputDevice];
                recommendation = [outputDevice recommendation];
                isConservativelyFiltered = [recommendation isConservativelyFiltered];

                v135 += isConservativelyFiltered;
                v10 = v112;
              }

              ++v13;
            }

            continue;
          }
        }

        else if (!v18)
        {
          goto LABEL_23;
        }

        expandedItemUIDs = self->_expandedItemUIDs;
        routeUID2 = [v17 routeUID];
        if (![(NSMutableSet *)expandedItemUIDs containsObject:routeUID2])
        {
          isHeadphonesRoute = [v17 isHeadphonesRoute];

          if (isHeadphonesRoute)
          {
            goto LABEL_23;
          }

          routeUID2 = [v133 objectForKeyedSubscript:v18];
          if (!routeUID2)
          {
            routeUID2 = [MEMORY[0x1E695DF70] array];
            [v133 setObject:routeUID2 forKeyedSubscript:v18];
          }

          [routeUID2 addObject:v17];
        }

        goto LABEL_23;
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v171 objects:v183 count:16];
  }

  while (v12);
LABEL_32:

  self->_allRoutesAreUnknown = v138 == v13;
  if (v135)
  {
    v32 = v138 == v13 && v135 < v138;
  }

  else
  {
    v32 = 0;
  }

  v33 = v13 < 4;
  if (v13 >= 4)
  {
    if (v138)
    {
      v35 = v138 >= v13;
    }

    else
    {
      v35 = 1;
    }

    v36 = !v35;
    v34 = v36 | v32;
  }

  else
  {
    v34 = 0;
  }

  self->_someRoutesAreFiltered = v34 & 1;
  v167[0] = MEMORY[0x1E69E9820];
  v167[1] = 3221225472;
  v167[2] = __61__MRURoutingViewController__createRoutingViewItemsForUpdate___block_invoke;
  v167[3] = &unk_1E7665010;
  v37 = v4;
  v168 = v37;
  v169 = v133;
  v38 = v124;
  v170 = v38;
  v134 = v169;
  [v169 enumerateKeysAndObjectsUsingBlock:v167];
  didSelectShowMore = self->_didSelectShowMore;
  allRoutesAreUnknown = self->_allRoutesAreUnknown;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__MRURoutingViewController__createRoutingViewItemsForUpdate___block_invoke_2;
  aBlock[3] = &unk_1E7665038;
  v110 = v128;
  v161 = v110;
  v163 = allRoutesAreUnknown;
  v164 = v32;
  v165 = v33;
  v166 = didSelectShowMore;
  v109 = v126;
  v162 = v109;
  v41 = _Block_copy(aBlock);
  v136 = v37;
  v125 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v37, "count")}];
  v158[0] = MEMORY[0x1E69E9820];
  v158[1] = 3221225472;
  v158[2] = __61__MRURoutingViewController__createRoutingViewItemsForUpdate___block_invoke_3;
  v158[3] = &unk_1E7664DF0;
  v118 = updateCopy;
  v159 = v118;
  v42 = [v38 msv_compactMap:v158];
  v113 = v42;
  if ([v42 count] < 2)
  {
    v43 = 0;
  }

  else
  {
    v43 = [v42 objectAtIndexedSubscript:0];
  }

  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  obj = v38;
  v122 = [obj countByEnumeratingWithState:&v154 objects:v182 count:16];
  if (v122)
  {
    v44 = *v155;
    v115 = *v155;
    v116 = v43;
    do
    {
      v45 = 0;
      do
      {
        if (*v155 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v46 = *(*(&v154 + 1) + 8 * v45);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if ([v46 isGroupSession])
            {
              v55 = [MEMORY[0x1E6970498] itemWithRoute:v46];
              v41[2](v41, v55);
              goto LABEL_134;
            }

            goto LABEL_135;
          }

          v52 = v46;
          v53 = [(MRURoutingViewController *)self groupUIDForRoute:v52];
          routeUID3 = [v52 routeUID];
          v120 = v45;
          if ([v137 containsObject:routeUID3])
          {
            v55 = v52;
            isHeadphonesRoute2 = [v52 isHeadphonesRoute];

            if ((isHeadphonesRoute2 & 1) == 0)
            {
              routeUID3 = v53;
              v53 = localDeviceUID;
              goto LABEL_97;
            }
          }

          else
          {
            v55 = v52;
LABEL_97:
          }

          v77 = [v136 objectForKeyedSubscript:v53];
          v78 = [v134 objectForKeyedSubscript:v53];
          v79 = [(NSMutableSet *)self->_expandedGroupUIDs containsObject:v53];
          if (v77 && (v80 = v79, v81 = [v78 count], v53) && v81 && (objc_msgSend(v78, "arrayByAddingObject:", v77), v82 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v125, "setObject:forKeyedSubscript:", v82, v53), v82, (v80 & 1) == 0))
          {
            if (v55 == v77)
            {
              v85 = [MEMORY[0x1E6970498] itemWithLeader:v55 members:v78];
              v41[2](v41, v85);
              goto LABEL_132;
            }
          }

          else
          {
            nativeRoutesInVendorSpecificGroup = [v118 nativeRoutesInVendorSpecificGroup];
            v84 = [nativeRoutesInVendorSpecificGroup containsObject:v55];

            if ((v84 & 1) == 0)
            {
              v140 = v78;
              v85 = [MEMORY[0x1E6970498] itemWithRoute:v55];
              expandedRouteUIDs = self->_expandedRouteUIDs;
              routeUID4 = [v55 routeUID];
              [v85 setExpanded:{-[NSMutableSet containsObject:](expandedRouteUIDs, "containsObject:", routeUID4)}];

              v41[2](v41, v85);
              if ([v85 isExpanded])
              {
                v132 = v77;
                v144 = 0u;
                v145 = 0u;
                v142 = 0u;
                v143 = 0u;
                subRoutes = [v55 subRoutes];
                v89 = [subRoutes countByEnumeratingWithState:&v142 objects:v175 count:16];
                if (v89)
                {
                  v90 = v89;
                  v91 = *v143;
                  do
                  {
                    for (j = 0; j != v90; ++j)
                    {
                      if (*v143 != v91)
                      {
                        objc_enumerationMutation(subRoutes);
                      }

                      v93 = [MEMORY[0x1E6970498] itemWithRoute:*(*(&v142 + 1) + 8 * j)];
                      v41[2](v41, v93);
                    }

                    v90 = [subRoutes countByEnumeratingWithState:&v142 objects:v175 count:16];
                  }

                  while (v90);
                }

                v77 = v132;
              }

              v78 = v140;
LABEL_132:
            }
          }

          v44 = v115;
          v43 = v116;
          v45 = v120;
          goto LABEL_134;
        }

        v47 = v46;
        v48 = v47;
        v127 = v47;
        if (v43 && !self->_didExpandVendorSpecificSpeakerGroup)
        {
          if (v43 == v47)
          {
            v101 = v45;
            v50 = [MEMORY[0x1E6970498] itemWithVendorSpecificLeader:v43 members:v113];
            v102 = (v41[2])(v41, v50);
            v103 = MCLogCategoryDeviceAccess(v102);
            if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
            {
              localizedTitle = [v50 localizedTitle];
              localizedSubtitle = [v50 localizedSubtitle];
              *buf = 138412546;
              v179 = localizedTitle;
              v180 = 2112;
              v181 = localizedSubtitle;
              _os_log_impl(&dword_1A20FC000, v103, OS_LOG_TYPE_DEFAULT, "Adding vendor specific speaker group: %@, %@", buf, 0x16u);

              v44 = v115;
              v43 = v116;
            }

            v45 = v101;
            goto LABEL_129;
          }

          v49 = [v113 containsObject:v47];
          v48 = v127;
          if (v49)
          {
            v50 = MCLogCategoryDeviceAccess(v49);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              routeName = [v127 routeName];
              *buf = 138412290;
              v179 = routeName;
              _os_log_impl(&dword_1A20FC000, v50, OS_LOG_TYPE_DEFAULT, "Skipping member speaker in vendor specific group: %@@", buf, 0xCu);
            }

            goto LABEL_129;
          }
        }

        if (![v48 isGroup])
        {
          v50 = [MEMORY[0x1E6970498] itemWithVendorSpecificRoute:v48];
          v41[2](v41, v50);
          goto LABEL_129;
        }

        v121 = v45;
        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        subroutes = [v48 subroutes];
        v58 = [subroutes countByEnumeratingWithState:&v150 objects:v177 count:16];
        if (!v58)
        {

          goto LABEL_116;
        }

        v59 = v58;
        v60 = *v151;
        v119 = 1;
        v129 = *v151;
        v131 = subroutes;
        while (2)
        {
          v61 = 0;
          v139 = v59;
          do
          {
            if (*v151 != v60)
            {
              objc_enumerationMutation(subroutes);
            }

            v62 = *(*(&v150 + 1) + 8 * v61);
            if ([v62 isAirPlayRoute])
            {
              underlyingNativeRoute = [v62 underlyingNativeRoute];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v64 = underlyingNativeRoute;
                v65 = [(MRURoutingViewController *)self groupUIDForRoute:v64];
                routeUID5 = [v64 routeUID];
                if (![v137 containsObject:routeUID5])
                {
                  goto LABEL_79;
                }

                isHeadphonesRoute3 = [v64 isHeadphonesRoute];

                if ((isHeadphonesRoute3 & 1) == 0)
                {
                  routeUID5 = v65;
                  v65 = localDeviceUID;
LABEL_79:
                }

                v68 = [v136 objectForKeyedSubscript:v65];
                v69 = [v134 objectForKeyedSubscript:v65];
                v70 = [(NSMutableSet *)self->_expandedGroupUIDs containsObject:v65];
                if (!v68)
                {
                  goto LABEL_86;
                }

                v71 = v70;
                v72 = [v69 count];
                v73 = 1;
                if (v65 && v72)
                {
                  v74 = [v69 arrayByAddingObject:v68];
                  [v125 setObject:v74 forKeyedSubscript:v65];

                  if ((v71 & 1) == 0)
                  {
                    nativeRoutesInVendorSpecificGroup2 = [v118 nativeRoutesInVendorSpecificGroup];
                    v76 = [nativeRoutesInVendorSpecificGroup2 containsObject:v64];

                    if (v76)
                    {
                      v73 = 0;
                      v119 &= [(MRURoutingViewController *)self shouldSuppressNativeRoutesStatusDisplay];
                      goto LABEL_87;
                    }
                  }

LABEL_86:
                  v73 = 1;
                }

LABEL_87:

                if (!v73)
                {

                  goto LABEL_113;
                }

                v60 = v129;
                subroutes = v131;
                v59 = v139;
              }
            }

            ++v61;
          }

          while (v59 != v61);
          v59 = [subroutes countByEnumeratingWithState:&v150 objects:v177 count:16];
          if (v59)
          {
            continue;
          }

          break;
        }

LABEL_113:
        if ((v119 & 1) == 0)
        {
          v44 = v115;
          v43 = v116;
          v45 = v121;
          goto LABEL_130;
        }

LABEL_116:
        v50 = [MEMORY[0x1E6970498] itemWithVendorSpecificRoute:v127];
        v41[2](v41, v50);
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        subroutes2 = [v127 subroutes];
        v95 = [subroutes2 countByEnumeratingWithState:&v146 objects:v176 count:16];
        if (v95)
        {
          v96 = v95;
          v97 = *v147;
          do
          {
            for (k = 0; k != v96; ++k)
            {
              if (*v147 != v97)
              {
                objc_enumerationMutation(subroutes2);
              }

              v99 = *(*(&v146 + 1) + 8 * k);
              if ([v99 shouldBeDisplayed])
              {
                v100 = [MEMORY[0x1E6970498] itemWithVendorSpecificRoute:v99];
                v41[2](v41, v100);
              }
            }

            v96 = [subroutes2 countByEnumeratingWithState:&v146 objects:v176 count:16];
          }

          while (v96);
        }

        v44 = v115;
        v43 = v116;
        v45 = v121;
LABEL_129:

LABEL_130:
        v55 = v127;
LABEL_134:

LABEL_135:
        ++v45;
      }

      while (v45 != v122);
      v106 = [obj countByEnumeratingWithState:&v154 objects:v182 count:16];
      v122 = v106;
    }

    while (v106);
  }

  v107 = objc_alloc_init(MRURoutingViewControllerItems);
  [(MRURoutingViewControllerItems *)v107 setRouteGrouping:v125];
  [(MRURoutingViewControllerItems *)v107 setLocalDevicesAndHeadphones:v110];
  [(MRURoutingViewControllerItems *)v107 setSpeakersAndTVs:v109];
  [(MRURoutingViewControllerItems *)v107 setCustomRows:self->_staticCustomRowItems];

  return v107;
}

void __61__MRURoutingViewController__createRoutingViewItemsForUpdate___block_invoke(id *a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [a1[4] objectForKeyedSubscript:v13];

  if (!v6)
  {
    v7 = [v5 firstObject];
    [a1[4] setObject:v7 forKeyedSubscript:v13];

    v8 = [v5 subarrayWithRange:{1, objc_msgSend(v5, "count") - 1}];

    [a1[5] setObject:v8 forKeyedSubscript:v13];
    v5 = v8;
  }

  v9 = [a1[4] objectForKeyedSubscript:v13];
  if ([v5 count])
  {
    v10 = 0;
    do
    {
      v11 = [v5 objectAtIndexedSubscript:v10];
      v12 = v11;
      if (!v9 || v9 == v11)
      {
        ++v10;
      }

      else
      {
        [a1[6] removeObject:v11];
        [a1[6] insertObject:v12 atIndex:{++v10 + objc_msgSend(a1[6], "indexOfObject:", v9)}];
      }
    }

    while ([v5 count] > v10);
  }
}

void __61__MRURoutingViewController__createRoutingViewItemsForUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 mainRoute];
  if (([v3 isLocalDeviceOrHeadphone] & 1) != 0 || (objc_msgSend(v3, "isWiredDevice") & 1) != 0 || objc_msgSend(v3, "isGroupSession"))
  {
    v4 = *(a1 + 32);
LABEL_5:
    [v4 addObject:v13];
    goto LABEL_6;
  }

  v5 = [MEMORY[0x1E69B0B08] currentSettings];
  v6 = [v5 supportShowMore];

  if (!v6)
  {
    v4 = *(a1 + 40);
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 outputDevice];
  v10 = [v9 recommendation];
  v11 = [v10 isConservativelyFiltered];

  v12 = ([v3 isKnown] & 1) == 0 && *(a1 + 48) == 0;
  if (*(a1 + 50))
  {
    goto LABEL_18;
  }

  if (!*(a1 + 49))
  {
    v11 = v12;
  }

  if (([v3 isPicked] & 1) != 0 || !v11 || *(a1 + 51) == 1)
  {
LABEL_18:
    [*(a1 + 40) addObject:v13];
  }

LABEL_6:
}

id __61__MRURoutingViewController__createRoutingViewItemsForUpdate___block_invoke_3(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = 0;
    goto LABEL_16;
  }

  v4 = v3;
  if ([v4 isGroup])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [v4 subroutes];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
LABEL_5:
      v9 = 0;
      while (1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = [*(a1 + 32) activatedVendorSpecificDeviceIDs];
        v12 = [v10 routeUID];
        v13 = [v11 containsObject:v12];

        if (v13)
        {
          goto LABEL_15;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v7)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }
  }

  else
  {
    v14 = [*(a1 + 32) activatedVendorSpecificDeviceIDs];
    v15 = [v4 routeUID];
    v16 = [v14 containsObject:v15];

    if (v16)
    {
      goto LABEL_16;
    }
  }

  v5 = v4;
  v4 = 0;
LABEL_15:

LABEL_16:

  return v4;
}

- (void)_collapseAllGroups
{
  [(NSMutableSet *)self->_expandedGroupUIDs removeAllObjects];
  [(NSMutableSet *)self->_expandedItemUIDs removeAllObjects];
  [(NSMutableSet *)self->_expandedRouteUIDs removeAllObjects];
  self->_didExpandVendorSpecificSpeakerGroup = 0;
}

- (void)_collapseAllGroupsAfterDelay
{
  [(NSTimer *)self->_collapseTimer invalidate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__MRURoutingViewController__collapseAllGroupsAfterDelay__block_invoke;
  v5[3] = &unk_1E7663F10;
  v5[4] = self;
  v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v5 block:2.0];
  collapseTimer = self->_collapseTimer;
  self->_collapseTimer = v3;
}

void __56__MRURoutingViewController__collapseAllGroupsAfterDelay__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _collapseAllGroups];
  [*(a1 + 32) _setNeedsDisplayedRoutesUpdate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1344);
  *(v2 + 1344) = 0;
}

- (id)_createSectionedCollection:(id)collection withPickedRoutes:(id)routes
{
  v28[1] = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  v7 = MEMORY[0x1E6970818];
  collectionCopy = collection;
  v9 = objc_alloc_init(v7);
  localDevicesAndHeadphones = [collectionCopy localDevicesAndHeadphones];
  speakersAndTVs = [collectionCopy speakersAndTVs];
  customRows = [collectionCopy customRows];

  v13 = [speakersAndTVs arrayByAddingObjectsFromArray:customRows];

  if ([localDevicesAndHeadphones count])
  {
    [v9 appendSection:@"LOCAL DEVICES"];
    [v9 appendItems:localDevicesAndHeadphones];
    endpointRoute = [(MRURoutingViewController *)self endpointRoute];
    if ([endpointRoute isSplitRoute])
    {
LABEL_11:

      goto LABEL_12;
    }

    v15 = [(MRURoutingViewController *)self routesContainSplitterCapableRoute:routesCopy];

    if (!v15)
    {
      goto LABEL_12;
    }

    isInVehicle = [(MRURoutingViewController *)self isInVehicle];
    if ([(MRURoutingViewController *)self isInCarPlay])
    {
      v17 = +[MRUStringsProvider audioSharingDisabledCarPlay];
    }

    else
    {
      if (![(MRURoutingViewController *)self hasCarKitRoute])
      {
        endpointRoute = 0;
        goto LABEL_10;
      }

      v17 = +[MRUStringsProvider audioShaingDisabledCarKit];
    }

    endpointRoute = v17;
LABEL_10:
    v18 = MEMORY[0x1E6970498];
    v19 = +[MRUStringsProvider audioShaingActionTitle];
    v20 = [v18 itemWithActionTitle:v19 subtitle:endpointRoute enabled:!isInVehicle identifier:*MEMORY[0x1E696F8A8] image:0];

    v28[0] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    [v9 appendItems:v21];

    goto LABEL_11;
  }

LABEL_12:
  if ([v13 count])
  {
    v22 = +[MRUStringsProvider routingHeaderSpeakersAndTVsTitle];
    [v9 appendSection:v22];

    if ([(MRURoutingViewController *)self _shouldShowShowMoreButton])
    {
      v23 = MEMORY[0x1E6970498];
      v24 = +[MRUStringsProvider routingFooterShowMoreTitle];
      v25 = [v23 itemWithActionTitle:v24 subtitle:0 enabled:1 identifier:@"Show more" image:0];

      v26 = [v13 arrayByAddingObject:v25];

      v13 = v26;
    }

    [v9 appendItems:v13];
  }

  return v9;
}

- (BOOL)routesContainMultipleBuiltIn:(id)in
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  inCopy = in;
  v4 = [inCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(inCopy);
        }

        if ([*(*(&v11 + 1) + 8 * v8) pickableRouteType])
        {
          v6 = v9;
        }

        else
        {
          v6 = 1;
          if (v9)
          {
            goto LABEL_12;
          }
        }

        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [inCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  LOBYTE(v6) = 0;
LABEL_12:

  return v6;
}

- (BOOL)routesContainSplitterCapableRoute:(id)route
{
  v14 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  if (routesContainSplitterCapableRoute__onceToken != -1)
  {
    [MRURoutingViewController routesContainSplitterCapableRoute:];
  }

  if (routesContainSplitterCapableRoute____supportsWirelessSplitting == 1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = routeCopy;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = *v10;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v9 + 1) + 8 * i) isSplitterCapable])
          {
            LOBYTE(v5) = 1;
            goto LABEL_15;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

uint64_t __62__MRURoutingViewController_routesContainSplitterCapableRoute___block_invoke()
{
  result = MGGetBoolAnswer();
  routesContainSplitterCapableRoute____supportsWirelessSplitting = result;
  return result;
}

- (BOOL)routesContainAirPlayGroupableRoute:(id)route
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  routeCopy = route;
  v4 = [routeCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(routeCopy);
        }

        if ([*(*(&v8 + 1) + 8 * i) supportsAirPlayGrouping])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [routeCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)ensureVendorSpecificGroupTreeIsVisible:(id)visible
{
  v39 = *MEMORY[0x1E69E9840];
  visibleCopy = visible;
  v5 = [(MPSectionedCollection *)self->_routingViewItems itemAtIndexPath:visibleCopy];
  mainRoute = [v5 mainRoute];
  subroutes = [mainRoute subroutes];
  v8 = [subroutes msv_compactMap:&__block_literal_global_271];
  v9 = [v8 count];

  v10 = [visibleCopy row] + v9;
  view = [(MRURoutingViewController *)self view];
  tableView = [view tableView];
  v13 = [tableView numberOfRowsInSection:{objc_msgSend(visibleCopy, "section")}];

  if (v10 >= v13)
  {
    v15 = MCLogCategoryDeviceAccess(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [visibleCopy row] + v9;
      view2 = [(MRURoutingViewController *)self view];
      tableView2 = [view2 tableView];
      v35 = 134218240;
      v36 = v16;
      v37 = 2048;
      v38 = [tableView2 numberOfRowsInSection:{objc_msgSend(visibleCopy, "section")}];
      _os_log_impl(&dword_1A20FC000, v15, OS_LOG_TYPE_DEFAULT, "ensureVendorSpecificGroupTreeIsVisible - Want to scroll to row %lu, but there are only %ld rows", &v35, 0x16u);
    }
  }

  v19 = MEMORY[0x1E696AC88];
  v20 = [visibleCopy row] + v9;
  view3 = [(MRURoutingViewController *)self view];
  tableView3 = [view3 tableView];
  v23 = [tableView3 numberOfRowsInSection:{objc_msgSend(visibleCopy, "section")}];

  if (v20 >= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v20;
  }

  v25 = [v19 indexPathForRow:v24 inSection:{objc_msgSend(visibleCopy, "section")}];
  view4 = [(MRURoutingViewController *)self view];
  tableView4 = [view4 tableView];
  indexPathsForVisibleRows = [tableView4 indexPathsForVisibleRows];
  lastObject = [indexPathsForVisibleRows lastObject];

  section = [lastObject section];
  if (section < [v25 section] || (v33 = objc_msgSend(lastObject, "section"), v33 == objc_msgSend(v25, "section")) && (v34 = objc_msgSend(lastObject, "row"), v34 < objc_msgSend(v25, "row")))
  {
    view5 = [(MRURoutingViewController *)self view];
    tableView5 = [view5 tableView];
    [tableView5 scrollToRowAtIndexPath:v25 atScrollPosition:3 animated:1];
  }
}

id __67__MRURoutingViewController_ensureVendorSpecificGroupTreeIsVisible___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 shouldBeDisplayed])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_shouldShowShowMoreButton
{
  currentSettings = [MEMORY[0x1E69B0B08] currentSettings];
  supportShowMore = [currentSettings supportShowMore];

  return supportShowMore && self->_someRoutesAreFiltered && !self->_didSelectShowMore;
}

- (id)symbolNameForVendorSpecificRoute:(id)route
{
  vendorSpecificRouteType = [route vendorSpecificRouteType];
  if ((vendorSpecificRouteType - 1) > 4)
  {
    return @"hifispeaker.fill";
  }

  else
  {
    return off_1E7665138[vendorSpecificRouteType - 1];
  }
}

- (BOOL)handleSelectedRoutingViewItem:(id)item operation:(int64_t)operation
{
  v60[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  routes = [itemCopy routes];
  mainRoute = [itemCopy mainRoute];
  [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager disconnectAllDevices];
  if ([itemCopy type] == 5)
  {
    v8 = mainRoute;
    if (![v8 isAirPlayRoute])
    {
      mainRoute = v8;
      goto LABEL_9;
    }

    mainRoute = [v8 underlyingNativeRoute];

    v60[0] = mainRoute;
    v9 = v60;
    goto LABEL_7;
  }

  type = [itemCopy type];
  if (type != 4)
  {
    goto LABEL_10;
  }

  vendorSpecificGroupDisplayedSubroutes = self->_vendorSpecificGroupDisplayedSubroutes;
  routeUID = [mainRoute routeUID];
  v8 = [(NSMutableDictionary *)vendorSpecificGroupDisplayedSubroutes objectForKeyedSubscript:routeUID];

  if ([v8 isAirPlayRoute])
  {
    underlyingNativeRoute = [v8 underlyingNativeRoute];

    v59 = underlyingNativeRoute;
    v9 = &v59;
    mainRoute = underlyingNativeRoute;
LABEL_7:
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

    routes = v14;
  }

LABEL_9:

LABEL_10:
  if (mainRoute)
  {
    v48 = itemCopy;
    self->_hasUserSelections = 1;
    operationCopy = operation;
    if (operation == 2)
    {
      if ([(MRURoutingViewController *)self shouldSuppressNativeRoutesStatusDisplay])
      {
        operationCopy = 1;
      }

      else
      {
        operationCopy = 2;
      }
    }

    self->_didLastPickNativeRoute = 1;
    pickedRoutes = [(MPAVRoutingController *)self->_routingController pickedRoutes];
    activeSession = [(MRGroupSessionDiscovery *)self->_groupSessionDiscovery activeSession];
    v18 = mainRoute;
    v19 = mainRoute;
    v20 = operationCopy;
    v47 = [(MRURoutingViewController *)self _wouldShareAudioForPickedRoute:v19 operation:operationCopy pickedRoutes:pickedRoutes];
    supportsMultipleSelection = [(MPAVRoutingController *)self->_routingController supportsMultipleSelection];
    endpointRoute = [(MRURoutingViewController *)self endpointRoute];
    isGroupSession = [endpointRoute isGroupSession];

    v49 = activeSession;
    if (activeSession)
    {
      endpointRoute2 = [(MRURoutingViewController *)self endpointRoute];
      endpointObject = [endpointRoute2 endpointObject];
      isLocalEndpoint = [endpointObject isLocalEndpoint];
    }

    else
    {
      isLocalEndpoint = 0;
    }

    itemCopy = v48;
    v27 = isGroupSession & isLocalEndpoint;
    if (operation == 1 && ![v48 type])
    {
      expandedItemUIDs = self->_expandedItemUIDs;
      routeUID2 = [v18 routeUID];
      [(NSMutableSet *)expandedItemUIDs addObject:routeUID2];
    }

    v30 = v20;
    mainRoute = v18;
    if (v27 && [(MRURoutingViewController *)self _wouldEndGroupSessionForViewItem:v48 operation:v30 pickedRoutes:pickedRoutes])
    {
      participants = [(MRGroupSession *)self->_activeGroupSession participants];
      v32 = [participants count];

      v34 = MCLogCategoryDefault(v33);
      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
      if (v32)
      {
        if (v35)
        {
          activeGroupSession = self->_activeGroupSession;
          *buf = 138543618;
          v56 = mainRoute;
          v57 = 2114;
          v58 = activeGroupSession;
          _os_log_impl(&dword_1A20FC000, v34, OS_LOG_TYPE_DEFAULT, "[MRURoutingViewController] User picked route that would end hosted group session. Route: %{public}@, active group session: %{public}@", buf, 0x16u);
        }

        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __68__MRURoutingViewController_handleSelectedRoutingViewItem_operation___block_invoke;
        v51[3] = &unk_1E7665080;
        v51[4] = self;
        v52 = routes;
        v54 = v30;
        v53 = v48;
        [(MRURoutingViewController *)self _displayEndGroupSessionWithCompletion:v51];

        goto LABEL_48;
      }

      if (v35)
      {
        v37 = self->_activeGroupSession;
        *buf = 138543362;
        v56 = v37;
        _os_log_impl(&dword_1A20FC000, v34, OS_LOG_TYPE_DEFAULT, "[MRURoutingViewController] Continuing with action while in hosted group session because session has no participants: %{public}@", buf, 0xCu);
      }
    }

    isDiscoveredGroupSession = [mainRoute isDiscoveredGroupSession];
    if (isDiscoveredGroupSession)
    {
      v39 = MCLogCategoryDefault(isDiscoveredGroupSession);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v56 = mainRoute;
        _os_log_impl(&dword_1A20FC000, v39, OS_LOG_TYPE_DEFAULT, "[MRURoutingViewController] User picked route that will join group session: %{public}@", buf, 0xCu);
      }

      [(MRURoutingViewController *)self handleGroupSessionJoinWithPickedRoute:mainRoute];
    }

    else if (v30 == 2 && (v40 = [mainRoute isDeviceSpeakerRoute], v40))
    {
      v41 = MCLogCategoryDefault(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A20FC000, v41, OS_LOG_TYPE_DEFAULT, "[MRURoutingViewController] RCS cannot remove device route", buf, 2u);
      }
    }

    else
    {
      isInVehicle = [(MRURoutingViewController *)self isInVehicle];
      if ((isInVehicle & supportsMultipleSelection & v47) != 1)
      {
        [(MRURoutingViewController *)self selectRoutes:routes operation:v30 routingViewItem:v48];
LABEL_48:
        v26 = 1;
LABEL_52:

        goto LABEL_53;
      }

      v43 = MCLogCategoryDefault(isInVehicle);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v56 = mainRoute;
        v57 = 2114;
        v58 = pickedRoutes;
        _os_log_impl(&dword_1A20FC000, v43, OS_LOG_TYPE_DEFAULT, "[MRURoutingViewController] Can't share audio while in the Car. Route: %{public}@, picked: %{public}@", buf, 0x16u);
      }

      if ([(MRURoutingViewController *)self isInCarPlay])
      {
        +[MRUStringsProvider audioSharingDisabledCarPlaySameOwner];
      }

      else
      {
        +[MRUStringsProvider audioSharingDisabledCarKitSameOwner];
      }
      v44 = ;
      [(MRURoutingViewController *)self _displayShareAudioDisabledAlertForReason:v44];
    }

    v26 = 0;
    goto LABEL_52;
  }

  pickedRoutes = MCLogCategoryDefault(type);
  if (os_log_type_enabled(pickedRoutes, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1A20FC000, pickedRoutes, OS_LOG_TYPE_ERROR, "[MRURoutingViewController] RCS attempted to select a nil route, ignoring.", buf, 2u);
  }

  v26 = 0;
LABEL_53:

  return v26;
}

id *__68__MRURoutingViewController_handleSelectedRoutingViewItem_operation___block_invoke(id *result, int a2)
{
  if (a2)
  {
    return [result[4] selectRoutes:result[5] operation:result[7] routingViewItem:result[6]];
  }

  return result;
}

- (void)selectRoutes:(id)routes operation:(int64_t)operation routingViewItem:(id)item
{
  itemCopy = item;
  routingController = self->_routingController;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__MRURoutingViewController_selectRoutes_operation_routingViewItem___block_invoke;
  v11[3] = &unk_1E76650A8;
  v13 = operation == 1;
  v11[4] = self;
  v12 = itemCopy;
  v10 = itemCopy;
  [(MPAVRoutingController *)routingController selectRoutes:routes operation:operation completion:v11];
}

void __67__MRURoutingViewController_selectRoutes_operation_routingViewItem___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    block[5] = v5;
    block[6] = v4;
    block[9] = v2;
    block[10] = v3;
    v7 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__MRURoutingViewController_selectRoutes_operation_routingViewItem___block_invoke_2;
    block[3] = &unk_1E7663898;
    block[4] = *(a1 + 32);
    v8 = MEMORY[0x1E69E96A0];
    dispatch_after(v7, MEMORY[0x1E69E96A0], block);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67__MRURoutingViewController_selectRoutes_operation_routingViewItem___block_invoke_294;
    v10[3] = &unk_1E7663DF8;
    v12 = *(a1 + 48);
    v9 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v9;
    dispatch_async(v8, v10);
  }
}

void __67__MRURoutingViewController_selectRoutes_operation_routingViewItem___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) endpointRoute];
  v3 = [v2 endpointObject];

  if (v3)
  {
    v5 = +[MRURouteRecommender sharedInstance];
    v6 = [*(a1 + 32) donatingAppBundleID];
    -[NSObject donatePickerChoiceFor:bundleID:isEligibleApp:reason:](v5, "donatePickerChoiceFor:bundleID:isEligibleApp:reason:", v3, v6, [*(a1 + 32) isDonatingAppEligible], @"selectRoutes");
  }

  else
  {
    v5 = MCLogCategoryDefault(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = *(a1 + 32);
      v9 = [v8 endpointRoute];
      v10 = 138543874;
      v11 = v7;
      v12 = 2048;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_ERROR, "%{public}@<%p> Attempt to donate nil endpoint from route:%@", &v10, 0x20u);
    }
  }
}

void __67__MRURoutingViewController_selectRoutes_operation_routingViewItem___block_invoke_294(uint64_t a1)
{
  if (!+[MRUFeatureFlagProvider isRoutePickerNotCollapseGroupAutomaticallyEnabled]&& *(a1 + 48) == 1)
  {
    [*(a1 + 32) _collapseAllGroupsAfterDelay];
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1192));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained routingViewController:*(a1 + 32) didSelectRoutingViewItem:*(a1 + 40)];
  }
}

- (void)fetchAvailableRoutesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  routingController = self->_routingController;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__MRURoutingViewController_fetchAvailableRoutesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E76650F0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(MPAVRoutingController *)routingController fetchAvailableRoutesWithCompletionHandler:v7];
}

void __70__MRURoutingViewController_fetchAvailableRoutesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = [a2 mutableCopy];
  v3 = *(*(a1 + 32) + 1224);
  v4 = *(*(a1 + 32) + 1416);
  v5 = *(*(a1 + 32) + 1248);
  if (v5)
  {
    v6 = v5;
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696AAE8] mainBundle];
    v6 = [v7 bundleIdentifier];

    if (!v4)
    {
      goto LABEL_13;
    }
  }

  if ([v3 isDeviceRoute])
  {
    v8 = MRBundlePermittedForJoiningGroupSessions() ^ 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = [v3 isDeviceRoute];
  v10 = [v4 activeSession];
  v11 = v10;
  if (v9 && (v8 & 1) == 0 && !v10)
  {
    v12 = [v4 discoveredSessions];
    v13 = [v12 msv_map:&__block_literal_global_297];

    [v14 addObjectsFromArray:v13];
  }

LABEL_13:
  (*(*(a1 + 40) + 16))();
}

MRUDiscoveredGroupSessionRoute *__70__MRURoutingViewController_fetchAvailableRoutesWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRUDiscoveredGroupSessionRoute alloc] initWithDiscoveredGroupSession:v2];

  return v3;
}

- (void)groupSessionDiscovery:(id)discovery discoveredSessionsDidChange:(id)change
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__MRURoutingViewController_groupSessionDiscovery_discoveredSessionsDidChange___block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)groupSessionDiscovery:(id)discovery activeSessionDidChange:(id)change
{
  changeCopy = change;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__MRURoutingViewController_groupSessionDiscovery_activeSessionDidChange___block_invoke;
  v7[3] = &unk_1E76639D0;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

uint64_t __73__MRURoutingViewController_groupSessionDiscovery_activeSessionDidChange___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 1424);
  if (v2)
  {
    v3 = [v2 identifier];
    v4 = [*(a1 + 40) identifier];
    v5 = v4;
    if (v3 == v4)
    {
    }

    else
    {
      v6 = [v3 isEqual:v4];

      if ((v6 & 1) == 0)
      {
        v7 = MCLogCategoryDefault(v2);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [*(*(a1 + 32) + 1424) identifier];
          v19 = 138543362;
          v20 = v8;
          _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "[MRURoutingViewController] End observing group session: %{public}@", &v19, 0xCu);
        }

        v9 = *(a1 + 32);
        v10 = *(v9 + 1424);
        *(v9 + 1424) = 0;
      }
    }
  }

  if (*(a1 + 40))
  {
    v11 = MCLogCategoryDefault(v2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 40) identifier];
      v19 = 138543362;
      v20 = v12;
      _os_log_impl(&dword_1A20FC000, v11, OS_LOG_TYPE_DEFAULT, "[MRURoutingViewController] Begin observing group session: %{public}@", &v19, 0xCu);
    }

    v13 = MEMORY[0x1E69B0A40];
    v14 = [*(a1 + 40) identifier];
    v15 = [v13 remoteControlGroupSessionWithIdentifier:v14 delegate:*(a1 + 32)];
    v16 = *(a1 + 32);
    v17 = *(v16 + 1424);
    *(v16 + 1424) = v15;
  }

  return [*(a1 + 32) _updateDisplayedRoutes];
}

- (void)groupSessionDidConnect:(id)connect
{
  v7 = *MEMORY[0x1E69E9840];
  connectCopy = connect;
  v4 = MCLogCategoryDefault(connectCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = connectCopy;
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "[MRURoutingViewController] Connected to group session: %{public}@", &v5, 0xCu);
  }
}

- (void)groupSession:(id)session didInvalidateWithError:(id)error
{
  v14 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  errorCopy = error;
  v8 = MCLogCategoryDefault(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v11 = sessionCopy;
    v12 = 2114;
    v13 = errorCopy;
    _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "[MRURoutingViewController] Group session invalidated: %{public}@ with error: %{public}@", buf, 0x16u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MRURoutingViewController_groupSession_didInvalidateWithError___block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __64__MRURoutingViewController_groupSession_didInvalidateWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1424);
  *(v2 + 1424) = 0;

  v4 = *(a1 + 32);

  return [v4 _updateDisplayedRoutes];
}

- (id)_stateDumpObject
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v2 = MEMORY[0x1E69E96A0];
  msv_dispatch_sync_on_queue();

  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __44__MRURoutingViewController__stateDumpObject__block_invoke(uint64_t a1)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v11[0] = @"_obj";
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>", objc_opt_class(), *(a1 + 32)];
  v12[0] = v2;
  v11[1] = @"endpointRoute";
  v3 = [*(a1 + 32) endpointRoute];
  v4 = v3;
  v5 = @"<NONE>";
  if (v3)
  {
    v5 = v3;
  }

  v12[1] = v5;
  v11[2] = @"routeDiscoveryMode";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(a1 + 32) + 1176), "discoveryMode")}];
  v12[2] = v6;
  v11[3] = @"onScreen";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 1166)];
  v12[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (id)_fullStateDumpObject
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v2 = MEMORY[0x1E69E96A0];
  msv_dispatch_sync_on_queue();

  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __48__MRURoutingViewController__fullStateDumpObject__block_invoke(uint64_t a1)
{
  v42[29] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>", objc_opt_class(), *(a1 + 32), @"_obj"];
  v42[0] = v2;
  v41[1] = @"endpointRoute";
  v3 = [*(a1 + 32) endpointRoute];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"<NONE>";
  }

  v42[1] = v5;
  v41[2] = @"displayedEndpointRoute";
  v6 = *(a1 + 32);
  v7 = *(v6 + 1016);
  if (!v7)
  {
    v7 = @"<NONE>";
  }

  v42[2] = v7;
  v41[3] = @"routeDiscoveryMode";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(v6 + 1176), "discoveryMode")}];
  v42[3] = v8;
  v41[4] = @"onScreen";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 1166)];
  v42[4] = v9;
  v41[5] = @"inCarPlay";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "isInCarPlay")}];
  v42[5] = v10;
  v41[6] = @"groupSessionDiscovery";
  v11 = [*(a1 + 32) groupSessionDiscovery];
  v12 = [v11 debugDescription];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"<NONE>";
  }

  v42[6] = v14;
  v41[7] = @"expandedGroupUIDs";
  v15 = *(a1 + 32);
  v16 = v15[162];
  if (!v16)
  {
    v16 = @"<NONE>";
  }

  v42[7] = v16;
  v41[8] = @"expandedItemUIDs";
  v17 = v15[163];
  if (!v17)
  {
    v17 = @"<NONE>";
  }

  v42[8] = v17;
  v41[9] = @"expandedRouteUIDs";
  v18 = v15[164];
  if (!v18)
  {
    v18 = @"<NONE>";
  }

  v42[9] = v18;
  v41[10] = @"expandedVendorSpecificGroupUIDs";
  v19 = v15[173];
  if (!v19)
  {
    v19 = @"<NONE>";
  }

  v42[10] = v19;
  v41[11] = @"collapsedVendorSpecificGroupUIDs";
  v20 = v15[172];
  if (!v20)
  {
    v20 = @"<NONE>";
  }

  v42[11] = v20;
  v41[12] = @"indexedDataControllers";
  v21 = v15[165];
  if (!v21)
  {
    v21 = @"<NONE>";
  }

  v42[12] = v21;
  v41[13] = @"routingViewItems";
  v22 = v15[128];
  if (!v22)
  {
    v22 = @"<NONE>";
  }

  v42[13] = v22;
  v41[14] = @"routingController";
  v23 = v15[147];
  if (!v23)
  {
    v23 = @"<NONE>";
  }

  v42[14] = v23;
  v41[15] = @"pendingUpdate";
  v24 = v15[124];
  if (!v24)
  {
    v24 = @"<NONE>";
  }

  v42[15] = v24;
  v41[16] = @"optimisticUpdate";
  v25 = v15[125];
  if (!v25)
  {
    v25 = @"<NONE>";
  }

  v42[16] = v25;
  v41[17] = @"cachedPickedRoutes";
  v26 = v15[129];
  if (!v26)
  {
    v26 = @"<NONE>";
  }

  v42[17] = v26;
  v41[18] = @"cachedDisplayableAvailableRoutes";
  v27 = v15[130];
  if (!v27)
  {
    v27 = @"<NONE>";
  }

  v42[18] = v27;
  v41[19] = @"cachedPendingPickedRoutes";
  v28 = v15[131];
  if (!v28)
  {
    v28 = @"<NONE>";
  }

  v42[19] = v28;
  v41[20] = @"cachedDisplayAsPickedRoutes";
  v29 = v15[132];
  if (!v29)
  {
    v29 = @"<NONE>";
  }

  v42[20] = v29;
  v41[21] = @"cachedVolumeCapableRoutes";
  v30 = v15[133];
  if (!v30)
  {
    v30 = @"<NONE>";
  }

  v42[21] = v30;
  v41[22] = @"cachedRouteGrouping";
  v31 = v15[134];
  if (!v31)
  {
    v31 = @"<NONE>";
  }

  v42[22] = v31;
  v41[23] = @"cachedAirPlayRoutes";
  v32 = v15[135];
  if (!v32)
  {
    v32 = @"<NONE>";
  }

  v42[23] = v32;
  v41[24] = @"cachedNativeRoutes";
  v33 = v15[136];
  if (!v33)
  {
    v33 = @"<NONE>";
  }

  v42[24] = v33;
  v41[25] = @"cachedNativeRoutesInVendorSpecificGroup";
  v34 = v15[137];
  if (!v34)
  {
    v34 = @"<NONE>";
  }

  v42[25] = v34;
  v41[26] = @"cachedActivatedVendorSpecificDeviceIDs";
  v35 = v15[138];
  if (!v35)
  {
    v35 = @"<NONE>";
  }

  v42[26] = v35;
  v41[27] = @"cachedPendingVendorSpecificDeviceIDs";
  v36 = v15[139];
  if (!v36)
  {
    v36 = @"<NONE>";
  }

  v42[27] = v36;
  v41[28] = @"cachedAvailableVendorSpecificDeviceIDs";
  v37 = v15[140];
  if (!v37)
  {
    v37 = @"<NONE>";
  }

  v42[28] = v37;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:29];
  v39 = *(*(a1 + 40) + 8);
  v40 = *(v39 + 40);
  *(v39 + 40) = v38;
}

- (void)hearingAidConnectionDidChange
{
  v30 = *MEMORY[0x1E69E9840];
  view = [(MRURoutingViewController *)self view];
  tableView = [view tableView];
  indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = indexPathsForVisibleRows;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v29 count:16];
  obj = v6;
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v23 + 1) + 8 * v10);
      v12 = [(MPSectionedCollection *)self->_routingViewItems itemAtIndexPath:v11];
      mainRoute = [v12 mainRoute];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        v6 = obj;
        goto LABEL_14;
      }
    }

    v15 = v11;

    if (!v15)
    {
      goto LABEL_15;
    }

    v17 = MCLogCategoryDefault(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v15;
      _os_log_impl(&dword_1A20FC000, v17, OS_LOG_TYPE_DEFAULT, "[MRURoutingViewController] virtualHearingAidIndexPath: %@", buf, 0xCu);
    }

    view2 = [(MRURoutingViewController *)self view];
    tableView2 = [view2 tableView];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __57__MRURoutingViewController_hearingAidConnectionDidChange__block_invoke;
    v21[3] = &unk_1E76639D0;
    v21[4] = self;
    v22 = v15;
    v6 = v15;
    [tableView2 performBatchUpdates:v21 completion:0];
  }

LABEL_14:

LABEL_15:
}

void __57__MRURoutingViewController_hearingAidConnectionDidChange__block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) view];
  v3 = [v2 tableView];
  v5[0] = *(a1 + 40);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v3 reloadRowsAtIndexPaths:v4 withRowAnimation:0];
}

- (MRURoutingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)contentEdgeInsets
{
  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)scrollIndicatorInsets
{
  top = self->_scrollIndicatorInsets.top;
  left = self->_scrollIndicatorInsets.left;
  bottom = self->_scrollIndicatorInsets.bottom;
  right = self->_scrollIndicatorInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end