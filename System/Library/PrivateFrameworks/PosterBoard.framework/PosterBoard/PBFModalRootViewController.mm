@interface PBFModalRootViewController
+ (PREditingSceneViewControllerTopButtonLayout)_topButtonLayout;
+ (void)prewarmTopButtonLayout;
- (BOOL)_isPhotosEntryPoint;
- (BOOL)ambientEditingCollectionViewControllerDidPressDone:(id)done;
- (BOOL)posterRackCollectionViewControllerDidPressDone:(id)done;
- (PBFAmbientEditingCollectionViewController)ambientEditingController;
- (PBFModalRootViewController)initWithScene:(id)scene;
- (PBFModalRootViewController)initWithScene:(id)scene dataStore:(id)store;
- (PBFPosterGalleryPreviewViewController)galleryController;
- (PREditingSceneViewControllerTopButtonLayout)topButtonLayoutForEditingSceneViewController:(SEL)controller;
- (PREditingSceneViewControllerTopButtonLayout)topButtonLayoutForFocusPosterSelectionViewController:(SEL)controller;
- (id)_actionHandlersForScene:(id)scene;
- (id)_posterLimitExceededAlertWithButtonActionHandler:(id)handler;
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
- (id)_settingsDiffActionsForScene:(id)scene;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)galleryViewController:(id)controller willUseAnimationController:(id)animationController forDismissingEditingViewControllerWithAction:(int64_t)action;
- (id)succinctDescription;
- (void)_createLegacyMigrationHelperWithConfiguration:(id)configuration;
- (void)_displayViewControllerAsSheet:(id)sheet;
- (void)_galleryEditingSceneViewController:(id)controller userDidDismissWithAction:(int64_t)action updatedConfiguration:(id)configuration updatedConfiguredProperties:(id)properties completion:(id)completion;
- (void)_handleNotificationForwardAction:(id)action;
- (void)_handleSheetDidDismissWithResponse:(id)response;
- (void)_handleSheetWillDismissWithResponse:(id)response;
- (void)_logEditWithEditingViewController:(id)controller posterUUID:(id)d lastModifiedDate:(id)date;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)_performLegacyMigration;
- (void)_presentEditingForNewPosterFromConfiguration:(id)configuration;
- (void)_presentEditingForPosterConfiguration:(id)configuration;
- (void)_presentEditingForPosterConfiguration:(id)configuration sessionInfo:(id)info;
- (void)_presentEditingSceneViewController:(id)controller;
- (void)_presentGallery;
- (void)_presentLegacyAddNewAlert;
- (void)_presentLegacyMigrationAlert;
- (void)_presentLegacyMigrationFailedAlert;
- (void)_presentPartialMigrationPrompt;
- (void)_reload;
- (void)_setScene:(id)scene;
- (void)_setupGalleryDataProviderIfNeeded;
- (void)_standaloneEditingSceneViewController:(id)controller userDidDismissWithAction:(int64_t)action updatedConfiguration:(id)configuration updatedConfiguredProperties:(id)properties completion:(id)completion;
- (void)dealloc;
- (void)editingIngestionManager:(id)manager didAccept:(id)accept userChoice:(int64_t)choice;
- (void)editingSceneViewController:(id)controller userDidDismissWithAction:(int64_t)action updatedConfiguration:(id)configuration updatedConfiguredProperties:(id)properties completion:(id)completion;
- (void)galleryViewController:(id)controller didSelectPreview:(id)preview fromPreviewView:(id)view;
- (void)invalidate;
- (void)posterExtensionDataStore:(id)store didUpdateGalleryConfiguration:(id)configuration;
- (void)posterRackCollectionViewControllerDidPressCancel:(id)cancel;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PBFModalRootViewController

- (PBFModalRootViewController)initWithScene:(id)scene
{
  sceneCopy = scene;
  v5 = +[PBFPosterExtensionDataStoreXPCServiceGlue sharedInstance];
  dataStore = [v5 dataStore];
  v7 = [(PBFModalRootViewController *)self initWithScene:sceneCopy dataStore:dataStore];

  return v7;
}

- (PBFModalRootViewController)initWithScene:(id)scene dataStore:(id)store
{
  sceneCopy = scene;
  storeCopy = store;
  v10 = sceneCopy;
  NSClassFromString(&cfstr_Uiscene.isa);
  if (!v10)
  {
    [PBFModalRootViewController initWithScene:a2 dataStore:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFModalRootViewController initWithScene:a2 dataStore:?];
  }

  v11 = storeCopy;
  NSClassFromString(&cfstr_Pbfposterexten.isa);
  if (!v11)
  {
    [PBFModalRootViewController initWithScene:a2 dataStore:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFModalRootViewController initWithScene:a2 dataStore:?];
  }

  v19.receiver = self;
  v19.super_class = PBFModalRootViewController;
  v12 = [(PBFModalRootViewController *)&v19 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_parentScene, scene);
    parentScene = v13->_parentScene;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [(UIScene *)parentScene _registerSceneComponent:v13 forKey:v16];

    objc_storeStrong(&v13->_dataStore, store);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel_dataStoreDidTearDown_ name:PBFPosterExtensionDataStoreDidTearDownNotification object:0];
  }

  return v13;
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    [(UIViewController *)self dismissPresentedViewControllersAnimated:0 dismissHandler:0 completion:0];
    ambientEditingController = [(PBFModalRootViewController *)self ambientEditingController];
    [ambientEditingController invalidate];
    [(PBFModalRootViewController *)self setAmbientEditingController:0];
    parentScene = self->_parentScene;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(UIScene *)parentScene _unregisterSceneComponentForKey:v6];

    v7 = self->_parentScene;
    self->_parentScene = 0;
  }
}

+ (void)prewarmTopButtonLayout
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PBFModalRootViewController prewarmTopButtonLayout]"];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__PBFModalRootViewController_prewarmTopButtonLayout__block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = self;
  PBFDispatchAsyncWithString(v3, QOS_CLASS_UTILITY, v4);
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PBFModalRootViewController;
  [(PBFModalRootViewController *)&v5 viewDidLoad];
  view = [(PBFModalRootViewController *)self view];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [view setBackgroundColor:clearColor];
}

- (void)viewDidAppear:(BOOL)appear
{
  v76.receiver = self;
  v76.super_class = PBFModalRootViewController;
  [(PBFModalRootViewController *)&v76 viewDidAppear:appear];
  if (!self->_didAppearOnce)
  {
    self->_didAppearOnce = 1;
    _FBSScene = [(UIScene *)self->_parentScene _FBSScene];
    settings = [_FBSScene settings];
    otherSettings = [settings otherSettings];

    v7 = [otherSettings objectForSetting:2606278161];
    entryPoint = self->_entryPoint;
    self->_entryPoint = v7;

    v9 = [otherSettings BOOLForSetting:2606278162];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [(PBFModalRootViewController *)self _setupGalleryDataProviderIfNeeded];
      view = [(PBFModalRootViewController *)self view];
      window = [view window];
      _rootSheetPresentationController = [window _rootSheetPresentationController];
      [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];

      v13 = self->_entryPoint;
      v14 = [PBFFocusPosterSelectionViewController alloc];
      activityUUID = [(PRUISModalEntryPoint *)v13 activityUUID];
      activityIdentifier = [(PRUISModalEntryPoint *)v13 activityIdentifier];
      v17 = [(PBFFocusPosterSelectionViewController *)v14 initWithActivityUUID:activityUUID activityIdentifier:activityIdentifier galleryDataProvider:self->_galleryDataProvider dataStore:self->_dataStore];
LABEL_5:
      v18 = v17;

      [v18 setDelegate:self];
      [(PBFModalRootViewController *)self _displayViewControllerAsSheet:v18];

LABEL_6:
      return;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [(PBFModalRootViewController *)self _setupGalleryDataProviderIfNeeded];
      view2 = [(PBFModalRootViewController *)self view];
      window2 = [view2 window];
      _rootSheetPresentationController2 = [window2 _rootSheetPresentationController];
      [_rootSheetPresentationController2 _setShouldScaleDownBehindDescendantSheets:0];

      v13 = self->_entryPoint;
      v22 = [PBFPosterSelectionViewController alloc];
      activityUUID = [(PRUISModalEntryPoint *)v13 allowedConfigurationUUIDs];
      activityIdentifier = [(PRUISModalEntryPoint *)v13 selectedConfigurationUUID];
      v17 = [(PBFPosterSelectionViewController *)v22 initWithAllowedConfigurationUUIDs:activityUUID selectedConfigurationUUID:activityIdentifier galleryDataProvider:self->_galleryDataProvider dataStore:self->_dataStore];
      goto LABEL_5;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [(PBFPosterExtensionDataStore *)self->_dataStore addObserver:self];
      [(PBFPosterExtensionDataStore *)self->_dataStore checkForGalleryUpdates];
      [(PBFModalRootViewController *)self _presentGallery];
      goto LABEL_6;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_27:
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          switcherConfiguration = [(PBFPosterExtensionDataStore *)self->_dataStore switcherConfiguration];
          activeConfiguration = [switcherConfiguration activeConfiguration];

          if ([activeConfiguration pbf_isLegacy])
          {
            [(PBFModalRootViewController *)self _presentLegacyAddNewAlert];
          }

          else
          {
            v34 = objc_alloc_init(PBFActivePosterConfigurationFilter);
            v35 = objc_opt_class();
            if (v35)
            {
              objc_msgSend__topButtonLayout(v35);
            }

            else
            {
              v74 = 0u;
              v75 = 0u;
              v72 = 0u;
              v73 = 0u;
            }

            v36 = [PBFPosterRackCollectionViewController simplifiedHomeScreenSwitcherWithFilter:v34 delegate:self topButtonLayout:&v72];
            [(PBFModalRootViewController *)self presentViewController:v36 animated:1 completion:0];
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v37 = self->_entryPoint;
          v38 = objc_alloc(MEMORY[0x277D3ED58]);
          serverPosterPath = [(PRUISModalEntryPoint *)v37 serverPosterPath];
          v40 = [v38 _initWithPath:serverPosterPath];

          if ([v40 pbf_isLegacy])
          {
            [(PBFModalRootViewController *)self _presentLegacyAddNewAlert];
          }

          else
          {
            v70 = v40;
            v41 = [[PBFSinglePosterConfigurationFilter alloc] initWithConfiguration:v40];
            transitionOverlayRenderId = [(PRUISModalEntryPoint *)v37 transitionOverlayRenderId];
            transitionOverlayContextId = [(PRUISModalEntryPoint *)v37 transitionOverlayContextId];
            if (transitionOverlayRenderId)
            {
              v44 = transitionOverlayContextId == 0;
            }

            else
            {
              v44 = 1;
            }

            v45 = v44;
            v71 = v45;
            if (v44)
            {
              v47 = 0;
            }

            else
            {
              v46 = transitionOverlayContextId;
              v47 = objc_alloc_init(MEMORY[0x277D76180]);
              [v47 portalLayer];
              v48 = v69 = v41;
              [v48 setSourceContextId:v46];
              [v48 setSourceLayerRenderId:transitionOverlayRenderId];
              [v48 setAllowsGroupOpacity:1];
              [v47 setName:@"com.apple.PosterBoard.homeScreenPortalView"];
              [v47 setAllowsHitTesting:0];
              [v47 setMatchesPosition:0];
              [v47 setMatchesTransform:0];
              [v47 setClipsToBounds:1];

              v41 = v69;
            }

            v49 = objc_opt_class();
            if (v49)
            {
              objc_msgSend__topButtonLayout(v49);
            }

            else
            {
              v74 = 0u;
              v75 = 0u;
              v72 = 0u;
              v73 = 0u;
            }

            v50 = [PBFPosterRackCollectionViewController simplifiedHomeScreenSwitcherWithFilter:v41 delegate:self topButtonLayout:&v72 homeScreenPortalView:v47];
            v51 = v50;
            if ((v71 & 1) == 0)
            {
              [v50 setEnteredPosterRackFromHomeScreen:1];
              [v51 setModalTransitionStyle:12];
            }

            [(PBFModalRootViewController *)self presentViewController:v51 animated:v71 completion:0];

            v40 = v70;
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v52 = objc_alloc_init(PBFAmbientEditingCollectionViewController);
          [(PBFAmbientEditingCollectionViewController *)v52 setAmbientEditingDelegate:self];
          [(PBFAmbientEditingCollectionViewController *)v52 setModalTransitionStyle:2];
          [(PBFModalRootViewController *)self presentViewController:v52 animated:1 completion:0];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v53 = self->_entryPoint;
          v54 = objc_alloc(MEMORY[0x277D3ED58]);
          serverPosterPath2 = [(PRUISModalEntryPoint *)v53 serverPosterPath];
          v56 = [v54 _initWithPath:serverPosterPath2];

          v57 = [[PBFAmbientEditingCollectionViewController alloc] init:v56];
          [v57 setAmbientEditingDelegate:self];
          if (v9)
          {
            _FBSScene2 = [(UIScene *)self->_parentScene _FBSScene];
            settings2 = [_FBSScene2 settings];
            displayConfiguration = [settings2 displayConfiguration];

            [v57 setDisplayConfiguration:displayConfiguration];
          }

          [v57 setModalTransitionStyle:2];
          objc_storeStrong(&self->_displayConfigurationObserver, v57);
          IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
          transitionOverlayRenderId2 = [(PRUISModalEntryPoint *)v53 transitionOverlayRenderId];
          transitionOverlayContextId2 = [(PRUISModalEntryPoint *)v53 transitionOverlayContextId];
          if (!IsReduceMotionEnabled && transitionOverlayRenderId2)
          {
            v64 = transitionOverlayContextId2;
            if (transitionOverlayContextId2)
            {
              v65 = objc_alloc_init(MEMORY[0x277D76180]);
              portalLayer = [v65 portalLayer];
              [portalLayer setSourceContextId:v64];

              portalLayer2 = [v65 portalLayer];
              [portalLayer2 setSourceLayerRenderId:transitionOverlayRenderId2];

              portalLayer3 = [v65 portalLayer];
              [portalLayer3 setAllowsGroupOpacity:1];

              [v65 setName:@"com.apple.PosterBoard.transitionOverlayView"];
              [v65 setAllowsHitTesting:0];
              [v65 setMatchesPosition:0];
              [v65 setMatchesTransform:0];
              [v57 setTransitionOverlayView:v65];
            }
          }

          [(PBFModalRootViewController *)self setAmbientEditingController:v57];
          [(PBFModalRootViewController *)self presentViewController:v57 animated:IsReduceMotionEnabled completion:0];
        }

        goto LABEL_6;
      }
    }

    v23 = self->_entryPoint;
    editingType = [(PRUISModalEntryPoint *)v23 editingType];
    if (editingType <= 1)
    {
      if (editingType)
      {
        if (editingType == 1)
        {
          [(PBFModalRootViewController *)self _presentEditingForNewPosterFromConfiguration:v23];
        }
      }

      else
      {
        switcherConfiguration2 = [(PBFPosterExtensionDataStore *)self->_dataStore switcherConfiguration];
        activeConfiguration2 = [switcherConfiguration2 activeConfiguration];
        [(PBFModalRootViewController *)self _presentEditingForPosterConfiguration:activeConfiguration2];
      }

      goto LABEL_26;
    }

    if (editingType == 3)
    {
      v30 = objc_alloc(MEMORY[0x277D3ED58]);
      serverPosterPath3 = [(PRUISModalEntryPoint *)v23 serverPosterPath];
      v27 = [v30 _initWithPath:serverPosterPath3];
      updateSessionInfo = [(PRUISModalEntryPoint *)v23 updateSessionInfo];
      [(PBFModalRootViewController *)self _presentEditingForPosterConfiguration:v27 sessionInfo:updateSessionInfo];
    }

    else
    {
      if (editingType != 2)
      {
LABEL_26:

        goto LABEL_27;
      }

      v25 = objc_alloc(MEMORY[0x277D3ED58]);
      serverPosterPath3 = [(PRUISModalEntryPoint *)v23 serverPosterPath];
      v27 = [v25 _initWithPath:serverPosterPath3];
      [(PBFModalRootViewController *)self _presentEditingForPosterConfiguration:v27];
    }

    goto LABEL_26;
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = PBFModalRootViewController;
  [(PBFModalRootViewController *)&v3 viewDidDisappear:disappear];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = PBFModalRootViewController;
  coordinatorCopy = coordinator;
  [(PBFModalRootViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  WeakRetained = objc_loadWeakRetained(&self->_galleryController);
  [WeakRetained updatePreferredContentSizeForSize:coordinatorCopy withTransitionCoordinator:{width, height, v9.receiver, v9.super_class}];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PBFModalRootViewController;
  [(PBFModalRootViewController *)&v2 dealloc];
}

- (void)_presentEditingForPosterConfiguration:(id)configuration
{
  v48 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v6 = configurationCopy;
  if (configurationCopy)
  {
    if ([configurationCopy pbf_isLegacy])
    {
      [(PBFModalRootViewController *)self _createLegacyMigrationHelperWithConfiguration:v6];
      if ([(PBFLegacyPosterMigrationHelper *)self->_legacyMigrationHelper canMigrateLegacyPoster])
      {
        [(PBFModalRootViewController *)self _presentLegacyMigrationAlert];
      }

      else if ([(PBFLegacyPosterMigrationHelper *)self->_legacyMigrationHelper canMigrateLegacyLockPoster])
      {
        [(PBFModalRootViewController *)self _presentPartialMigrationPrompt];
      }

      else
      {
        migrationInfo = [(PBFLegacyPosterMigrationHelper *)self->_legacyMigrationHelper migrationInfo];
        [PBFLegacyMigrationAnalyticsReporter recordWithEvent:2 migrationInfo:migrationInfo duration:0 errorCode:-1.0];

        legacyMigrationHelper = self->_legacyMigrationHelper;
        self->_legacyMigrationHelper = 0;

        [(PBFModalRootViewController *)self _presentLegacyAddNewAlert];
      }
    }

    else
    {
      _path = [v6 _path];
      NSClassFromString(&cfstr_Pfserverposter_0.isa);
      if (!_path)
      {
        [PBFModalRootViewController _presentEditingForPosterConfiguration:a2];
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [PBFModalRootViewController _presentEditingForPosterConfiguration:a2];
      }

      _path2 = [v6 _path];
      v9 = [(PBFPosterExtensionDataStore *)self->_dataStore providerForPath:_path2];
      v37 = v9;
      if (_path2 && v9)
      {
        v10 = MEMORY[0x277D3EB78];
        identity = [v9 identity];
        uUID = [MEMORY[0x277CCAD78] UUID];
        v13 = [v10 extensionInstanceForIdentity:identity instanceIdentifier:uUID];

        switcherConfiguration = [(PBFPosterExtensionDataStore *)self->_dataStore switcherConfiguration];
        activeConfiguration = [switcherConfiguration activeConfiguration];

        _path3 = [activeConfiguration _path];
        identity2 = [_path3 identity];
        posterUUID = [identity2 posterUUID];
        identity3 = [_path2 identity];
        posterUUID2 = [identity3 posterUUID];
        v36 = _path2;
        v21 = v13;
        v22 = activeConfiguration;
        LODWORD(activeConfiguration) = [posterUUID isEqual:posterUUID2];

        if (activeConfiguration)
        {
          v38 = 0;
          v39 = &v38;
          v40 = 0x2050000000;
          v23 = getSBSWallpaperServiceClass_softClass;
          v41 = getSBSWallpaperServiceClass_softClass;
          v24 = v22;
          v25 = v21;
          _path2 = v36;
          if (!getSBSWallpaperServiceClass_softClass)
          {
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v45 = __getSBSWallpaperServiceClass_block_invoke;
            v46 = &unk_2782C5CB0;
            v47 = &v38;
            __getSBSWallpaperServiceClass_block_invoke(&buf);
            v23 = v39[3];
          }

          v26 = v23;
          _Block_object_dispose(&v38, 8);
          v27 = objc_alloc_init(v23);
          if (objc_opt_respondsToSelector())
          {
            posterSignificantEventsCounter = [v27 posterSignificantEventsCounter];
          }

          else
          {
            posterSignificantEventsCounter = 0;
          }

          v42 = *MEMORY[0x277D3EF00];
          v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:posterSignificantEventsCounter];
          v43 = v34;
          v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];

          v31 = [v24 loadConfiguredPropertiesWithError:0];
          v32 = [v24 loadConfigurableOptionsWithError:0];
          [v27 invalidate];
        }

        else
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v24 = v22;
          v25 = v21;
          _path2 = v36;
        }

        v35 = [objc_alloc(MEMORY[0x277D3ECC0]) initWithProvider:v25 contents:_path2 configurableOptions:v32 configuredProperties:v31 additionalInfo:v33];
        [(PBFModalRootViewController *)self _presentEditingSceneViewController:v35];
      }

      else
      {
        v25 = PBFLogModal(v9);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = _path2;
          _os_log_impl(&dword_21B526000, v25, OS_LOG_TYPE_DEFAULT, "Could not find extension for path: %@", &buf, 0xCu);
        }
      }
    }
  }
}

- (void)_presentEditingSceneViewController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setDelegate:self];
  [controllerCopy addObserver:self];
  [controllerCopy setModalPresentationStyle:0];
  view = [controllerCopy view];
  [view setTag:1];

  [(PBFModalRootViewController *)self presentViewController:controllerCopy animated:1 completion:0];
}

- (void)_presentEditingForPosterConfiguration:(id)configuration sessionInfo:(id)info
{
  configurationCopy = configuration;
  infoCopy = info;
  if (configurationCopy)
  {
    if ([configurationCopy pbf_isLegacy])
    {
      [(PBFModalRootViewController *)self _presentLegacyAddNewAlert];
    }

    else
    {
      _path = [configurationCopy _path];
      NSClassFromString(&cfstr_Pfserverposter_0.isa);
      if (!_path)
      {
        [PBFModalRootViewController _presentEditingForPosterConfiguration:a2 sessionInfo:?];
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [PBFModalRootViewController _presentEditingForPosterConfiguration:a2 sessionInfo:?];
      }

      _path2 = [configurationCopy _path];
      v11 = [(PBFPosterExtensionDataStore *)self->_dataStore providerForPath:_path2];
      v12 = v11;
      if (_path2 && v11)
      {
        v13 = [MEMORY[0x277D3E9C8] posterUpdatesForDecoratedSessionInfo:infoCopy];
        dataStore = self->_dataStore;
        serverIdentity = [_path2 serverIdentity];
        posterUUID = [serverIdentity posterUUID];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __80__PBFModalRootViewController__presentEditingForPosterConfiguration_sessionInfo___block_invoke;
        v17[3] = &unk_2782C7638;
        v18 = v12;
        selfCopy = self;
        v20 = _path2;
        [(PBFPosterExtensionDataStore *)dataStore createTemporaryPosterConfigurationForPosterMatchingUUID:posterUUID andApplyUpdates:v13 completion:v17];
      }
    }
  }
}

void __80__PBFModalRootViewController__presentEditingForPosterConfiguration_sessionInfo___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = MEMORY[0x277D3EB78];
  v9 = [*(a1 + 32) identity];
  v10 = [MEMORY[0x277CCAD78] UUID];
  v11 = [v8 extensionInstanceForIdentity:v9 instanceIdentifier:v10];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__PBFModalRootViewController__presentEditingForPosterConfiguration_sessionInfo___block_invoke_2;
  block[3] = &unk_2782C7610;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v18 = v6;
  v19 = v12;
  v20 = v7;
  v21 = v13;
  v22 = v11;
  v14 = v11;
  v15 = v7;
  v16 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __80__PBFModalRootViewController__presentEditingForPosterConfiguration_sessionInfo___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    objc_storeStrong(v3 + 127, v2);
    v4 = MEMORY[0x277D3EBA0];
    v5 = [*(a1 + 32) incomingPosterConfiguration];
    v6 = [v5 path];
    v7 = [v6 contentsURL];
    v8 = [*(a1 + 56) serverIdentity];
    v26 = [v4 pathWithContainerURL:v7 identity:v8];

    v9 = objc_alloc(MEMORY[0x277D3ECC0]);
    v10 = *(a1 + 64);
    v11 = [*(a1 + 32) incomingPosterConfiguration];
    v12 = [v11 configuredProperties];
    v13 = [v9 initWithProvider:v10 contents:v26 configurableOptions:0 configuredProperties:v12];

    [v13 setDelegate:*(a1 + 40)];
    [v13 addObserver:*(a1 + 40)];
    [v13 setModalPresentationStyle:0];
    v14 = [v13 view];
    [v14 setTag:1];

    [*(a1 + 40) presentViewController:v13 animated:1 completion:0];
  }

  else
  {
    v15 = [MEMORY[0x277D3EAF0] cancel];
    [v3 _handleSheetWillDismissWithResponse:v15];

    v16 = *(a1 + 40);
    v17 = [MEMORY[0x277D3EAF0] cancel];
    [v16 _handleSheetDidDismissWithResponse:v17];

    v19 = PBFLogModal(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __80__PBFModalRootViewController__presentEditingForPosterConfiguration_sessionInfo___block_invoke_2_cold_1(a1, v19, v20, v21, v22, v23, v24, v25);
    }
  }
}

- (void)_presentEditingForNewPosterFromConfiguration:(id)configuration
{
  v81 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  configuration = [configurationCopy configuration];
  extensionIdentifier = [configurationCopy extensionIdentifier];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [(PBFPosterExtensionDataStore *)self->_dataStore providerForExtensionIdentifier:extensionIdentifier];
  v9 = v8;
  if (v8)
  {
    v67 = configuration;
    v10 = MEMORY[0x277D3EB78];
    v65 = v8;
    identity = [v8 identity];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v64 = [v10 extensionInstanceForIdentity:identity instanceIdentifier:uUID];

    v13 = *MEMORY[0x277D3EEF0];
    v14 = MEMORY[0x277D3ED00];
    uUID2 = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID2 UUIDString];
    v17 = [v14 mutableDescriptorWithIdentifier:uUIDString role:v13];

    v18 = MEMORY[0x277D3EB98];
    uUID3 = [MEMORY[0x277CCAD78] UUID];
    v66 = v13;
    v20 = [v18 incomingConfigurationIdentityWithProvider:extensionIdentifier role:v13 posterUUID:uUID3 version:1 supplement:0];

    v21 = MEMORY[0x277D3EBA0];
    _path = [v17 _path];
    contentsURL = [_path contentsURL];
    v63 = v20;
    v24 = [v21 pathWithContainerURL:contentsURL identity:v20];

    v76 = 0;
    LOBYTE(_path) = [v24 ensureContentsURLIsReachableAndReturnError:&v76];
    v25 = v76;
    v26 = v25;
    if ((_path & 1) == 0)
    {
      v27 = PBFLogModal(v25);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [PBFModalRootViewController _presentEditingForNewPosterFromConfiguration:];
      }
    }

    contentsURL2 = [v24 contentsURL];
    v75 = 0;
    v29 = [defaultManager removeItemAtURL:contentsURL2 error:&v75];
    v30 = v75;

    if ((v29 & 1) == 0)
    {
      v32 = PBFLogModal(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [PBFModalRootViewController _presentEditingForNewPosterFromConfiguration:];
      }
    }

    _path2 = [v67 _path];
    contentsURL3 = [_path2 contentsURL];
    contentsURL4 = [v24 contentsURL];
    v74 = 0;
    v36 = [defaultManager copyItemAtURL:contentsURL3 toURL:contentsURL4 error:&v74];
    v37 = v74;

    if ((v36 & 1) == 0)
    {
      v39 = PBFLogModal(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [PBFModalRootViewController _presentEditingForNewPosterFromConfiguration:];
      }
    }

    v40 = [MEMORY[0x277D3EDB0] defaultHomeScreenConfigurationForProvider:extensionIdentifier role:v66];
    supplementURL = [v24 supplementURL];
    v42 = PFFileProtectionNoneAttributes();
    v73 = 0;
    v43 = [defaultManager createDirectoryAtURL:supplementURL withIntermediateDirectories:1 attributes:v42 error:&v73];
    v44 = v73;

    v61 = defaultManager;
    v62 = v40;
    if (v43)
    {
      v72 = 0;
      v46 = [MEMORY[0x277D3EDE8] storeHomeScreenConfigurationForPath:v24 homeScreenConfiguration:v40 error:&v72];
      v47 = v72;

      if (v46)
      {
        v49 = v47;
LABEL_25:
        temporaryDescriptor = self->_temporaryDescriptor;
        self->_temporaryDescriptor = v17;
        v53 = v17;

        v77 = *MEMORY[0x277D3EEF8];
        v78 = MEMORY[0x277CBEC38];
        v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
        v50 = v64;
        v55 = [objc_alloc(MEMORY[0x277D3ECC0]) initWithProvider:v64 contents:v24 configurableOptions:0 configuredProperties:0 additionalInfo:v54];
        [v55 setDelegate:self];
        [v55 addObserver:self];
        view = [v55 view];
        [view setTag:1];

        v57 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v55];
        [v57 setNavigationBarHidden:1 animated:0];
        [v57 setModalPresentationStyle:0];
        canPersistNewPosterConfiguration = [(PBFPosterExtensionDataStore *)self->_dataStore canPersistNewPosterConfiguration];
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = __75__PBFModalRootViewController__presentEditingForNewPosterFromConfiguration___block_invoke;
        v68[3] = &unk_2782C7660;
        v71 = canPersistNewPosterConfiguration;
        v68[4] = self;
        v69 = v55;
        v70 = v57;
        v59 = v57;
        v60 = v55;
        [(PBFModalRootViewController *)self presentViewController:v59 animated:1 completion:v68];

        configuration = v67;
        v9 = v65;
        defaultManager = v61;
        goto LABEL_26;
      }

      v51 = PBFLogModal(v48);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [PBFModalRootViewController _presentEditingForNewPosterFromConfiguration:];
      }
    }

    else
    {
      v51 = PBFLogModal(v45);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [PBFModalRootViewController _presentEditingForNewPosterFromConfiguration:];
      }

      v47 = v44;
    }

    v49 = v47;

    goto LABEL_25;
  }

  v50 = PBFLogModal(0);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v80 = extensionIdentifier;
    _os_log_impl(&dword_21B526000, v50, OS_LOG_TYPE_DEFAULT, "Could not find extension with id: %@", buf, 0xCu);
  }

LABEL_26:
}

void __75__PBFModalRootViewController__presentEditingForNewPosterFromConfiguration___block_invoke(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __75__PBFModalRootViewController__presentEditingForNewPosterFromConfiguration___block_invoke_2;
    v4[3] = &unk_2782C5888;
    v2 = *(a1 + 32);
    v5 = *(a1 + 40);
    v3 = [v2 _posterLimitExceededAlertWithButtonActionHandler:v4];
    [*(a1 + 48) presentViewController:v3 animated:1 completion:0];
  }
}

- (void)posterRackCollectionViewControllerDidPressCancel:(id)cancel
{
  cancel = [MEMORY[0x277D3EAF0] cancel];
  [(PBFModalRootViewController *)self _handleSheetWillDismissWithResponse:cancel];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__PBFModalRootViewController_posterRackCollectionViewControllerDidPressCancel___block_invoke;
  v6[3] = &unk_2782C58B0;
  v6[4] = self;
  v7 = cancel;
  v5 = cancel;
  [(PBFModalRootViewController *)self dismissViewControllerAnimated:1 completion:v6];
}

- (BOOL)posterRackCollectionViewControllerDidPressDone:(id)done
{
  _isPhotosEntryPoint = [(PBFModalRootViewController *)self _isPhotosEntryPoint];
  done = [MEMORY[0x277D3EAF0] done];
  [(PBFModalRootViewController *)self _handleSheetWillDismissWithResponse:done];
  if (_isPhotosEntryPoint)
  {
    [(PBFModalRootViewController *)self _handleSheetDidDismissWithResponse:done];
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __77__PBFModalRootViewController_posterRackCollectionViewControllerDidPressDone___block_invoke;
    v7[3] = &unk_2782C58B0;
    v7[4] = self;
    v8 = done;
    done = done;
    [(PBFModalRootViewController *)self dismissViewControllerAnimated:1 completion:v7];
  }

  return 1;
}

- (PREditingSceneViewControllerTopButtonLayout)topButtonLayoutForEditingSceneViewController:(SEL)controller
{
  result = objc_opt_class();
  if (result)
  {

    return objc_msgSend__topButtonLayout(result);
  }

  else
  {
    retstr->trailingTopButtonFrame.origin = 0u;
    retstr->trailingTopButtonFrame.size = 0u;
    retstr->leadingTopButtonFrame.origin = 0u;
    retstr->leadingTopButtonFrame.size = 0u;
  }

  return result;
}

- (void)editingSceneViewController:(id)controller userDidDismissWithAction:(int64_t)action updatedConfiguration:(id)configuration updatedConfiguredProperties:(id)properties completion:(id)completion
{
  controllerCopy = controller;
  configurationCopy = configuration;
  propertiesCopy = properties;
  completionCopy = completion;
  [controllerCopy addObserver:self];
  view = [controllerCopy view];
  v17 = [view tag];

  if (v17 == 1)
  {
    [(PBFModalRootViewController *)self _standaloneEditingSceneViewController:controllerCopy userDidDismissWithAction:action updatedConfiguration:configurationCopy updatedConfiguredProperties:propertiesCopy completion:completionCopy];
    goto LABEL_5;
  }

  if (!v17)
  {
    [(PBFModalRootViewController *)self _galleryEditingSceneViewController:controllerCopy userDidDismissWithAction:action updatedConfiguration:configurationCopy updatedConfiguredProperties:propertiesCopy completion:completionCopy];
LABEL_5:

    return;
  }

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"NO"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [PBFModalRootViewController editingSceneViewController:a2 userDidDismissWithAction:self updatedConfiguration:v18 updatedConfiguredProperties:? completion:?];
  }

  [v18 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_galleryEditingSceneViewController:(id)controller userDidDismissWithAction:(int64_t)action updatedConfiguration:(id)configuration updatedConfiguredProperties:(id)properties completion:(id)completion
{
  controllerCopy = controller;
  configurationCopy = configuration;
  propertiesCopy = properties;
  if (action == 1)
  {
    completionCopy = completion;
    suggestionMetadata = [propertiesCopy suggestionMetadata];
    lastModifiedDate = [suggestionMetadata lastModifiedDate];

    suggestionMetadata2 = [propertiesCopy suggestionMetadata];
    metadataBySettingLastModifiedDateToNow = [suggestionMetadata2 metadataBySettingLastModifiedDateToNow];

    if (!metadataBySettingLastModifiedDateToNow)
    {
      v18 = objc_alloc(MEMORY[0x277D3EE20]);
      date = [MEMORY[0x277CBEAA8] date];
      metadataBySettingLastModifiedDateToNow = [v18 initWithSuggestedGalleryItem:0 suggestedComplicationsByIdentifier:MEMORY[0x277CBEC10] lastModifiedDate:date];
    }

    v50 = propertiesCopy;
    v20 = [propertiesCopy mutableCopy];
    [v20 setSuggestionMetadata:metadataBySettingLastModifiedDateToNow];
    v21 = objc_alloc_init(PBFPosterEditingIngestionManager);
    [(PBFPosterEditingIngestionManager *)v21 setDelegate:self];
    v47 = v21;
    v22 = [(PBFPosterEditingIngestionManager *)v21 ingestConfiguration:configurationCopy updatedConfiguredProperties:v20 editingViewController:controllerCopy galleryViewController:0 showEditingConfirmation:1];
    v23 = controllerCopy;
    switcherConfiguration = [(PBFPosterExtensionDataStore *)self->_dataStore switcherConfiguration];
    v25 = [switcherConfiguration mutableCopy];

    configurations = [v25 configurations];
    lastObject = [configurations lastObject];

    [v25 setSelectedConfiguration:lastObject];
    [v25 setDesiredActiveConfiguration:lastObject];
    dataStore = self->_dataStore;
    v51 = 0;
    v29 = [(PBFPosterExtensionDataStore *)dataStore updateDataStoreForSwitcherConfiguration:v25 reason:@"update poster from modal gallery" error:&v51];
    v30 = metadataBySettingLastModifiedDateToNow;
    v31 = v51;

    selfCopy2 = self;
    if (!v29)
    {
      v34 = PBFLogModal(v32);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [PBFModalRootViewController _galleryEditingSceneViewController:userDidDismissWithAction:updatedConfiguration:updatedConfiguredProperties:completion:];
      }

      selfCopy2 = self;
    }

    v45 = v20;
    v46 = v30;
    _path = [lastObject _path];
    [_path serverIdentity];
    v37 = v36 = configurationCopy;
    posterUUID = [v37 posterUUID];
    uUIDString = [posterUUID UUIDString];
    v40 = selfCopy2;
    v41 = v23;
    v42 = v23;
    v43 = lastModifiedDate;
    [(PBFModalRootViewController *)v40 _logEditWithEditingViewController:v42 posterUUID:uUIDString lastModifiedDate:lastModifiedDate];

    configurationCopy = v36;
    completionCopy[2](completionCopy, v31);

    controllerCopy = v41;
    propertiesCopy = v50;
  }

  else
  {
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __150__PBFModalRootViewController__galleryEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke;
    v52[3] = &unk_2782C5888;
    v53 = controllerCopy;
    completionCopy2 = completion;
    [v53 dismissViewControllerAnimated:1 completion:v52];
    completionCopy2[2](completionCopy2, 0);

    v43 = v53;
  }
}

- (void)_standaloneEditingSceneViewController:(id)controller userDidDismissWithAction:(int64_t)action updatedConfiguration:(id)configuration updatedConfiguredProperties:(id)properties completion:(id)completion
{
  v105 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  configurationCopy = configuration;
  propertiesCopy = properties;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke;
  aBlock[3] = &unk_2782C7688;
  aBlock[4] = self;
  v73 = _Block_copy(aBlock);
  v13 = self->_entryPoint;
  NSClassFromString(&cfstr_Pruismodalentr.isa);
  if (!v13)
  {
    [PBFModalRootViewController _standaloneEditingSceneViewController:a2 userDidDismissWithAction:? updatedConfiguration:? updatedConfiguredProperties:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFModalRootViewController _standaloneEditingSceneViewController:a2 userDidDismissWithAction:? updatedConfiguration:? updatedConfiguredProperties:? completion:?];
  }

  v75 = self->_entryPoint;
  if (action == 1)
  {
    suggestionMetadata = [propertiesCopy suggestionMetadata];
    lastModifiedDate = [suggestionMetadata lastModifiedDate];

    suggestionMetadata2 = [propertiesCopy suggestionMetadata];
    metadataBySettingLastModifiedDateToNow = [suggestionMetadata2 metadataBySettingLastModifiedDateToNow];

    if (!metadataBySettingLastModifiedDateToNow)
    {
      v17 = objc_alloc(MEMORY[0x277D3EE20]);
      date = [MEMORY[0x277CBEAA8] date];
      metadataBySettingLastModifiedDateToNow = [v17 initWithSuggestedGalleryItem:0 suggestedComplicationsByIdentifier:MEMORY[0x277CBEC10] lastModifiedDate:date];
    }

    v71 = [propertiesCopy mutableCopy];
    [v71 setSuggestionMetadata:metadataBySettingLastModifiedDateToNow];
    contentsIdentity = [controllerCopy contentsIdentity];
    editingType = [(PRUISModalEntryPoint *)v75 editingType];
    if ((editingType - 2) >= 2 && editingType)
    {
      if (editingType != 1)
      {
LABEL_46:

        goto LABEL_47;
      }

      uUIDString2 = objc_alloc_init(PBFPosterEditingIngestionManager);
      [(PBFPosterEditingIngestionManager *)uUIDString2 setDelegate:self];
      v21 = [(PBFPosterEditingIngestionManager *)uUIDString2 ingestConfiguration:configurationCopy updatedConfiguredProperties:v71 editingViewController:controllerCopy galleryViewController:0 showEditingConfirmation:1];
      switcherConfiguration = [(PBFPosterExtensionDataStore *)self->_dataStore switcherConfiguration];
      v23 = [switcherConfiguration mutableCopy];

      configurations = [v23 configurations];
      lastObject = [configurations lastObject];

      [v23 setSelectedConfiguration:lastObject];
      [v23 setDesiredActiveConfiguration:lastObject];
      dataStore = self->_dataStore;
      v96 = 0;
      v27 = [(PBFPosterExtensionDataStore *)dataStore updateDataStoreForSwitcherConfiguration:v23 reason:@"Modal New Poster" error:&v96];
      v28 = v96;
      v29 = v28;
      if (v28)
      {
        v30 = PBFLogModal(v28);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [PBFModalRootViewController _standaloneEditingSceneViewController:userDidDismissWithAction:updatedConfiguration:updatedConfiguredProperties:completion:];
        }
      }

      _path = [lastObject _path];
      serverIdentity = [_path serverIdentity];
      posterUUID = [serverIdentity posterUUID];
      uUIDString = [posterUUID UUIDString];

      [(PBFModalRootViewController *)self _logEditWithEditingViewController:controllerCopy posterUUID:uUIDString lastModifiedDate:lastModifiedDate];
      completionCopy[2](completionCopy, 0);
    }

    else
    {
      if (self->_legacyMigrationHelper)
      {
        date2 = [MEMORY[0x277CBEAA8] date];
        v42 = objc_alloc_init(PBFPosterEditingIngestionManager);
        [(PBFPosterEditingIngestionManager *)v42 setDelegate:self];
        v43 = [(PBFPosterEditingIngestionManager *)v42 ingestConfiguration:configurationCopy updatedConfiguredProperties:v71 editingViewController:controllerCopy galleryViewController:0 showEditingConfirmation:0];
        if (v43)
        {
          [controllerCopy addLongSaveOperationIndicator];
          objc_initWeak(&buf, self);
          legacyMigrationHelper = self->_legacyMigrationHelper;
          configurationUUID = [v43 configurationUUID];
          v88[0] = MEMORY[0x277D85DD0];
          v88[1] = 3221225472;
          v88[2] = __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke_2_119;
          v88[3] = &unk_2782C76B0;
          objc_copyWeak(&v93, &buf);
          v89 = controllerCopy;
          date2 = date2;
          v90 = date2;
          v43 = v43;
          v91 = v43;
          selfCopy = self;
          [(PBFLegacyPosterMigrationHelper *)legacyMigrationHelper migrateHomePosterAndAssociateToConfiguration:configurationUUID completion:v88];

          objc_destroyWeak(&v93);
          objc_destroyWeak(&buf);
        }

        else
        {
          date3 = [MEMORY[0x277CBEAA8] date];
          [date3 timeIntervalSinceDate:date2];
          v52 = v51;
          migrationInfo = [(PBFLegacyPosterMigrationHelper *)self->_legacyMigrationHelper migrationInfo];
          [PBFLegacyMigrationAnalyticsReporter recordWithEvent:3 migrationInfo:migrationInfo duration:0 errorCode:v52];

          v55 = PBFLogLegacyPosterMigration(v54);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            [PBFModalRootViewController _standaloneEditingSceneViewController:v55 userDidDismissWithAction:? updatedConfiguration:? updatedConfiguredProperties:? completion:?];
          }

          v56 = self->_legacyMigrationHelper;
          self->_legacyMigrationHelper = 0;

          v95[0] = MEMORY[0x277D85DD0];
          v95[1] = 3221225472;
          v95[2] = __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke_118;
          v95[3] = &unk_2782C5888;
          v95[4] = self;
          [(PBFModalRootViewController *)self dismissViewControllerAnimated:1 completion:v95];
        }

        v29 = 0;
      }

      else
      {
        v46 = [contentsIdentity type] == 3;
        v47 = objc_alloc(MEMORY[0x277D3ECE0]);
        _path2 = [configurationCopy _path];
        if (v46)
        {
          posterUUID2 = [contentsIdentity posterUUID];
          date2 = [v47 initWithUpdatedPath:_path2 updatedPosterUUID:posterUUID2 sourceIdentity:contentsIdentity configuredProperties:v71 attributes:0];
        }

        else
        {
          date2 = [v47 initWithNewPath:_path2 destinationPosterUUID:0 sourceIdentity:contentsIdentity configuredProperties:v71 attributes:0];
        }

        switcherConfiguration2 = [(PBFPosterExtensionDataStore *)self->_dataStore switcherConfiguration];
        v42 = [switcherConfiguration2 mutableCopy];

        [(PBFPosterEditingIngestionManager *)v42 ingestNewPosterConfiguration:date2];
        incomingAssocPosterConfiguration = [(PBFPosterConfigurationUpdateResult *)self->_temporaryConfigurationUpdateResult incomingAssocPosterConfiguration];

        if (incomingAssocPosterConfiguration)
        {
          incomingAssocPosterConfiguration2 = [(PBFPosterConfigurationUpdateResult *)self->_temporaryConfigurationUpdateResult incomingAssocPosterConfiguration];
          contentsIdentity2 = [controllerCopy contentsIdentity];
          posterUUID3 = [contentsIdentity2 posterUUID];
          [(PBFPosterEditingIngestionManager *)v42 ingestNewPosterConfiguration:incomingAssocPosterConfiguration2 toBeAssociatedWithUUID:posterUUID3];
        }

        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        postersToDelete = [(PBFPosterConfigurationUpdateResult *)self->_temporaryConfigurationUpdateResult postersToDelete];
        v63 = [postersToDelete countByEnumeratingWithState:&v84 objects:v104 count:16];
        if (v63)
        {
          v64 = *v85;
          do
          {
            for (i = 0; i != v63; ++i)
            {
              if (*v85 != v64)
              {
                objc_enumerationMutation(postersToDelete);
              }

              [(PBFPosterEditingIngestionManager *)v42 removeConfiguration:*(*(&v84 + 1) + 8 * i)];
            }

            v63 = [postersToDelete countByEnumeratingWithState:&v84 objects:v104 count:16];
          }

          while (v63);
        }

        v66 = self->_dataStore;
        v83 = 0;
        v67 = [(PBFPosterExtensionDataStore *)v66 updateDataStoreForSwitcherConfiguration:v42 reason:@"Modal Select Active Poster" error:&v83];
        v29 = v83;
        done = [MEMORY[0x277D3EAF0] done];
        [(PBFModalRootViewController *)self _handleSheetWillDismissWithResponse:done];
        v79[0] = MEMORY[0x277D85DD0];
        v79[1] = 3221225472;
        v79[2] = __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke_2_127;
        v79[3] = &unk_2782C6180;
        v82 = v73;
        v80 = done;
        v81 = controllerCopy;
        v43 = done;
        [v81 dismissViewControllerAnimated:1 completion:v79];
      }

      posterUUID4 = [contentsIdentity posterUUID];
      uUIDString2 = [posterUUID4 UUIDString];

      [(PBFModalRootViewController *)self _logEditWithEditingViewController:controllerCopy posterUUID:uUIDString2 lastModifiedDate:lastModifiedDate];
      (completionCopy)[2](completionCopy, v29);
    }

    goto LABEL_46;
  }

  cancel = [MEMORY[0x277D3EAF0] cancel];
  lastModifiedDate = cancel;
  if (self->_legacyMigrationHelper)
  {
    v36 = PBFLogLegacyPosterMigration(cancel);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_21B526000, v36, OS_LOG_TYPE_INFO, "Legacy migration cancelled, clearing migration info", &buf, 2u);
    }

    v37 = self->_legacyMigrationHelper;
    self->_legacyMigrationHelper = 0;
  }

  editingType2 = [(PRUISModalEntryPoint *)v75 editingType];
  if ((editingType2 - 2) < 2 || !editingType2)
  {
    [(PBFModalRootViewController *)self _handleSheetWillDismissWithResponse:lastModifiedDate];
    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke_2;
    v97[3] = &unk_2782C6180;
    v100 = v73;
    v98 = lastModifiedDate;
    v99 = controllerCopy;
    [v99 dismissViewControllerAnimated:1 completion:v97];
    completionCopy[2](completionCopy, 0);

    v40 = &v100;
    goto LABEL_23;
  }

  if (editingType2 == 1)
  {
    [(PBFModalRootViewController *)self _handleSheetWillDismissWithResponse:lastModifiedDate];
    (*(v73 + 2))(v73, lastModifiedDate);
    completionCopy[2](completionCopy, 0);
    v39 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke_114;
    block[3] = &unk_2782C5888;
    v40 = &v102;
    v102 = controllerCopy;
    dispatch_after(v39, MEMORY[0x277D85CD0], block);
LABEL_23:
    metadataBySettingLastModifiedDateToNow = *v40;
LABEL_47:
  }
}

void __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _handleSheetDidDismissWithResponse:a2];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1008);
  *(v3 + 1008) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 1016);
  *(v5 + 1016) = 0;
}

uint64_t __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

void __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke_2_119(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v6 = WeakRetained[130];
  [*(a1 + 32) removeLongSaveOperationIndicator];
  if (v4)
  {
    v7 = [MEMORY[0x277CBEAA8] date];
    [v7 timeIntervalSinceDate:*(a1 + 40)];
    v9 = v8;
    v10 = [WeakRetained[130] migrationInfo];
    +[PBFLegacyMigrationAnalyticsReporter recordWithEvent:migrationInfo:duration:errorCode:](PBFLegacyMigrationAnalyticsReporter, "recordWithEvent:migrationInfo:duration:errorCode:", 4, v10, [v4 code], v9);

    v12 = PBFLogLegacyPosterMigration(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke_2_119_cold_1();
    }

    v13 = [*(a1 + 48) configurationUUID];
    [v6 revertMigrationWithMigratedConfigurationUUID:v13];

    v14 = *(a1 + 56);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke_120;
    v29[3] = &unk_2782C5888;
    v29[4] = v14;
    [v14 dismissViewControllerAnimated:1 completion:v29];
  }

  else
  {
    v15 = [*(a1 + 48) configurationUUID];
    [v6 finalizeMigrationWithMigratedConfigurationUUID:v15];

    v7 = [MEMORY[0x277CBEAA8] date];
    [v7 timeIntervalSinceDate:*(a1 + 40)];
    v17 = v16;
    v18 = [v6 canMigrateLegacyPoster];
    if ((v18 & 1) != 0 || (v18 = [v6 canMigrateLegacyLockPoster], !v18))
    {
      v19 = PBFLogLegacyPosterMigration(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B526000, v19, OS_LOG_TYPE_DEFAULT, "Successful legacy poster migration!", buf, 2u);
      }

      v20 = 0;
    }

    else
    {
      v19 = PBFLogLegacyPosterMigration(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B526000, v19, OS_LOG_TYPE_DEFAULT, "Successful legacy poster migration! (lock only)", buf, 2u);
      }

      v20 = 1;
    }

    v21 = [WeakRetained[130] migrationInfo];
    [PBFLegacyMigrationAnalyticsReporter recordWithEvent:v20 migrationInfo:v21 duration:0 errorCode:v17];

    v22 = [MEMORY[0x277D3EAF0] done];
    [*(a1 + 56) _handleSheetWillDismissWithResponse:v22];
    v23 = *(a1 + 56);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke_121;
    v26[3] = &unk_2782C58B0;
    v26[4] = v23;
    v27 = v22;
    v24 = v22;
    [v23 dismissViewControllerAnimated:1 completion:v26];
  }

  v25 = WeakRetained[130];
  WeakRetained[130] = 0;
}

uint64_t __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke_2_127(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

- (PREditingSceneViewControllerTopButtonLayout)topButtonLayoutForFocusPosterSelectionViewController:(SEL)controller
{
  result = objc_opt_class();
  if (result)
  {

    return objc_msgSend__topButtonLayout(result);
  }

  else
  {
    retstr->trailingTopButtonFrame.origin = 0u;
    retstr->trailingTopButtonFrame.size = 0u;
    retstr->leadingTopButtonFrame.origin = 0u;
    retstr->leadingTopButtonFrame.size = 0u;
  }

  return result;
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  cancel = [MEMORY[0x277D3EAF0] cancel];
  [(PBFModalRootViewController *)self _handleSheetWillDismissWithResponse:cancel];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  cancel = [MEMORY[0x277D3EAF0] cancel];
  [(PBFModalRootViewController *)self _handleSheetDidDismissWithResponse:cancel];
}

- (BOOL)ambientEditingCollectionViewControllerDidPressDone:(id)done
{
  done = [MEMORY[0x277D3EAF0] done];
  [(PBFModalRootViewController *)self _handleSheetWillDismissWithResponse:done];
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__PBFModalRootViewController_ambientEditingCollectionViewControllerDidPressDone___block_invoke;
  v8[3] = &unk_2782C58B0;
  v8[4] = self;
  v9 = done;
  v6 = done;
  [(PBFModalRootViewController *)self dismissViewControllerAnimated:IsReduceMotionEnabled completion:v8];

  return 1;
}

+ (PREditingSceneViewControllerTopButtonLayout)_topButtonLayout
{
  if (_topButtonLayout_onceToken_0 != -1)
  {
    +[PBFModalRootViewController _topButtonLayout];
  }

  v4 = unk_28120BE98;
  retstr->leadingTopButtonFrame.origin = _topButtonLayout_layout_0;
  retstr->leadingTopButtonFrame.size = v4;
  v5 = unk_28120BEB8;
  retstr->trailingTopButtonFrame.origin = xmmword_28120BEA8;
  retstr->trailingTopButtonFrame.size = v5;
  return result;
}

double __46__PBFModalRootViewController__topButtonLayout__block_invoke()
{
  SBSTopButtonFramesForPosters();
  result = 0.0;
  _topButtonLayout_layout_0 = 0u;
  unk_28120BE98 = 0u;
  xmmword_28120BEA8 = 0u;
  unk_28120BEB8 = 0u;
  return result;
}

- (void)_displayViewControllerAsSheet:(id)sheet
{
  v4 = MEMORY[0x277D757A0];
  sheetCopy = sheet;
  v7 = [[v4 alloc] initWithRootViewController:sheetCopy];

  [v7 setModalPresentationStyle:2];
  sheetPresentationController = [v7 sheetPresentationController];
  [sheetPresentationController setDelegate:self];
  [(PBFModalRootViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_handleSheetWillDismissWithResponse:(id)response
{
  v4 = MEMORY[0x277D3EB50];
  responseCopy = response;
  v8 = [[v4 alloc] initWithResponse:responseCopy];

  _FBSScene = [(UIScene *)self->_parentScene _FBSScene];
  v7 = [MEMORY[0x277CBEB98] setWithObject:v8];
  [_FBSScene sendActions:v7];
}

- (void)_handleSheetDidDismissWithResponse:(id)response
{
  v4 = MEMORY[0x277D3EA78];
  responseCopy = response;
  v8 = [[v4 alloc] initWithResponse:responseCopy];

  _FBSScene = [(UIScene *)self->_parentScene _FBSScene];
  v7 = [MEMORY[0x277CBEB98] setWithObject:v8];
  [_FBSScene sendActions:v7];
}

void __51__PBFModalRootViewController_dataStoreDidTearDown___block_invoke(uint64_t a1)
{
  v2 = PBFLogModal(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B526000, v2, OS_LOG_TYPE_DEFAULT, "Dismissing modal sheet due to data store tear down", buf, 2u);
  }

  v3 = [MEMORY[0x277D3EAF0] cancel];
  [*(a1 + 32) _handleSheetWillDismissWithResponse:v3];
  v4 = [*(a1 + 32) _isPhotosEntryPoint];
  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 _handleSheetDidDismissWithResponse:v3];
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__PBFModalRootViewController_dataStoreDidTearDown___block_invoke_131;
    v6[3] = &unk_2782C58B0;
    v6[4] = v5;
    v7 = v3;
    [v5 dismissPresentedViewControllersAnimated:1 dismissHandler:0 completion:v6];
  }
}

- (void)_presentLegacyAddNewAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = PBFLocalizedString(@"CANNOT_MIGRATE_LEGACY_ALERT_TITLE");
  v5 = PBFLocalizedString(@"CANNOT_MIGRATE_LEGACY_ALERT_MESSAGE");
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:0];

  v7 = MEMORY[0x277D750F8];
  v8 = PBFLocalizedString(@"CANNOT_MIGRATE_LEGACY_ALERT_BUTTON_ADD_NEW");
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__PBFModalRootViewController__presentLegacyAddNewAlert__block_invoke;
  v14[3] = &unk_2782C76D8;
  v14[4] = self;
  v9 = [v7 actionWithTitle:v8 style:0 handler:v14];

  [v6 addAction:v9];
  v10 = MEMORY[0x277D750F8];
  v11 = PBFLocalizedString(@"CANCEL");
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__PBFModalRootViewController__presentLegacyAddNewAlert__block_invoke_2;
  v13[3] = &unk_2782C76D8;
  v13[4] = self;
  v12 = [v10 actionWithTitle:v11 style:1 handler:v13];

  [v6 addAction:v12];
  [(PBFModalRootViewController *)self presentViewController:v6 animated:1 completion:0];
}

void __55__PBFModalRootViewController__presentLegacyAddNewAlert__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D3EAF0] cancel];
  [*(a1 + 32) _handleSheetWillDismissWithResponse:v2];
  [*(a1 + 32) _handleSheetDidDismissWithResponse:v2];
}

- (void)_presentPartialMigrationPrompt
{
  v3 = MEMORY[0x277D75110];
  v4 = PBFLocalizedString(@"CANNOT_MIGRATE_LEGACY_HOME_ALERT_TITLE");
  v5 = PBFLocalizedString(@"CANNOT_MIGRATE_LEGACY_HOME_ALERT_MESSAGE");
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:0];

  v7 = MEMORY[0x277D750F8];
  v8 = PBFLocalizedString(@"CANNOT_MIGRATE_LEGACY_HOME_ALERT_BUTTON_CUSTOMIZE_LOCK");
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__PBFModalRootViewController__presentPartialMigrationPrompt__block_invoke;
  v18[3] = &unk_2782C76D8;
  v18[4] = self;
  v9 = [v7 actionWithTitle:v8 style:2 handler:v18];

  v10 = MEMORY[0x277D750F8];
  v11 = PBFLocalizedString(@"CANNOT_MIGRATE_LEGACY_ALERT_BUTTON_ADD_NEW");
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__PBFModalRootViewController__presentPartialMigrationPrompt__block_invoke_2;
  v17[3] = &unk_2782C76D8;
  v17[4] = self;
  v12 = [v10 actionWithTitle:v11 style:0 handler:v17];

  [v6 addAction:v9];
  [v6 addAction:v12];
  v13 = MEMORY[0x277D750F8];
  v14 = PBFLocalizedString(@"CANCEL");
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__PBFModalRootViewController__presentPartialMigrationPrompt__block_invoke_3;
  v16[3] = &unk_2782C76D8;
  v16[4] = self;
  v15 = [v13 actionWithTitle:v14 style:1 handler:v16];

  [v6 addAction:v15];
  [(PBFModalRootViewController *)self presentViewController:v6 animated:1 completion:0];
}

void __60__PBFModalRootViewController__presentPartialMigrationPrompt__block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277D3EAF0] cancel];
  [*(a1 + 32) _handleSheetWillDismissWithResponse:v2];
  [*(a1 + 32) _handleSheetDidDismissWithResponse:v2];
}

- (void)_presentLegacyMigrationAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = PBFLocalizedString(@"MIGRATE_LEGACY_ALERT_TITLE");
  v5 = PBFLocalizedString(@"MIGRATE_LEGACY_ALERT_MESSAGE");
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:0];

  v7 = MEMORY[0x277D750F8];
  v8 = PBFLocalizedString(@"MIGRATE_LEGACY_ALERT_BUTTON_MIGRATE_EXISTING");
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__PBFModalRootViewController__presentLegacyMigrationAlert__block_invoke;
  v18[3] = &unk_2782C76D8;
  v18[4] = self;
  v9 = [v7 actionWithTitle:v8 style:0 handler:v18];

  v10 = MEMORY[0x277D750F8];
  v11 = PBFLocalizedString(@"MIGRATE_LEGACY_ALERT_BUTTON_ADD_NEW");
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__PBFModalRootViewController__presentLegacyMigrationAlert__block_invoke_2;
  v17[3] = &unk_2782C76D8;
  v17[4] = self;
  v12 = [v10 actionWithTitle:v11 style:0 handler:v17];

  [v6 addAction:v9];
  [v6 addAction:v12];
  v13 = MEMORY[0x277D750F8];
  v14 = PBFLocalizedString(@"CANCEL");
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__PBFModalRootViewController__presentLegacyMigrationAlert__block_invoke_3;
  v16[3] = &unk_2782C76D8;
  v16[4] = self;
  v15 = [v13 actionWithTitle:v14 style:1 handler:v16];

  [v6 addAction:v15];
  [(PBFModalRootViewController *)self presentViewController:v6 animated:1 completion:0];
}

void __58__PBFModalRootViewController__presentLegacyMigrationAlert__block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277D3EAF0] cancel];
  [*(a1 + 32) _handleSheetWillDismissWithResponse:v2];
  [*(a1 + 32) _handleSheetDidDismissWithResponse:v2];
}

- (void)_presentLegacyMigrationFailedAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = PBFLocalizedString(@"ERROR_MIGRATING_LEGACY_ALERT_TITLE");
  v5 = PBFLocalizedString(@"ERROR_MIGRATING_LEGACY_ALERT_MESSAGE");
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:0];

  v7 = MEMORY[0x277D750F8];
  v8 = PBFLocalizedString(@"ERROR_MIGRATING_LEGACY_ALERT_BUTTON_ADD_NEW");
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__PBFModalRootViewController__presentLegacyMigrationFailedAlert__block_invoke;
  v14[3] = &unk_2782C76D8;
  v14[4] = self;
  v9 = [v7 actionWithTitle:v8 style:0 handler:v14];

  [v6 addAction:v9];
  v10 = MEMORY[0x277D750F8];
  v11 = PBFLocalizedString(@"CANCEL");
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__PBFModalRootViewController__presentLegacyMigrationFailedAlert__block_invoke_2;
  v13[3] = &unk_2782C76D8;
  v13[4] = self;
  v12 = [v10 actionWithTitle:v11 style:1 handler:v13];

  [v6 addAction:v12];
  [(PBFModalRootViewController *)self presentViewController:v6 animated:1 completion:0];
}

void __64__PBFModalRootViewController__presentLegacyMigrationFailedAlert__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D3EAF0] cancel];
  [*(a1 + 32) _handleSheetWillDismissWithResponse:v2];
  [*(a1 + 32) _handleSheetDidDismissWithResponse:v2];
}

- (void)_setupGalleryDataProviderIfNeeded
{
  if (!self->_galleryDataProvider)
  {
    v3 = objc_alloc_init(PBFGalleryMutableDataProvider);
    galleryDataProvider = self->_galleryDataProvider;
    self->_galleryDataProvider = v3;

    [(PBFModalRootViewController *)self _reload];
  }
}

- (void)_reload
{
  currentGalleryConfiguration = [(PBFPosterExtensionDataStore *)self->_dataStore currentGalleryConfiguration];
  [(PBFGalleryMutableDataProvider *)self->_galleryDataProvider configureForGallery:currentGalleryConfiguration];
}

- (void)_presentGallery
{
  view = [(PBFModalRootViewController *)self view];
  window = [view window];
  _rootSheetPresentationController = [window _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];

  [(PBFModalRootViewController *)self _setupGalleryDataProviderIfNeeded];
  obj = [[PBFPosterGalleryPreviewViewController alloc] initWithNibName:0 bundle:0];
  [(PBFPosterGalleryPreviewViewController *)obj setDelegate:self];
  [(PBFPosterGalleryPreviewViewController *)obj setEditingSceneDelegate:self];
  [(PBFPosterGalleryPreviewViewController *)obj setDataProvider:self->_galleryDataProvider];
  PFCurrentDeviceClass();
  [(PBFPosterGalleryPreviewViewController *)obj setModalPresentationStyle:2];
  sheetPresentationController = [(PBFPosterGalleryPreviewViewController *)obj sheetPresentationController];
  [PBFPosterGalleryPreviewViewController configureSheetPresentationController:sheetPresentationController];
  [sheetPresentationController setDelegate:self];
  [(PBFModalRootViewController *)self presentViewController:obj animated:1 completion:0];

  objc_storeWeak(&self->_galleryController, obj);
  currentGalleryConfiguration = [(PBFPosterExtensionDataStore *)self->_dataStore currentGalleryConfiguration];
  suggestedLayout = [currentGalleryConfiguration suggestedLayout];
  proactiveRepresentation = [suggestedLayout proactiveRepresentation];

  if (proactiveRepresentation)
  {
    mEMORY[0x277CEB530] = [MEMORY[0x277CEB530] sharedInstance];
    [mEMORY[0x277CEB530] logFaceGalleryDidAppearWithFaceGalleryConfiguration:proactiveRepresentation];
  }
}

- (void)_createLegacyMigrationHelperWithConfiguration:(id)configuration
{
  if (configuration && !self->_legacyMigrationHelper)
  {
    configurationCopy = configuration;
    v7 = [[PBFPosterPair alloc] initWithConfiguration:configurationCopy associatedConfiguration:0];

    v5 = [[PBFLegacyPosterMigrationHelper alloc] initWithDataStore:self->_dataStore legacyPosterPair:v7];
    legacyMigrationHelper = self->_legacyMigrationHelper;
    self->_legacyMigrationHelper = v5;
  }
}

- (void)_performLegacyMigration
{
  lockScreenMigrationViewController = [(PBFLegacyPosterMigrationHelper *)self->_legacyMigrationHelper lockScreenMigrationViewController];
  if (lockScreenMigrationViewController)
  {
    v4 = lockScreenMigrationViewController;
    [(PBFModalRootViewController *)self _presentEditingSceneViewController:lockScreenMigrationViewController];
    lockScreenMigrationViewController = v4;
  }
}

- (BOOL)_isPhotosEntryPoint
{
  entryPoint = self->_entryPoint;
  v3 = objc_opt_class();
  v4 = entryPoint;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  editingType = [(PRUISModalEntryPoint *)v6 editingType];
  return editingType == 1;
}

- (void)_logEditWithEditingViewController:(id)controller posterUUID:(id)d lastModifiedDate:(id)date
{
  controllerCopy = controller;
  dateCopy = date;
  dCopy = d;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    editingType = [(PRUISModalEntryPoint *)self->_entryPoint editingType];
    v10 = @"unknown";
    v11 = @"modalEditingEditPosterFromConfiguration";
    v12 = @"modalEditingEditPosterFromConfigurationWithUpdateSessionInfo";
    if (editingType != 3)
    {
      v12 = @"unknown";
    }

    if (editingType != 2)
    {
      v11 = v12;
    }

    if (editingType == 1)
    {
      v10 = @"modalEditingNewPosterFromConfiguration";
    }

    if (editingType)
    {
      v13 = editingType == 1;
    }

    else
    {
      v13 = 0;
    }

    if (!editingType)
    {
      v10 = @"modalEditingActivePosterConfiguration";
    }

    v14 = editingType <= 1 && v13;
    v31 = v14;
    if (editingType > 1)
    {
      v10 = v11;
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v31 = 0;
      v10 = @"unknown";
LABEL_19:
      v30 = v10;
      goto LABEL_20;
    }
  }

  v30 = @"modalGallery";
  v31 = 1;
LABEL_20:
  modifications = [controllerCopy modifications];
  v16 = objc_alloc(MEMORY[0x277CEB7B8]);
  [dateCopy timeIntervalSinceNow];
  v18 = v17;

  colorModified = [modifications colorModified];
  fontModified = [modifications fontModified];
  numberingSystemModified = [modifications numberingSystemModified];
  posterContentModified = [modifications posterContentModified];
  widgetsModified = [modifications widgetsModified];
  containedWidgetsBeforeEdit = [modifications containedWidgetsBeforeEdit];
  startDate = [modifications startDate];
  [startDate timeIntervalSinceNow];
  BYTE4(v29) = containedWidgetsBeforeEdit;
  BYTE3(v29) = widgetsModified;
  BYTE2(v29) = posterContentModified;
  BYTE1(v29) = numberingSystemModified;
  LOBYTE(v29) = fontModified;
  v27 = [v16 initWithLockscreenId:dCopy entryPoint:v30 newlyCreated:v31 secondsSinceLastEdit:-v18 outcome:@"accepted" userChangedColor:colorModified userChangedFont:v29 userChangedNumberingSystem:-v26 userChangedPosterContent:? userChangedWidgets:? didLockscreenHaveWidgetsBeforeEdit:? duration:?];

  mEMORY[0x277CEB530] = [MEMORY[0x277CEB530] sharedInstance];
  [mEMORY[0x277CEB530] logPosterEdit:v27 completion:&__block_literal_global_206];
}

void __92__PBFModalRootViewController__logEditWithEditingViewController_posterUUID_lastModifiedDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = PBFLogCommon(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __103__PBFFocusPosterSelectionViewController__logEditWithEditingViewController_posterUUID_lastModifiedDate___block_invoke_cold_1();
    }
  }
}

- (id)_posterLimitExceededAlertWithButtonActionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = MEMORY[0x277D75110];
  v5 = PBFLocalizedString(@"TOO_MANY_CONFIGURATIONS_TITLE");
  v6 = PBFLocalizedString(@"TOO_MANY_CONFIGURATIONS_MESSAGE");
  v7 = [v4 alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = MEMORY[0x277D750F8];
  v9 = PBFLocalizedString(@"OK");
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__PBFModalRootViewController__posterLimitExceededAlertWithButtonActionHandler___block_invoke;
  v13[3] = &unk_2782C7700;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = [v8 actionWithTitle:v9 style:0 handler:v13];
  [v7 addAction:v11];

  return v7;
}

uint64_t __79__PBFModalRootViewController__posterLimitExceededAlertWithButtonActionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_handleNotificationForwardAction:(id)action
{
  v12 = *MEMORY[0x277D85DE8];
  notificationName = [action notificationName];
  presentedViewController = [(PBFModalRootViewController *)self presentedViewController];
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    v7 = PBFLogCommon(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      v9 = notificationName;
      v10 = 2114;
      v11 = presentedViewController;
      _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, "Forwarding appearance notification %{public}@ to presented view controller: %{public}@", &v8, 0x16u);
    }

    [presentedViewController forwardAppearanceNotificationName:notificationName];
  }
}

- (void)_setScene:(id)scene
{
  sceneCopy = scene;
  if (sceneCopy && self->_parentScene != sceneCopy)
  {
    [PBFModalRootViewController _setScene:a2];
  }
}

- (id)_settingsDiffActionsForScene:(id)scene
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = self;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)_actionHandlersForScene:(id)scene
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = self;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  settings = [sScene settings];
  otherSettings = [settings otherSettings];
  v10 = [otherSettings BOOLForSetting:2606278162];

  if (self->_displayConfigurationObserver)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    _FBSScene = [(UIScene *)self->_parentScene _FBSScene];
    settings2 = [_FBSScene settings];
    displayConfiguration = [settings2 displayConfiguration];

    [(PBFDisplayConfigurationUpdatable *)self->_displayConfigurationObserver setDisplayConfiguration:displayConfiguration];
  }
}

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  actionsCopy = actions;
  v8 = [actionsCopy bs_firstObjectPassingTest:&__block_literal_global_224];
  if (v8)
  {
    presentedViewController = [(PBFModalRootViewController *)self presentedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [presentedViewController dismiss];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [presentedViewController dismissWithAction:0];
      }

      else
      {
        cancel = [MEMORY[0x277D3EAF0] cancel];
        [(PBFModalRootViewController *)self _handleSheetWillDismissWithResponse:cancel];
        v14 = MEMORY[0x277D85DD0];
        v15 = 3221225472;
        v16 = __92__PBFModalRootViewController__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke_2;
        v17 = &unk_2782C58B0;
        selfCopy = self;
        v19 = cancel;
        v11 = cancel;
        [(PBFModalRootViewController *)self dismissViewControllerAnimated:1 completion:&v14];
      }
    }
  }

  v12 = [actionsCopy bs_firstObjectPassingTest:{&__block_literal_global_227, v14, v15, v16, v17, selfCopy}];
  if (v12)
  {
    [(PBFModalRootViewController *)self _handleNotificationForwardAction:v12];
  }

  return actionsCopy;
}

uint64_t __92__PBFModalRootViewController__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

uint64_t __92__PBFModalRootViewController__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PBFModalRootViewController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PBFModalRootViewController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (void)posterExtensionDataStore:(id)store didUpdateGalleryConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__PBFModalRootViewController_posterExtensionDataStore_didUpdateGalleryConfiguration___block_invoke;
  block[3] = &unk_2782C70C0;
  objc_copyWeak(&v9, &location);
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __85__PBFModalRootViewController_posterExtensionDataStore_didUpdateGalleryConfiguration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[129] configureForGallery:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)galleryViewController:(id)controller didSelectPreview:(id)preview fromPreviewView:(id)view
{
  controllerCopy = controller;
  previewCopy = preview;
  viewCopy = view;
  if ([(PBFPosterExtensionDataStore *)self->_dataStore canPersistNewPosterConfiguration])
  {
    [controllerCopy presentPreview:previewCopy withMode:2 fromView:viewCopy];
  }

  else
  {
    v10 = [(PBFModalRootViewController *)self _posterLimitExceededAlertWithButtonActionHandler:0];
    [controllerCopy presentViewController:v10 animated:1 completion:0];
  }
}

- (id)galleryViewController:(id)controller willUseAnimationController:(id)animationController forDismissingEditingViewControllerWithAction:(int64_t)action
{
  if (action == 1)
  {
    return 0;
  }

  else
  {
    return animationController;
  }
}

- (void)editingIngestionManager:(id)manager didAccept:(id)accept userChoice:(int64_t)choice
{
  managerCopy = manager;
  acceptCopy = accept;
  if (!self->_legacyMigrationHelper)
  {
    if (choice)
    {
      [managerCopy dismissViewController];
      v11 = objc_opt_class();
      if (v11)
      {
        objc_msgSend__topButtonLayout(v11);
      }

      else
      {
        memset(v20, 0, sizeof(v20));
      }

      v14 = [PBFPosterRackCollectionViewController simplifiedHomeScreenSwitcherFor:acceptCopy delegate:self topButtonLayout:v20];
      editingViewController = [managerCopy editingViewController];
      navigationController = [editingViewController navigationController];

      if (!navigationController)
      {
        [PBFModalRootViewController editingIngestionManager:a2 didAccept:? userChoice:?];
      }

      editingViewController2 = [managerCopy editingViewController];
      navigationController2 = [editingViewController2 navigationController];
      [navigationController2 pushViewController:v14 animated:1];
    }

    else
    {
      if ([(PBFModalRootViewController *)self _isPhotosEntryPoint])
      {
        temporaryDescriptor = self->_temporaryDescriptor;
        self->_temporaryDescriptor = 0;

        done = [MEMORY[0x277D3EAF0] done];
        [(PBFModalRootViewController *)self _handleSheetWillDismissWithResponse:done];
        [(PBFModalRootViewController *)self _handleSheetDidDismissWithResponse:done];
      }

      else
      {
        done2 = [MEMORY[0x277D3EAF0] done];
        [(PBFModalRootViewController *)self _handleSheetWillDismissWithResponse:done2];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __75__PBFModalRootViewController_editingIngestionManager_didAccept_userChoice___block_invoke;
        v21[3] = &unk_2782C58B0;
        v21[4] = self;
        v22 = done2;
        done = done2;
        [(PBFModalRootViewController *)self dismissViewControllerAnimated:1 completion:v21];
      }
    }
  }
}

- (PBFPosterGalleryPreviewViewController)galleryController
{
  WeakRetained = objc_loadWeakRetained(&self->_galleryController);

  return WeakRetained;
}

- (PBFAmbientEditingCollectionViewController)ambientEditingController
{
  WeakRetained = objc_loadWeakRetained(&self->_ambientEditingController);

  return WeakRetained;
}

- (void)initWithScene:(char *)a1 dataStore:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:UISceneClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithScene:(char *)a1 dataStore:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:PBFPosterExtensionDataStoreClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithScene:(char *)a1 dataStore:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithScene:(char *)a1 dataStore:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_presentEditingForPosterConfiguration:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:PFServerPosterPathClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_presentEditingForPosterConfiguration:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_presentEditingForPosterConfiguration:(char *)a1 sessionInfo:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:PFServerPosterPathClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_presentEditingForPosterConfiguration:(char *)a1 sessionInfo:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __80__PBFModalRootViewController__presentEditingForPosterConfiguration_sessionInfo___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 48);
  OUTLINED_FUNCTION_2(&dword_21B526000, a2, a3, "Unable to refresh poster configuration with session info: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)editingSceneViewController:(uint64_t)a3 userDidDismissWithAction:updatedConfiguration:updatedConfiguredProperties:completion:.cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138544642;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  v12 = 2048;
  v13 = a2;
  v14 = 2114;
  v15 = @"PBFModalRootViewController.m";
  v16 = 1024;
  v17 = 615;
  v18 = 2114;
  v19 = a3;
  _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
}

- (void)_standaloneEditingSceneViewController:(char *)a1 userDidDismissWithAction:updatedConfiguration:updatedConfiguredProperties:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:PRUISModalEntryPointEditingClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_standaloneEditingSceneViewController:(char *)a1 userDidDismissWithAction:updatedConfiguration:updatedConfiguredProperties:completion:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_setScene:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"scene == _parentScene"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)editingIngestionManager:(char *)a1 didAccept:userChoice:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[[manager editingViewController] navigationController]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end