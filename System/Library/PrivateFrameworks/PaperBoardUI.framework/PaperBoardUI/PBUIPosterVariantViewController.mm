@interface PBUIPosterVariantViewController
+ (id)_determinePreferredProminentColorFromDerivedProminentColor:(id)color posterPreferredProminentColor:(id)prominentColor timeColor:(id)timeColor fallbackColor:(id)fallbackColor outChosenColor:(id *)chosenColor;
+ (id)defaultCacheManager;
+ (id)snapshotFormat;
- (BOOL)adaptiveTimeHonorsPreferredSalientContentRectangle;
- (BOOL)isSnapshotInCorrectOrientation;
- (CGRect)preferredSalientContentRectangle;
- (PBUIPosterComponentDelegate)delegate;
- (PBUIPosterVariantViewController)counterpart;
- (PBUIPosterVariantViewController)initWithScene:(id)scene counterpart:(id)counterpart;
- (PLKLegibilityEnvironmentContext)legibilityEnvironmentContext;
- (PRSPosterConfiguration)lockScreenConfiguration;
- (PUIColorStatistics)contentColorStatistics;
- (UIColor)averageColor;
- (UIColor)derivedProminentColor;
- (UIColor)preferredProminentColor;
- (UIColor)timeColor;
- (UIImage)snapshot;
- (_UILegibilitySettings)legibilitySettings;
- (double)averageContrast;
- (double)averageSaturation;
- (double)contrastInRect:(CGRect)rect;
- (double)lumaInRect:(CGRect)rect;
- (double)preferredDeviceMotionUpdateInterval;
- (double)saturationInRect:(CGRect)rect;
- (id)_applicableScene;
- (id)_externalDisplayConfiguration;
- (id)_fetchDerivedProminentColor;
- (id)_fetchPosterPreferredProminentColor;
- (id)_fetchTimeColor;
- (id)_homeVariantScene;
- (id)_lockVariantScene;
- (id)_posterPreferredProminentColor:(BOOL)color;
- (id)_preferredProminentColor:(BOOL)color source:(id *)source;
- (id)averageColorInRect:(CGRect)rect;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)evaluateSnapshotPreconditions;
- (id)makePortalSourceWithLegibilitySettings:(id)settings;
- (id)snapshotSourceProvider;
- (id)succinctDescription;
- (void)_checkIfPresentationIsUpdatedAndSnapshot;
- (void)_fetchPosterPreferredProminentColor;
- (void)_handleUpdateProminentPosterDerivedColor:(id)color posterPreferredProminentColor:(id)prominentColor timeColor:(id)timeColor fallbackColor:(id)fallbackColor;
- (void)_invalidateSnapshots:(id)snapshots;
- (void)_monitorScene:(id)scene;
- (void)_prepareFauxExternalScene;
- (void)_prepareFauxExternalSceneFromScene:(id)scene completion:(id)completion attemptNumber:(unint64_t)number;
- (void)_scheduleSnapshotIfNeeded:(id)needed;
- (void)_setupCachesIfNeeded;
- (void)_snapshotNow:(id)now;
- (void)_snapshotScene:(id)scene completion:(id)completion;
- (void)_updateEffectiveMotionEffectsModeForSupportedMode:(unint64_t)mode disabled:(BOOL)disabled;
- (void)_updateInterfaceStyle;
- (void)_updatePosterColorStatistics:(id)statistics desiredLegibilitySettings:(id)settings;
- (void)_updatePosterPreferredProminentColor;
- (void)applyFauxExternalSceneSettings:(id)settings;
- (void)colorStatisticsDidChange:(id)change;
- (void)dealloc;
- (void)fetchWallpaperProminentColor:(id)color;
- (void)invalidate;
- (void)invalidateSnapshotPreconditions:(id)preconditions;
- (void)legibilitySettingsDidChange;
- (void)noteWillRotateToInterfaceOrientation:(int64_t)orientation;
- (void)performSnapshotOnQueue:(id)queue scene:(id)scene completion:(id)completion;
- (void)postprocessNewSnapshot:(id)snapshot orSnapshotBundle:(id)bundle colorStatistics:(id)statistics metadata:(id)metadata completion:(id)completion;
- (void)scene:(id)scene didApplyUpdateWithContext:(id)context;
- (void)scene:(id)scene didCompleteUpdateWithContext:(id)context error:(id)error;
- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context;
- (void)sceneContentStateDidChange:(id)change;
- (void)setActiveStyle:(int64_t)style;
- (void)setBlurEnabled:(BOOL)enabled;
- (void)setCounterpart:(id)counterpart;
- (void)setNeedsNewSnapshot:(id)snapshot;
- (void)setPreferredProminentColor:(id)color chosenColorSource:(id)source notifyObservers:(BOOL)observers;
- (void)snapshotIfNeeded:(BOOL)needed reason:(id)reason;
- (void)snapshotSource:(id)source failedToReadColorStatisticsAtURL:(id)l error:(id)error;
- (void)snapshotSource:(id)source failedToReadSnapshotAtURL:(id)l error:(id)error;
- (void)snapshotSourceReceivedNewSnapshot:(id)snapshot;
- (void)viewDidLoad;
@end

@implementation PBUIPosterVariantViewController

- (_UILegibilitySettings)legibilitySettings
{
  desiredLegibilitySettings = [(PBUIPosterVariantViewController *)self desiredLegibilitySettings];

  if (desiredLegibilitySettings)
  {
    desiredLegibilitySettings2 = [(PBUIPosterVariantViewController *)self desiredLegibilitySettings];
    [desiredLegibilitySettings2 convertToUILegibility];
  }

  else
  {
    desiredLegibilitySettings2 = [(PBUIPosterVariantViewController *)self contentColorStatistics];
    [desiredLegibilitySettings2 legibilitySettings];
  }
  v5 = ;

  return v5;
}

- (PUIColorStatistics)contentColorStatistics
{
  posterColorStatistics = self->_posterColorStatistics;
  if (posterColorStatistics)
  {
    contentColorStatistics = posterColorStatistics;
  }

  else
  {
    contentColorStatistics = [(PBUIURLBackedSnapshotSource *)self->_snapshotSource contentColorStatistics];
  }

  return contentColorStatistics;
}

- (id)evaluateSnapshotPreconditions
{
  BSDispatchQueueAssertMain();
  _applicableScene = [(PBUIPosterVariantViewController *)self _applicableScene];
  v4 = [PBUISnapshotPreconditionResult alloc];
  _externalDisplayConfiguration = [(PBUIPosterVariantViewController *)self _externalDisplayConfiguration];
  v6 = [(PBUISnapshotPreconditionResult *)v4 initWithExternalDisplayConfiguration:_externalDisplayConfiguration variant:[(PBUIPosterVariantViewController *)self variant]];

  if ([(PBUISnapshotPreconditionResult *)v6 canSnapshot])
  {
    v7 = _applicableScene == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    [(PBUISnapshotPreconditionResult *)v6 appendPreconditionResultFailureWithFormat:@"Poster scene is nil"];
  }

  if ([(PBUISnapshotPreconditionResult *)v6 canSnapshot])
  {
    settings = [_applicableScene settings];

    if (!settings)
    {
      [(PBUISnapshotPreconditionResult *)v6 appendPreconditionResultFailureWithFormat:@"Poster scene is in a transitory state (no scene settings)"];
    }
  }

  if ([(PBUISnapshotPreconditionResult *)v6 canSnapshot]&& self->_lastExtantUpdate)
  {
    [(PBUISnapshotPreconditionResult *)v6 appendPreconditionResultFailureWithFormat:@"Poster scene is not ready for snapshotting (mid-update)."];
  }

  if ([(PBUISnapshotPreconditionResult *)v6 canSnapshot])
  {
    v14 = 0;
    v9 = [_applicableScene pui_sceneIsReadyToSnapshot:&v14];
    v10 = v14;
    v11 = v10;
    if ((v9 & 1) == 0)
    {
      [(PBUISnapshotPreconditionResult *)v6 appendPreconditionResultFailureWithFormat:@"Poster scene is not ready: %@", v10];
    }
  }

  else
  {
    v11 = 0;
  }

  if ([(PBUISnapshotPreconditionResult *)v6 canSnapshot]&& [(BSAtomicFlag *)self->_isRotating getFlag])
  {
    [(PBUISnapshotPreconditionResult *)v6 appendPreconditionResultFailureWithFormat:@"Poster scene is currently rotating"];
  }

  if ([(PBUISnapshotPreconditionResult *)v6 canSnapshot])
  {
    settings2 = [_applicableScene settings];
    [(PBUIPosterVariantViewController *)self validateSnapshottingPreconditionsForSettings:settings2 result:v6];
  }

  return v6;
}

- (id)_applicableScene
{
  scene = self->_scene;
  if (scene)
  {
    scene = scene;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_counterpart);
    scene = [WeakRetained scene];
  }

  return scene;
}

- (id)_externalDisplayConfiguration
{
  delegate = [(PBUIPosterVariantViewController *)self delegate];
  v4 = [delegate posterComponentExternalDisplayConfiguration:self];

  return v4;
}

- (PBUIPosterComponentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)snapshotSourceProvider
{
  [(PBUICachedSnapshotEffectProvider *)self->_snapshotProvider setSnapshotProvider:self->_snapshotSource];
  cacheIdentifier = [(PBUIURLBackedSnapshotSource *)self->_snapshotSource cacheIdentifier];
  cacheIdentifier2 = [(PBUICachedSnapshotEffectProvider *)self->_snapshotProvider cacheIdentifier];
  v5 = [cacheIdentifier2 isEqualToString:cacheIdentifier];

  if ((v5 & 1) == 0)
  {
    [(PBUICachedSnapshotEffectProvider *)&self->_snapshotProvider->super.isa setCacheIdentifier:cacheIdentifier];
  }

  if (![(PBUIURLBackedSnapshotSource *)self->_snapshotSource isValid])
  {
    [(PBUIPosterVariantViewController *)self snapshotIfNeeded:1 reason:@"need snapshot"];
  }

  snapshotProvider = self->_snapshotProvider;
  v7 = snapshotProvider;

  return snapshotProvider;
}

- (BOOL)isSnapshotInCorrectOrientation
{
  _applicableScene = [(PBUIPosterVariantViewController *)self _applicableScene];
  settings = [_applicableScene settings];
  pui_deviceOrientation = [settings pui_deviceOrientation];
  interfaceOrientation = [settings interfaceOrientation];
  v10 = 0;
  v11 = 0;
  [(PBUIURLBackedSnapshotSource *)self->_snapshotSource currentSnapshotInterfaceOrientation:&v10 outDeviceOrientation:&v11];
  v8 = pui_deviceOrientation == v11 || interfaceOrientation == v10;

  return v8;
}

- (CGRect)preferredSalientContentRectangle
{
  _applicableScene = [(PBUIPosterVariantViewController *)self _applicableScene];
  clientSettings = [_applicableScene clientSettings];
  [clientSettings pui_preferredSalientContentRectangle];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)adaptiveTimeHonorsPreferredSalientContentRectangle
{
  _applicableScene = [(PBUIPosterVariantViewController *)self _applicableScene];
  clientSettings = [_applicableScene clientSettings];
  pui_adaptiveTimeMode = [clientSettings pui_adaptiveTimeMode];

  if (pui_adaptiveTimeMode == 2)
  {
    LOBYTE(v8) = 1;
  }

  else if (pui_adaptiveTimeMode == 4)
  {
    _applicableScene2 = [(PBUIPosterVariantViewController *)self _applicableScene];
    clientSettings2 = [_applicableScene2 clientSettings];
    v8 = [clientSettings2 pui_isAdaptiveTimeHeightUserConfigured] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (UIColor)averageColor
{
  contentColorStatistics = [(PBUIPosterVariantViewController *)self contentColorStatistics];
  averageColor = [contentColorStatistics averageColor];

  if (!averageColor)
  {
    clientSettings = [(FBScene *)self->_scene clientSettings];
    pr_averageColor = [clientSettings pr_averageColor];
    averageColor = [pr_averageColor UIColor];
  }

  return averageColor;
}

- (PRSPosterConfiguration)lockScreenConfiguration
{
  if ([(PBUIPosterVariantViewController *)self variant])
  {
    counterpart = [(PBUIPosterVariantViewController *)self counterpart];
    lockScreenConfiguration = [counterpart lockScreenConfiguration];
LABEL_5:
    v6 = lockScreenConfiguration;
    goto LABEL_6;
  }

  scene = [(PBUIPosterVariantViewController *)self scene];
  counterpart = [scene pui_posterPath];

  if (counterpart)
  {
    lockScreenConfiguration = [objc_alloc(getPRSPosterConfigurationClass()) initWithPath:counterpart];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (PBUIPosterVariantViewController)initWithScene:(id)scene counterpart:(id)counterpart
{
  sceneCopy = scene;
  counterpartCopy = counterpart;
  v10 = sceneCopy;
  if (v10)
  {
    NSClassFromString(&cfstr_Fbscene.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PBUIPosterVariantViewController initWithScene:a2 counterpart:self];
    }
  }

  v29.receiver = self;
  v29.super_class = PBUIPosterVariantViewController;
  v11 = [(PBUIPosterVariantViewController *)&v29 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    v11->_isBlurEnabled = 0;
    v13 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
    snapshotNeeded = v12->_snapshotNeeded;
    v12->_snapshotNeeded = v13;

    v15 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
    snapshotScheduled = v12->_snapshotScheduled;
    v12->_snapshotScheduled = v15;

    v17 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
    isRotating = v12->_isRotating;
    v12->_isRotating = v17;

    v19 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
    isSnapshotting = v12->_isSnapshotting;
    v12->_isSnapshotting = v19;

    objc_storeStrong(&v12->_scene, scene);
    scene = v12->_scene;
    if (scene)
    {
      uiPresentationManager = [(FBScene *)scene uiPresentationManager];
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = [uiPresentationManager createPresenterWithIdentifier:v24 priority:-100];
      presenter = v12->_presenter;
      v12->_presenter = v25;

      [(UIScenePresenter *)v12->_presenter modifyPresentationContext:&__block_literal_global_20];
      [(UIScenePresenter *)v12->_presenter activate];
      [(PBUIPosterVariantViewController *)v12 _monitorScene:v12->_scene];
      [(PBUIPosterVariantViewController *)v12 _updateInterfaceStyle];
    }

    if (counterpartCopy)
    {
      [(PBUIPosterVariantViewController *)v12 setCounterpart:counterpartCopy];
    }

    else
    {
      [(PBUIPosterVariantViewController *)v12 _setupCachesIfNeeded];
    }

    v27 = [MEMORY[0x277CCA9A0] notificationCenterForType:@"POSTERBOARD"];
    [v27 addObserver:v12 selector:sel__invalidateSnapshots_ name:@"POSTERBOARD_CLEAR_ALL_CACHED_SNAPSHOTS" object:0];
  }

  return v12;
}

void __61__PBUIPosterVariantViewController_initWithScene_counterpart___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAppearanceStyle:2];
  [v2 setClippingDisabled:1];
}

- (void)noteWillRotateToInterfaceOrientation:(int64_t)orientation
{
  if ([(BSAtomicFlag *)self->_isRotating setFlag:1])
  {
    [(PUIManagedCacheIdentifying *)self->_cache removeAllImagesWithCompletion:0];
    snapshotSource = self->_snapshotSource;

    [(PBUIURLBackedSnapshotSource *)snapshotSource invalidateCurrentSnapshot];
  }
}

- (void)_invalidateSnapshots:(id)snapshots
{
  legibilityEnvironmentContext = self->_legibilityEnvironmentContext;
  self->_legibilityEnvironmentContext = 0;

  [(PUIManagedCacheIdentifying *)self->_cache removeAllImagesWithCompletion:0];
  [(PBUIURLBackedSnapshotSource *)self->_snapshotSource invalidateCurrentSnapshot];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  snapshotURL = [(PBUIPosterVariantPathProvider *)self->_pathProvider snapshotURL];
  [defaultManager removeItemAtURL:snapshotURL error:0];

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  snapshotMetadataURL = [(PBUIPosterVariantPathProvider *)self->_pathProvider snapshotMetadataURL];
  [defaultManager2 removeItemAtURL:snapshotMetadataURL error:0];

  defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
  snapshotColorStatisticsURL = [(PBUIPosterVariantPathProvider *)self->_pathProvider snapshotColorStatisticsURL];
  [defaultManager3 removeItemAtURL:snapshotColorStatisticsURL error:0];

  [(PBUIPosterVariantViewController *)self _setupCachesIfNeeded];

  [(PBUIPosterVariantViewController *)self setNeedsNewSnapshot:@"snapshots were invalidate"];
}

- (void)dealloc
{
  [(PBUIFixedReplicaSourceProvider *)self->_portalProvider invalidate];
  [(PBUICachedSnapshotEffectProvider *)self->_snapshotProvider invalidate];
  [(FBScene *)self->_fauxExternalScene invalidate];
  snapshotProvider = self->_snapshotProvider;
  self->_snapshotProvider = 0;

  fauxExternalScene = self->_fauxExternalScene;
  self->_fauxExternalScene = 0;

  cache = self->_cache;
  self->_cache = 0;

  v6.receiver = self;
  v6.super_class = PBUIPosterVariantViewController;
  [(PBUIPosterVariantViewController *)&v6 dealloc];
}

- (void)_setupCachesIfNeeded
{
  _applicableScene = [(PBUIPosterVariantViewController *)self _applicableScene];
  pui_posterPath = [_applicableScene pui_posterPath];

  v4 = pui_posterPath;
  if (pui_posterPath)
  {
    isServerPosterPath = [pui_posterPath isServerPosterPath];
    variant = [(PBUIPosterVariantViewController *)self variant];
    if (isServerPosterPath)
    {
      instanceURL = [pui_posterPath instanceURL];
      serverIdentity = [pui_posterPath serverIdentity];
      stablePersistenceIdentifier = [serverIdentity stablePersistenceIdentifier];
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v11 = [@"Non-serverposterpath-" stringByAppendingString:uUIDString];

      serverIdentity = [MEMORY[0x277CBEBC0] pf_temporaryDirectoryURL];
      stablePersistenceIdentifier = v11;
      instanceURL = [serverIdentity URLByAppendingPathComponent:v11 isDirectory:1];
    }

    v41 = instanceURL;
    v12 = [[PBUIPosterVariantPathProvider alloc] initWithInstanceURL:instanceURL variant:variant];
    v13 = [(PBUIPosterVariantPathProvider *)v12 isEqualToPosterVariantPathProvider:self->_pathProvider];
    if (!v13)
    {
      objc_storeStrong(&self->_pathProvider, v12);
    }

    snapshotSource = self->_snapshotSource;
    if (!snapshotSource)
    {
      v15 = [PBUIURLBackedSnapshotSource alloc];
      pathProvider = self->_pathProvider;
      snapshotFormat = [objc_opt_class() snapshotFormat];
      v18 = [(PBUIURLBackedSnapshotSource *)v15 initWithPathProvider:pathProvider format:snapshotFormat];
      v19 = self->_snapshotSource;
      self->_snapshotSource = v18;

      [(PBUIURLBackedSnapshotSource *)self->_snapshotSource setDelegate:self];
      snapshotSource = self->_snapshotSource;
    }

    cacheIdentifier = [(PBUIURLBackedSnapshotSource *)snapshotSource cacheIdentifier];
    [(PBUIURLBackedSnapshotSource *)self->_snapshotSource updateFromPathProvider:self->_pathProvider];
    cacheIdentifier2 = [(PBUIURLBackedSnapshotSource *)self->_snapshotSource cacheIdentifier];
    v22 = BSEqualStrings();
    v23 = cacheIdentifier2;
    if (!self->_cache || v22)
    {
      defaultCacheManager = [objc_opt_class() defaultCacheManager];
      v25 = [defaultCacheManager checkoutImageCache:v23];
      cache = self->_cache;
      self->_cache = v25;
    }

    snapshotProvider = self->_snapshotProvider;
    if (!snapshotProvider)
    {
      v28 = [[PBUICachedSnapshotEffectProvider alloc] initForSnapshotProvider:self->_snapshotSource cacheIdentifier:v23];
      v29 = self->_snapshotProvider;
      self->_snapshotProvider = v28;

      snapshotProvider = self->_snapshotProvider;
    }

    [(PBUICachedSnapshotEffectProvider *)snapshotProvider setSnapshotProvider:self->_snapshotSource];
    [(PBUICachedSnapshotEffectProvider *)&self->_snapshotProvider->super.isa setCacheIdentifier:v23];
    portalProvider = self->_portalProvider;
    if (!portalProvider)
    {
      v31 = objc_alloc_init(PBUIFixedReplicaSourceProvider);
      v32 = self->_portalProvider;
      self->_portalProvider = v31;

      portalProvider = self->_portalProvider;
    }

    [(PBUIFixedReplicaSourceProvider *)portalProvider setSnapshotSource:self->_snapshotSource];
    v33 = self->_portalProvider;
    legibilitySettings = [(PBUIPosterVariantViewController *)self legibilitySettings];
    v35 = [(PBUIPosterVariantViewController *)self makePortalSourceWithLegibilitySettings:legibilitySettings];
    [(PBUIFixedReplicaSourceProvider *)v33 setPortalSource:v35];

    if ((v22 | !v13) == 1)
    {
      legibilityEnvironmentContext = self->_legibilityEnvironmentContext;
      self->_legibilityEnvironmentContext = 0;

      contentColorStatistics = [(PBUIURLBackedSnapshotSource *)self->_snapshotSource contentColorStatistics];
      _applicableScene2 = [(PBUIPosterVariantViewController *)self _applicableScene];
      clientSettings = [_applicableScene2 clientSettings];
      pr_desiredLegibilitySettings = [clientSettings pr_desiredLegibilitySettings];
      [(PBUIPosterVariantViewController *)self _updatePosterColorStatistics:contentColorStatistics desiredLegibilitySettings:pr_desiredLegibilitySettings];
    }

    v4 = pui_posterPath;
  }
}

- (void)setCounterpart:(id)counterpart
{
  v21 = *MEMORY[0x277D85DE8];
  counterpartCopy = counterpart;
  WeakRetained = objc_loadWeakRetained(&self->_counterpart);

  if (WeakRetained != counterpartCopy)
  {
    v6 = objc_loadWeakRetained(&self->_counterpart);
    v7 = objc_storeWeak(&self->_counterpart, counterpartCopy);
    if (!self->_scene)
    {
      if (v6)
      {
        v8 = PBUILogCommon(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          [PBUIPosterVariantViewController setCounterpart:];
        }

        scene = [v6 scene];
        layerManager = [scene layerManager];
        [layerManager removeObserver:self];

        scene2 = [v6 scene];
        [scene2 removeObserver:self];
      }

      scene3 = [counterpartCopy scene];

      if (scene3)
      {
        scene4 = [counterpartCopy scene];
        [(PBUIPosterVariantViewController *)self _monitorScene:scene4];
      }

      else
      {
        scene4 = PBUILogCommon(v13);
        if (os_log_type_enabled(scene4, OS_LOG_TYPE_DEFAULT))
        {
          v15 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
          v16 = PBUIStringForWallpaperVariant([counterpartCopy variant]);
          v17 = 138412546;
          v18 = v15;
          v19 = 2112;
          v20 = v16;
          _os_log_impl(&dword_21E67D000, scene4, OS_LOG_TYPE_DEFAULT, "Neither %@ nor counterpart: %@ has a scene.", &v17, 0x16u);
        }
      }
    }

    [(PBUIPosterVariantViewController *)self _setupCachesIfNeeded];
    [(PBUIPosterVariantViewController *)self _updateInterfaceStyle];
  }
}

- (double)averageContrast
{
  contentColorStatistics = [(PBUIPosterVariantViewController *)self contentColorStatistics];
  [contentColorStatistics averageContrast];
  v4 = v3;

  return v4;
}

- (double)averageSaturation
{
  contentColorStatistics = [(PBUIPosterVariantViewController *)self contentColorStatistics];
  [contentColorStatistics averageSaturation];
  v4 = v3;

  return v4;
}

- (double)contrastInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  contentColorStatistics = [(PBUIPosterVariantViewController *)self contentColorStatistics];
  [contentColorStatistics contrastInRect:{x, y, width, height}];
  v9 = v8;

  return v9;
}

- (double)saturationInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  contentColorStatistics = [(PBUIPosterVariantViewController *)self contentColorStatistics];
  [contentColorStatistics saturationInRect:{x, y, width, height}];
  v9 = v8;

  return v9;
}

- (double)lumaInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  contentColorStatistics = [(PBUIPosterVariantViewController *)self contentColorStatistics];
  [contentColorStatistics lumaInRect:{x, y, width, height}];
  v9 = v8;

  return v9;
}

- (id)averageColorInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  contentColorStatistics = [(PBUIPosterVariantViewController *)self contentColorStatistics];
  v8 = [contentColorStatistics averageColorInRect:{x, y, width, height}];

  return v8;
}

- (double)preferredDeviceMotionUpdateInterval
{
  _applicableScene = [(PBUIPosterVariantViewController *)self _applicableScene];
  clientSettings = [_applicableScene clientSettings];
  [clientSettings pr_preferredDeviceMotionUpdateInterval];
  v5 = v4;

  return v5;
}

- (void)invalidate
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = PBUILogCommon(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
    v14 = 138543362;
    v15 = v4;
    _os_log_impl(&dword_21E67D000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidated.", &v14, 0xCu);
  }

  objc_storeWeak(&self->_delegate, 0);
  [(UIScenePresenter *)self->_presenter invalidate];
  presenter = self->_presenter;
  self->_presenter = 0;

  layerManager = [(FBScene *)self->_scene layerManager];
  [layerManager removeObserver:self];

  [(FBScene *)self->_scene removeObserver:self];
  scene = self->_scene;
  self->_scene = 0;

  WeakRetained = objc_loadWeakRetained(&self->_counterpart);
  scene = [WeakRetained scene];
  layerManager2 = [scene layerManager];
  [layerManager2 removeObserver:self];

  v11 = objc_loadWeakRetained(&self->_counterpart);
  scene2 = [v11 scene];
  [scene2 removeObserver:self];

  objc_storeWeak(&self->_counterpart, 0);
  [(PBUIFixedReplicaSourceProvider *)self->_portalProvider invalidate];
  [(PBUICachedSnapshotEffectProvider *)self->_snapshotProvider invalidate];
  snapshotProvider = self->_snapshotProvider;
  self->_snapshotProvider = 0;
}

- (void)fetchWallpaperProminentColor:(id)color
{
  colorCopy = color;
  if (colorCopy)
  {
    variant = [(PBUIPosterVariantViewController *)self variant];
    if (variant == 1)
    {
      v12 = colorCopy;
      BSDispatchMain();
    }

    else
    {
      v6 = variant;
      counterpart = [(PBUIPosterVariantViewController *)self counterpart];

      v9 = PBUILogSnapshot(v8);
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      if (counterpart)
      {
        if (v10)
        {
          [PBUIPosterVariantViewController fetchWallpaperProminentColor:v6];
        }

        counterpart2 = [(PBUIPosterVariantViewController *)self counterpart];
        [counterpart2 fetchWallpaperProminentColor:colorCopy];
      }

      else
      {
        if (v10)
        {
          [PBUIPosterVariantViewController fetchWallpaperProminentColor:v6];
        }

        counterpart2 = [MEMORY[0x277D75348] magentaColor];
        (*(colorCopy + 2))(colorCopy, counterpart2);
      }
    }
  }
}

void __64__PBUIPosterVariantViewController_fetchWallpaperProminentColor___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = PBUILogSnapshot(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PBUIStringForWallpaperVariant(*(a1 + 48));
    *buf = 138543362;
    v26 = v3;
    _os_log_impl(&dword_21E67D000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Checking preferred prominent color...", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v24 = 0;
  v5 = [v4 _preferredProminentColor:0 source:&v24];
  v6 = v24;
  v7 = v6;
  if (v5)
  {
    v8 = PBUILogSnapshot(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PBUIStringForWallpaperVariant(*(a1 + 48));
      *buf = 138543874;
      v26 = v9;
      v27 = 2114;
      v28 = v5;
      v29 = 2114;
      v30 = v7;
      _os_log_impl(&dword_21E67D000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Found preferred prominent color: %{public}@/%{public}@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = *(*(a1 + 32) + 1168);
    if (!v10)
    {
      v11 = objc_opt_new();
      v12 = *(a1 + 32);
      v13 = *(v12 + 1168);
      *(v12 + 1168) = v11;

      v10 = *(*(a1 + 32) + 1168);
    }

    v14 = [*(a1 + 40) copy];
    [v10 addObject:v14];

    v15 = [*(*(a1 + 32) + 1048) snapshot];
    v16 = [v15 pui_canDetermineProminentColor];
    v17 = v16;
    v18 = PBUILogSnapshot(v16);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        v20 = PBUIStringForWallpaperVariant(*(a1 + 48));
        *buf = 138543362;
        v26 = v20;
        _os_log_impl(&dword_21E67D000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] using last snapshot taken to determine prominent color...", buf, 0xCu);
      }

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __64__PBUIPosterVariantViewController_fetchWallpaperProminentColor___block_invoke_44;
      v23[3] = &unk_278363C58;
      v21 = *(a1 + 48);
      v23[4] = *(a1 + 32);
      v23[5] = v21;
      [v15 pui_determineProminentColorWithCompletion:v23];
    }

    else
    {
      if (v19)
      {
        v22 = PBUIStringForWallpaperVariant(*(a1 + 48));
        *buf = 138543362;
        v26 = v22;
        _os_log_impl(&dword_21E67D000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] scheduling prominent color snapshot for *NOW*...", buf, 0xCu);
      }

      [*(a1 + 32) _snapshotNow:@"prominent color fetch"];
    }
  }
}

void __64__PBUIPosterVariantViewController_fetchWallpaperProminentColor___block_invoke_44(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = PBUILogSnapshot(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __64__PBUIPosterVariantViewController_fetchWallpaperProminentColor___block_invoke_44_cold_1();
    }
  }

  v9 = PBUILogSnapshot(v6);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v10)
    {
      v11 = PBUIStringForWallpaperVariant(*(a1 + 40));
      v13 = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_21E67D000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] using last snapshot determined a color: %{public}@", &v13, 0x16u);
    }

    [*(a1 + 32) _handleUpdateProminentPosterDerivedColor:v5 posterPreferredProminentColor:0 timeColor:0 fallbackColor:0];
  }

  else
  {
    if (v10)
    {
      v12 = PBUIStringForWallpaperVariant(*(a1 + 40));
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_21E67D000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] last snapshot prominent color determination failed; scheduling prominent color snapshot for *NOW*...", &v13, 0xCu);
    }

    [*(a1 + 32) _snapshotNow:@"prominent color fetch after failing to use last snapshot taken"];
  }
}

- (void)setBlurEnabled:(BOOL)enabled
{
  if (enabled)
  {
    self->_isBlurEnabled = 1;
    if (!self->_blurView)
    {
      v4 = [MEMORY[0x277D75210] effectWithStyle:19];
      v5 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v4];
      blurView = self->_blurView;
      self->_blurView = v5;

      [(UIVisualEffectView *)self->_blurView setAutoresizingMask:18];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __50__PBUIPosterVariantViewController_setBlurEnabled___block_invoke;
      v14[3] = &unk_278361E18;
      v14[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v14];
      [(UIView *)self->_contentContainer addSubview:self->_blurView];
      [(UIVisualEffectView *)self->_blurView setAlpha:1.0];
    }
  }

  else
  {
    self->_isBlurEnabled = 0;
    if (self->_blurView)
    {
      if ([MEMORY[0x277D75D18] _isInAnimationBlock])
      {
        objc_initWeak(&location, self);
        v7 = MEMORY[0x277D75D18];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __50__PBUIPosterVariantViewController_setBlurEnabled___block_invoke_2;
        v11[3] = &unk_278363040;
        objc_copyWeak(&v12, &location);
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __50__PBUIPosterVariantViewController_setBlurEnabled___block_invoke_3;
        v9[3] = &unk_278362FA8;
        objc_copyWeak(&v10, &location);
        [v7 animateWithDuration:v11 animations:v9 completion:0.0];
        objc_destroyWeak(&v10);
        objc_destroyWeak(&v12);
        objc_destroyWeak(&location);
      }

      else
      {
        [(UIVisualEffectView *)self->_blurView removeFromSuperview];
        v8 = self->_blurView;
        self->_blurView = 0;
      }
    }
  }
}

uint64_t __50__PBUIPosterVariantViewController_setBlurEnabled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1072);
  [*(v2 + 992) bounds];
  [v3 setFrame:?];
  v4 = *(*(a1 + 32) + 1072);

  return [v4 setAlpha:0.0];
}

void __50__PBUIPosterVariantViewController_setBlurEnabled___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[134] setAlpha:0.0];
    WeakRetained = v2;
  }
}

void __50__PBUIPosterVariantViewController_setBlurEnabled___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (*(WeakRetained + 1145) & 1) == 0)
  {
    v3 = WeakRetained;
    [WeakRetained[134] removeFromSuperview];
    v2 = v3[134];
    v3[134] = 0;

    WeakRetained = v3;
  }
}

- (void)setActiveStyle:(int64_t)style
{
  if (self->_activeStyle != style)
  {
    self->_activeStyle = style;
    IsHidden = PBUIWallpaperStyleIsHidden(style);
    if (style == 2)
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
    }

    else
    {
      blackColor = 0;
    }

    [(UIView *)self->_contentContainer setHidden:IsHidden];
    [(PBUISnapshotReplicaView *)self->_snapshotView setHidden:IsHidden];
    view = [(PBUIPosterVariantViewController *)self view];
    [view setBackgroundColor:blackColor];
  }
}

+ (id)defaultCacheManager
{
  PUIMappedImageCacheManagerClass = getPUIMappedImageCacheManagerClass();

  return [PUIMappedImageCacheManagerClass defaultCacheManager];
}

- (void)_monitorScene:(id)scene
{
  sceneCopy = scene;
  if (!sceneCopy)
  {
    [(PBUIPosterVariantViewController *)a2 _monitorScene:?];
  }

  scene = self->_scene;
  if (scene != sceneCopy && scene != 0)
  {
    [(PBUIPosterVariantViewController *)a2 _monitorScene:?];
  }

  [(FBScene *)sceneCopy addObserver:self];
  layerManager = [(FBScene *)sceneCopy layerManager];
  [layerManager addObserver:self];

  if ([(FBScene *)sceneCopy isActive])
  {
    [(PBUIPosterVariantViewController *)self sceneDidActivate:sceneCopy];
    clientHandle = [(FBScene *)sceneCopy clientHandle];

    if (clientHandle)
    {
      clientHandle2 = [(FBScene *)sceneCopy clientHandle];
      [(PBUIPosterVariantViewController *)self scene:sceneCopy clientDidConnect:clientHandle2];
    }
  }
}

- (id)makePortalSourceWithLegibilitySettings:(id)settings
{
  pathProvider = self->_pathProvider;
  settingsCopy = settings;
  instanceURL = [(PBUIPosterVariantPathProvider *)pathProvider instanceURL];
  path = [instanceURL path];
  v8 = path;
  v9 = @"UnknownURL";
  if (path)
  {
    v9 = path;
  }

  v10 = v9;

  v11 = [PBUISimpleReplicaPortalSource alloc];
  view = [(PBUIPosterVariantViewController *)self view];
  v13 = [(PBUISimpleReplicaPortalSource *)v11 initWithTargetView:view cacheIdentifier:v10 legibilitySettings:settingsCopy effectsAreBakedIn:0];

  return v13;
}

+ (id)snapshotFormat
{
  PUIImageOnDiskFormatClass = getPUIImageOnDiskFormatClass();

  return [PUIImageOnDiskFormatClass defaultATX];
}

- (void)_checkIfPresentationIsUpdatedAndSnapshot
{
  BSDispatchQueueAssertMain();
  if ([(PBUIPosterVariantViewController *)self updatePresentation:0])
  {

    [(PBUIPosterVariantViewController *)self setNeedsNewSnapshot:@"presentation was updated"];
  }
}

- (void)_updateInterfaceStyle
{
  v13 = *MEMORY[0x277D85DE8];
  _applicableScene = [(PBUIPosterVariantViewController *)self _applicableScene];
  settings = [_applicableScene settings];
  pui_userInterfaceStyle = [settings pui_userInterfaceStyle];

  if (pui_userInterfaceStyle != self->_mostRecentSnapshotInterfaceStyle)
  {
    _applicableScene2 = [(PBUIPosterVariantViewController *)self _applicableScene];
    settings2 = [_applicableScene2 settings];
    self->_mostRecentSnapshotInterfaceStyle = [settings2 pui_userInterfaceStyle];

    v9 = PBUILogSnapshot(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      mostRecentSnapshotInterfaceStyle = self->_mostRecentSnapshotInterfaceStyle;
      v11 = 134217984;
      v12 = mostRecentSnapshotInterfaceStyle;
      _os_log_impl(&dword_21E67D000, v9, OS_LOG_TYPE_DEFAULT, "Updating most recent snapshot interface style: %lu", &v11, 0xCu);
    }
  }
}

- (void)_updateEffectiveMotionEffectsModeForSupportedMode:(unint64_t)mode disabled:(BOOL)disabled
{
  disabledCopy = disabled;
  settings = [(FBScene *)self->_scene settings];
  pr_effectiveMotionEffectsMode = [settings pr_effectiveMotionEffectsMode];

  if (disabledCopy)
  {
    modeCopy = 0;
  }

  else
  {
    modeCopy = mode;
  }

  if (pr_effectiveMotionEffectsMode != modeCopy)
  {
    scene = self->_scene;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __94__PBUIPosterVariantViewController__updateEffectiveMotionEffectsModeForSupportedMode_disabled___block_invoke;
    v11[3] = &__block_descriptor_40_e33_v16__0__FBSMutableSceneSettings_8l;
    v11[4] = modeCopy;
    [(FBScene *)scene updateSettings:v11];
  }
}

- (void)setNeedsNewSnapshot:(id)snapshot
{
  snapshotNeeded = self->_snapshotNeeded;
  snapshotCopy = snapshot;
  [(BSAtomicFlag *)snapshotNeeded setFlag:1];
  [(PBUIPosterVariantViewController *)self _scheduleSnapshotIfNeeded:snapshotCopy];
}

- (void)invalidateSnapshotPreconditions:(id)preconditions
{
  v13 = *MEMORY[0x277D85DE8];
  preconditionsCopy = preconditions;
  getFlag = [(BSAtomicFlag *)self->_snapshotNeeded getFlag];
  if (getFlag)
  {
    v6 = PBUILogSnapshot(getFlag);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
      *buf = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = preconditionsCopy;
      _os_log_impl(&dword_21E67D000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] invalidateSnapshotPreconditions for reason: %{public}@", buf, 0x16u);
    }

    preconditionsCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"snapshot preconditions invalidated for reason '%@' so scheduling a new snapshot", preconditionsCopy];;
    [(PBUIPosterVariantViewController *)self _scheduleSnapshotIfNeeded:preconditionsCopy];
  }
}

- (void)_scheduleSnapshotIfNeeded:(id)needed
{
  v23 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  getFlag = [(BSAtomicFlag *)self->_isSnapshotting getFlag];
  if (getFlag)
  {
    v6 = PBUILogSnapshot(getFlag);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PBUIPosterVariantViewController _scheduleSnapshotIfNeeded:];
    }

LABEL_6:

    goto LABEL_10;
  }

  getFlag2 = [(BSAtomicFlag *)self->_snapshotScheduled getFlag];
  if (getFlag2)
  {
    v6 = PBUILogSnapshot(getFlag2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v12 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
      getFlag3 = [(BSAtomicFlag *)self->_isSnapshotting getFlag];
      v14 = @"scheduled";
      *buf = 138543874;
      v18 = v12;
      if (getFlag3)
      {
        v14 = @"in progress";
      }

      v19 = 2112;
      v20 = v14;
      v21 = 2114;
      v22 = neededCopy;
      _os_log_debug_impl(&dword_21E67D000, v6, OS_LOG_TYPE_DEBUG, "[%{public}@] Snapshot already %@, not scheduling for reason: %{public}@", buf, 0x20u);
    }

    goto LABEL_6;
  }

  [(BSAtomicFlag *)self->_snapshotScheduled setFlag:1];
  v8 = dispatch_time(0, 250000000);
  v9 = PBUILogSnapshot(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.25];
    *buf = 138543874;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    v21 = 2114;
    v22 = neededCopy;
    _os_log_impl(&dword_21E67D000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Snapshot scheduled for %{public}@ for reason: %{public}@", buf, 0x20u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__PBUIPosterVariantViewController__scheduleSnapshotIfNeeded___block_invoke;
  v15[3] = &unk_2783622E0;
  v15[4] = self;
  v16 = neededCopy;
  dispatch_after(v8, MEMORY[0x277D85CD0], v15);

LABEL_10:
}

uint64_t __61__PBUIPosterVariantViewController__scheduleSnapshotIfNeeded___block_invoke(uint64_t a1)
{
  [*(a1 + 32) snapshotIfNeeded:0 reason:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 1128);

  return [v2 setFlag:0];
}

- (void)_snapshotNow:(id)now
{
  nowCopy = now;
  getFlag = [(BSAtomicFlag *)self->_isSnapshotting getFlag];
  v6 = getFlag;
  v7 = PBUILogSnapshot(getFlag);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      [PBUIPosterVariantViewController _snapshotNow:?];
    }
  }

  else
  {
    if (v8)
    {
      [PBUIPosterVariantViewController _snapshotNow:];
    }

    v9 = nowCopy;
    BSDispatchMain();
  }
}

uint64_t __48__PBUIPosterVariantViewController__snapshotNow___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [@"(snapshot now) " stringByAppendingString:*(a1 + 40)];
  [v2 snapshotIfNeeded:1 reason:v3];

  v4 = *(*(a1 + 32) + 1128);

  return [v4 setFlag:0];
}

- (void)snapshotIfNeeded:(BOOL)needed reason:(id)reason
{
  neededCopy = needed;
  v33 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  getFlag = [(BSAtomicFlag *)self->_isSnapshotting getFlag];
  if (getFlag)
  {
    evaluateSnapshotPreconditions = PBUILogSnapshot(getFlag);
    if (os_log_type_enabled(evaluateSnapshotPreconditions, OS_LOG_TYPE_ERROR))
    {
      [PBUIPosterVariantViewController snapshotIfNeeded:? reason:?];
    }

LABEL_23:

    return;
  }

  if (([(BSAtomicFlag *)self->_snapshotNeeded getFlag]& 1) != 0 || neededCopy)
  {
    variant = [(PBUIPosterVariantViewController *)self variant];
    evaluateSnapshotPreconditions = [(PBUIPosterVariantViewController *)self evaluateSnapshotPreconditions];
    canSnapshot = [evaluateSnapshotPreconditions canSnapshot];
    if ((canSnapshot & 1) != 0 || neededCopy)
    {
      [(BSAtomicFlag *)self->_isSnapshotting setFlag:1];
      Current = CFAbsoluteTimeGetCurrent();
      v21 = PBUILogSnapshot(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [PBUIPosterVariantViewController snapshotIfNeeded:variant reason:?];
      }

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __59__PBUIPosterVariantViewController_snapshotIfNeeded_reason___block_invoke;
      v27[3] = &unk_278363CF0;
      v27[4] = self;
      *&v27[5] = Current;
      v22 = MEMORY[0x223D62EE0](v27);
      (v22)[2](v22, evaluateSnapshotPreconditions);
    }

    else
    {
      v10 = PBUILogSnapshot(canSnapshot);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [PBUIPosterVariantViewController snapshotIfNeeded:variant reason:?];
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      reasonsToNotSnapshot = [evaluateSnapshotPreconditions reasonsToNotSnapshot];
      v12 = [reasonsToNotSnapshot countByEnumeratingWithState:&v23 objects:v32 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          v15 = 0;
          do
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(reasonsToNotSnapshot);
            }

            v16 = *(*(&v23 + 1) + 8 * v15);
            v17 = PBUILogSnapshot(v12);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
              *buf = 138543618;
              v29 = v18;
              v30 = 2114;
              v31 = v16;
              _os_log_error_impl(&dword_21E67D000, v17, OS_LOG_TYPE_ERROR, "[%{public}@]\t--> snapshot failure reason '%{public}@'", buf, 0x16u);
            }

            ++v15;
          }

          while (v13 != v15);
          v12 = [reasonsToNotSnapshot countByEnumeratingWithState:&v23 objects:v32 count:16];
          v13 = v12;
        }

        while (v12);
      }
    }

    goto LABEL_23;
  }
}

void __59__PBUIPosterVariantViewController_snapshotIfNeeded_reason___block_invoke(uint64_t a1, void *a2)
{
  location[3] = *MEMORY[0x277D85DE8];
  v3 = [a2 isSnapshottingForExternalDisplayHostedWallpaper];
  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 _prepareFauxExternalScene];
    v5 = *(*(a1 + 32) + 1080);
    v22 = 0;
    v6 = [v5 pui_sceneIsReadyToSnapshot:&v22];
    v7 = v22;
    v8 = v7;
    if (v6)
    {
      v9 = *(*(a1 + 32) + 1080);
      objc_initWeak(location, *(a1 + 32));
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __59__PBUIPosterVariantViewController_snapshotIfNeeded_reason___block_invoke_2;
      v20[3] = &unk_278362FA8;
      objc_copyWeak(&v21, location);
      v10 = MEMORY[0x223D62EE0](v20);
      objc_destroyWeak(&v21);
      objc_destroyWeak(location);
    }

    else
    {
      v11 = PBUILogSnapshot(v7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = PBUIStringForWallpaperVariant([*(a1 + 32) variant]);
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v12;
        _os_log_impl(&dword_21E67D000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Faux external scene is not ready for snapshot. Scheduling a new snapshot.", location, 0xCu);
      }

      [*(*(a1 + 32) + 1128) setFlag:0];
      v13 = *(a1 + 32);
      v14 = MEMORY[0x277CCACA8];
      v15 = PBUIStringForWallpaperVariant([v13 variant]);
      v16 = [v14 stringWithFormat:@"scheduling new snapshot because faux %@ external scene is not ready", v15];
      [v13 _scheduleSnapshotIfNeeded:v16];

      v10 = 0;
      v9 = 0;
    }
  }

  else
  {
    v9 = [v4 _applicableScene];
    objc_initWeak(location, *(a1 + 32));
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __59__PBUIPosterVariantViewController_snapshotIfNeeded_reason___block_invoke_87;
    v18[3] = &unk_278363CC8;
    objc_copyWeak(v19, location);
    v19[1] = *(a1 + 40);
    v10 = MEMORY[0x223D62EE0](v18);
    objc_destroyWeak(v19);
    objc_destroyWeak(location);
  }

  v17 = *(a1 + 32);
  if (v9)
  {
    [v17 _snapshotScene:v9 completion:v10];
    [*(a1 + 32) _updateInterfaceStyle];
  }

  else
  {
    [v17[140] setFlag:0];
  }
}

void __59__PBUIPosterVariantViewController_snapshotIfNeeded_reason___block_invoke_2(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  BSDispatchMain();
  objc_destroyWeak(&v1);
}

void __59__PBUIPosterVariantViewController_snapshotIfNeeded_reason___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[135] invalidate];
    v2 = v3[135];
    v3[135] = 0;

    [v3[140] setFlag:0];
    WeakRetained = v3;
  }
}

void __59__PBUIPosterVariantViewController_snapshotIfNeeded_reason___block_invoke_87(uint64_t a1, char a2)
{
  objc_copyWeak(v4, (a1 + 32));
  v4[1] = *(a1 + 40);
  v5 = a2;
  BSDispatchMain();
  objc_destroyWeak(v4);
}

void __59__PBUIPosterVariantViewController_snapshotIfNeeded_reason___block_invoke_2_88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    CFAbsoluteTimeGetCurrent();
    v3 = [WeakRetained[140] setFlag:0];
    v4 = *(a1 + 48);
    v5 = PBUILogSnapshot(v3);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v4 == 1)
    {
      if (v6)
      {
        __59__PBUIPosterVariantViewController_snapshotIfNeeded_reason___block_invoke_2_88_cold_2(WeakRetained);
      }

      [WeakRetained updatePresentation:1];
    }

    else
    {
      if (v6)
      {
        __59__PBUIPosterVariantViewController_snapshotIfNeeded_reason___block_invoke_2_88_cold_1(WeakRetained);
      }
    }
  }
}

- (void)_prepareFauxExternalScene
{
  if (!self->_fauxExternalScene)
  {
    v3 = PBUILogSnapshot(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_21E67D000, v3, OS_LOG_TYPE_DEFAULT, "Preparing a new scene for external display tailored snapshot", buf, 2u);
    }

    objc_initWeak(buf, self);
    _applicableScene = [(PBUIPosterVariantViewController *)self _applicableScene];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __60__PBUIPosterVariantViewController__prepareFauxExternalScene__block_invoke;
    v5[3] = &unk_278363D18;
    objc_copyWeak(&v6, buf);
    [(PBUIPosterVariantViewController *)self _prepareFauxExternalSceneFromScene:_applicableScene completion:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

void __60__PBUIPosterVariantViewController__prepareFauxExternalScene__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (v4)
    {
      objc_storeStrong(WeakRetained + 135, a2);
    }

    else
    {
      v7 = PBUILogSnapshot(WeakRetained);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __60__PBUIPosterVariantViewController__prepareFauxExternalScene__block_invoke_cold_1();
      }
    }
  }
}

- (void)_prepareFauxExternalSceneFromScene:(id)scene completion:(id)completion attemptNumber:(unint64_t)number
{
  sceneCopy = scene;
  completionCopy = completion;
  settings = [sceneCopy settings];
  pui_posterContents = [settings pui_posterContents];
  if (pui_posterContents)
  {
    _externalDisplayConfiguration = [(PBUIPosterVariantViewController *)self _externalDisplayConfiguration];
    identifier = [_externalDisplayConfiguration identifier];

    if (identifier)
    {
      v15 = [getPFPosterExtensionInstanceClass() extensionInstanceForPath:pui_posterContents instanceIdentifier:identifier];
      if (v15)
      {
        objc_initWeak(&location, self);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __95__PBUIPosterVariantViewController__prepareFauxExternalSceneFromScene_completion_attemptNumber___block_invoke;
        v19[3] = &unk_278363DE0;
        objc_copyWeak(v25, &location);
        v24 = completionCopy;
        v20 = pui_posterContents;
        v21 = v15;
        v22 = settings;
        v25[1] = number;
        v23 = sceneCopy;
        [v21 bootupExtensionInstance:v19];

        objc_destroyWeak(v25);
        objc_destroyWeak(&location);
      }

      else
      {
        v18 = PBUILogSnapshot(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [PBUIPosterVariantViewController _prepareFauxExternalSceneFromScene:completion:attemptNumber:];
        }

        (*(completionCopy + 2))(completionCopy, 0);
      }
    }

    else
    {
      v17 = PBUILogSnapshot(v14);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [PBUIPosterVariantViewController _prepareFauxExternalSceneFromScene:completion:attemptNumber:];
      }

      (*(completionCopy + 2))(completionCopy, 0);
    }
  }

  else
  {
    v16 = PBUILogSnapshot(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PBUIPosterVariantViewController _prepareFauxExternalSceneFromScene:completion:attemptNumber:];
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __95__PBUIPosterVariantViewController__prepareFauxExternalSceneFromScene_completion_attemptNumber___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v6 = WeakRetained;
  if (!WeakRetained)
  {
LABEL_10:
    (*(*(a1 + 64) + 16))();
    goto LABEL_11;
  }

  if (!v4)
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __95__PBUIPosterVariantViewController__prepareFauxExternalSceneFromScene_completion_attemptNumber___block_invoke_2;
    v20 = &unk_278363D90;
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v23 = *(a1 + 48);
    v24 = v6;
    v25 = *(a1 + 64);
    BSDispatchMain();

    v11 = v21;
    goto LABEL_6;
  }

  v7 = *(a1 + 80);
  if (v7 > 2)
  {
    v12 = PBUILogSnapshot(WeakRetained);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __95__PBUIPosterVariantViewController__prepareFauxExternalSceneFromScene_completion_attemptNumber___block_invoke_cold_1(v4);
    }

    goto LABEL_10;
  }

  v8 = dispatch_time(0, (v7 * 0.1));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__PBUIPosterVariantViewController__prepareFauxExternalSceneFromScene_completion_attemptNumber___block_invoke_5;
  block[3] = &unk_278363DB8;
  block[4] = v6;
  v14 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 80);
  v15 = v9;
  v16 = v10;
  dispatch_after(v8, MEMORY[0x277D85CD0], block);

  v11 = v14;
LABEL_6:

LABEL_11:
}

void __95__PBUIPosterVariantViewController__prepareFauxExternalSceneFromScene_completion_attemptNumber___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D0AAC8];
  v3 = getPUISceneRoleRendering();
  v4 = [v2 pr_createPosterSceneWithRole:v3 path:*(a1 + 32) instance:*(a1 + 40)];

  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __95__PBUIPosterVariantViewController__prepareFauxExternalSceneFromScene_completion_attemptNumber___block_invoke_3;
  v10 = &unk_278363D68;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v11 = v5;
  v12 = v6;
  [v4 configureParameters:&v7];
  [v4 activate:{0, v7, v8, v9, v10}];
  (*(*(a1 + 64) + 16))();
}

void __95__PBUIPosterVariantViewController__prepareFauxExternalSceneFromScene_completion_attemptNumber___block_invoke_3(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __95__PBUIPosterVariantViewController__prepareFauxExternalSceneFromScene_completion_attemptNumber___block_invoke_4;
  v6[3] = &unk_278363D40;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [a2 updateSettingsWithBlock:v6];
}

void __95__PBUIPosterVariantViewController__prepareFauxExternalSceneFromScene_completion_attemptNumber___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 pui_applyToMutableSceneSettings:v3];
  [*(a1 + 40) applyFauxExternalSceneSettings:v4];
}

- (void)applyFauxExternalSceneSettings:(id)settings
{
  settingsCopy = settings;
  _externalDisplayConfiguration = [(PBUIPosterVariantViewController *)self _externalDisplayConfiguration];

  if (_externalDisplayConfiguration && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [settingsCopy pr_setAdjustedLuminance:2];
  }
}

- (void)_snapshotScene:(id)scene completion:(id)completion
{
  sceneCopy = scene;
  completionCopy = completion;
  v8 = PBUILogSnapshot(completionCopy);
  v9 = os_signpost_id_generate(v8);

  v11 = PBUILogSnapshot(v10);
  v12 = v11;
  if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_21E67D000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SnapshotUpdating", &unk_21E7190AA, buf, 2u);
  }

  inited = objc_initWeak(buf, self);
  v14 = PBUIColorSamplingQueue(inited);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__PBUIPosterVariantViewController__snapshotScene_completion___block_invoke;
  v16[3] = &unk_278363E58;
  objc_copyWeak(v18, buf);
  v15 = completionCopy;
  v17 = v15;
  v18[1] = v9;
  [(PBUIPosterVariantViewController *)self performSnapshotOnQueue:v14 scene:sceneCopy completion:v16];

  objc_destroyWeak(v18);
  objc_destroyWeak(buf);
}

void __61__PBUIPosterVariantViewController__snapshotScene_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v20 = WeakRetained;
  if (WeakRetained)
  {
    if (v15)
    {
      v21 = [WeakRetained variant];
      if (v21 == 1)
      {
        v22 = MEMORY[0x277CCAAC8];
        v41 = v18;
        v23 = objc_opt_self();
        [v17 objectForKeyedSubscript:@"kDerivedProminentPosterColorMetadataKey"];
        v24 = v42 = v13;
        v25 = [v22 unarchivedObjectOfClass:v23 fromData:v24 error:0];
        v40 = [v25 UIColor];

        v26 = MEMORY[0x277CCAAC8];
        v27 = objc_opt_self();
        v28 = [v17 objectForKeyedSubscript:@"kPosterPreferredProminentPosterColorMetadataKey"];
        v29 = [v26 unarchivedObjectOfClass:v27 fromData:v28 error:0];
        v30 = [v29 UIColor];

        v31 = [v16 averageColor];
        v32 = [v31 pui_invertColor];
        v33 = [v32 colorWithAlphaComponent:1.0];

        v13 = v42;
        [v20 _handleUpdateProminentPosterDerivedColor:v40 posterPreferredProminentColor:v30 timeColor:0 fallbackColor:v33];

        v18 = v41;
      }

      v34 = PBUIColorSamplingQueue(v21);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__PBUIPosterVariantViewController__snapshotScene_completion___block_invoke_4;
      block[3] = &unk_278363E30;
      block[4] = v20;
      v44 = v15;
      v45 = v13;
      v46 = v16;
      v47 = v17;
      v48 = v18;
      v35 = *(a1 + 32);
      v36 = *(a1 + 48);
      v50 = v35;
      v51 = v36;
      v49 = v14;
      dispatch_async(v34, block);

      v37 = v44;
      goto LABEL_10;
    }

    [v14 invalidate];
    v39 = *(a1 + 32);
    if (v39)
    {
      v52 = MEMORY[0x277D85DD0];
      v53 = 3221225472;
      v54 = __61__PBUIPosterVariantViewController__snapshotScene_completion___block_invoke_3;
      v55 = &unk_278362668;
      v56 = v39;
      BSDispatchMain();
      v37 = v56;
      goto LABEL_10;
    }
  }

  else
  {
    [v14 invalidate];
    v38 = *(a1 + 32);
    if (v38)
    {
      v57 = MEMORY[0x277D85DD0];
      v58 = 3221225472;
      v59 = __61__PBUIPosterVariantViewController__snapshotScene_completion___block_invoke_2;
      v60 = &unk_278362668;
      v61 = v38;
      BSDispatchMain();
      v37 = v61;
LABEL_10:
    }
  }
}

void __61__PBUIPosterVariantViewController__snapshotScene_completion___block_invoke_4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__PBUIPosterVariantViewController__snapshotScene_completion___block_invoke_5;
  v11[3] = &unk_278363E08;
  v7 = v2;
  v8 = *(a1 + 32);
  v12 = v7;
  v13 = v8;
  v14 = *(a1 + 72);
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v16 = v9;
  v17 = v10;
  v15 = *(a1 + 80);
  [v3 postprocessNewSnapshot:v7 orSnapshotBundle:v4 colorStatistics:v5 metadata:v6 completion:v11];
}

void __61__PBUIPosterVariantViewController__snapshotScene_completion___block_invoke_5(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(a1 + 32) == 0;
  }

  v8 = !v7;
  v9 = PBUILogSnapshot(v5);
  v10 = v9;
  if (v8 == 1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PBUIStringForWallpaperVariant([*(a1 + 40) variant]);
      v17 = 138543618;
      v18 = v11;
      v19 = 1024;
      v20 = a2;
      _os_log_impl(&dword_21E67D000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Snapshotted poster; didUpdate? %{BOOL}u", &v17, 0x12u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __61__PBUIPosterVariantViewController__snapshotScene_completion___block_invoke_5_cold_1(a1, v10);
  }

  v12 = *(a1 + 64);
  if (v12)
  {
    v12 = (*(v12 + 16))(v12, v8);
  }

  v13 = PBUILogSnapshot(v12);
  v14 = v13;
  v15 = *(a1 + 72);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v16 = MEMORY[0x223D622C0](v8);
    v17 = 138543362;
    v18 = v16;
    _os_signpost_emit_with_name_impl(&dword_21E67D000, v14, OS_SIGNPOST_INTERVAL_END, v15, "SnapshotUpdating", "wasSnapshotUpdated=%{public, name=wasSnapshotUpdated}@", &v17, 0xCu);
  }

  [*(a1 + 56) invalidate];
}

- (void)postprocessNewSnapshot:(id)snapshot orSnapshotBundle:(id)bundle colorStatistics:(id)statistics metadata:(id)metadata completion:(id)completion
{
  snapshotCopy = snapshot;
  bundleCopy = bundle;
  statisticsCopy = statistics;
  metadataCopy = metadata;
  completionCopy = completion;
  if (!statisticsCopy)
  {
    v17 = [getPLKColorBoxesClass() colorBoxesForImage:snapshotCopy];
    statisticsCopy = [objc_alloc(getPUIColorStatisticsClass()) initWithColorBoxes:v17];
  }

  if (![metadataCopy count])
  {

    metadataCopy = &unk_282FD5A40;
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __111__PBUIPosterVariantViewController_postprocessNewSnapshot_orSnapshotBundle_colorStatistics_metadata_completion___block_invoke;
  v30[3] = &unk_278363E80;
  v30[4] = self;
  v31 = statisticsCopy;
  v32 = completionCopy;
  v18 = completionCopy;
  v19 = statisticsCopy;
  v20 = MEMORY[0x223D62EE0](v30);
  snapshotSource = self->_snapshotSource;
  compositeLevelSet = [getPUIPosterLevelSetClass() compositeLevelSet];
  v23 = [bundleCopy snapshotURLForLevelSet:compositeLevelSet];
  v29 = 0;
  [(PBUIURLBackedSnapshotSource *)snapshotSource updateWithImage:snapshotCopy orImageAtURL:v23 contentColorStatistics:v19 metadata:metadataCopy error:&v29];
  v24 = v29;

  v27 = v24;
  v28 = v20;
  v25 = v24;
  v26 = v20;
  BSDispatchMain();
}

uint64_t __111__PBUIPosterVariantViewController_postprocessNewSnapshot_orSnapshotBundle_colorStatistics_metadata_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v12 = a3;
  BSDispatchQueueAssertMain();
  [*(a1[4] + 1112) setFlag:0];
  if (a2)
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = [v5 _applicableScene];
    v8 = [v7 clientSettings];
    v9 = [v8 pr_desiredLegibilitySettings];
    [v5 _updatePosterColorStatistics:v6 desiredLegibilitySettings:v9];
  }

  v10 = a1[6];
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v12);
  }

  return MEMORY[0x2821F9730]();
}

- (id)_lockVariantScene
{
  if ([(PBUIPosterVariantViewController *)self variant])
  {
    WeakRetained = objc_loadWeakRetained(&self->_counterpart);
    scene = [WeakRetained scene];
  }

  else
  {
    scene = self->_scene;
  }

  return scene;
}

- (id)_homeVariantScene
{
  if ([(PBUIPosterVariantViewController *)self variant]== 1)
  {
    scene = self->_scene;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_counterpart);
    scene = [WeakRetained scene];
  }

  return scene;
}

- (void)performSnapshotOnQueue:(id)queue scene:(id)scene completion:(id)completion
{
  v31[1] = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  sceneCopy = scene;
  completionCopy = completion;
  clientHandle = [sceneCopy clientHandle];
  v11 = MEMORY[0x277CF0B98];
  processHandle = [clientHandle processHandle];
  v13 = processHandle;
  if (processHandle)
  {
    objc_msgSend_auditToken(processHandle);
  }

  else
  {
    memset(v27, 0, sizeof(v27));
  }

  v14 = [v11 tokenFromAuditToken:v27];

  if ([v14 isInvalid])
  {
    v15 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA470];
    v31[0] = @"auth token for sb snapshot is invalid";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v17 = [v15 errorWithDomain:@"com.apple.PaperBoardUI" code:-1 userInfo:v16];
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0, 0, v17);
  }

  else
  {
    v26 = 0;
    v17 = [getPUIPosterSnapshotDestinationClass() destinationWithTemporaryDirectoryWithAuditToken:v14 error:&v26];
    v18 = v26;
    v16 = v18;
    if (v17)
    {
      v22 = v14;
      v23 = queueCopy;
      v24 = sceneCopy;
      v17 = v17;
      v25 = completionCopy;
      BSDispatchMain();
    }

    else if (v18)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0, 0, v18);
    }

    else
    {
      v19 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA470];
      v29 = @"output destination for sb snapshot could not be created";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v21 = [v19 errorWithDomain:@"com.apple.PaperBoardUI" code:-1 userInfo:v20];
      (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0, 0, v21);
    }
  }
}

void __75__PBUIPosterVariantViewController_performSnapshotOnQueue_scene_completion___block_invoke(uint64_t a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = [getPUIPosterLevelSetClass() compositeLevelSet];
  v24[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];

  v4 = [getPUIPosterSnapshotAnalysisDescriptorClass() defaultAnalysisDescriptor];
  v5 = [v4 copyWithShouldDetermineColorStatistics:1];

  v6 = [objc_alloc(getPUIPosterSnapshotOutputDescriptorClass()) initWithLevelSets:v3 snapshotDefinitionIdentifier:@"RuntimeSnapshot"];
  v7 = [*(a1 + 32) valueForEntitlement:@"com.apple.posterkit.RolesForInprocessSnapshotOnly"];
  v8 = getPFPosterRoleLockScreen();
  if ([v7 isEqual:v8])
  {
  }

  else
  {
    v9 = objc_opt_class();
    v10 = v7;
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = getPFPosterRoleLockScreen();
    v14 = [v12 containsObject:v13];

    if (!v14)
    {
      v15 = [getPUIPosterSnapshotHostConfigurationDescriptorClass() snapshotOutOfProcessHostConfigurationDescriptor];
      goto LABEL_11;
    }
  }

  v15 = [getPUIPosterSnapshotHostConfigurationDescriptorClass() snapshotInProcessHostConfigurationDescriptorWithWorkQueue:*(a1 + 40)];
LABEL_11:
  v16 = v15;
  v17 = [v15 copyWithWaitUntilReady:0];

  v18 = [objc_alloc(getPUIPosterSnapshotDescriptorClass()) initWithOutputDescriptor:v6 sceneDescriptor:0 attachments:0 analysis:v5 host:v17];
  v19 = [getPFTSchedulerClass() schedulerWithDispatchQueue:*(a1 + 40)];
  v20 = [*(a1 + 48) pui_executeSnapshotForDescriptor:v18 outputDestination:*(a1 + 56)];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __75__PBUIPosterVariantViewController_performSnapshotOnQueue_scene_completion___block_invoke_2;
  v21[3] = &unk_278363EA8;
  v22 = *(a1 + 56);
  v23 = *(a1 + 64);
  [v20 addCompletionBlock:v21 scheduler:v19];
}

void __75__PBUIPosterVariantViewController_performSnapshotOnQueue_scene_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) invalidate];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [v14 snapshotLevelSets];
    v7 = [v6 firstObject];
    v8 = [v14 snapshotForLevelSet:v7];

    v9 = [v14 colorStatistics];
    v12 = a1 + 32;
    v10 = *(a1 + 32);
    v11 = *(v12 + 8);
    v13 = [v14 infoDictionary];
    (*(v11 + 16))(v11, v14, v10, v8, v9, v13, 0);
  }
}

- (UIImage)snapshot
{
  if ([(PBUIPosterVariantViewController *)self isSnapshotInCorrectOrientation])
  {
    snapshot = [(PBUIURLBackedSnapshotSource *)self->_snapshotSource snapshot];
  }

  else
  {
    snapshot = 0;
  }

  return snapshot;
}

- (PLKLegibilityEnvironmentContext)legibilityEnvironmentContext
{
  legibilityEnvironmentContext = self->_legibilityEnvironmentContext;
  if (legibilityEnvironmentContext)
  {
    v3 = legibilityEnvironmentContext;
  }

  else
  {
    legibilitySettings = [(PBUIPosterVariantViewController *)self legibilitySettings];
    contentColorStatistics = [(PBUIPosterVariantViewController *)self contentColorStatistics];
    if ([(PBUIPosterVariantViewController *)self variant]== 1)
    {
      getPLKLegibilityEnvironmentVariantHomeScreen();
    }

    else
    {
      getPLKLegibilityEnvironmentVariantLockScreen();
    }
    v7 = ;
    colorBoxes = [contentColorStatistics colorBoxes];

    v9 = objc_alloc(getPLKLegibilityEnvironmentVariantContextClass());
    v10 = soft_PLKLegibilityStyleForUILegibilityStyle([legibilitySettings style]);
    if (colorBoxes)
    {
      colorBoxes2 = [contentColorStatistics colorBoxes];
      v12 = [v9 initWithVariant:v7 style:v10 colorBoxes:colorBoxes2 legibilitySettings:legibilitySettings];
    }

    else
    {
      colorBoxes2 = [(PBUIPosterVariantViewController *)self averageColor];
      v12 = [v9 initWithVariant:v7 style:v10 averageColor:colorBoxes2 contrast:legibilitySettings saturation:-1.0 legibilitySettings:-1.0];
    }

    v13 = self->_legibilityEnvironmentContext;
    self->_legibilityEnvironmentContext = v12;

    v3 = self->_legibilityEnvironmentContext;
  }

  return v3;
}

- (void)viewDidLoad
{
  v19[1] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = PBUIPosterVariantViewController;
  [(PBUIPosterVariantViewController *)&v18 viewDidLoad];
  view = [(PBUIPosterVariantViewController *)self view];
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  [view bounds];
  v5 = [v4 initWithFrame:?];
  contentContainer = self->_contentContainer;
  self->_contentContainer = v5;

  [(UIView *)self->_contentContainer setAutoresizingMask:18];
  [view addSubview:self->_contentContainer];
  v7 = [PBUISnapshotReplicaView alloc];
  [view bounds];
  v8 = [(PBUISnapshotReplicaView *)v7 initWithFrame:?];
  snapshotView = self->_snapshotView;
  self->_snapshotView = v8;

  v10 = self->_snapshotView;
  snapshotSourceProvider = [(PBUIPosterVariantViewController *)self snapshotSourceProvider];
  [(PBUISnapshotReplicaView *)v10 setProvider:snapshotSourceProvider];

  [view addSubview:self->_snapshotView];
  [view sendSubviewToBack:self->_snapshotView];
  [(PBUIPosterVariantViewController *)self _checkIfPresentationIsUpdatedAndSnapshot];
  objc_initWeak(&location, self);
  v12 = objc_opt_self();
  v19[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__PBUIPosterVariantViewController_viewDidLoad__block_invoke;
  v15[3] = &unk_278363ED0;
  objc_copyWeak(&v16, &location);
  v14 = [(PBUIPosterVariantViewController *)self registerForTraitChanges:v13 withHandler:v15];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __46__PBUIPosterVariantViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = [v10 traitCollection];
    v8 = [v7 userInterfaceStyle];
    v9 = [v5 userInterfaceStyle];

    if (v8 != v9)
    {
      [WeakRetained _updateInterfaceStyle];
      [WeakRetained setNeedsNewSnapshot:@"interface style changed"];
    }
  }
}

- (void)sceneContentStateDidChange:(id)change
{
  if ([change contentState] == 2)
  {

    [(PBUIPosterVariantViewController *)self invalidateSnapshotPreconditions:@"scene content state did change to ready"];
  }
}

- (void)scene:(id)scene didApplyUpdateWithContext:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  contextCopy = context;
  transactionID = [contextCopy transactionID];
  self->_lastExtantUpdate = transactionID;
  v9 = PBUILogRuntime(transactionID);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
    lastExtantUpdate = self->_lastExtantUpdate;
    v31 = 138543618;
    v32 = v10;
    v33 = 2048;
    v34 = lastExtantUpdate;
    _os_log_impl(&dword_21E67D000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Poster last extant update changed %lu", &v31, 0x16u);
  }

  settingsDiff = [contextCopy settingsDiff];
  transitionContext = [contextCopy transitionContext];
  pui_posterContentDidChange = [settingsDiff pui_posterContentDidChange];
  if (pui_posterContentDidChange & 1) != 0 || -[PBUIPosterVariantViewController variant](self, "variant") == 1 && (pui_posterContentDidChange = [transitionContext pb_homeAppearanceChanged], (pui_posterContentDidChange))
  {
    pui_provider = PBUILogRuntime(pui_posterContentDidChange);
    if (os_log_type_enabled(pui_provider, OS_LOG_TYPE_DEFAULT))
    {
      v16 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
      v17 = self->_lastExtantUpdate;
      v31 = 138543618;
      v32 = v16;
      v33 = 2048;
      v34 = v17;
      _os_log_impl(&dword_21E67D000, pui_provider, OS_LOG_TYPE_DEFAULT, "[%{public}@] Poster Extant %lu did change content", &v31, 0x16u);
    }

    v18 = 1;
    goto LABEL_7;
  }

  settings = [contextCopy settings];
  pui_userInterfaceStyle = [settings pui_userInterfaceStyle];

  if (pui_userInterfaceStyle != self->_mostRecentSnapshotInterfaceStyle)
  {
    _applicableScene = [(PBUIPosterVariantViewController *)self _applicableScene];
    settings2 = [_applicableScene settings];
    pui_provider = [settings2 pui_provider];

    v28 = [pui_provider isEqualToString:@"com.apple.WallpaperKit.CollectionsPoster"];
    v18 = v28;
    if (v28)
    {
      v29 = PBUILogRuntime(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
        v31 = 138543362;
        v32 = v30;
        _os_log_impl(&dword_21E67D000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] catching undetected system appearance change for collections poster", &v31, 0xCu);
      }
    }

LABEL_7:

    goto LABEL_8;
  }

  v18 = 0;
LABEL_8:
  clientSettings = [sceneCopy clientSettings];
  pui_significantEventOptions = [clientSettings pui_significantEventOptions];

  pui_significantEventsCounterDidChange = [settingsDiff pui_significantEventsCounterDidChange];
  if (pui_significantEventOptions)
  {
    v22 = pui_significantEventsCounterDidChange;
  }

  else
  {
    v22 = 0;
  }

  if (v18 & 1) != 0 || (v22)
  {
    [(PBUIPosterVariantViewController *)self _setupCachesIfNeeded];
    if ([(PBUIPosterVariantViewController *)self variant]== 1)
    {
      [(PBUIURLBackedSnapshotSource *)self->_snapshotSource clearDerivedProminentColor];
      derivedProminentColor = self->_derivedProminentColor;
      self->_derivedProminentColor = 0;
    }

    [(PBUIPosterVariantViewController *)self setNeedsNewSnapshot:@"scene settings were updated"];
    goto LABEL_20;
  }

  if ([settingsDiff pr_posterPropertiesDidChange] & 1) != 0 || (objc_msgSend(settingsDiff, "pr_unlockProgressDidChange") & 1) != 0 || (objc_msgSend(transitionContext, "pb_homeAppearanceChanged"))
  {
LABEL_20:
    [(PBUIPosterVariantViewController *)self updatePresentation:0];
  }
}

- (void)scene:(id)scene didCompleteUpdateWithContext:(id)context error:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = PBUILogRuntime(contextCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
    lastExtantUpdate = self->_lastExtantUpdate;
    v14 = 138543874;
    v15 = v8;
    v16 = 2048;
    v17 = lastExtantUpdate;
    v18 = 2048;
    transactionID = [contextCopy transactionID];
    _os_log_impl(&dword_21E67D000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Poster Extant update COULD change %lu (%lu)", &v14, 0x20u);
  }

  v10 = self->_lastExtantUpdate;
  transactionID2 = [contextCopy transactionID];
  if (v10 == transactionID2)
  {
    v12 = PBUILogRuntime(transactionID2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
      v14 = 138543362;
      v15 = v13;
      _os_log_impl(&dword_21E67D000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Poster Extant update DID change", &v14, 0xCu);
    }

    self->_lastExtantUpdate = 0;
    [(PBUIPosterVariantViewController *)self invalidateSnapshotPreconditions:@"Poster Extant update DID change"];
  }
}

- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context
{
  sceneCopy = scene;
  diffCopy = diff;
  contextCopy = context;
  if ([contextCopy pr_updateSnapshot])
  {
    [(PBUIPosterVariantViewController *)self setNeedsNewSnapshot:@"transition context requested new snapshot"];
  }

  else if ([diffCopy pui_extendedRenderSessionDidChange])
  {
    clientSettings = [sceneCopy clientSettings];
    pui_inExtendedRenderSession = [clientSettings pui_inExtendedRenderSession];

    if ((pui_inExtendedRenderSession & 1) == 0)
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
      v16 = MEMORY[0x223D622C0]([diffCopy pui_extendedRenderSessionDidChange]);
      clientSettings2 = [sceneCopy clientSettings];
      v18 = MEMORY[0x223D622C0]([clientSettings2 pui_inExtendedRenderSession]);
      v19 = [v14 stringWithFormat:@"didUpdateClientSettings with diff for variant %@ extendedRenderSessionDidChange %@ inExtendedRenderSession %@", v15, v16, v18];;
      [(PBUIPosterVariantViewController *)self invalidateSnapshotPreconditions:v19];
    }
  }

  animationFence = [contextCopy animationFence];
  animationSettings = [contextCopy animationSettings];

  if (animationFence && animationSettings)
  {
    viewIfLoaded = [(PBUIPosterVariantViewController *)self viewIfLoaded];
    window = [viewIfLoaded window];
    windowScene = [window windowScene];

    [windowScene _synchronizeDrawingWithFence:animationFence];
  }

  v25 = MEMORY[0x277CF0D38];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __109__PBUIPosterVariantViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke;
  v28[3] = &unk_278362598;
  v29 = diffCopy;
  selfCopy = self;
  v31 = sceneCopy;
  v26 = sceneCopy;
  v27 = diffCopy;
  [v25 animateWithSettings:animationSettings actions:v28];
}

void __109__PBUIPosterVariantViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke(id *a1)
{
  if ([a1[4] pr_hideDimmingLayerDidChange])
  {
    v2 = [a1[5] delegate];
    v3 = a1[5];
    v4 = [a1[6] clientSettings];
    [v2 posterComponent:v3 didUpdateHideDimmingLayer:{objc_msgSend(v4, "pr_hideDimmingLayer")}];
  }

  if ([a1[4] pr_desiredLegibilitySettingsDidChange])
  {
    v5 = a1[5];
    v6 = [a1[6] clientSettings];
    v7 = [v6 pr_desiredLegibilitySettings];
    [v5 _updatePosterColorStatistics:0 desiredLegibilitySettings:v7];
  }

  if ([a1[4] pr_prominentColorDidChange])
  {
    [a1[5] _updatePosterPreferredProminentColor];
  }

  v8 = [a1[6] clientSettings];
  v9 = [v8 pr_areMotionEffectsDisabled];

  if ((v9 & 1) == 0 && [a1[4] pr_supportedMotionEffectsModeDidChange])
  {
    v10 = a1[5];
    v11 = [a1[6] clientSettings];
    [v10 _updateEffectiveMotionEffectsModeForSupportedMode:objc_msgSend(v11 disabled:{"pr_supportedMotionEffectsMode"), 0}];
  }

  if ([a1[4] pui_preferredSalientContentRectangleDidChange])
  {
    v12 = [a1[5] delegate];
    v13 = a1[5];
    v14 = [a1[6] clientSettings];
    [v14 pui_preferredSalientContentRectangle];
    [v12 posterComponent:v13 didUpdatePreferredSalientContentRectangle:?];
  }

  if ([a1[4] pui_adaptiveTimeModeDidChange])
  {
    v15 = [a1[6] clientSettings];
    if ([v15 pui_adaptiveTimeMode] == 2)
    {
      v16 = 1;
    }

    else
    {
      v17 = [a1[6] clientSettings];
      if ([v17 pui_adaptiveTimeMode] == 4)
      {
        v18 = [a1[6] clientSettings];
        v16 = [v18 pui_isAdaptiveTimeHeightUserConfigured] ^ 1;
      }

      else
      {
        v16 = 0;
      }
    }

    v19 = [a1[5] delegate];
    [v19 posterComponent:a1[5] didUpdateAdaptiveTimeHonorsPreferredSalientContentRectangle:v16];
  }

  if ([a1[4] pui_salientContentRectangleUpdatesRequestedDidChange])
  {
    v20 = [a1[5] delegate];
    v21 = a1[5];
    v22 = [a1[6] clientSettings];
    [v20 posterComponent:v21 didUpdateSalientContentRectangleUpdatesRequested:{objc_msgSend(v22, "pui_salientContentRectangleUpdatesRequested")}];
  }

  if ([a1[4] pr_deviceMotionEventsRequestedDidChange])
  {
    v23 = [a1[5] delegate];
    v24 = a1[5];
    v25 = [a1[6] clientSettings];
    [v23 posterComponent:v24 didUpdateDeviceMotionEventsRequested:{objc_msgSend(v25, "pr_deviceMotionEventsRequested")}];
  }

  if ([a1[4] pr_deviceMotionModeDidChange])
  {
    v26 = [a1[6] clientSettings];
    v27 = [v26 pr_deviceMotionMode];

    v28 = PBUIDeviceMotionModeForPRPosterDeviceMotionMode(v27);
    v29 = [a1[5] delegate];
    [v29 posterComponent:a1[5] didUpdateDeviceMotionMode:v28];
  }

  if ([a1[4] pr_preferredDeviceMotionUpdateIntervalDidChange])
  {
    v32 = [a1[5] delegate];
    v30 = a1[5];
    v31 = [a1[6] clientSettings];
    [v31 pr_preferredDeviceMotionUpdateInterval];
    [v32 posterComponent:v30 didUpdatePreferredDeviceMotionUpdateInterval:?];
  }
}

- (UIColor)derivedProminentColor
{
  derivedProminentColor = self->_derivedProminentColor;
  if (derivedProminentColor)
  {
    goto LABEL_2;
  }

  if ([(PBUIPosterVariantViewController *)self variant]== 1)
  {
    _fetchDerivedProminentColor = [(PBUIPosterVariantViewController *)self _fetchDerivedProminentColor];
    v7 = self->_derivedProminentColor;
    self->_derivedProminentColor = _fetchDerivedProminentColor;

    derivedProminentColor = self->_derivedProminentColor;
    if (derivedProminentColor)
    {
LABEL_2:
      derivedProminentColor = derivedProminentColor;
      goto LABEL_3;
    }
  }

  else
  {
    counterpart = [(PBUIPosterVariantViewController *)self counterpart];

    if (counterpart)
    {
      counterpart2 = [(PBUIPosterVariantViewController *)self counterpart];
      derivedProminentColor = [counterpart2 derivedProminentColor];

      goto LABEL_3;
    }
  }

  derivedProminentColor = 0;
LABEL_3:

  return derivedProminentColor;
}

- (id)_posterPreferredProminentColor:(BOOL)color
{
  colorCopy = color;
  if ([(PBUIPosterVariantViewController *)self variant]== 1)
  {
    if (!colorCopy)
    {
      _fetchPosterPreferredProminentColor = [(PBUIPosterVariantViewController *)self _fetchPosterPreferredProminentColor];
      goto LABEL_9;
    }

    posterPreferredProminentColor = self->_posterPreferredProminentColor;
    if (posterPreferredProminentColor || ([(PBUIPosterVariantViewController *)self _fetchPosterPreferredProminentColor], v6 = objc_claimAutoreleasedReturnValue(), v7 = self->_posterPreferredProminentColor, self->_posterPreferredProminentColor = v6, v7, (posterPreferredProminentColor = self->_posterPreferredProminentColor) != 0))
    {
      _fetchPosterPreferredProminentColor = posterPreferredProminentColor;
LABEL_9:
      v11 = _fetchPosterPreferredProminentColor;
      goto LABEL_11;
    }
  }

  else
  {
    counterpart = [(PBUIPosterVariantViewController *)self counterpart];

    if (counterpart)
    {
      counterpart2 = [(PBUIPosterVariantViewController *)self counterpart];
      v11 = [counterpart2 _posterPreferredProminentColor:colorCopy];

      goto LABEL_11;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (UIColor)timeColor
{
  if ([(PBUIPosterVariantViewController *)self variant]== 1 && ([(PBUIPosterVariantViewController *)self counterpart], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    counterpart = [(PBUIPosterVariantViewController *)self counterpart];
    timeColor = [counterpart timeColor];
  }

  else
  {
    timeColor = self->_timeColor;
    if (!timeColor)
    {
      _fetchTimeColor = [(PBUIPosterVariantViewController *)self _fetchTimeColor];
      v8 = self->_timeColor;
      self->_timeColor = _fetchTimeColor;

      timeColor = self->_timeColor;
    }

    timeColor = timeColor;
  }

  return timeColor;
}

- (UIColor)preferredProminentColor
{
  if ([(PBUIPosterVariantViewController *)self variant]== 1)
  {
    preferredProminentColor = [(PBUIPosterVariantViewController *)self _preferredProminentColor:1 source:0];
  }

  else
  {
    counterpart = [(PBUIPosterVariantViewController *)self counterpart];
    preferredProminentColor = [counterpart preferredProminentColor];
  }

  return preferredProminentColor;
}

- (id)_preferredProminentColor:(BOOL)color source:(id *)source
{
  colorCopy = color;
  v25 = *MEMORY[0x277D85DE8];
  if ([(PBUIPosterVariantViewController *)self variant])
  {
    if (colorCopy)
    {
      preferredProminentColor = self->_preferredProminentColor;
      if (preferredProminentColor)
      {
        v8 = preferredProminentColor;
        goto LABEL_14;
      }
    }

    derivedProminentColor = [(PBUIPosterVariantViewController *)self derivedProminentColor];
    v10 = [(PBUIPosterVariantViewController *)self _posterPreferredProminentColor:colorCopy];
    timeColor = [(PBUIPosterVariantViewController *)self timeColor];
    fallbackColor = [(PBUIPosterVariantViewController *)self fallbackColor];
    v18 = 0;
    v8 = [objc_opt_class() _determinePreferredProminentColorFromDerivedProminentColor:derivedProminentColor posterPreferredProminentColor:v10 timeColor:timeColor fallbackColor:fallbackColor outChosenColor:&v18];
    v13 = v18;
    if (v8)
    {
      v14 = PBUILogSnapshot([(PBUIPosterVariantViewController *)self setPreferredProminentColor:v8 chosenColorSource:v13 notifyObservers:1]);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
        *buf = 138543874;
        v20 = v15;
        v21 = 2114;
        v22 = v8;
        v23 = 2114;
        v24 = v13;
        _os_log_impl(&dword_21E67D000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] loaded preferred prominent color %{public}@/%{public}@", buf, 0x20u);
      }
    }

    if (source)
    {
      v16 = v13;
      *source = v13;
    }
  }

  else
  {
    derivedProminentColor = [(PBUIPosterVariantViewController *)self counterpart];
    v8 = [derivedProminentColor _preferredProminentColor:colorCopy source:source];
  }

LABEL_14:

  return v8;
}

- (void)setPreferredProminentColor:(id)color chosenColorSource:(id)source notifyObservers:(BOOL)observers
{
  observersCopy = observers;
  colorCopy = color;
  sourceCopy = source;
  if (([(UIColor *)self->_preferredProminentColor isEqual:colorCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_preferredProminentColor, color);
    v11 = [sourceCopy copy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = @"UNKNOWN";
    }

    objc_storeStrong(&self->_preferredProminentColorSource, v13);

    [(PBUIPosterVariantViewController *)self updateHomeVariantStyleState];
    if (observersCopy)
    {
      objc_initWeak(&location, self);
      objc_copyWeak(&v15, &location);
      v14 = colorCopy;
      BSDispatchMain();

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void __96__PBUIPosterVariantViewController_setPreferredProminentColor_chosenColorSource_notifyObservers___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 150);
    v4 = objc_opt_respondsToSelector();

    WeakRetained = v6;
    if (v4)
    {
      v5 = objc_loadWeakRetained(v6 + 150);
      [v5 posterComponent:v6 didUpdatePreferredProminentColor:*(a1 + 32)];

      WeakRetained = v6;
    }
  }
}

- (void)snapshotSource:(id)source failedToReadSnapshotAtURL:(id)l error:(id)error
{
  errorCopy = error;
  v7 = PBUILogSnapshot(errorCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [PBUIPosterVariantViewController snapshotSource:failedToReadSnapshotAtURL:error:];
  }

  [(PBUIPosterVariantViewController *)self setNeedsNewSnapshot:@"failed to read snapshot; requesting new one"];
}

- (void)snapshotSource:(id)source failedToReadColorStatisticsAtURL:(id)l error:(id)error
{
  errorCopy = error;
  v7 = PBUILogSnapshot(errorCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [PBUIPosterVariantViewController snapshotSource:failedToReadColorStatisticsAtURL:error:];
  }

  [(PBUIPosterVariantViewController *)self setNeedsNewSnapshot:@"failed to read color statistics; requesting new snapshot for new color statistics"];
}

- (void)snapshotSourceReceivedNewSnapshot:(id)snapshot
{
  v4 = PBUILogSnapshot(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [PBUIPosterVariantViewController snapshotSourceReceivedNewSnapshot:?];
  }

  [(PBUIPosterVariantViewController *)self _setupCachesIfNeeded];
}

- (void)colorStatisticsDidChange:(id)change
{
  v39 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    desiredLegibilitySettings = [(PBUIPosterVariantViewController *)self desiredLegibilitySettings];
    legibilitySettingsDidChange = [(PBUIPosterVariantViewController *)self legibilitySettingsDidChange];
    if (desiredLegibilitySettings)
    {
      v7 = PBUILogSnapshot(legibilitySettingsDidChange);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
        *buf = 138543362;
        v30 = v8;
        _os_log_impl(&dword_21E67D000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Legibility settings did change", buf, 0xCu);
      }

      v10 = PBUILogSnapshot(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v30 = desiredLegibilitySettings;
        _os_log_impl(&dword_21E67D000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Legibility settings will use desired legibility:", buf, 0xCu);
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      convertToUILegibility = [desiredLegibilitySettings convertToUILegibility];
      [WeakRetained posterComponent:self didUpdateLegibilitySettings:convertToUILegibility];
    }

    else
    {
      averageColor = [changeCopy averageColor];
      WeakRetained = [averageColor BSColor];

      v15 = PBUILogSnapshot(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
        *buf = 138543362;
        v30 = v16;
        _os_log_impl(&dword_21E67D000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Legibility settings did change", buf, 0xCu);
      }

      v18 = PBUILogSnapshot(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
        [WeakRetained red];
        v21 = (v20 * 255.0);
        [WeakRetained green];
        v23 = (v22 * 255.0);
        [WeakRetained blue];
        v25 = (v24 * 255.0);
        [WeakRetained alpha];
        *buf = 138544386;
        v30 = v19;
        v31 = 1024;
        v32 = v21;
        v33 = 1024;
        v34 = v23;
        v35 = 1024;
        v36 = v25;
        v37 = 2048;
        v38 = v26;
        _os_log_impl(&dword_21E67D000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updated average color to: #%02X%02X%02X (%.1f)", buf, 0x28u);
      }

      convertToUILegibility = objc_loadWeakRetained(&self->_delegate);
      legibilitySettings = [changeCopy legibilitySettings];
      [convertToUILegibility posterComponent:self didUpdateLegibilitySettings:legibilitySettings];
    }
  }

  else
  {
    v28 = changeCopy;
    BSDispatchMain();
  }
}

- (void)legibilitySettingsDidChange
{
  legibilityEnvironmentContext = self->_legibilityEnvironmentContext;
  self->_legibilityEnvironmentContext = 0;

  portalProvider = self->_portalProvider;
  legibilitySettings = [(PBUIPosterVariantViewController *)self legibilitySettings];
  v5 = [(PBUIPosterVariantViewController *)self makePortalSourceWithLegibilitySettings:legibilitySettings];
  [(PBUIFixedReplicaSourceProvider *)portalProvider setPortalSource:v5];
}

- (id)_fetchPosterPreferredProminentColor
{
  if ([(PBUIPosterVariantViewController *)self variant]== 1)
  {
    _applicableScene = [(PBUIPosterVariantViewController *)self _applicableScene];
    clientSettings = [_applicableScene clientSettings];
    pr_preferredProminentColor = [clientSettings pr_preferredProminentColor];
    uIColor = [pr_preferredProminentColor UIColor];

    if (!uIColor)
    {
      posterPreferredProminentColor = [(PBUIURLBackedSnapshotSource *)self->_snapshotSource posterPreferredProminentColor];
      uIColor = PBUISafeUIColorFromColor(posterPreferredProminentColor);

      if (!uIColor)
      {
        lockScreenConfiguration = [(PBUIPosterVariantViewController *)self lockScreenConfiguration];
        v16 = 0;
        v9 = [lockScreenConfiguration pr_loadHomeScreenConfigurationWithError:&v16];
        v10 = v16;

        customizationConfiguration = [v9 customizationConfiguration];
        suggestedTintColor = [customizationConfiguration suggestedTintColor];
        uIColor = PBUISafeUIColorFromColor(suggestedTintColor);

        if (v10)
        {
          v14 = PBUILogCommon(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [PBUIPosterVariantViewController _fetchPosterPreferredProminentColor];
          }
        }
      }
    }
  }

  else
  {
    uIColor = 0;
  }

  return uIColor;
}

- (id)_fetchDerivedProminentColor
{
  if ([(PBUIPosterVariantViewController *)self variant]== 1)
  {
    derivedProminentPosterColor = [(PBUIURLBackedSnapshotSource *)self->_snapshotSource derivedProminentPosterColor];
  }

  else
  {
    derivedProminentPosterColor = 0;
  }

  return derivedProminentPosterColor;
}

- (id)_fetchTimeColor
{
  if ([(PBUIPosterVariantViewController *)self variant])
  {
    v3 = 0;
  }

  else
  {
    _applicableScene = [(PBUIPosterVariantViewController *)self _applicableScene];
    settings = [_applicableScene settings];
    pr_posterConfiguredProperties = [settings pr_posterConfiguredProperties];
    titleStyleConfiguration = [pr_posterConfiguredProperties titleStyleConfiguration];
    effectiveTitleColor = [titleStyleConfiguration effectiveTitleColor];

    if (effectiveTitleColor)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        color = effectiveTitleColor;
      }

      else
      {
        color = [effectiveTitleColor color];
      }

      v10 = color;
      v3 = [color colorWithAlphaComponent:1.0];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)_handleUpdateProminentPosterDerivedColor:(id)color posterPreferredProminentColor:(id)prominentColor timeColor:(id)timeColor fallbackColor:(id)fallbackColor
{
  v83 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  prominentColorCopy = prominentColor;
  timeColorCopy = timeColor;
  fallbackColorCopy = fallbackColor;
  if ([(PBUIPosterVariantViewController *)self variant]== 1)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v14 = self->_preferredProminentColor;
      v15 = v14;
      if (timeColorCopy || colorCopy || prominentColorCopy || fallbackColorCopy)
      {
        v19 = PBUILogSnapshot(v14);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = PBUIStringForWallpaperVariant(1);
          *buf = 138544386;
          v74 = v20;
          v75 = 2114;
          v76 = colorCopy;
          v77 = 2114;
          v78 = prominentColorCopy;
          v79 = 2114;
          v80 = timeColorCopy;
          v81 = 2114;
          v82 = fallbackColorCopy;
          _os_log_impl(&dword_21E67D000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] running _handleUpdateProminentPosterDerivedColor; derivedProminentColor %{public}@ posterPreferredProminentColor %{public}@ timeColor %{public}@ fallbackColor: %{public}@", buf, 0x34u);
        }

        if (colorCopy)
        {
          if (!prominentColorCopy)
          {
            goto LABEL_73;
          }

          goto LABEL_16;
        }
      }

      else
      {
        timeColor = PBUILogSnapshot(v14);
        v17 = os_log_type_enabled(timeColor, OS_LOG_TYPE_DEFAULT);
        if (v15)
        {
          if (v17)
          {
            v18 = PBUIStringForWallpaperVariant(1);
            *buf = 138543618;
            v74 = v18;
            v75 = 2114;
            v76 = v15;
            _os_log_impl(&dword_21E67D000, timeColor, OS_LOG_TYPE_DEFAULT, "[%{public}@] skipping _handleUpdateProminentPosterDerivedColor; no colors specified and currentPreferredProminentColor is populated %{public}@", buf, 0x16u);
          }

          timeColorCopy = 0;
          prominentColorCopy = 0;
          colorCopy = 0;
          goto LABEL_67;
        }

        if (v17)
        {
          v52 = PBUIStringForWallpaperVariant(1);
          *buf = 138543362;
          v74 = v52;
          _os_log_impl(&dword_21E67D000, timeColor, OS_LOG_TYPE_DEFAULT, "[%{public}@] running _handleUpdateProminentPosterDerivedColor; no currentPreferredProminentColor is populated", buf, 0xCu);
        }
      }

      colorCopy = [(PBUIPosterVariantViewController *)self _fetchDerivedProminentColor];
      if (!prominentColorCopy)
      {
LABEL_73:
        prominentColorCopy = [(PBUIPosterVariantViewController *)self _fetchPosterPreferredProminentColor];
        if (timeColorCopy)
        {
          goto LABEL_17;
        }

        goto LABEL_74;
      }

LABEL_16:
      if (timeColorCopy)
      {
        goto LABEL_17;
      }

LABEL_74:
      timeColorCopy = [(PBUIPosterVariantViewController *)self timeColor];
LABEL_17:
      timeColor = [(PBUIPosterVariantViewController *)self timeColor];
      posterPreferredProminentColor = [(PBUIPosterVariantViewController *)self posterPreferredProminentColor];
      derivedProminentColor = [(PBUIPosterVariantViewController *)self derivedProminentColor];
      [(PBUIPosterVariantViewController *)self fallbackColor];
      v59 = v58 = derivedProminentColor;
      if (derivedProminentColor)
      {
        if ([derivedProminentColor isEqual:colorCopy])
        {
          goto LABEL_19;
        }
      }

      else if (!colorCopy)
      {
LABEL_19:
        if (timeColor)
        {
          goto LABEL_20;
        }

        goto LABEL_26;
      }

      v22 = PBUILogSnapshot([(PBUIPosterVariantViewController *)self setDerivedProminentColor:colorCopy]);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = PBUIStringForWallpaperVariant(1);
        *buf = 138543618;
        v74 = v23;
        v75 = 2114;
        v76 = colorCopy;
        _os_log_impl(&dword_21E67D000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] updating DERIVED PROMINENT COLOR: %{public}@", buf, 0x16u);
      }

      if (timeColor)
      {
LABEL_20:
        if (([timeColor isEqual:timeColorCopy]& 1) != 0)
        {
          goto LABEL_30;
        }

        goto LABEL_27;
      }

LABEL_26:
      if (!timeColorCopy)
      {
        goto LABEL_30;
      }

LABEL_27:
      v24 = PBUILogSnapshot([(PBUIPosterVariantViewController *)self setTimeColor:timeColorCopy]);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = PBUIStringForWallpaperVariant(1);
        *buf = 138543618;
        v74 = v25;
        v75 = 2114;
        v76 = timeColorCopy;
        _os_log_impl(&dword_21E67D000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] updating TIME COLOR: %{public}@", buf, 0x16u);
      }

LABEL_30:
      if (posterPreferredProminentColor)
      {
        if ([posterPreferredProminentColor isEqual:prominentColorCopy])
        {
          goto LABEL_42;
        }
      }

      else if (!prominentColorCopy)
      {
        goto LABEL_42;
      }

      v54 = timeColor;
      v56 = v15;
      [(PBUIPosterVariantViewController *)self setPosterPreferredProminentColor:prominentColorCopy];
      [(PBUIURLBackedSnapshotSource *)self->_snapshotSource updatePosterPreferredProminentColor:prominentColorCopy error:0];
      PRSPosterUpdateClass = getPRSPosterUpdateClass();
      bSColor = [(UIColor *)prominentColorCopy BSColor];
      v28 = [PRSPosterUpdateClass posterUpdateHomeScreenSuggestedTintColor:bSColor];

      PRSPosterUpdaterClass = getPRSPosterUpdaterClass();
      _lockVariantScene = [(PBUIPosterVariantViewController *)self _lockVariantScene];
      pui_posterPath = [_lockVariantScene pui_posterPath];
      v32 = [PRSPosterUpdaterClass updaterForPath:pui_posterPath];

      v66 = 0;
      LODWORD(PRSPosterUpdaterClass) = [v32 applyUpdateLocally:v28 error:&v66];
      v33 = v66;
      v34 = v33;
      if (!PRSPosterUpdaterClass || v33)
      {
        v35 = PBUILogSnapshot(v33);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [PBUIPosterVariantViewController _handleUpdateProminentPosterDerivedColor:posterPreferredProminentColor:timeColor:fallbackColor:];
        }
      }

      v36 = PBUILogSnapshot(v33);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = PBUIStringForWallpaperVariant(1);
        *buf = 138543618;
        v74 = v37;
        v75 = 2114;
        v76 = prominentColorCopy;
        _os_log_impl(&dword_21E67D000, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] updating POSTER PREFERRED PROMINENT COLOR color: %{public}@", buf, 0x16u);
      }

      timeColor = v54;
      v15 = v56;
LABEL_42:
      if (v59)
      {
        if ([v59 isEqual:fallbackColorCopy])
        {
          goto LABEL_49;
        }
      }

      else if (!fallbackColorCopy)
      {
        goto LABEL_49;
      }

      v38 = PBUILogSnapshot([(PBUIPosterVariantViewController *)self setFallbackColor:fallbackColorCopy]);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        PBUIStringForWallpaperVariant(1);
        v40 = v39 = timeColor;
        *buf = 138543618;
        v74 = v40;
        v75 = 2114;
        v76 = prominentColorCopy;
        _os_log_impl(&dword_21E67D000, v38, OS_LOG_TYPE_DEFAULT, "[%{public}@] updating POSTER FALLBACK COLOR: %{public}@", buf, 0x16u);

        timeColor = v39;
      }

LABEL_49:
      v65 = 0;
      v41 = [objc_opt_class() _determinePreferredProminentColorFromDerivedProminentColor:colorCopy posterPreferredProminentColor:prominentColorCopy timeColor:timeColorCopy fallbackColor:fallbackColorCopy outChosenColor:&v65];
      v42 = v65;
      if (v15)
      {
        if (([(UIColor *)v15 isEqual:v41]& 1) != 0)
        {
          goto LABEL_66;
        }
      }

      else if (!v41)
      {
LABEL_66:

LABEL_67:
        goto LABEL_68;
      }

      v53 = v42;
      v43 = PBUILogSnapshot([(PBUIPosterVariantViewController *)self setPreferredProminentColor:v41 chosenColorSource:v42 notifyObservers:v41 != 0]);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = PBUIStringForWallpaperVariant(1);
        *buf = 138543874;
        v74 = v44;
        v75 = 2114;
        v76 = v41;
        v77 = 2114;
        v78 = v53;
        _os_log_impl(&dword_21E67D000, v43, OS_LOG_TYPE_DEFAULT, "[%{public}@] preferred prominent color WAS UPDATED: %{public}@/%{public}@", buf, 0x20u);
      }

      v45 = [(NSMutableArray *)self->_fetchBlocks copy];
      v46 = v45;
      if (v41 && [v45 count])
      {
        v55 = timeColor;
        v57 = v15;
        [(NSMutableArray *)self->_fetchBlocks removeAllObjects];
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v47 = v46;
        v48 = [v47 countByEnumeratingWithState:&v61 objects:v72 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v62;
          do
          {
            for (i = 0; i != v49; ++i)
            {
              if (*v62 != v50)
              {
                objc_enumerationMutation(v47);
              }

              (*(*(*(&v61 + 1) + 8 * i) + 16))();
            }

            v49 = [v47 countByEnumeratingWithState:&v61 objects:v72 count:16];
          }

          while (v49);
        }

        timeColor = v55;
        v15 = v57;
      }

      v42 = v53;
      goto LABEL_66;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __130__PBUIPosterVariantViewController__handleUpdateProminentPosterDerivedColor_posterPreferredProminentColor_timeColor_fallbackColor___block_invoke;
    block[3] = &unk_278363EF8;
    block[4] = self;
    colorCopy = colorCopy;
    v68 = colorCopy;
    prominentColorCopy = prominentColorCopy;
    v69 = prominentColorCopy;
    timeColorCopy = timeColorCopy;
    v70 = timeColorCopy;
    v71 = fallbackColorCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

LABEL_68:
}

- (void)_updatePosterColorStatistics:(id)statistics desiredLegibilitySettings:(id)settings
{
  statisticsCopy = statistics;
  settingsCopy = settings;
  if (!settingsCopy || (-[PBUIPosterVariantViewController desiredLegibilitySettings](self, "desiredLegibilitySettings"), (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (v9 = v8, -[PBUIPosterVariantViewController desiredLegibilitySettings](self, "desiredLegibilitySettings"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isEqual:settingsCopy], v10, v9, (v11 & 1) != 0))
  {
    v12 = 0;
    if (!statisticsCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [(PBUIPosterVariantViewController *)self setDesiredLegibilitySettings:settingsCopy];
    v12 = 1;
    if (!statisticsCopy)
    {
      goto LABEL_9;
    }
  }

  if (self->_posterColorStatistics && (BSEqualObjects() & 1) != 0)
  {
LABEL_9:
    v13 = 1;
    if (!v12)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v14 = [statisticsCopy copy];
  posterColorStatistics = self->_posterColorStatistics;
  self->_posterColorStatistics = v14;

  contentColorStatistics = [(PBUIPosterVariantViewController *)self contentColorStatistics];
  v13 = contentColorStatistics != self->_posterColorStatistics;

  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_12:
  [(PBUIPosterVariantViewController *)self legibilitySettingsDidChange];
  desiredLegibilitySettings = [(PBUIPosterVariantViewController *)self desiredLegibilitySettings];

  if (desiredLegibilitySettings)
  {
    objc_initWeak(&location, self);
    objc_copyWeak(&v20, &location);
    v19 = settingsCopy;
    BSDispatchMain();

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
    goto LABEL_16;
  }

LABEL_14:
  if (!v13)
  {
    contentColorStatistics2 = [(PBUIPosterVariantViewController *)self contentColorStatistics];
    [(PBUIPosterVariantViewController *)self colorStatisticsDidChange:contentColorStatistics2];
  }

LABEL_16:
}

void __90__PBUIPosterVariantViewController__updatePosterColorStatistics_desiredLegibilitySettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 150);
    v4 = [*(a1 + 32) convertToUILegibility];
    [v3 posterComponent:v5 didUpdateLegibilitySettings:v4];

    WeakRetained = v5;
  }
}

- (void)_updatePosterPreferredProminentColor
{
  _fetchPosterPreferredProminentColor = [(PBUIPosterVariantViewController *)self _fetchPosterPreferredProminentColor];
  [(PBUIPosterVariantViewController *)self _handleUpdateProminentPosterDerivedColor:0 posterPreferredProminentColor:_fetchPosterPreferredProminentColor timeColor:0 fallbackColor:0];
}

+ (id)_determinePreferredProminentColorFromDerivedProminentColor:(id)color posterPreferredProminentColor:(id)prominentColor timeColor:(id)timeColor fallbackColor:(id)fallbackColor outChosenColor:(id *)chosenColor
{
  colorCopy = color;
  prominentColorCopy = prominentColor;
  timeColorCopy = timeColor;
  fallbackColorCopy = fallbackColor;
  v15 = prominentColorCopy;
  v16 = v15;
  if (v15 && chosenColor)
  {
    v17 = @"posterPreferredProminentColor";
    v18 = v15;
  }

  else if (!colorCopy || v15)
  {
    if (v15 || !timeColorCopy)
    {
      v18 = v15;
      if (v15)
      {
        goto LABEL_19;
      }

      if (fallbackColorCopy)
      {
        purpleColor = fallbackColorCopy;
      }

      else
      {
        purpleColor = [MEMORY[0x277D75348] purpleColor];
      }

      v18 = purpleColor;
      if (!chosenColor)
      {
        goto LABEL_19;
      }

      v17 = @"fallbackColor";
    }

    else
    {
      v18 = timeColorCopy;
      if (!chosenColor)
      {
        goto LABEL_19;
      }

      v17 = @"timeColor";
    }
  }

  else
  {
    v18 = colorCopy;
    if (!chosenColor)
    {
      goto LABEL_19;
    }

    v17 = @"derivedPreferredProminentColor";
  }

  *chosenColor = v17;
LABEL_19:

  return v18;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PBUIPosterVariantViewController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PBUIPosterVariantViewController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(PBUIPosterVariantViewController *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__PBUIPosterVariantViewController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783622E0;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __73__PBUIPosterVariantViewController_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1000) withName:@"scene"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1008) withName:@"presenter" skipIfNil:1];
  v4 = *(a1 + 32);
  v6 = [*(a1 + 40) contentColorStatistics];
  v5 = [v4 appendObject:v6 withName:@"colorStats" skipIfNil:1];
}

- (PBUIPosterVariantViewController)counterpart
{
  WeakRetained = objc_loadWeakRetained(&self->_counterpart);

  return WeakRetained;
}

- (void)initWithScene:(const char *)a1 counterpart:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:FBSceneClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PBUIPosterVariantViewController.m";
    v16 = 1024;
    v17 = 111;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21E67D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setCounterpart:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  v3 = 2112;
  v4 = v0;
  _os_log_fault_impl(&dword_21E67D000, v1, OS_LOG_TYPE_FAULT, "oldCounterpart exists w/o scene attached. (old counterpart %@; new counterpart %@)", v2, 0x16u);
}

- (void)fetchWallpaperProminentColor:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = PBUIStringForWallpaperVariant(a1);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)fetchWallpaperProminentColor:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v1 = PBUIStringForWallpaperVariant(a1);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __64__PBUIPosterVariantViewController_fetchWallpaperProminentColor___block_invoke_44_cold_1()
{
  OUTLINED_FUNCTION_6_1();
  v1 = PBUIStringForWallpaperVariant(*(v0 + 40));
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_monitorScene:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"only one scene should be monitored"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    v9 = @"PBUIPosterVariantViewController.m";
    v10 = 1024;
    v11 = 520;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_21E67D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_monitorScene:(const char *)a1 .cold.2(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"can't monitor a scene that doesn't exist"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    v9 = @"PBUIPosterVariantViewController.m";
    v10 = 1024;
    v11 = 519;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_21E67D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_scheduleSnapshotIfNeeded:.cold.1()
{
  OUTLINED_FUNCTION_6_1();
  v1 = PBUIStringForWallpaperVariant([v0 variant]);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_snapshotNow:.cold.1()
{
  OUTLINED_FUNCTION_6_1();
  v1 = PBUIStringForWallpaperVariant([v0 variant]);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_snapshotNow:(void *)a1 .cold.2(void *a1)
{
  v1 = PBUIStringForWallpaperVariant([a1 variant]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)snapshotIfNeeded:(uint64_t)a1 reason:.cold.1(uint64_t a1)
{
  v1 = PBUIStringForWallpaperVariant(a1);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)snapshotIfNeeded:(uint64_t)a1 reason:.cold.2(uint64_t a1)
{
  v1 = PBUIStringForWallpaperVariant(a1);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)snapshotIfNeeded:(void *)a1 reason:.cold.3(void *a1)
{
  v1 = PBUIStringForWallpaperVariant([a1 variant]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __59__PBUIPosterVariantViewController_snapshotIfNeeded_reason___block_invoke_2_88_cold_1(void *a1)
{
  v1 = PBUIStringForWallpaperVariant([a1 variant]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __59__PBUIPosterVariantViewController_snapshotIfNeeded_reason___block_invoke_2_88_cold_2(void *a1)
{
  v1 = PBUIStringForWallpaperVariant([a1 variant]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __95__PBUIPosterVariantViewController__prepareFauxExternalSceneFromScene_completion_attemptNumber___block_invoke_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __61__PBUIPosterVariantViewController__snapshotScene_completion___block_invoke_5_cold_1(uint64_t a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = PBUIStringForWallpaperVariant([*(a1 + 40) variant]);
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = [v5 descriptionWithMultilinePrefix:0];
  }

  else
  {
    v6 = @"None";
  }

  v7 = 138543618;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_21E67D000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Snapshot capture failed. Error=%@", &v7, 0x16u);
  if (v5)
  {
  }
}

- (void)snapshotSource:failedToReadSnapshotAtURL:error:.cold.1()
{
  OUTLINED_FUNCTION_6_1();
  v2 = PBUIStringForWallpaperVariant([v1 variant]);
  v3 = [v0 descriptionWithMultilinePrefix:0];
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)snapshotSource:failedToReadColorStatisticsAtURL:error:.cold.1()
{
  OUTLINED_FUNCTION_6_1();
  v2 = PBUIStringForWallpaperVariant([v1 variant]);
  v3 = [v0 descriptionWithMultilinePrefix:0];
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)snapshotSourceReceivedNewSnapshot:(void *)a1 .cold.1(void *a1)
{
  v1 = PBUIStringForWallpaperVariant([a1 variant]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_fetchPosterPreferredProminentColor
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(&dword_21E67D000, v0, OS_LOG_TYPE_ERROR, "Unable to load  home screen configuration: %{public}@", v1, 0xCu);
}

- (void)_handleUpdateProminentPosterDerivedColor:posterPreferredProminentColor:timeColor:fallbackColor:.cold.1()
{
  v0 = PBUIStringForWallpaperVariant(1);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

@end