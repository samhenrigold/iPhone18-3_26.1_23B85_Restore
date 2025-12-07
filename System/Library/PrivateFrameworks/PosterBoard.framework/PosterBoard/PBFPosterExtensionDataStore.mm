@interface PBFPosterExtensionDataStore
+ (id)dataStoreExtensionContainerURLForBaseURL:(id)l;
+ (id)galleryCacheURLForBaseURL:(id)l;
- (BOOL)_executeCleanupOfServerPosterIdentity:(id)identity error:(id *)error;
- (BOOL)_forceExtensionUpdate:(id)update;
- (BOOL)_stateLock_canPersistNewPosterConfiguration;
- (BOOL)_stateLock_cleanupAfterDeletedExtension:(id)extension error:(id *)error;
- (BOOL)_stateLock_deletePosterDescriptorsForExtensionBundleIdentifier:(id)identifier waitForPushToProactive:(BOOL)proactive error:(id *)error;
- (BOOL)_stateLock_executeDataStoreUpdateWithChanges:(id)changes diffs:(id *)diffs options:(unint64_t)options reason:(id)reason context:(id)context error:(id *)error;
- (BOOL)_stateLock_hasBeenUnlockedSinceBoot;
- (BOOL)_stateLock_ingestReloadedDescriptorsForExtensionBundleIdentifier:(id)identifier preReloadDescriptors:(id)descriptors postReloadDescriptors:(id)reloadDescriptors error:(id *)error;
- (BOOL)_stateLock_issueDescriptorUpdatedEventsForExtension:(id)extension preUpdate:(id)update postUpdate:(id)postUpdate error:(id *)error;
- (BOOL)_stateLock_processEvents:(id)events context:(id)context error:(id *)error;
- (BOOL)_stateLock_processEvents:(id)events roles:(id)roles context:(id)context error:(id *)error;
- (BOOL)_stateLock_setupEnvironmentForExtension:(id)extension wasUpdated:(BOOL *)updated error:(id *)error;
- (BOOL)_stateLock_updateDescriptorsFromStaticDescriptorsForExtensionBundleIdentifier:(id)identifier reason:(int64_t)reason error:(id *)error;
- (BOOL)_stateLock_updateEnvironmentForExtension:(id)extension fromExtension:(id)fromExtension error:(id *)error;
- (BOOL)_stateLock_updatePosterConfigurationsFromHostForRole:(id)role error:(id *)error;
- (BOOL)canPersistNewPosterConfiguration;
- (BOOL)deletePosterConfigurationsMatchingUUID:(id)d error:(id *)error;
- (BOOL)deletePosterDescriptorsForExtensionBundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)executeDataStoreUpdateWithChanges:(id)changes diffs:(id *)diffs options:(unint64_t)options reason:(id)reason error:(id *)error;
- (BOOL)markPosterConfigurationAsActive:(id)active forRole:(id)role;
- (BOOL)resetRole:(id)role error:(id *)error;
- (BOOL)togglePosterConfigurationHiddenMatchingUUID:(id)d error:(id *)error;
- (BOOL)updateDataStoreForIncomingActiveChargerIdentifierUpdate:(id)update error:(id *)error;
- (BOOL)updateDataStoreForIncomingAvailableFocusModeChange:(id)change error:(id *)error;
- (BOOL)updateDataStoreForIncomingFocusModeChange:(id)change error:(id *)error;
- (BOOL)updatePosterConfigurationsFromHostForRole:(id)role error:(id *)error;
- (BOOL)updateSelectedPosterUUID:(id)d role:(id)role from:(id)from error:(id *)error;
- (PBFGalleryConfiguration)currentGalleryConfiguration;
- (PBFPosterExtensionDataStore)initWithURL:(id)l runtimeAssertionProvider:(id)provider extensionProvider:(id)extensionProvider observer:(id)observer wasMigrationJustPerformed:(BOOL)performed applicationStateMonitor:(id)monitor error:(id *)error;
- (PRSwitcherConfiguration)switcherConfiguration;
- (id)_activeActivity;
- (id)_activityModeForFocusUUID:(id)d;
- (id)_buildRoleCoordinatorTransitionContext;
- (id)_buildRoleCoordinatorTransitionContextForActiveFocusMode:(id)mode chargerIdentifier:(id)identifier;
- (id)_buildRoleCoordinatorTransitionContextForActivity:(id)activity;
- (id)_buildRoleCoordinatorTransitionContextForChargerIdentifier:(id)identifier;
- (id)_buildRoleCoordinatorTransitionContextWithDesiredActivePosterUUID:(id)d role:(id)role;
- (id)_buildRoleCoordinatorTransitionNotingInitialUpdate;
- (id)_buildSwitcherConfigurationWithContext:(id)context;
- (id)_stateLock_buildSwitcherConfigurationWithContext:(id)context outMutated:(BOOL *)mutated;
- (id)_stateLock_currentGalleryConfiguration;
- (id)_stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier:(id)identifier reason:(id)reason powerLogReason:(int64_t)logReason postEnqueueGalleryUpdateOptions:(unint64_t)options sessionInfo:(id)info completion:(id)completion;
- (id)_stateLock_extensionBundleIdentifierForConfigurationUUID:(id)d;
- (id)_stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier:(id)identifier;
- (id)_stateLock_extensionStoreCoordinatorForPosterUUID:(id)d;
- (id)_stateLock_extensionStoreCoordinators;
- (id)_stateLock_fetchPosterConfigurationsSortedByUse:(BOOL)use forRole:(id)role;
- (id)_stateLock_fetchSuggestionDescriptorsForConfigurationMatchingUUID:(id)d error:(id *)error;
- (id)_stateLock_incomingPosterConfigurationForProviderIdentifier:(id)identifier posterDescriptorIdentifier:(id)descriptorIdentifier role:(id)role error:(id *)error;
- (id)_stateLock_knownPosterDescriptorsForExtensionBundleIdentifier:(id)identifier;
- (id)_stateLock_knownStaticPosterDescriptorsForExtensionBundleIdentifier:(id)identifier;
- (id)_stateLock_lastUseDatesForPosterCollection;
- (id)_stateLock_posterConfigurationPathForUUID:(id)d;
- (id)_stateLock_posterWithUUID:(id)d error:(id *)error;
- (id)_stateLock_prepareReloadConfigurationOperationForExtension:(id)extension path:(id)path locationInUse:(BOOL)use sessionInfo:(id)info powerLogReason:(int64_t)reason assetUpdater:(id)updater error:(id *)error;
- (id)_stateLock_switcherConfiguration;
- (id)_stateLock_updateDataStoreForSwitcherConfiguration:(id)configuration options:(unint64_t)options reason:(id)reason error:(id *)error;
- (id)_stateLock_updatedSuggestionDescriptorPathsForPosterUUID;
- (id)_stateLock_updatedSuggestionDescriptorsForPosterUUID;
- (id)_updatedSuggestionDescriptorsForPosterUUID;
- (id)activePosterConfigurationForRole:(id)role assocPoster:(id *)poster;
- (id)activePosterConfigurations;
- (id)activePosterForRole:(id)role assocPoster:(id *)poster error:(id *)error;
- (id)buildExtensionProvider;
- (id)buildPrewarmPlanWithIdentifier:(id)identifier refreshStrategy:(int64_t)strategy galleryUpdateOptions:(unint64_t)options powerLogReason:(int64_t)reason cleanupOldResources:(BOOL)resources prewarmDisplayContext:(id)context;
- (id)dataFreshnessForComponents:(id)components refreshStrategy:(int64_t)strategy;
- (id)exportPosterConfigurationMatchingUUID:(id)d error:(id *)error;
- (id)extensionStoreCoordinators;
- (id)fetchPosterConfigurationsSortedByUseForRole:(id)role;
- (id)fetchSuggestionDescriptorsForConfigurationMatchingUUID:(id)d error:(id *)error;
- (id)pbf_posterExtensionStoreCoordinatorForProviderIdentifier:(id)identifier error:(id *)error;
- (id)pbf_posterExtensionStoreCoordinatorsForRole:(id)role;
- (id)pbf_posterSnapshotCoordinatorForIdentity:(id)identity;
- (id)posterCollectionForRole:(id)role error:(id *)error;
- (id)posterConfigurationsForExtension:(id)extension;
- (id)posterConfigurationsForRole:(id)role error:(id *)error;
- (id)posterDescriptorsForExtensionBundleIdentifier:(id)identifier error:(id *)error;
- (id)posterWithUUID:(id)d error:(id *)error;
- (id)providerForExtensionIdentifier:(id)identifier;
- (id)providerForPath:(id)path;
- (id)selectedPosterForRole:(id)role error:(id *)error;
- (id)staticPosterDescriptorsForExtensionBundleIdentifier:(id)identifier error:(id *)error;
- (id)updateDataStoreForSwitcherConfiguration:(id)configuration options:(unint64_t)options reason:(id)reason error:(id *)error;
- (int64_t)maximumPosterConfigurationCount;
- (void)_finishUpdateExtensionUpdateWithOptions:(unint64_t)options updateExtensionSession:(id)session pushToProactiveError:(id)error didUpdateProactiveDescriptors:(BOOL)descriptors;
- (void)_ingestRefreshPosterConfiguration:(id)configuration completion:(id)completion;
- (void)_notifyObserversDidAddConfiguration:(id)configuration;
- (void)_notifyObserversDidDeleteConfiguration:(id)configuration;
- (void)_notifyObserversDidInitializeRoles:(id)roles suggestionDescriptors:(id)descriptors roleToPosterCollection:(id)collection;
- (void)_notifyObserversDidInitializeWithSwitcherConfiguration:(id)configuration withChanges:(BOOL)changes;
- (void)_notifyObserversDidUpdateActiveConfiguration:(id)configuration associatedConfiguration:(id)associatedConfiguration reason:(id)reason;
- (void)_notifyObserversDidUpdateActivePosterForRoles:(id)roles suggestionDescriptors:(id)descriptors;
- (void)_notifyObserversDidUpdateConfiguration:(id)configuration;
- (void)_notifyObserversDidUpdateConfiguration:(id)configuration homeScreenAssociatedConfiguration:(id)associatedConfiguration;
- (void)_notifyObserversDidUpdateConfigurations;
- (void)_notifyObserversDidUpdateExtensions;
- (void)_notifyObserversDidUpdateGalleryConfiguration:(id)configuration;
- (void)_notifyObserversDidUpdatePosterCollectionsForRoles:(id)roles;
- (void)_notifyObserversDidUpdatePosterDescriptorsForExtensionBundleIdentifier:(id)identifier;
- (void)_notifyObserversDidUpdateSelectedConfiguration:(id)configuration associatedConfiguration:(id)associatedConfiguration reason:(id)reason;
- (void)_notifyObserversDidUpdateSnapshotForConfiguration:(id)configuration;
- (void)_notifyObserversDidUpdateSuggestionDescriptors;
- (void)_notifyObserversDidUpdateSuggestionDescriptors:(id)descriptors forConfiguration:(id)configuration;
- (void)_notifyObserversDidUpdateSuggestionDescriptorsForPosterUUID:(id)d;
- (void)_notifyObserversDidUpdateSwitcherConfiguration:(id)configuration;
- (void)_setupDebugViewFactory;
- (void)_setupExtensionEnvironment;
- (void)_setupExtensionProvider;
- (void)_setupGalleryEnvironment;
- (void)_stateLock_applyUpdatesAndIngestConfiguration:(id)configuration toPath:(id)path powerLogReason:(int64_t)reason completion:(id)completion;
- (void)_stateLock_commitSuggestionsForConfigurationMatchingUUID:(id)d selectSuggestionDescriptorUUID:(id)iD completion:(id)completion;
- (void)_stateLock_convertPosterUpdatesToRoleCoordinatorChanges:(id)changes toPath:(id)path powerLogReason:(int64_t)reason completion:(id)completion;
- (void)_stateLock_createTemporaryPosterConfigurationForPosterMatchingUUID:(id)d andApplyUpdates:(id)updates completion:(id)completion;
- (void)_stateLock_duplicatePosterConfigurationMatchingUUID:(id)d completion:(id)completion;
- (void)_stateLock_enqueueRefreshPosterConfigurationMatchingUUID:(id)d sessionInfo:(id)info powerLogReason:(int64_t)reason completion:(id)completion;
- (void)_stateLock_enumerateConfigurationStoreCoordinators:(id)coordinators;
- (void)_stateLock_enumerateExtensionStoreCoordinators:(id)coordinators;
- (void)_stateLock_executeExtensionUpdate:(id)update;
- (void)_stateLock_fetchPosterSnapshotsWithClientRequest:(id)request completion:(id)completion;
- (void)_stateLock_findStoreCoordinatorsForUUID:(id)d extensionStoreCoordinator:(id *)coordinator configurationStoreCoordinator:(id *)storeCoordinator;
- (void)_stateLock_hasBeenUnlockedSinceBoot;
- (void)_stateLock_initialRoleCoordinatorSetup;
- (void)_stateLock_processIncomingPosterConfiguration:(id)configuration completion:(id)completion;
- (void)_stateLock_pushPosterConfigurationsToProactiveWithCompletion:(id)completion;
- (void)_stateLock_pushPosterDescriptorsToProactiveForReason:(id)reason force:(BOOL)force completion:(id)completion;
- (void)_stateLock_pushUpdateNotificationsForRole:(id)role diff:(id)diff previouslyActiveConfiguration:(id)configuration newActiveConfiguration:(id)activeConfiguration options:(unint64_t)options reason:(id)reason context:(id)context;
- (void)_stateLock_refreshSuggestionDescriptorsForConfigurationMatchingUUID:(id)d sessionInfo:(id)info completion:(id)completion;
- (void)_stateLock_setupPathAssertionsAndUpdateActivePosterFromDiff:(id)diff roleCoordinator:(id)coordinator context:(id)context;
- (void)_stateLock_setupRoleCoordinatorsIfNeeded;
- (void)_stateLock_updateExtensions:(id)extensions refreshDescriptors:(int64_t)descriptors powerLogReason:(int64_t)reason galleryUpdateOptions:(unint64_t)options queuedUpOperations:(id *)operations;
- (void)_stateLock_updateFocusModeForActivePosterChange;
- (void)_stateLock_updateGalleryWithSuggestedLayout:(id)layout descriptorsByExtensionBundleIdentifier:(id)identifier staticDescriptorsByExtensionBundleIdentifier:(id)bundleIdentifier;
- (void)_stateLock_updatePosterConfiguration:(id)configuration updates:(id)updates completion:(id)completion;
- (void)_stateLock_updatePosterConfigurationMatchingUUID:(id)d updates:(id)updates completion:(id)completion;
- (void)_transitionToNewSwitcherConfigurationIfNeededForReason:(id)reason error:(id *)error;
- (void)_updateActiveActivity:(id)activity active:(BOOL)active reason:(id)reason;
- (void)addObserver:(id)observer;
- (void)assertionManager:(id)manager identityIsNowMarkedAsInUse:(id)use;
- (void)assertionManager:(id)manager identityIsNowMarkedAsNOTInUse:(id)use;
- (void)cancel;
- (void)checkForGalleryUpdates;
- (void)commitSuggestionsForConfigurationMatchingUUID:(id)d selectSuggestionDescriptorUUID:(id)iD completion:(id)completion;
- (void)createPosterConfigurationForProviderIdentifier:(id)identifier posterDescriptorIdentifier:(id)descriptorIdentifier role:(id)role completion:(id)completion;
- (void)createTemporaryPosterConfigurationForPosterMatchingUUID:(id)d andApplyUpdates:(id)updates completion:(id)completion;
- (void)duplicatePosterConfigurationMatchingUUID:(id)d completion:(id)completion;
- (void)enqueueGalleryConfigurationUpdateWithOptions:(unint64_t)options powerLogReason:(int64_t)reason completion:(id)completion;
- (void)enumerateExtensionStoreCoordinators:(id)coordinators;
- (void)executeUpdate:(id)update hostContext:(id)context refreshStrategy:(int64_t)strategy galleryUpdateOptions:(unint64_t)options powerLogReason:(int64_t)reason cleanupOldResources:(BOOL)resources completion:(id)completion;
- (void)fetchCurrentGalleryConfiguration:(id)configuration;
- (void)fetchGallerySnapshotForConfiguration:(id)configuration context:(id)context completion:(id)completion;
- (void)fetchHomeScreenAssociatedPosterConfigurationForConfigurationUUID:(id)d completion:(id)completion;
- (void)fetchPosterSnapshotsWithClientRequest:(id)request completion:(id)completion;
- (void)fetchPosterSuggestionsForFocusModeWithUUID:(id)d context:(id)context completion:(id)completion;
- (void)fetchSwitcherSnapshotForConfiguration:(id)configuration context:(id)context completion:(id)completion;
- (void)galleryController:(id)controller didUpdateCurrentGalleryConfiguration:(id)configuration;
- (void)importPosterConfigurationFromArchiveData:(id)data completion:(id)completion;
- (void)ingestSnapshotCollection:(id)collection forPosterConfigurationUUID:(id)d error:(id *)error;
- (void)invalidate;
- (void)notePosterConfigurationUnderlyingModelDidChange:(id)change;
- (void)pbf_enumerateSnapshotCoordinators:(id)coordinators;
- (void)posterExtensionProvider:(id)provider updatedExtensionsFrom:(id)from to:(id)to;
- (void)prewarm:(id)prewarm completion:(id)completion;
- (void)processEvents:(id)events context:(id)context QOS:(unsigned int)s reason:(id)reason completion:(id)completion;
- (void)processIncomingPosterConfiguration:(id)configuration completion:(id)completion;
- (void)pushPosterDescriptorsToProactiveForReason:(id)reason completion:(id)completion;
- (void)pushToProactiveWithCompletion:(id)completion;
- (void)refreshPosterConfigurationMatchingUUID:(id)d sessionInfo:(id)info completion:(id)completion;
- (void)refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:(id)identifier extensionIdentifier:(id)extensionIdentifier completion:(id)completion;
- (void)refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:(id)identifier extensionIdentifier:(id)extensionIdentifier displayContexts:(id)contexts completion:(id)completion;
- (void)refreshSnapshotForPosterConfigurationMatchUUID:(id)d completion:(id)completion;
- (void)refreshSuggestionDescriptorsForConfigurationMatchingUUID:(id)d sessionInfo:(id)info completion:(id)completion;
- (void)reloadPosterDescriptorsForExtensionBundleIdentifier:(id)identifier sessionInfo:(id)info completion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)roleCoordinatorWasReset:(id)reset processInitialStateSetupEvents:(id *)events;
- (void)roleProcessor:(id)processor transactionFinished:(id)finished success:(BOOL)success results:(id)results error:(id)error;
- (void)setMaximumPosterConfigurationCount:(int64_t)count;
- (void)snapshotManager:(id)manager didUpdateSnapshotForPath:(id)path forDefinition:(id)definition;
- (void)updateExtensionsAndNotifyWhenComplete:(id)complete;
- (void)updateFocusModeForActivePosterChange;
- (void)updateGallery:(id)gallery completion:(id)completion;
- (void)updatePosterConfiguration:(id)configuration updates:(id)updates completion:(id)completion;
- (void)updatePosterConfigurationMatchingUUID:(id)d updates:(id)updates completion:(id)completion;
- (void)updateSnapshotsForGallery:(id)gallery intention:(unint64_t)intention powerLogReason:(int64_t)reason completion:(id)completion;
@end

@implementation PBFPosterExtensionDataStore

+ (id)galleryCacheURLForBaseURL:(id)l
{
  v4 = MEMORY[0x277CBEBC0];
  lCopy = l;
  v6 = [v4 pbf_galleryCacheURLForBaseURL:lCopy version:{objc_msgSend(self, "dataStoreVersion")}];

  return v6;
}

+ (id)dataStoreExtensionContainerURLForBaseURL:(id)l
{
  v4 = MEMORY[0x277CBEBC0];
  lCopy = l;
  v6 = [v4 pbf_dataStoreExtensionContainerURLForBaseURL:lCopy version:{objc_msgSend(self, "dataStoreVersion")}];

  return v6;
}

- (PBFPosterExtensionDataStore)initWithURL:(id)l runtimeAssertionProvider:(id)provider extensionProvider:(id)extensionProvider observer:(id)observer wasMigrationJustPerformed:(BOOL)performed applicationStateMonitor:(id)monitor error:(id *)error
{
  performedCopy = performed;
  v103 = *MEMORY[0x277D85DE8];
  lCopy = l;
  providerCopy = provider;
  extensionProviderCopy = extensionProvider;
  observerCopy = observer;
  monitorCopy = monitor;
  v19 = lCopy;
  NSClassFromString(&cfstr_Nsurl.isa);
  if (!v19)
  {
    [PBFPosterExtensionDataStore initWithURL:a2 runtimeAssertionProvider:? extensionProvider:? observer:? wasMigrationJustPerformed:? applicationStateMonitor:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionDataStore initWithURL:a2 runtimeAssertionProvider:? extensionProvider:? observer:? wasMigrationJustPerformed:? applicationStateMonitor:? error:?];
  }

  v20 = extensionProviderCopy;
  if (v20)
  {
    NSClassFromString(&cfstr_Pfposterextens.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PBFPosterExtensionDataStore initWithURL:a2 runtimeAssertionProvider:? extensionProvider:? observer:? wasMigrationJustPerformed:? applicationStateMonitor:? error:?];
    }
  }

  v21 = providerCopy;
  if (!v21)
  {
    [PBFPosterExtensionDataStore initWithURL:a2 runtimeAssertionProvider:? extensionProvider:? observer:? wasMigrationJustPerformed:? applicationStateMonitor:? error:?];
  }

  v22 = v21;
  if (([v21 conformsToProtocol:&unk_282D45FB0] & 1) == 0)
  {
    [PBFPosterExtensionDataStore initWithURL:a2 runtimeAssertionProvider:? extensionProvider:? observer:? wasMigrationJustPerformed:? applicationStateMonitor:? error:?];
  }

  v96.receiver = self;
  v96.super_class = PBFPosterExtensionDataStore;
  v23 = [(PBFPosterExtensionDataStore *)&v96 init];
  v24 = v23;
  if (!v23)
  {
    goto LABEL_42;
  }

  v91 = observerCopy;
  v25 = PBFLogDataStore(v23);
  v26 = os_signpost_id_generate(v25);

  v28 = PBFLogDataStore(v27);
  v29 = v28;
  v90 = v26 - 1;
  if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *buf = 138543618;
    v98 = v19;
    v99 = 1024;
    v100 = performedCopy;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v26, "PBFPosterExtensionDataStore Init", "URL: %{public}@ wasMigrationJustPerformed: %{BOOL}u", buf, 0x12u);
  }

  spid = v26;

  objc_storeStrong(&v24->_applicationStateMonitor, monitor);
  objc_storeStrong(&v24->_runtimeAssertionProvider, provider);
  objc_storeStrong(&v24->_extensionProvider, extensionProvider);
  v30 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
  invalidationFlag = v24->_invalidationFlag;
  v24->_invalidationFlag = v30;

  v32 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
  isPrewarmingFlag = v24->_isPrewarmingFlag;
  v24->_isPrewarmingFlag = v32;

  v34 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
  extensionsCurrentlyUpdatingFlag = v24->_extensionsCurrentlyUpdatingFlag;
  v24->_extensionsCurrentlyUpdatingFlag = v34;

  *&v24->_extensionProvidingLock._os_unfair_lock_opaque = 0;
  v24->_activePosterLock._os_unfair_lock_opaque = 0;
  Serial = BSDispatchQueueCreateSerial();
  notificationQueue = v24->_notificationQueue;
  v24->_notificationQueue = Serial;

  v38 = BSDispatchQueueCreateSerial();
  clientSnapshotRequestQueue = v24->_clientSnapshotRequestQueue;
  v24->_clientSnapshotRequestQueue = v38;

  v40 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:1];
  extensionsInputIsValidAtomicFlag = v24->_extensionsInputIsValidAtomicFlag;
  v24->_extensionsInputIsValidAtomicFlag = v40;

  v42 = objc_alloc_init(PBFPosterExtensionDataStoreAssertionManager);
  assertionManager = v24->_assertionManager;
  v24->_assertionManager = v42;

  [(PBFPosterExtensionDataStoreAssertionManager *)v24->_assertionManager addObserver:v24];
  v44 = objc_opt_new();
  stateLock_activePathAssertions = v24->_stateLock_activePathAssertions;
  v24->_stateLock_activePathAssertions = v44;

  v46 = objc_opt_new();
  activePosterLock_roleToActivePosterConfiguration = v24->_activePosterLock_roleToActivePosterConfiguration;
  v24->_activePosterLock_roleToActivePosterConfiguration = v46;

  v24->_stateLock_maximumPosterConfigurationCount = [objc_opt_class() defaultMaximumPosterConfigurationCount];
  if (performedCopy)
  {
    stateLock_wasMigrationJustPerformed = v24->_stateLock_wasMigrationJustPerformed;
    v24->_stateLock_wasMigrationJustPerformed = MEMORY[0x277CBEC38];
  }

  v49 = [[PBFPosterExtensionDataStoreMigrator alloc] initWithBaseURL:v19];
  if (![(PBFPosterExtensionDataStoreMigrator *)v49 isDataStoreUpToDateForCurrentVersion])
  {
    v95 = 0;
    v50 = [(PBFPosterExtensionDataStoreMigrator *)v49 migrateDataStoreToCurrentVersion:&v95];
    v51 = v95;
    IsFailure = PBFPosterExtensionDataStoreMigratorResultIsFailure(v50);
    if (IsFailure)
    {
      if (error && v51)
      {
        IsFailure = v51;
        *error = v51;
      }

      v53 = PBFLogDataStore(IsFailure);
      v54 = v53;
      observerCopy = v91;
      if (v90 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
      {
        *buf = 138543874;
        v98 = v19;
        v99 = 1024;
        v100 = performedCopy;
        v101 = 2114;
        v102 = v51;
        _os_signpost_emit_with_name_impl(&dword_21B526000, v54, OS_SIGNPOST_INTERVAL_END, spid, "PBFPosterExtensionDataStore Init", "URL: %{public}@ wasMigrationJustPerformed: %{BOOL}u -- could not setup data store: %{public}@", buf, 0x1Cu);
      }

LABEL_33:
      v60 = 0;
LABEL_43:
      v85 = monitorCopy;
      goto LABEL_44;
    }
  }

  v94 = 0;
  v55 = [(PBFPosterExtensionDataStoreMigrator *)v49 validateDataStoreIntegrity:&v94];
  v56 = v94;
  v57 = v56;
  if (!v55)
  {
    if (error && v56)
    {
      v56 = v56;
      *error = v57;
    }

    v58 = PBFLogDataStore(v56);
    v59 = v58;
    observerCopy = v91;
    if (v90 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
    {
      *buf = 138543874;
      v98 = v19;
      v99 = 1024;
      v100 = performedCopy;
      v101 = 2114;
      v102 = v57;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v59, OS_SIGNPOST_INTERVAL_END, spid, "PBFPosterExtensionDataStore Init", "URL: %{public}@ wasMigrationJustPerformed: %{BOOL}u -- could not validate data store integrity: %{public}@", buf, 0x1Cu);
    }

    goto LABEL_33;
  }

  if (MEMORY[0x21CEF7340]("[PBFPosterExtensionDataStore initWithURL:runtimeAssertionProvider:extensionProvider:observer:wasMigrationJustPerformed:applicationStateMonitor:error:]"))
  {
    [(PBFPosterExtensionDataStoreMigrator *)v49 markDataStoreArchivesAsPurgable];
  }

  else
  {
    [(PBFPosterExtensionDataStoreMigrator *)v49 removeArchivedDataStores];
  }

  [(PBFPosterExtensionDataStoreMigrator *)v49 removeDataStoresBeforeCurrentDataStoreVersion];

  v61 = [v19 copy];
  baseURL = v24->_baseURL;
  v24->_baseURL = v61;

  v63 = objc_opt_new();
  stateLock_descriptorsForExtensionBundleIdentifier = v24->_stateLock_descriptorsForExtensionBundleIdentifier;
  v24->_stateLock_descriptorsForExtensionBundleIdentifier = v63;

  v65 = objc_opt_new();
  stateLock_staticDescriptorsForExtensionBundleIdentifier = v24->_stateLock_staticDescriptorsForExtensionBundleIdentifier;
  v24->_stateLock_staticDescriptorsForExtensionBundleIdentifier = v65;

  dataStoreVersion = [objc_opt_class() dataStoreVersion];
  v68 = [MEMORY[0x277CBEBC0] pbf_dataStoreURLForBaseURL:v24->_baseURL version:dataStoreVersion];
  URL = v24->_URL;
  v24->_URL = v68;

  v70 = [MEMORY[0x277CBEBC0] pbf_dataStoreExtensionContainerURLForBaseURL:v24->_baseURL version:dataStoreVersion];
  extensionStoreCoordinatorContainerURL = v24->_extensionStoreCoordinatorContainerURL;
  v24->_extensionStoreCoordinatorContainerURL = v70;

  v72 = [MEMORY[0x277CBEBC0] pbf_galleryCacheURLForBaseURL:v24->_baseURL version:dataStoreVersion];
  galleryCacheURL = v24->_galleryCacheURL;
  v24->_galleryCacheURL = v72;

  v74 = [MEMORY[0x277CBEBC0] pbf_dataStoreSQLiteDatabaseURLForBaseURL:v24->_baseURL version:dataStoreVersion];
  v75 = [[PBFPosterExtensionDataStoreSQLiteDatabase alloc] initWithURL:v74 options:1 error:error];
  database = v24->_database;
  v24->_database = v75;

  if (v24->_database)
  {
    v78 = [[PBFPosterSnapshotManager alloc] initWithRuntimeAssertionProvider:v24->_runtimeAssertionProvider modelCoordinatorProvider:v24 applicationStateMonitor:v24->_applicationStateMonitor];
    snapshotManager = v24->_snapshotManager;
    v24->_snapshotManager = v78;

    [(PBFPosterSnapshotManager *)v24->_snapshotManager addObserver:v24];
    observerCopy = v91;
    if (v91)
    {
      [(PBFPosterExtensionDataStore *)v24 addObserver:v91];
    }

    v80 = objc_alloc_init(PBFComplicationSnapshotService);
    complicationSnapshotService = v24->_complicationSnapshotService;
    v24->_complicationSnapshotService = v80;

    [(PBFPosterExtensionDataStore *)v24 _setupExtensionEnvironment];
    [(PBFPosterExtensionDataStore *)v24 _setupExtensionProvider];
    [(PBFPosterExtensionDataStore *)v24 _setupGalleryEnvironment];
    v82 = objc_alloc_init(PBFProactivePosterSwitchNotifier);
    [(PBFPosterExtensionDataStore *)v24 addObserver:v82];
    v83 = PBFLogDataStore([(PBFPosterExtensionDataStore *)v24 _setupDebugViewFactory]);
    v84 = v83;
    if (v90 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v83))
    {
      *buf = 138543618;
      v98 = v19;
      v99 = 1024;
      v100 = performedCopy;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v84, OS_SIGNPOST_INTERVAL_END, spid, "initWithURL:runtimeAssertionProvider:extensionProvider:observer:wasMigrationJustPerformed:error", "URL: %{public}@ wasMigrationJustPerformed: %{BOOL}u", buf, 0x12u);
    }

LABEL_42:
    v60 = v24;
    goto LABEL_43;
  }

  v87 = PBFLogDataStore(v77);
  v88 = v87;
  observerCopy = v91;
  v85 = monitorCopy;
  if (v90 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v87))
  {
    *buf = 138543618;
    v98 = v19;
    v99 = 1024;
    v100 = performedCopy;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v88, OS_SIGNPOST_INTERVAL_END, spid, "PBFPosterExtensionDataStore Init", "URL: %{public}@ wasMigrationJustPerformed: %{BOOL}u -- failed to setup database", buf, 0x12u);
  }

  v60 = 0;
LABEL_44:

  return v60;
}

- (void)cancel
{
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    [(PBFPosterExtensionDataStorePrewarmHelper *)self->_prewarmer invalidate];
    [(PFPosterExtensionProvider *)self->_extensionProvider cancel];
    [(PBFPosterSnapshotManager *)self->_snapshotManager cancelAllRequests];
    database = self->_database;

    [(PBFPosterExtensionDataStoreSQLiteDatabase *)database cancel];
  }
}

- (void)invalidate
{
  v3 = [(BSAtomicFlag *)self->_invalidationFlag setFlag:1];
  if (v3)
  {
    v4 = PBFLogDataStore(v3);
    v5 = os_signpost_id_generate(v4);

    v7 = PBFLogDataStore(v6);
    v8 = v7;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "invalidate", "", buf, 2u);
    }

    v9 = self->_observers;
    notificationQueue = self->_notificationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__PBFPosterExtensionDataStore_invalidate__block_invoke;
    block[3] = &unk_2782C5888;
    v11 = v9;
    v33 = v11;
    dispatch_async(notificationQueue, block);
    observers = self->_observers;
    self->_observers = 0;

    [(PBFPosterExtensionDataStorePrewarmHelper *)self->_prewarmer invalidate];
    [(NSDictionary *)self->_roleToRoleCoordinator enumerateKeysAndObjectsUsingBlock:&__block_literal_global_0];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(BSInvalidatable *)selfCopy->_foregroundKeepDatabaseAliveAssertion invalidate];
    foregroundKeepDatabaseAliveAssertion = selfCopy->_foregroundKeepDatabaseAliveAssertion;
    selfCopy->_foregroundKeepDatabaseAliveAssertion = 0;

    objc_sync_exit(selfCopy);
    [(PBFPosterExtensionDataStoreSQLiteDatabase *)selfCopy->_database invalidate];
    database = selfCopy->_database;
    selfCopy->_database = 0;

    [(PFPosterExtensionProvider *)selfCopy->_extensionProvider removeObserver:selfCopy];
    [(PFPosterExtensionProvider *)selfCopy->_extensionProvider cancel];
    extensionProvider = selfCopy->_extensionProvider;
    selfCopy->_extensionProvider = 0;

    [(PBFPosterSnapshotManager *)selfCopy->_snapshotManager removeObserver:selfCopy];
    [(PBFPosterSnapshotManager *)selfCopy->_snapshotManager invalidate];
    os_unfair_lock_lock(&selfCopy->_stateLock);
    [(PBFGalleryController *)selfCopy->_galleryController removeObserver:selfCopy];
    [(PBFGalleryController *)selfCopy->_galleryController invalidate];
    [(PBFComplicationSnapshotService *)selfCopy->_complicationSnapshotService invalidate];
    [(PBFPosterExtensionDataStoreAssertionManager *)selfCopy->_assertionManager removeObserver:selfCopy];
    [(PBFPosterExtensionDataStoreAssertionManager *)selfCopy->_assertionManager invalidate];
    [(NSMutableDictionary *)selfCopy->_stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier enumerateKeysAndObjectsUsingBlock:&__block_literal_global_156];
    URL = selfCopy->_URL;
    selfCopy->_URL = 0;

    extensionStoreCoordinatorContainerURL = selfCopy->_extensionStoreCoordinatorContainerURL;
    selfCopy->_extensionStoreCoordinatorContainerURL = 0;

    galleryCacheURL = selfCopy->_galleryCacheURL;
    selfCopy->_galleryCacheURL = 0;

    snapshotManager = selfCopy->_snapshotManager;
    selfCopy->_snapshotManager = 0;

    complicationSnapshotService = selfCopy->_complicationSnapshotService;
    selfCopy->_complicationSnapshotService = 0;

    assertionManager = selfCopy->_assertionManager;
    selfCopy->_assertionManager = 0;

    stateLock_configuration = selfCopy->_stateLock_configuration;
    selfCopy->_stateLock_configuration = 0;

    stateLock_descriptorsForExtensionBundleIdentifier = selfCopy->_stateLock_descriptorsForExtensionBundleIdentifier;
    selfCopy->_stateLock_descriptorsForExtensionBundleIdentifier = 0;

    stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier = selfCopy->_stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier;
    selfCopy->_stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier = 0;

    stateLock_staticDescriptorsForExtensionBundleIdentifier = selfCopy->_stateLock_staticDescriptorsForExtensionBundleIdentifier;
    selfCopy->_stateLock_staticDescriptorsForExtensionBundleIdentifier = 0;

    stateLock_suggestedLayout = selfCopy->_stateLock_suggestedLayout;
    selfCopy->_stateLock_suggestedLayout = 0;

    stateLock_switcherConfiguration = selfCopy->_stateLock_switcherConfiguration;
    selfCopy->_stateLock_switcherConfiguration = 0;

    os_unfair_lock_unlock(&selfCopy->_stateLock);
    v30 = PBFLogDataStore(v29);
    v31 = v30;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v31, OS_SIGNPOST_INTERVAL_END, v5, "invalidate", "", buf, 2u);
    }
  }
}

- (void)_setupGalleryEnvironment
{
  v3 = PBFLogDataStore(self);
  v4 = os_signpost_id_generate(v3);

  v6 = PBFLogDataStore(v5);
  v7 = v6;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v4, "_setupGalleryEnvironment", "", buf, 2u);
  }

  v8 = objc_opt_new();
  path = [(NSURL *)self->_galleryCacheURL path];
  v10 = [v8 fileExistsAtPath:path];

  if (v10)
  {
    goto LABEL_7;
  }

  galleryCacheURL = self->_galleryCacheURL;
  v12 = PFFileProtectionNoneAttributes();
  v21 = 0;
  v13 = [v8 createDirectoryAtURL:galleryCacheURL withIntermediateDirectories:1 attributes:v12 error:&v21];
  v14 = v21;

  if (v13)
  {

LABEL_7:
    if (!self->_galleryController)
    {
      v16 = [[PBFGalleryController alloc] initWithGalleryCacheURL:self->_galleryCacheURL runtimeAssertionProvider:self->_runtimeAssertionProvider];
      galleryController = self->_galleryController;
      self->_galleryController = v16;

      [(PBFGalleryController *)self->_galleryController addObserver:self];
    }

    v18 = PBFLogDataStore([(PBFPosterExtensionDataStore *)self currentGalleryConfiguration]);
    v14 = v18;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *v20 = 0;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v14, OS_SIGNPOST_INTERVAL_END, v4, "_setupGalleryEnvironment", "", v20, 2u);
    }

    goto LABEL_15;
  }

  v19 = PBFLogPosterContents(v15);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [PBFPosterExtensionDataStore _setupGalleryEnvironment];
  }

LABEL_15:
}

- (void)_setupDebugViewFactory
{
  galleryControllerState = [(PBFGalleryController *)self->_galleryController galleryControllerState];
  [_TtC11PosterBoard28PBFDebugViewFactoryUtilities setupFactoryWithGalleryControllerState:galleryControllerState];
}

- (id)dataFreshnessForComponents:(id)components refreshStrategy:(int64_t)strategy
{
  v34 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  v22 = objc_alloc_init(PBFMutableDataFreshnessState);
  date = [MEMORY[0x277CBEAA8] date];
  os_unfair_lock_lock(&self->_stateLock);
  extensionForIdentifier = [(PFPosterExtensionProvider *)self->_extensionProvider extensionForIdentifier];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = componentsCopy;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        if ([v11 isEqualToString:@"PBFDataComponentGallery"])
        {
          v12 = [PBFDataComponentObjectEntity alloc];
          galleryController = self->_galleryController;
          v14 = [PBFDataRefreshContext alloc];
          lastUpdateDate = [(PBFGalleryController *)self->_galleryController lastUpdateDate];
          v16 = [(PBFDataRefreshContext *)v14 initWithComponent:@"PBFDataComponentGallery" now:date lastRefreshDate:lastUpdateDate userInfo:0];
          v17 = [(PBFDataComponentObjectEntity *)v12 initWithComponent:@"PBFDataComponentGallery" object:galleryController context:v16];

          [(PBFMutableDataFreshnessState *)v22 track:v17];
LABEL_12:

          continue;
        }

        if (([v11 isEqualToString:@"PBFDataComponentSnapshots"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"PBFDataComponentStaticDescriptors") & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"PBFDataComponentDynamicDescriptors"))
        {
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __74__PBFPosterExtensionDataStore_dataFreshnessForComponents_refreshStrategy___block_invoke;
          v23[3] = &unk_2782C5980;
          v24 = extensionForIdentifier;
          v25 = v11;
          v26 = date;
          strategyCopy = strategy;
          v27 = v22;
          [(PBFPosterExtensionDataStore *)self _stateLock_enumerateExtensionStoreCoordinators:v23];

          v17 = v24;
          goto LABEL_12;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_stateLock);

  return v22;
}

void __74__PBFPosterExtensionDataStore_dataFreshnessForComponents_refreshStrategy___block_invoke(uint64_t a1, void *a2)
{
  v20 = a2;
  v3 = [v20 extensionIdentifier];
  v4 = [*(a1 + 32) objectForKey:v3];
  if (v4)
  {
    if ([*(a1 + 40) isEqualToString:@"PBFDataComponentSnapshots"])
    {
      v5 = [PBFDataRefreshContext snapshotRefreshContextForExtension:v4 now:*(a1 + 48) refreshStrategy:*(a1 + 64)];
      goto LABEL_11;
    }

    v6 = [v4 posterExtensionInfoPlist];
    v7 = [v6 pbf_supportsGallery];

    if ((v7 & 1) != 0 || ([MEMORY[0x277CBEBD0] standardUserDefaults], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "stringArrayForKey:", @"ShowSamplePoster"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "containsObject:", v3), v9, v8, v10))
    {
      if ([*(a1 + 40) isEqualToString:@"PBFDataComponentStaticDescriptors"])
      {
        v11 = [v4 posterExtensionInfoPlist];
        v12 = [v11 pbf_staticDescriptorIdentifiers];
        if ([v12 count])
        {

LABEL_10:
          v5 = [PBFDataRefreshContext staticDescriptorsRefreshContextForNow:*(a1 + 48) extension:v4];
LABEL_11:
          v15 = v5;
          if (!v5)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }

        v13 = [v20 staticDescriptorStoreCoordinatorsWithError:0];
        v14 = [v13 count];

        if (v14)
        {
          goto LABEL_10;
        }
      }

      if ([*(a1 + 40) isEqualToString:@"PBFDataComponentDynamicDescriptors"])
      {
        v18 = *(a1 + 48);
        v19 = [v20 lastRefreshDescriptorDate];
        v15 = [PBFDataRefreshContext dynamicDescriptorsRefreshContextForNow:v18 extension:v4 lastRefreshDate:v19 refreshStrategy:*(a1 + 64)];

        if (v15)
        {
LABEL_12:
          v16 = *(a1 + 56);
          v17 = [[PBFDataComponentObjectEntity alloc] initWithComponent:*(a1 + 40) object:v20 context:v15];
          [v16 track:v17];
        }
      }
    }
  }

LABEL_13:
}

- (void)prewarm:(id)prewarm completion:(id)completion
{
  completionCopy = completion;
  prewarmCopy = prewarm;
  os_unfair_lock_lock(&self->_stateLock);
  if ([(PBFPosterExtensionDataStore *)self _stateLock_hasBeenUnlockedSinceBoot]&& (v7 = self->_stateLock_wasMigrationJustPerformed) != 0 && [(NSNumber *)v7 BOOLValue])
  {
    stateLock_wasMigrationJustPerformed = self->_stateLock_wasMigrationJustPerformed;
    self->_stateLock_wasMigrationJustPerformed = 0;

    v9 = 2;
    v10 = 3;
  }

  else
  {
    v9 = 10;
    v10 = 1;
  }

  os_unfair_lock_unlock(&self->_stateLock);
  [(PBFPosterExtensionDataStore *)self executeUpdate:@"prewarm" hostContext:prewarmCopy refreshStrategy:v10 galleryUpdateOptions:v9 powerLogReason:1 cleanupOldResources:0 completion:completionCopy];
}

- (void)executeUpdate:(id)update hostContext:(id)context refreshStrategy:(int64_t)strategy galleryUpdateOptions:(unint64_t)options powerLogReason:(int64_t)reason cleanupOldResources:(BOOL)resources completion:(id)completion
{
  resourcesCopy = resources;
  v115 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  contextCopy = context;
  completionCopy = completion;
  date = [MEMORY[0x277CBEAA8] date];
  v15 = PBFLogPrewarm(date);
  spid = os_signpost_id_generate(v15);

  v17 = PBFLogPrewarm(v16);
  v18 = v17;
  if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    v19 = PBFDescriptorRefreshStrategyToString(strategy);
    *buf = 138544130;
    v108 = updateCopy;
    v109 = 2114;
    v110 = v19;
    v111 = 2048;
    optionsCopy = options;
    v113 = 2048;
    reasonCopy = reason;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v18, OS_SIGNPOST_INTERVAL_BEGIN, spid, "executeUpdate:hostContext:refreshStrategy:galleryUpdateOptions:powerLogReason:completion:", "updateDescription: %{public}@ refreshStrategy: %{public}@ galleryUpdateOptions: %lu powerLogReason: %lu", buf, 0x2Au);
  }

  v20 = objc_opt_new();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __140__PBFPosterExtensionDataStore_executeUpdate_hostContext_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_completion___block_invoke;
  aBlock[3] = &unk_2782C59A8;
  v74 = v20;
  v94 = v74;
  v76 = completionCopy;
  v97 = v76;
  v73 = date;
  v95 = v73;
  v79 = updateCopy;
  v96 = v79;
  strategyCopy = strategy;
  optionsCopy2 = options;
  v21 = _Block_copy(aBlock);
  if ((PBFCurrentDeviceClassSupported(v21) & 1) == 0)
  {
    v25 = MEMORY[0x277CCA9B8];
    v105 = *MEMORY[0x277CCA470];
    v106 = @"This platform is not currently supported.";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
    v24 = [v25 pbf_generalErrorWithCode:7 userInfo:v23];
    v21[2](v21, v24);
    goto LABEL_37;
  }

  if (![MEMORY[0x277CBEBD0] pbf_keynoteModeEnabled])
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v23 = [uUIDString substringToIndex:7];

    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v23, v79];
    v28 = MEMORY[0x277CCACA8];
    v29 = PBFDescriptorRefreshStrategyToString(strategy);
    v30 = NSStringFromPBFPosterExtensionDataStoreGalleryConfigurationOptions(options);
    v31 = NSStringFromPBFPowerLogReason(reason);
    v67 = [v28 stringWithFormat:@"(%@)-(%@)-(%@)-(%@)", v24, v29, v30, v31];

    v102[0] = @"PBFDataComponentStaticDescriptors";
    v102[1] = @"PBFDataComponentDynamicDescriptors";
    v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:2];
    allKeys = [(NSDictionary *)self->_roleToRoleCoordinator allKeys];
    if ([allKeys bs_containsObjectPassingTest:&__block_literal_global_213])
    {
      v32 = [v71 arrayByAddingObject:@"PBFDataComponentGallery"];

      if ([allKeys containsObject:*MEMORY[0x277D3EBC0]])
      {
        v71 = [v32 arrayByAddingObject:@"PBFDataComponentSnapshots"];
      }

      else
      {
        v71 = v32;
      }
    }

    v69 = [(PBFPosterExtensionDataStore *)self dataFreshnessForComponents:v71 refreshStrategy:strategy];
    v33 = PBFLogPrewarm(v69);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v108 = v24;
      _os_log_impl(&dword_21B526000, v33, OS_LOG_TYPE_DEFAULT, "(%{public}@) Checking data freshness...", buf, 0xCu);
    }

    v35 = PBFLogPrewarm(v34);
    [v69 dumpFreshnessStateToLogCategory:v35 type:16];

    isFresh = [v69 isFresh];
    if (isFresh)
    {
      v37 = PBFLogPrewarm(isFresh);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v108 = v24;
        _os_log_impl(&dword_21B526000, v37, OS_LOG_TYPE_DEFAULT, "(%{public}@) prewarm bailed; data is still fresh", buf, 0xCu);
      }

      v21[2](v21, 0);
      goto LABEL_36;
    }

    os_unfair_lock_lock(&self->_stateLock);
    _stateLock_hasBeenUnlockedSinceBoot = [(PBFPosterExtensionDataStore *)self _stateLock_hasBeenUnlockedSinceBoot];
    os_unfair_lock_unlock(&self->_stateLock);
    v40 = PBFLogPrewarm(v39);
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
    if (!_stateLock_hasBeenUnlockedSinceBoot)
    {
      if (v41)
      {
        *buf = 138543362;
        v108 = v24;
        _os_log_impl(&dword_21B526000, v40, OS_LOG_TYPE_DEFAULT, "(%{public}@) prewarm bailed; keybag locked", buf, 0xCu);
      }

      v58 = MEMORY[0x277CCA9B8];
      v100 = *MEMORY[0x277CCA470];
      v101 = @"Keybag is locked";
      v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
      v60 = [v58 pbf_generalErrorWithCode:7 userInfo:v59];
      v21[2](v21, v60);

      goto LABEL_36;
    }

    if (v41)
    {
      *buf = 138543362;
      v108 = v24;
      _os_log_impl(&dword_21B526000, v40, OS_LOG_TYPE_DEFAULT, "(%{public}@) Checking if prewarm already in progress...", buf, 0xCu);
    }

    objc_initWeak(&location, self);
    v42 = [(BSAtomicFlag *)self->_isPrewarmingFlag setFlag:1];
    if (v42)
    {
      v43 = PBFLogPrewarm(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v108 = v24;
        v109 = 2114;
        v110 = v67;
        _os_log_impl(&dword_21B526000, v43, OS_LOG_TYPE_DEFAULT, "(%{public}@) no prewarm in progress; beginning prewarm: %{public}@", buf, 0x16u);
      }

      runtimeAssertionProvider = self->_runtimeAssertionProvider;
      v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"Prewarm session '%@/%@' initiated from XPC", v23, v79];
      currentProcess = [MEMORY[0x277D47008] currentProcess];
      v90[0] = MEMORY[0x277D85DD0];
      v90[1] = 3221225472;
      v90[2] = __140__PBFPosterExtensionDataStore_executeUpdate_hostContext_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_completion___block_invoke_222;
      v90[3] = &unk_2782C59F0;
      v47 = v24;
      v91 = v47;
      v66 = [(PBFRuntimeAssertionProviding *)runtimeAssertionProvider acquirePrewarmRuntimeAssertionForReason:v45 target:currentProcess invalidationHandler:v90];

      v48 = +[PBFGenericDisplayContext mainScreen];
      primaryDisplayInfo = [contextCopy primaryDisplayInfo];

      if (primaryDisplayInfo)
      {
        primaryDisplayInfo2 = [contextCopy primaryDisplayInfo];
        v51 = [v48 displayContextWithUpdatedInterfaceOrientation:{objc_msgSend(primaryDisplayInfo2, "interfaceOrientation")}];

        v48 = [v51 displayContextWithUpdatedUserInterfaceStyle:{objc_msgSend(contextCopy, "userInterfaceStyle")}];
      }

      v52 = [(PBFPosterExtensionDataStore *)self buildPrewarmPlanWithIdentifier:v47 refreshStrategy:strategy galleryUpdateOptions:options powerLogReason:reason cleanupOldResources:resourcesCopy prewarmDisplayContext:v48];
      v53 = [[PBFPosterExtensionDataStorePrewarmHelper alloc] initWithPlan:v52];
      prewarmer = self->_prewarmer;
      self->_prewarmer = v53;

      v55 = self->_prewarmer;
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __140__PBFPosterExtensionDataStore_executeUpdate_hostContext_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_completion___block_invoke_225;
      v84[3] = &unk_2782C5A18;
      v85 = v47;
      objc_copyWeak(v89, &location);
      v56 = v66;
      v86 = v56;
      v89[1] = spid;
      v87 = v79;
      v89[2] = strategy;
      v89[3] = options;
      v89[4] = reason;
      v88 = v21;
      [(PBFPosterExtensionDataStorePrewarmHelper *)v55 executePrewarmWithExecutor:0 completion:v84];

      objc_destroyWeak(v89);
      v57 = v91;
    }

    else
    {
      if (!v76)
      {
LABEL_35:
        objc_destroyWeak(&location);
LABEL_36:

        goto LABEL_37;
      }

      plan = [(PBFPosterExtensionDataStorePrewarmHelper *)self->_prewarmer plan];
      identifier = [plan identifier];

      v64 = PBFLogPrewarm(v63);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v108 = v24;
        v109 = 2114;
        v110 = identifier;
        _os_log_impl(&dword_21B526000, v64, OS_LOG_TYPE_DEFAULT, "(%{public}@) prewarm already in progress (%{public}@) -- tacking on completion handler and moving on with our lives.", buf, 0x16u);
      }

      v65 = self->_prewarmer;
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __140__PBFPosterExtensionDataStore_executeUpdate_hostContext_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_completion___block_invoke_230;
      v80[3] = &unk_2782C5A40;
      v81 = v24;
      v57 = identifier;
      v82 = v57;
      v83 = v76;
      [(PBFPosterExtensionDataStorePrewarmHelper *)v65 appendCompletionObserver:v80];
    }

    goto LABEL_35;
  }

  v22 = MEMORY[0x277CCA9B8];
  v103 = *MEMORY[0x277CCA470];
  v104 = @"Keynote mode is enabled; we aren't going to prewarm anything.  We are already warm enough, thank you.";
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
  v24 = [v22 pbf_generalErrorWithCode:6 userInfo:v23];
  v21[2](v21, v24);
LABEL_37:
}

void __140__PBFPosterExtensionDataStore_executeUpdate_hostContext_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_completion___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) signal])
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }

    v5 = [MEMORY[0x277CBEAA8] date];
    [v5 timeIntervalSinceDate:*(a1 + 40)];
    v7 = v6;

    v8 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v8 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v9 = [v8 stringFromDate:*(a1 + 40)];
    if (v3)
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = [v3 localizedDescription];
      v12 = [v10 stringWithFormat:@"ERROR: %@", v11];
    }

    else
    {
      v12 = @"SUCCESS";
    }

    v13 = MEMORY[0x277CCACA8];
    v14 = *(a1 + 48);
    v15 = PBFDescriptorRefreshStrategyToString(*(a1 + 64));
    v16 = NSStringFromPBFPosterExtensionDataStoreGalleryConfigurationOptions(*(a1 + 72));
    v17 = [v13 stringWithFormat:@"%@ | %@ | %.2fs | %@ | %@ | %@", v9, v14, v7, v15, v16, v12];

    v18 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
    v19 = [v18 arrayForKey:@"PBFExecuteUpdateHistory"];
    v20 = [v19 mutableCopy];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = [MEMORY[0x277CBEB18] array];
    }

    v23 = v22;

    v24 = PBFLogPrewarm([v23 addObject:v17]);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = v17;
      _os_log_impl(&dword_21B526000, v24, OS_LOG_TYPE_DEFAULT, "Prewarm log update: %{public}@", buf, 0xCu);
    }

    if ([v23 count] >= 6)
    {
      do
      {
        [v23 removeObjectAtIndex:0];
      }

      while ([v23 count] > 5);
    }

    v25 = [v23 copy];
    [v18 setObject:v25 forKey:@"PBFExecuteUpdateHistory"];
  }
}

void __140__PBFPosterExtensionDataStore_executeUpdate_hostContext_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_completion___block_invoke_222(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = PBFLogPrewarm(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __140__PBFPosterExtensionDataStore_executeUpdate_hostContext_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_completion___block_invoke_222_cold_1();
  }
}

void __140__PBFPosterExtensionDataStore_executeUpdate_hostContext_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_completion___block_invoke_225(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    if (!v6)
    {
      v10 = PBFLogPrewarm(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __140__PBFPosterExtensionDataStore_executeUpdate_hostContext_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_completion___block_invoke_225_cold_3();
      }

      goto LABEL_9;
    }

LABEL_7:
    v10 = PBFLogPrewarm(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __140__PBFPosterExtensionDataStore_executeUpdate_hostContext_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_completion___block_invoke_225_cold_2();
    }

LABEL_9:

    goto LABEL_10;
  }

  v9 = PBFLogPrewarm(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __140__PBFPosterExtensionDataStore_executeUpdate_hostContext_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_completion___block_invoke_225_cold_1();
  }

  if (v6)
  {
    goto LABEL_7;
  }

LABEL_10:
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    (*(*(a1 + 56) + 16))();
    [WeakRetained[30] invalidate];
    v12 = WeakRetained[30];
    WeakRetained[30] = 0;

    [WeakRetained[28] setFlag:0];
    v13 = PBFLogPrewarm([*(a1 + 40) invalidate]);
    v14 = v13;
    v15 = *(a1 + 72);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v16 = *(a1 + 48);
      v17 = PBFDescriptorRefreshStrategyToString(*(a1 + 80));
      v18 = *(a1 + 88);
      v19 = *(a1 + 96);
      *buf = 138544130;
      v33 = v16;
      v34 = 2114;
      v35 = v17;
      v36 = 2048;
      v37 = v18;
      v38 = 2048;
      v39 = v19;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v14, OS_SIGNPOST_INTERVAL_END, v15, "executeUpdate:hostContext:refreshStrategy:galleryUpdateOptions:powerLogReason:completion:", "updateDescription: %{public}@ refreshStrategy: %{public}@ galleryUpdateOptions: %lu powerLogReason: %lu", buf, 0x2Au);
    }
  }

  else
  {
    v20 = PBFLogDataStore([*(a1 + 40) invalidate]);
    v21 = v20;
    v22 = *(a1 + 72);
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      v23 = *(a1 + 48);
      v24 = PBFDescriptorRefreshStrategyToString(*(a1 + 80));
      v25 = *(a1 + 88);
      v26 = *(a1 + 96);
      *buf = 138544130;
      v33 = v23;
      v34 = 2114;
      v35 = v24;
      v36 = 2048;
      v37 = v25;
      v38 = 2048;
      v39 = v26;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v21, OS_SIGNPOST_INTERVAL_END, v22, "executeUpdate:refreshStrategy:galleryUpdateOptions:powerLogReason:completion:", "updateDescription: %{public}@ refreshStrategy: %{public}@ galleryUpdateOptions: %lu powerLogReason: %lu; data store invalidated before prewarm finished", buf, 0x2Au);
    }

    v27 = *(a1 + 56);
    v28 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA470];
    v31 = @"data store was invalidated.";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v29 = [v28 pbf_generalErrorWithCode:3 userInfo:v14];
    (*(v27 + 16))(v27, v29);
  }
}

void __140__PBFPosterExtensionDataStore_executeUpdate_hostContext_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_completion___block_invoke_230(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = PBFLogPrewarm(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = 138543874;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@->%{public}@) appending prewarm finished w/ error: %{public}@", &v9, 0x20u);
  }

  (*(a1[6] + 16))();
}

- (void)setMaximumPosterConfigurationCount:(int64_t)count
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_stateLock_maximumPosterConfigurationCount != count)
  {
    self->_stateLock_maximumPosterConfigurationCount = count;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    keyEnumerator = [(NSDictionary *)self->_roleToRoleCoordinator keyEnumerator];
    v6 = [keyEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v10 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v9)];
          [v10 setMaximumNumberOfPosters:count];

          ++v9;
        }

        while (v7 != v9);
        v7 = [keyEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (int64_t)maximumPosterConfigurationCount
{
  os_unfair_lock_lock(&self->_stateLock);
  _stateLock_maximumPosterConfigurationCount = [(PBFPosterExtensionDataStore *)self _stateLock_maximumPosterConfigurationCount];
  os_unfair_lock_unlock(&self->_stateLock);
  return _stateLock_maximumPosterConfigurationCount;
}

- (void)updateExtensionsAndNotifyWhenComplete:(id)complete
{
  completeCopy = complete;
  os_unfair_lock_lock(&self->_stateLock);
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0 || ![(PFPosterExtensionProvider *)self->_extensionProvider reloadExtensions])
  {
    os_unfair_lock_unlock(&self->_stateLock);
    v9 = completeCopy;
    if (!completeCopy)
    {
      goto LABEL_9;
    }

    completeCopy[2](completeCopy);
  }

  else
  {
    stateLock_updateExtensionCompletionBlocks = self->_stateLock_updateExtensionCompletionBlocks;
    if (!stateLock_updateExtensionCompletionBlocks)
    {
      v5 = objc_opt_new();
      v6 = self->_stateLock_updateExtensionCompletionBlocks;
      self->_stateLock_updateExtensionCompletionBlocks = v5;

      stateLock_updateExtensionCompletionBlocks = self->_stateLock_updateExtensionCompletionBlocks;
    }

    v7 = [completeCopy copy];
    v8 = _Block_copy(v7);
    [(NSMutableArray *)stateLock_updateExtensionCompletionBlocks addObject:v8];

    os_unfair_lock_unlock(&self->_stateLock);
  }

  v9 = completeCopy;
LABEL_9:
}

- (BOOL)updatePosterConfigurationsFromHostForRole:(id)role error:(id *)error
{
  roleCopy = role;
  os_unfair_lock_lock(&self->_stateLock);
  LOBYTE(error) = [(PBFPosterExtensionDataStore *)self _stateLock_updatePosterConfigurationsFromHostForRole:roleCopy error:error];

  os_unfair_lock_unlock(&self->_stateLock);
  return error;
}

- (BOOL)_stateLock_updatePosterConfigurationsFromHostForRole:(id)role error:(id *)error
{
  v126[1] = *MEMORY[0x277D85DE8];
  roleCopy = role;
  v7 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKeyedSubscript:roleCopy];
  v8 = v7;
  if (v7)
  {
    errorCopy = error;
    v84 = v7;
    selfCopy = self;
    v88 = roleCopy;
    v9 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKeyedSubscript:roleCopy];
    posterCollection = [v9 posterCollection];

    v92 = objc_opt_new();
    v91 = objc_opt_new();
    v90 = objc_opt_new();
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v83 = posterCollection;
    orderedPosters = [posterCollection orderedPosters];
    v12 = [orderedPosters countByEnumeratingWithState:&v108 objects:v124 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v109;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v109 != v14)
          {
            objc_enumerationMutation(orderedPosters);
          }

          v16 = *(*(&v108 + 1) + 8 * i);
          descriptorIdentifier = [v16 descriptorIdentifier];
          if (descriptorIdentifier)
          {
            pbf_posterProvider = [v16 pbf_posterProvider];
            if (pbf_posterProvider)
            {
              v19 = MEMORY[0x277D3E958];
              pbf_posterUUID = [v16 pbf_posterUUID];
              v21 = [v19 entryWithExtensionID:pbf_posterProvider descriptorID:descriptorIdentifier posterUUID:pbf_posterUUID];

              [v92 addObject:v21];
              pbf_posterUUID2 = [v16 pbf_posterUUID];
              [v91 addObject:pbf_posterUUID2];

              [v90 setObject:v16 forKey:v21];
            }

            else
            {
              v21 = PBFLogHostConfiguration(0);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                [(PBFPosterExtensionDataStore *)&v104 _stateLock_updatePosterConfigurationsFromHostForRole:v105 error:v21];
              }
            }
          }

          else
          {
            pbf_posterProvider = PBFLogHostConfiguration(0);
            if (os_log_type_enabled(pbf_posterProvider, OS_LOG_TYPE_ERROR))
            {
              [(PBFPosterExtensionDataStore *)&v106 _stateLock_updatePosterConfigurationsFromHostForRole:v107 error:pbf_posterProvider];
            }
          }
        }

        v13 = [orderedPosters countByEnumeratingWithState:&v108 objects:v124 count:16];
      }

      while (v13);
    }

    v23 = [MEMORY[0x277D3E950] hostConfigurationWithConfigurationEntries:v92];
    v24 = PBFLogDataStore(v23);
    roleCopy = v88;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v116 = v88;
      v117 = 2114;
      v118 = v23;
      _os_log_impl(&dword_21B526000, v24, OS_LOG_TYPE_DEFAULT, "Getting updated poster configurations for role %{public}@; initial posters: %{public}@", buf, 0x16u);
    }

    mEMORY[0x277D3EF28] = [MEMORY[0x277D3EF28] sharedHostConfigurationManager];
    v103 = 0;
    v26 = [mEMORY[0x277D3EF28] updatedSwitcherConfigurationForRole:v88 currentSwitcherConfiguration:v23 error:&v103];
    v27 = v103;
    v28 = PBFLogDataStore(v27);
    v29 = v28;
    v30 = v83;
    v8 = v84;
    if (v26)
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v116 = v88;
        v117 = 2114;
        v118 = v26;
        _os_log_impl(&dword_21B526000, v29, OS_LOG_TYPE_DEFAULT, "Got updated host configuration for role %{public}@: %{public}@", buf, 0x16u);
      }

      entries = [(__CFString *)v26 entries];

      if (entries)
      {
        if (([(__CFString *)v26 isEqual:v23]& 1) != 0)
        {
          v81 = v27;
          v33 = 1;
          goto LABEL_73;
        }

        v79 = mEMORY[0x277D3EF28];
        v80 = v23;
        context = objc_autoreleasePoolPush();
        v85 = objc_opt_new();
        v41 = objc_opt_new();
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        v78 = v26;
        obj = [(__CFString *)v26 entries];
        v42 = [obj countByEnumeratingWithState:&v99 objects:v121 count:16];
        if (!v42)
        {
          goto LABEL_56;
        }

        v43 = v42;
        v44 = *v100;
        v86 = *v100;
        while (1)
        {
          v45 = 0;
          do
          {
            if (*v100 != v44)
            {
              objc_enumerationMutation(obj);
            }

            v46 = *(*(&v99 + 1) + 8 * v45);
            posterUUID = [(__CFString *)v46 posterUUID];
            if (posterUUID)
            {
              destinationUUID = posterUUID;
LABEL_49:
              [v41 addObject:destinationUUID];
              goto LABEL_50;
            }

            v49 = v41;
            extensionID = [(__CFString *)v46 extensionID];
            descriptorID = [(__CFString *)v46 descriptorID];
            v98 = v27;
            v52 = [(PBFPosterExtensionDataStore *)selfCopy _stateLock_incomingPosterConfigurationForProviderIdentifier:extensionID posterDescriptorIdentifier:descriptorID role:v88 error:&v98];
            v53 = v98;
            v54 = v27;
            v27 = v53;

            if (v52)
            {
              v56 = [PBFPosterRoleCoordinatorChange addPosterToRole:v88 incomingPoster:v52];
              [v85 addObject:v56];
              destinationUUID = [v52 destinationUUID];

              v41 = v49;
              v44 = v86;
              goto LABEL_49;
            }

            destinationUUID = PBFLogDataStore(v55);
            if (os_log_type_enabled(destinationUUID, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              v116 = v46;
              v117 = 2114;
              v118 = v88;
              v119 = 2114;
              v120 = v27;
              _os_log_error_impl(&dword_21B526000, destinationUUID, OS_LOG_TYPE_ERROR, "Failed to create new poster configuration %{public}@ for role %{public}@: %{public}@", buf, 0x20u);
            }

            v41 = v49;
            v44 = v86;
LABEL_50:

            ++v45;
          }

          while (v43 != v45);
          v57 = [obj countByEnumeratingWithState:&v99 objects:v121 count:16];
          v43 = v57;
          if (!v57)
          {
LABEL_56:
            v81 = v27;

            v58 = [v91 mutableCopy];
            [v58 minusOrderedSet:v41];
            v96 = 0u;
            v97 = 0u;
            v94 = 0u;
            v95 = 0u;
            v59 = v58;
            v60 = [v59 countByEnumeratingWithState:&v94 objects:v114 count:16];
            roleCopy = v88;
            if (v60)
            {
              v61 = v60;
              v62 = *v95;
              do
              {
                for (j = 0; j != v61; ++j)
                {
                  if (*v95 != v62)
                  {
                    objc_enumerationMutation(v59);
                  }

                  v64 = [PBFPosterRoleCoordinatorChange removePosterFromRole:v88 matchingUUID:*(*(&v94 + 1) + 8 * j)];
                  [v85 addObject:v64];
                }

                v61 = [v59 countByEnumeratingWithState:&v94 objects:v114 count:16];
              }

              while (v61);
            }

            v65 = [PBFPosterRoleCoordinatorChange reorderPostersForRole:v88 sortedPosterUUIDs:v41];
            [v85 addObject:v65];
            firstObject = [v41 firstObject];
            v67 = [PBFPosterRoleCoordinatorChange selectPosterForRole:v88 matchingUUID:firstObject];

            [v85 addObject:v67];
            v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"updatePosterConfigurationsFromHostForRole:%@", v88];
            v93 = 0;
            v33 = [(PBFPosterExtensionDataStore *)selfCopy _stateLock_executeDataStoreUpdateWithChanges:v85 diffs:0 options:1 reason:v68 context:0 error:&v93];
            v69 = v93;

            if ((v33 & 1) == 0)
            {
              if (v69)
              {
                v70 = v69;
                v71 = v81;
              }

              else
              {
                v72 = MEMORY[0x277CCA9B8];
                v112 = *MEMORY[0x277CCA470];
                v113 = @"The update was rejected for a reason which defies explanation";
                v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
                v70 = [v72 pbf_generalErrorWithCode:0 userInfo:v71];
              }

              v74 = PBFLogDataStore(v73);
              if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
              {
                [PBFPosterExtensionDataStore _stateLock_updatePosterConfigurationsFromHostForRole:error:];
              }

              if (errorCopy)
              {
                v75 = v70;
                *errorCopy = v70;
              }

              v81 = v70;
            }

            objc_autoreleasePoolPop(context);
            v30 = v83;
            v8 = v84;
            mEMORY[0x277D3EF28] = v79;
            v23 = v80;
            v26 = v78;
LABEL_73:

LABEL_74:
            goto LABEL_75;
          }
        }
      }

      v38 = PBFLogDataStore(v32);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterExtensionDataStore _stateLock_updatePosterConfigurationsFromHostForRole:v38 error:?];
      }

      v81 = v27;

      if (errorCopy)
      {
        v39 = MEMORY[0x277CCA9B8];
        v122 = *MEMORY[0x277CCA470];
        v123 = @"updatePosterConfigurationsFromHostForRole: Updated host configuration is empty";
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
        *errorCopy = [v39 pbf_dataStoreErrorWithCode:-2202 userInfo:v40];
      }
    }

    else
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterExtensionDataStore _stateLock_updatePosterConfigurationsFromHostForRole:error:];
      }

      v81 = v27;
      if (errorCopy)
      {
        v36 = v27;
        v37 = v27;
        v33 = 0;
        *errorCopy = v37;
        goto LABEL_73;
      }
    }

    v33 = 0;
    goto LABEL_73;
  }

  if (error)
  {
    v34 = MEMORY[0x277CCA9B8];
    if (roleCopy)
    {
      v35 = roleCopy;
    }

    else
    {
      v35 = @"(null role identifier)";
    }

    v125 = @"roleIdentifier";
    v126[0] = v35;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:&v125 count:1];
    [v34 pbf_dataStoreErrorWithCode:-2203 userInfo:v30];
    *error = v33 = 0;
    goto LABEL_74;
  }

  v33 = 0;
LABEL_75:

  return v33;
}

- (id)posterDescriptorsForExtensionBundleIdentifier:(id)identifier error:(id *)error
{
  v15[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!identifierCopy)
  {
    [PBFPosterExtensionDataStore posterDescriptorsForExtensionBundleIdentifier:a2 error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionDataStore posterDescriptorsForExtensionBundleIdentifier:a2 error:?];
  }

  os_unfair_lock_lock(&self->_stateLock);
  v8 = [(PBFPosterExtensionDataStore *)self _stateLock_knownPosterDescriptorsForExtensionBundleIdentifier:identifierCopy];
  os_unfair_lock_unlock(&self->_stateLock);
  if (error && !v8)
  {
    v9 = MEMORY[0x277CCA9B8];
    v14[0] = @"extensionBundleIdentifier";
    v14[1] = @"descriptorType";
    v15[0] = identifierCopy;
    v15[1] = @"dynamic";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    *error = [v9 pbf_dataStoreErrorWithCode:-2218 userInfo:v10];
  }

  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v12 = v11;

  return v11;
}

- (id)staticPosterDescriptorsForExtensionBundleIdentifier:(id)identifier error:(id *)error
{
  v15[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!identifierCopy)
  {
    [PBFPosterExtensionDataStore staticPosterDescriptorsForExtensionBundleIdentifier:a2 error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionDataStore staticPosterDescriptorsForExtensionBundleIdentifier:a2 error:?];
  }

  os_unfair_lock_lock(&self->_stateLock);
  v8 = [(PBFPosterExtensionDataStore *)self _stateLock_knownStaticPosterDescriptorsForExtensionBundleIdentifier:identifierCopy];
  os_unfair_lock_unlock(&self->_stateLock);
  if (error && !v8)
  {
    v9 = MEMORY[0x277CCA9B8];
    v14[0] = @"extensionBundleIdentifier";
    v14[1] = @"descriptorType";
    v15[0] = identifierCopy;
    v15[1] = @"static";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    *error = [v9 pbf_dataStoreErrorWithCode:-2218 userInfo:v10];
  }

  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v12 = v11;

  return v11;
}

- (void)reloadPosterDescriptorsForExtensionBundleIdentifier:(id)identifier sessionInfo:(id)info completion:(id)completion
{
  identifierCopy = identifier;
  infoCopy = info;
  completionCopy = completion;
  v13 = identifierCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v13)
  {
    [PBFPosterExtensionDataStore reloadPosterDescriptorsForExtensionBundleIdentifier:a2 sessionInfo:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionDataStore reloadPosterDescriptorsForExtensionBundleIdentifier:a2 sessionInfo:? completion:?];
  }

  if (!completionCopy)
  {
    [PBFPosterExtensionDataStore reloadPosterDescriptorsForExtensionBundleIdentifier:a2 sessionInfo:? completion:?];
  }

  os_unfair_lock_lock(&self->_stateLock);
  v12 = [(PBFPosterExtensionDataStore *)self _stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier:v13 reason:@"External Client Refresh Request" powerLogReason:3 postEnqueueGalleryUpdateOptions:8 sessionInfo:infoCopy completion:completionCopy];
  os_unfair_lock_unlock(&self->_stateLock);
}

- (BOOL)deletePosterDescriptorsForExtensionBundleIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!identifierCopy)
  {
    [PBFPosterExtensionDataStore deletePosterDescriptorsForExtensionBundleIdentifier:a2 error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionDataStore deletePosterDescriptorsForExtensionBundleIdentifier:a2 error:?];
  }

  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    os_unfair_lock_lock(&self->_stateLock);
    v8 = [(PBFPosterExtensionDataStore *)self _stateLock_deletePosterDescriptorsForExtensionBundleIdentifier:identifierCopy waitForPushToProactive:1 error:error];
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return v8;
}

- (void)updateGallery:(id)gallery completion:(id)completion
{
  galleryCopy = gallery;
  completionCopy = completion;
  v9 = galleryCopy;
  NSClassFromString(&cfstr_Prspostergalle.isa);
  if (!v9)
  {
    [PBFPosterExtensionDataStore updateGallery:a2 completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionDataStore updateGallery:a2 completion:?];
  }

  if (!completionCopy)
  {
    [PBFPosterExtensionDataStore updateGallery:a2 completion:?];
  }

  [(PBFGalleryController *)self->_galleryController updateGallery:v9 completion:completionCopy];
}

- (void)refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:(id)identifier extensionIdentifier:(id)extensionIdentifier completion:(id)completion
{
  v8 = MEMORY[0x277CBEB98];
  completionCopy = completion;
  extensionIdentifierCopy = extensionIdentifier;
  identifierCopy = identifier;
  v13 = +[PBFGenericDisplayContext mainScreen];
  v12 = [v8 setWithObject:v13];
  [(PBFPosterExtensionDataStore *)self refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:identifierCopy extensionIdentifier:extensionIdentifierCopy displayContexts:v12 completion:completionCopy];
}

- (void)refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:(id)identifier extensionIdentifier:(id)extensionIdentifier displayContexts:(id)contexts completion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  extensionIdentifierCopy = extensionIdentifier;
  contextsCopy = contexts;
  completionCopy = completion;
  v15 = extensionIdentifierCopy;
  if (v15)
  {
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PBFPosterExtensionDataStore refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:a2 extensionIdentifier:? displayContexts:? completion:?];
    }
  }

  v16 = identifierCopy;
  if (v16)
  {
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PBFPosterExtensionDataStore refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:a2 extensionIdentifier:? displayContexts:? completion:?];
    }
  }

  if (!completionCopy)
  {
    [PBFPosterExtensionDataStore refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:a2 extensionIdentifier:? displayContexts:? completion:?];
  }

  os_unfair_lock_lock(&self->_stateLock);
  _stateLock_currentGalleryConfiguration = [(PBFPosterExtensionDataStore *)self _stateLock_currentGalleryConfiguration];
  os_unfair_lock_unlock(&self->_stateLock);
  v30 = _stateLock_currentGalleryConfiguration;
  if (_stateLock_currentGalleryConfiguration)
  {
    v28 = completionCopy;
    v18 = v16;
    v19 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = contextsCopy;
    v20 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v39;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v38 + 1) + 8 * i);
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __137__PBFPosterExtensionDataStore_refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier_extensionIdentifier_displayContexts_completion___block_invoke;
          v33[3] = &unk_2782C5A68;
          v34 = v15;
          v35 = v18;
          v36 = v19;
          v37 = v24;
          [v30 enumeratePreviews:v33];
        }

        v21 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v21);
    }

    v25 = [v19 bs_map:&__block_literal_global_286];
    v26 = [v25 mutableCopy];

    completionCopy = v28;
    if ([v26 count])
    {
      snapshotManager = self->_snapshotManager;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __137__PBFPosterExtensionDataStore_refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier_extensionIdentifier_displayContexts_completion___block_invoke_3;
      v31[3] = &unk_2782C5AB0;
      v32 = v28;
      [(PBFPosterSnapshotManager *)snapshotManager prewarmSnapshotsForRequests:v26 completion:v31];
    }

    else
    {
      v28[2](v28, 0);
    }

    v16 = v18;
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __137__PBFPosterExtensionDataStore_refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier_extensionIdentifier_displayContexts_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v19 = a3;
  v4 = [v19 posterDescriptorLookupInfo];
  v5 = [v4 posterDescriptorPath];
  v6 = [v5 serverIdentity];
  v7 = [v6 role];
  v8 = [v7 isEqualToString:*MEMORY[0x277D3EBC0]];

  if (v8)
  {
    v9 = a1[5];
    if (a1[4])
    {
      v10 = [v5 serverIdentity];
      v11 = [v10 provider];
      v12 = [v11 isEqual:a1[4]];
      v13 = v12;
      if (v9)
      {
        if ((v12 & 1) == 0)
        {

          goto LABEL_13;
        }

        v14 = [v5 descriptorIdentifier];
        v15 = [v14 isEqual:a1[5]];

        if (!v15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        if (!v13)
        {
          goto LABEL_14;
        }
      }

LABEL_11:
      v18 = a1[6];
      v10 = [PBFPosterSnapshotRequest snapshotRequestForPreview:v19 context:a1[7]];
      [v18 addObject:v10];
LABEL_13:

      goto LABEL_14;
    }

    if (!v9)
    {
      goto LABEL_11;
    }

    v16 = [v5 descriptorIdentifier];
    v17 = [v16 isEqual:a1[5]];

    if (v17)
    {
      goto LABEL_11;
    }
  }

LABEL_14:
}

id __137__PBFPosterExtensionDataStore_refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier_extensionIdentifier_displayContexts_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 requestWithLoadFromCacheIfAvailable:0];
  v3 = [v2 requestWithIntention:0];
  v4 = [v3 requestWithPowerLogReason:3];

  return v4;
}

uint64_t __137__PBFPosterExtensionDataStore_refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier_extensionIdentifier_displayContexts_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchPosterSnapshotsWithClientRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v9 = requestCopy;
  NSClassFromString(&cfstr_Prspostersnaps.isa);
  if (!v9)
  {
    [PBFPosterExtensionDataStore fetchPosterSnapshotsWithClientRequest:a2 completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionDataStore fetchPosterSnapshotsWithClientRequest:a2 completion:?];
  }

  if (!completionCopy)
  {
    [PBFPosterExtensionDataStore fetchPosterSnapshotsWithClientRequest:a2 completion:?];
  }

  os_unfair_lock_lock(&self->_stateLock);
  [(PBFPosterExtensionDataStore *)self _stateLock_fetchPosterSnapshotsWithClientRequest:v9 completion:completionCopy];
  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)_stateLock_fetchPosterSnapshotsWithClientRequest:(id)request completion:(id)completion
{
  v204[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (completionCopy)
    {
      v7 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      completionCopy[2](completionCopy, 0, v7);
    }

    goto LABEL_32;
  }

  v116 = completionCopy;
  v128 = self->_snapshotManager;
  v8 = [[PBFApplicationStateNode alloc] initWithDescription:@"Client Snapshot"];
  [(PBFApplicationStateMonitor *)self->_applicationStateMonitor pushState:v8];
  v9 = self->_clientSnapshotRequestQueue;
  _stateLock_switcherConfiguration = [(PBFPosterExtensionDataStore *)self _stateLock_switcherConfiguration];
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  [requestCopy orientation];
  IsValid = BSInterfaceOrientationIsValid();
  if (IsValid)
  {
    orientation = [requestCopy orientation];
  }

  else
  {
    v190[0] = MEMORY[0x277D85DD0];
    v190[1] = 3221225472;
    v190[2] = __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke;
    v190[3] = &unk_2782C5AD8;
    v191 = requestCopy;
    orientation = __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke(v190);
    v108 = &v191;
  }

  v118 = +[PBFGenericDisplayContext mainScreen];
  if (orientation)
  {
    v12 = [v118 displayContextWithUpdatedInterfaceOrientation:orientation];

    v118 = v12;
  }

  v188[0] = 0;
  v188[1] = v188;
  v188[2] = 0x3032000000;
  v188[3] = __Block_byref_object_copy_;
  v188[4] = __Block_byref_object_dispose_;
  v189 = objc_opt_new();
  v186[0] = 0;
  v186[1] = v186;
  v186[2] = 0x3032000000;
  v186[3] = __Block_byref_object_copy_;
  v186[4] = __Block_byref_object_dispose_;
  v187 = 0;
  v13 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
  v180 = 0;
  v181 = &v180;
  v182 = 0x3032000000;
  v183 = __Block_byref_object_copy__298;
  v184 = __Block_byref_object_dispose__299;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_300;
  aBlock[3] = &unk_2782C5B00;
  v111 = v13;
  v176 = v111;
  v14 = v116;
  v178 = v14;
  v179 = v188;
  v110 = v8;
  v177 = v110;
  v185 = _Block_copy(aBlock);
  v171[0] = MEMORY[0x277D85DD0];
  v171[1] = 3221225472;
  v171[2] = __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_2;
  v171[3] = &unk_2782C5B28;
  v173 = v186;
  v174 = v188;
  group = v10;
  v172 = group;
  v15 = _Block_copy(v171);
  v168[0] = MEMORY[0x277D85DD0];
  v168[1] = 3221225472;
  v168[2] = __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_3;
  v168[3] = &unk_2782C5BA0;
  queue = v9;
  v169 = queue;
  v113 = v15;
  v170 = v113;
  v129 = _Block_copy(v168);
  v167[0] = MEMORY[0x277D85DD0];
  v167[1] = 3221225472;
  v167[2] = __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_7;
  v167[3] = &unk_2782C5BC8;
  v167[4] = self;
  v114 = _Block_copy(v167);
  requestOptions = [requestCopy requestOptions];
  v17 = [requestOptions objectForKey:*MEMORY[0x277D3EA48]];
  LODWORD(v15) = [v17 BOOLValue];

  if (!v15)
  {
    requestOptions2 = [requestCopy requestOptions];
    v36 = *MEMORY[0x277D3EA40];
    v37 = [requestOptions2 objectForKey:*MEMORY[0x277D3EA40]];
    if (v37)
    {
      requestOptions3 = [requestCopy requestOptions];
      v39 = [requestOptions3 objectForKey:v36];
      [v39 doubleValue];
      v41 = v40;
    }

    else
    {
      v41 = *MEMORY[0x277D3EA58];
    }

    variantType = [requestCopy variantType];
    configurationType = [requestCopy configurationType];
    if (configurationType == -1)
    {
      path = [requestCopy path];
      v42 = path == 0;
    }

    else
    {
      v42 = 0;
    }

    options = [requestCopy options];
    v45 = _UIUserInterfaceStyleFromPRSPosterSnapshotRequestOptions(options);
    v122 = options;
    requestOptions4 = [requestCopy requestOptions];
    v109 = [requestOptions4 objectForKey:*MEMORY[0x277D3EA50]];

    path2 = [requestCopy path];

    if (path2)
    {
      path3 = [requestCopy path];
    }

    else
    {
      if (configurationType)
      {
        if (configurationType != 1)
        {
          path3 = 0;
          goto LABEL_39;
        }

        activeConfiguration = [_stateLock_switcherConfiguration activeConfiguration];
        _path = [activeConfiguration _path];
      }

      else
      {
        activeConfiguration = [_stateLock_switcherConfiguration selectedConfiguration];
        _path = [activeConfiguration _path];
      }

      path3 = _path;
    }

    if ((v122 & 0x80) != 0 && path3)
    {
      v53 = v114[2](v114, path3);

      path3 = v53;
    }

LABEL_39:
    v127 = path3;
    if (variantType == 1)
    {
      v54 = [MEMORY[0x277D3EDE8] loadHomeScreenConfigurationForPath:path3 error:0];
      if ([v54 selectedAppearanceType] == 3)
      {
        v55 = [objc_alloc(MEMORY[0x277D3ED58]) _initWithPath:path3];
        v56 = [_stateLock_switcherConfiguration _childPosterConfigurationForConfiguration:v55];
        _path2 = [v56 _path];
        v125 = v54;

        if (!_path2)
        {
          v57 = v181[5];
          v58 = MEMORY[0x277CCA9B8];
          v203 = *MEMORY[0x277CCA470];
          v204[0] = @"SPI requires a configuration type or path specified.";
          v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v204 forKeys:&v203 count:1];
          v60 = [v58 pbf_dataStoreErrorWithCode:-2214 userInfo:v59];
          (*(v57 + 16))(v57, 0, v60);
          v61 = 0;
LABEL_71:
          v130 = v118;
          goto LABEL_72;
        }
      }

      else
      {
        _path2 = 0;
      }

      v62 = v109;
    }

    else
    {
      _path2 = 0;
      v62 = v109;
    }

    if (path3)
    {
      v63 = 1;
    }

    else
    {
      v63 = v42;
    }

    if ((v63 & 1) == 0)
    {
      v67 = v181[5];
      v68 = MEMORY[0x277CCA9B8];
      v201 = *MEMORY[0x277CCA470];
      v202 = @"SPI requires a configuration type or path specified.";
      v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v202 forKeys:&v201 count:1];
      v60 = [v68 pbf_dataStoreErrorWithCode:-2214 userInfo:v59];
      (*(v67 + 16))(v67, 0, v60);
LABEL_70:
      v61 = 0;
      v125 = _path2;
      goto LABEL_71;
    }

    if (v62)
    {
      v64 = PBFSnapshotDefinitionForIdentifier(v62);
      v65 = v64;
      if (v64)
      {
        v200 = v64;
        v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v200 count:1];
        [v65 persistenceScale];
        v41 = v66;
      }

      else
      {
        v59 = 0;
      }

LABEL_65:

      v73 = v127;
      if (v59)
      {
        if (v45)
        {
          v130 = [v118 displayContextWithUpdatedUserInterfaceStyle:PBFUserInterfaceStyleFromUIUserInterfaceStyle(v45)];

          v73 = v127;
          if (v42)
          {
LABEL_68:
            dispatch_group_enter(group);
            [v130 pbf_frame];
            v75 = v74;
            v77 = v76;
            v79 = v78;
            v81 = v80;
            v82 = [objc_alloc(MEMORY[0x277D75560]) initWithBounds:{v74, v76, v78, v80}];
            v151[0] = MEMORY[0x277D85DD0];
            v151[1] = 3221225472;
            v151[2] = __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_325;
            v151[3] = &__block_descriptor_64_e40_v16__0__UIGraphicsImageRendererContext_8l;
            *&v151[4] = v75;
            *&v151[5] = v77;
            *&v151[6] = v79;
            *&v151[7] = v81;
            v60 = [v82 imageWithActions:v151];

            (*(v129 + 2))(v129, 0, 0, variantType, configurationType, v122, v60, v130, v41);
            v61 = 1;
            v125 = _path2;
            goto LABEL_72;
          }
        }

        else
        {
          v130 = v118;
          if (v42)
          {
            goto LABEL_68;
          }
        }

        if (_path2)
        {
          v73 = _path2;
        }

        v85 = v73;
        v107 = [MEMORY[0x277D3EDE8] loadConfiguredPropertiesForPath:v85 error:0];
        identity = [v85 identity];
        v119 = v85;
        LOBYTE(v85) = [identity type] == 3;

        if (v85)
        {
          v87 = [PBFPosterSnapshotRequest alloc];
          serverIdentity = [v119 serverIdentity];
          provider = [serverIdentity provider];
          v90 = [(PBFPosterSnapshotRequest *)v87 initWithPath:v119 provider:provider configuredProperties:v107 definitions:v59 context:v130];
          v91 = [(PBFPosterSnapshotRequest *)v90 requestWithLoadFromCacheIfAvailable:(v122 & 0x40) == 0];
          v125 = [v91 requestWithPowerLogReason:3];
          definitions = v59;
        }

        else
        {
          serverIdentity = [(PBFPosterExtensionDataStore *)self _stateLock_currentGalleryConfiguration];
          descriptorIdentifier = [v127 descriptorIdentifier];
          identity2 = [v119 identity];
          provider2 = [identity2 provider];
          v90 = [serverIdentity posterSnapshotRequestsForExtensionBundleIdentifier:provider2 context:v130];

          v149[0] = MEMORY[0x277D85DD0];
          v149[1] = 3221225472;
          v149[2] = __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_2_329;
          v149[3] = &unk_2782C5C60;
          provider = descriptorIdentifier;
          v150 = provider;
          v96 = [(PBFPosterSnapshotRequest *)v90 bs_firstObjectPassingTest:v149];
          definitions = [v96 definitions];
          v125 = v96;

          if (!v96)
          {
            v102 = v181[5];
            v103 = MEMORY[0x277CCA9B8];
            v193 = *MEMORY[0x277CCA470];
            v104 = [MEMORY[0x277CCACA8] stringWithFormat:@"unable to find descriptorIdentifier %@ within gallery", provider];
            v194 = v104;
            v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v194 forKeys:&v193 count:1];
            v106 = [v103 pbf_dataStoreErrorWithCode:-2214 userInfo:v105];
            (*(v102 + 16))(v102, 0, v106);

            v61 = 0;
            v125 = _path2;
            v97 = provider;
LABEL_91:

            v59 = definitions;
            v60 = v119;
LABEL_72:

            if (!v61)
            {
              goto LABEL_29;
            }

            goto LABEL_28;
          }

          v91 = v150;
        }

        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v97 = definitions;
        v98 = [v97 countByEnumeratingWithState:&v145 objects:v192 count:16];
        if (v98)
        {
          v99 = *v146;
          do
          {
            for (i = 0; i != v98; ++i)
            {
              if (*v146 != v99)
              {
                objc_enumerationMutation(v97);
              }

              v101 = *(*(&v145 + 1) + 8 * i);
              dispatch_group_enter(group);
              v134[0] = MEMORY[0x277D85DD0];
              v134[1] = 3221225472;
              v134[2] = __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_3_334;
              v134[3] = &unk_2782C5BF0;
              v140 = v186;
              v135 = group;
              v139 = v129;
              v136 = v127;
              definitions = _path2;
              v137 = definitions;
              v141 = variantType;
              v142 = configurationType;
              v143 = v122;
              v144 = v41;
              v138 = v130;
              [(PBFPosterSnapshotManager *)v128 fetchPosterSnapshotForRequest:v125 definition:v101 completion:v134];
            }

            v98 = [v97 countByEnumeratingWithState:&v145 objects:v192 count:16];
          }

          while (v98);
          v61 = 1;
          serverIdentity = v107;
          v107 = v119;
          v119 = v97;
        }

        else
        {
          v61 = 1;
          serverIdentity = v107;
          v107 = v119;
          v119 = v97;
          definitions = _path2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

    if (variantType == 1)
    {
      v65 = +[PBFPosterSnapshotDefinition switcherUnlockedSnapshotDefinition];
      v199 = v65;
      v69 = [MEMORY[0x277CBEA60] arrayWithObjects:&v199 count:1];
LABEL_64:
      v59 = v69;
      goto LABEL_65;
    }

    if ((variantType + 1) <= 1)
    {
      v65 = +[PBFPosterSnapshotDefinition gallerySnapshotWithComplicationsDefinition];
      v198 = v65;
      v69 = [MEMORY[0x277CBEA60] arrayWithObjects:&v198 count:1];
      goto LABEL_64;
    }

    if (path3)
    {
      identity3 = [path3 identity];
      if ([identity3 type] == 1)
      {

LABEL_63:
        v65 = +[PBFPosterSnapshotDefinition gallerySnapshotWithComplicationsDefinition];
        v197 = v65;
        v69 = [MEMORY[0x277CBEA60] arrayWithObjects:&v197 count:1];
        goto LABEL_64;
      }

      identity4 = [path3 identity];
      v72 = [identity4 type] == 2;

      if (v72)
      {
        goto LABEL_63;
      }
    }

LABEL_69:
    v83 = v181[5];
    v84 = MEMORY[0x277CCA9B8];
    v195 = *MEMORY[0x277CCA470];
    v196 = @"SPI Requires a snapshot definition to exist";
    v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v196 forKeys:&v195 count:1];
    v60 = [v84 pbf_dataStoreErrorWithCode:-2214 userInfo:v59];
    (*(v83 + 16))(v83, 0, v60);
    goto LABEL_70;
  }

  v18 = [objc_alloc(MEMORY[0x277D3E948]) initWithPosterRequest:requestCopy];
  variant = [v18 variant];
  configurationType2 = [v18 configurationType];
  options2 = [v18 options];
  [v18 imageScaleRelativeToScreen];
  v23 = v22;
  focusModeUUID = [v18 focusModeUUID];
  maxCount = [v18 maxCount];
  userInterfaceStyle = _UIUserInterfaceStyleFromPRSPosterSnapshotRequestOptions(options2);
  if ((options2 & 8) != 0)
  {
    hostContext = [requestCopy hostContext];
    connectedDisplays = [hostContext connectedDisplays];
    v28 = [connectedDisplays count] == 0;

    if (!v28)
    {
      hostContext2 = [requestCopy hostContext];
      userInterfaceStyle = [hostContext2 userInterfaceStyle];
    }
  }

  v166 = 0;
  v165 = 0;
  v164 = 0;
  [PBFFocusSnapshotPreferredConfigurationArbiter determineDesiredConfigurations:&v166 preferredConfiguration:&v165 snapshotDefinition:&v164 fromSwitcherConfiguration:_stateLock_switcherConfiguration configurationType:configurationType2 variantType:variant options:options2 andFocusModeUUID:focusModeUUID maxCount:maxCount];
  v30 = v166;
  v31 = v165;
  v32 = v164;
  v130 = [v118 displayContextWithUpdatedUserInterfaceStyle:PBFUserInterfaceStyleFromUIUserInterfaceStyle(userInterfaceStyle)];

  v33 = [v30 count];
  if (v33)
  {
    v152[0] = MEMORY[0x277D85DD0];
    v152[1] = 3221225472;
    v152[2] = __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_8;
    v152[3] = &unk_2782C5C18;
    v153 = _stateLock_switcherConfiguration;
    v160 = variant;
    v154 = v32;
    v155 = v130;
    v156 = group;
    v157 = v128;
    v159 = v186;
    v158 = v129;
    v161 = configurationType2;
    v162 = options2;
    v163 = v23;
    [v30 enumerateObjectsUsingBlock:v152];

    v34 = v153;
  }

  else
  {
    v51 = objc_alloc(MEMORY[0x277D3E9C0]);
    v34 = [v51 initWithSnapshots:MEMORY[0x277CBEBF8]];
    (*(v14 + 2))(v14, v34, 0);
  }

  if (!v33)
  {
    goto LABEL_29;
  }

LABEL_28:
  dispatch_group_leave(group);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_335;
  block[3] = &unk_2782C5C88;
  block[4] = &v180;
  block[5] = v186;
  block[6] = v188;
  dispatch_group_notify(group, queue, block);
  v52 = dispatch_time(0, 0x6FC23B000);
  v132[0] = MEMORY[0x277D85DD0];
  v132[1] = 3221225472;
  v132[2] = __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_2_336;
  v132[3] = &unk_2782C5CB0;
  v132[4] = &v180;
  dispatch_after(v52, queue, v132);
LABEL_29:

  _Block_object_dispose(&v180, 8);
  _Block_object_dispose(v186, 8);

  _Block_object_dispose(v188, 8);
  if ((IsValid & 1) == 0)
  {
  }

  completionCopy = v116;
LABEL_32:
}

uint64_t __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) hostContext];
  v2 = [v1 primaryDisplayInfo];
  v3 = [v2 interfaceOrientation];

  if (BSInterfaceOrientationIsValid())
  {
    return v3;
  }

  v5 = +[PBFGenericDisplayContext mainScreen];
  v6 = [v5 pbf_interfaceOrientation];

  return v6;
}

void __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_300(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([*(a1 + 32) setFlag:1])
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, v8, v5);
    }

    v7 = *(*(*(a1 + 56) + 8) + 40);
    objc_sync_enter(v7);
    [*(*(*(a1 + 56) + 8) + 40) removeAllObjects];
    objc_sync_exit(v7);

    [*(a1 + 40) cancel];
  }
}

void __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v28 = 0;
  v14 = [objc_alloc(MEMORY[0x277D3EF40]) initWithUIImage:v11 error:&v28];
  v15 = v28;
  v16 = v15;
  if (v14)
  {
    v27 = v15;
    v17 = a6;
    v18 = v12;
    v19 = [v11 imageOrientation];
    v20 = objc_alloc(MEMORY[0x277D3E9B0]);
    v21 = [MEMORY[0x277D3E930] makeWithOther:v14];
    v22 = v19;
    v12 = v18;
    v23 = [v20 initWithCodableImage:v21 imageOrientation:v22 switcherConfigurationPath:v18 homeScreenConfigurationPath:v13 variant:a5 configurationType:v17];

    v24 = *(*(*(a1 + 48) + 8) + 40);
    objc_sync_enter(v24);
    [*(*(*(a1 + 48) + 8) + 40) addObject:v23];
    objc_sync_exit(v24);

    v16 = v27;
LABEL_5:

    goto LABEL_6;
  }

  if (v15)
  {
    v25 = *(*(a1 + 40) + 8);
    v26 = v15;
    v23 = *(v25 + 40);
    *(v25 + 40) = v26;
    goto LABEL_5;
  }

LABEL_6:
  dispatch_group_leave(*(a1 + 32));
}

void __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, double a9)
{
  v17 = a2;
  v18 = a3;
  v19 = a7;
  v20 = a8;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_4;
  block[3] = &unk_2782C5B78;
  v32 = a4;
  v33 = a6;
  v27 = v18;
  v28 = v17;
  v29 = v19;
  v30 = v20;
  v34 = a9;
  v21 = *(a1 + 32);
  v31 = *(a1 + 40);
  v35 = a5;
  v22 = v20;
  v23 = v19;
  v24 = v17;
  v25 = v18;
  dispatch_async(v21, block);
}

void __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    *&v6 = v4;
    *(&v6 + 1) = v5;
    *&v7 = v2;
    *(&v7 + 1) = v3;
    v9 = v7;
    v10 = v6;
    v11 = *(a1 + 64);
    BSDispatchMain();
  }

  else
  {
    v8 = *(*(a1 + 64) + 16);

    v8();
  }
}

void __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_5(uint64_t a1)
{
  v2 = objc_alloc_init(PBFHomeScreenPreviewImageBuilder);
  v3 = *(a1 + 32);
  if (!v3)
  {
    v3 = *(a1 + 40);
  }

  v4 = [MEMORY[0x277D3EDE8] loadHomeScreenConfigurationForPath:v3 error:0];
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_6;
  v9[3] = &unk_2782C5B50;
  v12 = *(a1 + 64);
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v13 = *(a1 + 88);
  [(PBFHomeScreenPreviewImageBuilder *)v2 homeScreenImageForConfiguration:v4 unlockedPosterSnapshot:v5 displayContext:v6 imageScaleRelativeToScreen:v8 options:v9 completion:v7];
}

void *__91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identity];
  v5 = [v4 posterUUID];

  v6 = *(a1 + 32);
  v12 = 0;
  [v6 _stateLock_findStoreCoordinatorsForUUID:v5 extensionStoreCoordinator:0 configurationStoreCoordinator:&v12];
  v7 = [v12 pathOfLatestVersion];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v3;
  }

  v10 = v9;

  return v9;
}

void __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 88);
  v5 = *(a1 + 32);
  v25[0] = *(a1 + 40);
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v7 = [PBFPosterSnapshotRequest snapshotRequestForConfiguration:v3 withinSwitcherConfiguration:v5 variant:v4 snapshotDefinitions:v6 displayContext:*(a1 + 48)];

  v8 = [v7 path];
  v9 = [v3 _path];
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = [v7 path];
  }

  dispatch_group_enter(*(a1 + 56));
  if (v7)
  {
    v11 = *(a1 + 40);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_9;
    v15[3] = &unk_2782C5BF0;
    v21 = *(a1 + 80);
    v12 = *(a1 + 64);
    v16 = *(a1 + 56);
    v20 = *(a1 + 72);
    v17 = v3;
    v18 = v10;
    v22 = *(a1 + 88);
    v23 = *(a1 + 104);
    v24 = *(a1 + 112);
    v19 = *(a1 + 48);
    [v12 fetchPosterSnapshotForRequest:v7 definition:v11 completion:v15];

    v13 = v16;
  }

  else
  {
    v14 = *(a1 + 72);
    v13 = [v3 _path];
    (*(v14 + 16))(v14, v13, v10, *(a1 + 88), *(a1 + 96), *(a1 + 104), 0, *(a1 + 48), *(a1 + 112));
  }
}

void __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
    v8 = PBFLogCommon(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_9_cold_1();
    }
  }

  if (v5)
  {
    v9 = *(a1 + 64);
    v10 = [*(a1 + 40) _path];
    (*(v9 + 16))(v9, v10, *(a1 + 48), *(a1 + 80), *(a1 + 88), *(a1 + 96), v5, *(a1 + 56), *(a1 + 104));
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

void __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_325(double *a1, void *a2)
{
  v3 = MEMORY[0x277D75348];
  v5 = a2;
  v4 = [v3 systemGrayColor];
  [v4 setFill];

  [v5 fillRect:{a1[4], a1[5], a1[6], a1[7]}];
}

uint64_t __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_2_329(uint64_t a1, void *a2)
{
  v3 = [a2 path];
  v4 = [v3 descriptorIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

void __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_3_334(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
    v8 = PBFLogCommon(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_9_cold_1();
    }
  }

  if (v5)
  {
    (*(*(a1 + 64) + 16))(*(a1 + 104));
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

void __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_335(void *a1)
{
  v2 = *(*(a1[4] + 8) + 40);
  if (v2)
  {
    if (*(*(a1[5] + 8) + 40))
    {
      (*(v2 + 16))(v2, 0);
    }

    else
    {
      v3 = *(*(a1[6] + 8) + 40);
      objc_sync_enter(v3);
      v4 = [objc_alloc(MEMORY[0x277D3E9C0]) initWithSnapshots:*(*(a1[6] + 8) + 40)];
      objc_sync_exit(v3);

      (*(*(*(a1[4] + 8) + 40) + 16))();
    }

    v5 = *(a1[4] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

void __91__PBFPosterExtensionDataStore__stateLock_fetchPosterSnapshotsWithClientRequest_completion___block_invoke_2_336(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {
    v3 = [MEMORY[0x277CCA9B8] pbf_dataStoreErrorWithCode:-2221 userInfo:0];
    (*(v1 + 16))(v1, 0, v3);

    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }
}

- (void)fetchGallerySnapshotForConfiguration:(id)configuration context:(id)context completion:(id)completion
{
  v16[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  contextCopy = context;
  configurationCopy = configuration;
  v11 = +[PBFPosterSnapshotDefinition gallerySnapshotDefinition];
  v12 = [PBFPosterSnapshotRequest alloc];
  v16[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v14 = [(PBFPosterSnapshotRequest *)v12 initWithConfiguration:configurationCopy definitions:v13 context:contextCopy];

  v15 = [(PBFPosterSnapshotRequest *)v14 requestWithPowerLogReason:0];

  [(PBFPosterSnapshotManager *)self->_snapshotManager fetchPosterSnapshotForRequest:v15 definition:v11 completion:completionCopy];
}

- (void)fetchSwitcherSnapshotForConfiguration:(id)configuration context:(id)context completion:(id)completion
{
  v16[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  contextCopy = context;
  configurationCopy = configuration;
  v11 = +[PBFPosterSnapshotDefinition switcherSnapshotDefinition];
  v12 = [PBFPosterSnapshotRequest alloc];
  v16[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v14 = [(PBFPosterSnapshotRequest *)v12 initWithConfiguration:configurationCopy definitions:v13 context:contextCopy];

  v15 = [(PBFPosterSnapshotRequest *)v14 requestWithPowerLogReason:0];

  [(PBFPosterSnapshotManager *)self->_snapshotManager fetchPosterSnapshotForRequest:v15 definition:v11 completion:completionCopy];
}

- (void)fetchHomeScreenAssociatedPosterConfigurationForConfigurationUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  os_unfair_lock_lock(&self->_stateLock);
  _stateLock_switcherConfiguration = [(PBFPosterExtensionDataStore *)self _stateLock_switcherConfiguration];
  v9 = [_stateLock_switcherConfiguration _childPosterConfigurationForConfigurationUUID:dCopy];

  _path = [v9 _path];

  os_unfair_lock_unlock(&self->_stateLock);
  completionCopy[2](completionCopy, _path, 0);
}

- (void)updatePosterConfigurationMatchingUUID:(id)d updates:(id)updates completion:(id)completion
{
  completionCopy = completion;
  updatesCopy = updates;
  dCopy = d;
  os_unfair_lock_lock(&self->_stateLock);
  [(PBFPosterExtensionDataStore *)self _stateLock_updatePosterConfigurationMatchingUUID:dCopy updates:updatesCopy completion:completionCopy];

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)updatePosterConfiguration:(id)configuration updates:(id)updates completion:(id)completion
{
  completionCopy = completion;
  updatesCopy = updates;
  configurationCopy = configuration;
  os_unfair_lock_lock(&self->_stateLock);
  [(PBFPosterExtensionDataStore *)self _stateLock_updatePosterConfiguration:configurationCopy updates:updatesCopy completion:completionCopy];

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)createTemporaryPosterConfigurationForPosterMatchingUUID:(id)d andApplyUpdates:(id)updates completion:(id)completion
{
  completionCopy = completion;
  updatesCopy = updates;
  dCopy = d;
  os_unfair_lock_lock(&self->_stateLock);
  [(PBFPosterExtensionDataStore *)self _stateLock_createTemporaryPosterConfigurationForPosterMatchingUUID:dCopy andApplyUpdates:updatesCopy completion:completionCopy];

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)_stateLock_createTemporaryPosterConfigurationForPosterMatchingUUID:(id)d andApplyUpdates:(id)updates completion:(id)completion
{
  v58[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  updatesCopy = updates;
  completionCopy = completion;
  if (![(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (![updatesCopy count])
    {
      v31 = MEMORY[0x277CCA9B8];
      v57[0] = @"configurationUUID";
      v32 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:dCopy];
      v57[1] = *MEMORY[0x277CCA470];
      v58[0] = v32;
      v58[1] = @"No updates to execute?";
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
      v11 = [v31 pbf_dataStoreErrorWithCode:-2214 userInfo:v33];

      goto LABEL_10;
    }

    v54 = 0;
    v53 = 0;
    [(PBFPosterExtensionDataStore *)self _stateLock_findStoreCoordinatorsForUUID:dCopy extensionStoreCoordinator:&v54 configurationStoreCoordinator:&v53];
    v12 = v54;
    v13 = v53;
    v14 = v13;
    if (!v13)
    {
      v34 = MEMORY[0x277CCA9B8];
      v55 = @"configurationUUID";
      v35 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:dCopy];
      v56 = v35;
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      pathOfLatestVersion = [v34 pbf_dataStoreErrorWithCode:-2219 userInfo:v36];

      (*(completionCopy + 2))(completionCopy, 0, 0, pathOfLatestVersion);
LABEL_16:

      goto LABEL_17;
    }

    v44 = v12;
    v42 = v13;
    pathOfLatestVersion = [v13 pathOfLatestVersion];
    v43 = [objc_alloc(MEMORY[0x277D3ED58]) _initWithPath:pathOfLatestVersion];
    v16 = MEMORY[0x277D3EB88];
    role = [pathOfLatestVersion role];
    v18 = [v16 temporaryPathForRole:role];

    identity = [pathOfLatestVersion identity];
    v20 = MEMORY[0x277D3EBA0];
    contentsURL = [v18 contentsURL];
    v41 = identity;
    v22 = [v20 pathWithContainerURL:contentsURL identity:identity];

    instanceURL = [v22 instanceURL];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v52 = 0;
    v38 = v22;
    v25 = [v22 ensureContentsURLIsReachableAndReturnError:&v52];
    v26 = v52;
    v39 = defaultManager;
    v40 = instanceURL;
    if (v25)
    {
      [defaultManager removeItemAtURL:instanceURL error:0];
      instanceURL2 = [pathOfLatestVersion instanceURL];
      v51 = v26;
      v28 = [defaultManager copyItemAtURL:instanceURL2 toURL:instanceURL error:&v51];
      v37 = v51;

      if (v28)
      {
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __125__PBFPosterExtensionDataStore__stateLock_createTemporaryPosterConfigurationForPosterMatchingUUID_andApplyUpdates_completion___block_invoke;
        v45[3] = &unk_2782C5CD8;
        v46 = v18;
        v50 = completionCopy;
        v47 = defaultManager;
        v29 = v38;
        v48 = v38;
        v30 = v43;
        v49 = v43;
        [(PBFPosterExtensionDataStore *)self _stateLock_convertPosterUpdatesToRoleCoordinatorChanges:updatesCopy toPath:v48 powerLogReason:0 completion:v45];

        v26 = v37;
        v12 = v44;
LABEL_15:

        v14 = v42;
        goto LABEL_16;
      }

      [v18 invalidate];
      v26 = v37;
      (*(completionCopy + 2))(completionCopy, 0, 0, v37);
    }

    else
    {
      [v18 invalidate];
      (*(completionCopy + 2))(completionCopy, 0, 0, v26);
    }

    v30 = v43;
    v12 = v44;
    v29 = v38;
    goto LABEL_15;
  }

  if (completionCopy)
  {
    v11 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
LABEL_10:
    (*(completionCopy + 2))(completionCopy, 0, 0, v11);
  }

LABEL_17:
}

void __125__PBFPosterExtensionDataStore__stateLock_createTemporaryPosterConfigurationForPosterMatchingUUID_andApplyUpdates_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    [*(a1 + 32) invalidate];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (v28)
    {
      v9 = *(a1 + 40);
      v10 = [*(a1 + 48) contentsURL];
      [v9 removeItemAtURL:v10 error:0];

      v11 = *(a1 + 40);
      v12 = [v28 incomingPosterConfiguration];
      v13 = [v12 path];
      v14 = [v13 contentsURL];
      v15 = [*(a1 + 48) contentsURL];
      [v11 copyItemAtURL:v14 toURL:v15 error:0];
    }

    v16 = objc_alloc(MEMORY[0x277D3ECE0]);
    v17 = *(a1 + 32);
    v18 = [*(a1 + 56) pbf_posterUUID];
    v19 = [*(a1 + 56) _path];
    v20 = [v19 serverIdentity];
    v21 = [v28 incomingPosterConfiguration];
    v22 = [v21 configuredProperties];
    v23 = [v16 initWithUpdatedPath:v17 updatedPosterUUID:v18 sourceIdentity:v20 configuredProperties:v22 attributes:0];

    v24 = [PBFPosterConfigurationUpdateResult alloc];
    v25 = [v28 incomingAssocPosterConfiguration];
    v26 = [v28 postersToDelete];
    v27 = [(PBFPosterConfigurationUpdateResult *)v24 initWithIncomingPosterConfiguration:v23 incomingAssocPosterConfiguration:v25 postersToDelete:v26];

    (*(*(a1 + 64) + 16))();
    [*(a1 + 32) invalidate];
  }
}

- (void)_stateLock_updatePosterConfiguration:(id)configuration updates:(id)updates completion:(id)completion
{
  v34[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  updatesCopy = updates;
  completionCopy = completion;
  pbf_posterUUID = [configurationCopy pbf_posterUUID];
  if (pbf_posterUUID && ([configurationCopy _path], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isServerPosterPath"), v12, (v13 & 1) != 0))
  {
    role = [configurationCopy role];
    v15 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKeyedSubscript:role];
    posterCollection = [v15 posterCollection];

    v30 = posterCollection;
    v17 = [posterCollection posterWithUUID:pbf_posterUUID];
    _path = [v17 _path];
    serverIdentity = [_path serverIdentity];

    _path2 = [configurationCopy _path];
    serverIdentity2 = [_path2 serverIdentity];

    if ([serverIdentity isEqual:serverIdentity2])
    {
      [(PBFPosterExtensionDataStore *)self _stateLock_updatePosterConfigurationMatchingUUID:pbf_posterUUID updates:updatesCopy completion:completionCopy];
      v22 = 0;
    }

    else
    {
      v28 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA470];
      v32[0] = @"Poster Configuration specified is not the most up to date version; please re-run your command after you've received a more up to date poster";
      v31[0] = v24;
      v31[1] = @"version";
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(serverIdentity, "version")}];
      v32[1] = v27;
      v31[2] = @"supplement";
      [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(serverIdentity, "supplement")}];
      v25 = v29 = v17;
      v32[2] = v25;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
      v22 = [v28 pbf_dataStoreErrorWithCode:-2214 userInfo:v26];

      v17 = v29;
    }
  }

  else
  {
    v23 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA470];
    v34[0] = @"Invalid configuration specified";
    role = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v22 = [v23 pbf_dataStoreErrorWithCode:-2214 userInfo:role];
  }

  if (v22)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, v22);
  }
}

- (void)_stateLock_updatePosterConfigurationMatchingUUID:(id)d updates:(id)updates completion:(id)completion
{
  v33[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  updatesCopy = updates;
  completionCopy = completion;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (completionCopy)
    {
      v11 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
LABEL_8:
      (*(completionCopy + 2))(completionCopy, 0, 0, v11);
    }
  }

  else
  {
    if (![updatesCopy count])
    {
      v17 = MEMORY[0x277CCA9B8];
      v32[0] = @"configurationUUID";
      v18 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:dCopy];
      v32[1] = *MEMORY[0x277CCA470];
      v33[0] = v18;
      v33[1] = @"No updates to execute?";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
      v11 = [v17 pbf_dataStoreErrorWithCode:-2214 userInfo:v19];

      goto LABEL_8;
    }

    v28 = 0;
    v29 = 0;
    [(PBFPosterExtensionDataStore *)self _stateLock_findStoreCoordinatorsForUUID:dCopy extensionStoreCoordinator:&v29 configurationStoreCoordinator:&v28];
    v13 = v28;
    v12 = v29;
    if (v28)
    {
      v14 = v28;
      v15 = v12;
      pathOfLatestVersion = [v14 pathOfLatestVersion];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __99__PBFPosterExtensionDataStore__stateLock_updatePosterConfigurationMatchingUUID_updates_completion___block_invoke;
      v26[3] = &unk_2782C5D00;
      v27 = completionCopy;
      [(PBFPosterExtensionDataStore *)self _stateLock_applyUpdatesAndIngestConfiguration:updatesCopy toPath:pathOfLatestVersion powerLogReason:3 completion:v26];
    }

    else
    {
      v20 = MEMORY[0x277CCA9B8];
      v30 = @"configurationUUID";
      v21 = MEMORY[0x277CCAD78];
      v22 = 0;
      v23 = v12;
      v24 = [v21 pf_nonnullUUIDStringOrSentinel:dCopy];
      v31 = v24;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      pathOfLatestVersion = [v20 pbf_dataStoreErrorWithCode:-2219 userInfo:v25];

      (*(completionCopy + 2))(completionCopy, 0, 0, pathOfLatestVersion);
    }
  }
}

- (void)_stateLock_applyUpdatesAndIngestConfiguration:(id)configuration toPath:(id)path powerLogReason:(int64_t)reason completion:(id)completion
{
  v58 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  pathCopy = path;
  completionCopy = completion;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (completionCopy)
    {
      v13 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, 0, v13);
    }
  }

  else
  {
    selfCopy = self;
    reasonCopy = reason;
    v37 = completionCopy;
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v16 = [uUIDString substringToIndex:7];

    v18 = PBFLogDataStore(v17);
    v19 = os_signpost_id_generate(v18);

    v21 = PBFLogDataStore(v20);
    v22 = v21;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 138543874;
      v53 = pathCopy;
      v54 = 2114;
      v55 = configurationCopy;
      v56 = 2114;
      v57 = v16;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v19, "_stateLock_applyUpdatesAndIngestConfiguration", "path: %{public}@ ; updates: %{public}@; id %{public}@", buf, 0x20u);
    }

    v34 = v19;

    v24 = PBFLogDataStore(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v53 = v16;
      v54 = 2114;
      v55 = pathCopy;
      _os_log_impl(&dword_21B526000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] BEGIN POSTER UPDATES FOR PATH %{public}@", buf, 0x16u);
    }

    v38 = pathCopy;

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v39 = configurationCopy;
    v25 = configurationCopy;
    v26 = [v25 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v48;
      do
      {
        v29 = 0;
        do
        {
          if (*v48 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v47 + 1) + 8 * v29);
          v31 = PBFLogDataStore(v26);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v53 = v16;
            v54 = 2114;
            v55 = v30;
            _os_log_impl(&dword_21B526000, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] POSTER UPDATE: %{public}@", buf, 0x16u);
          }

          ++v29;
        }

        while (v27 != v29);
        v26 = [v25 countByEnumeratingWithState:&v47 objects:v51 count:16];
        v27 = v26;
      }

      while (v26);
    }

    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __110__PBFPosterExtensionDataStore__stateLock_applyUpdatesAndIngestConfiguration_toPath_powerLogReason_completion___block_invoke;
    v40[3] = &unk_2782C5D70;
    v32 = v16;
    v41 = v16;
    v46 = v34;
    pathCopy = v38;
    v42 = v38;
    v43 = v25;
    completionCopy = v37;
    v44 = selfCopy;
    v45 = v37;
    v33 = v32;
    [(PBFPosterExtensionDataStore *)selfCopy _stateLock_convertPosterUpdatesToRoleCoordinatorChanges:v43 toPath:v42 powerLogReason:reasonCopy completion:v40];

    configurationCopy = v39;
  }
}

void __110__PBFPosterExtensionDataStore__stateLock_applyUpdatesAndIngestConfiguration_toPath_powerLogReason_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v125 = *MEMORY[0x277D85DE8];
  v95 = a2;
  v7 = a3;
  v94 = a4;
  v8 = PBFLogDataStore(v94);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 138543362;
    v119 = v9;
    _os_log_impl(&dword_21B526000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] receiving update result", buf, 0xCu);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v107 objects:v124 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v108;
    do
    {
      v14 = v10;
      v15 = 0;
      do
      {
        if (*v108 != v13)
        {
          objc_enumerationMutation(v14);
        }

        v16 = *(*(&v107 + 1) + 8 * v15);
        v17 = PBFLogDataStore(v11);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 32);
          *buf = 138543618;
          v119 = v18;
          v120 = 2114;
          v121 = v16;
          _os_log_impl(&dword_21B526000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] result: %{public}@", buf, 0x16u);
        }

        ++v15;
      }

      while (v12 != v15);
      v10 = v14;
      v11 = [v14 countByEnumeratingWithState:&v107 objects:v124 count:16];
      v12 = v11;
    }

    while (v11);
  }

  v20 = PBFLogDataStore(v19);
  v21 = v20;
  v22 = a1;
  v23 = *(a1 + 72);
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    v25 = *(a1 + 40);
    v24 = *(a1 + 48);
    v26 = *(a1 + 32);
    *buf = 138543874;
    v119 = v25;
    v120 = 2114;
    v121 = v24;
    v122 = 2114;
    v123 = v26;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v21, OS_SIGNPOST_INTERVAL_END, v23, "_stateLock_applyUpdatesAndIngestConfiguration", "path: %{public}@ ; updates: %{public}@, id %{public}@", buf, 0x20u);
  }

  v28 = v95;
  if (v95)
  {
    v29 = [v10 count];
    v30 = [*(a1 + 48) count];
    v31 = PBFLogDataStore(v30);
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    if (v29 == v30)
    {
      if (v32)
      {
        v33 = *(a1 + 32);
        *buf = 138543362;
        v119 = v33;
        _os_log_impl(&dword_21B526000, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] processing update results for updates", buf, 0xCu);
      }

      v34 = [*(a1 + 40) identity];
      v35 = objc_opt_new();
      v36 = [v95 roleCoordinatorChanges];
      v37 = [v36 count];

      if (v37)
      {
        v38 = [v95 roleCoordinatorChanges];
        v39 = [v38 mutableCopy];

        v41 = PBFLogDataStore(v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = *(v22 + 32);
          *buf = 138543618;
          v119 = v42;
          v120 = 2114;
          v121 = v39;
          _os_log_impl(&dword_21B526000, v41, OS_LOG_TYPE_DEFAULT, "[%{public}@] role coordinator changes received: %{public}@", buf, 0x16u);
        }

        v35 = v39;
      }

      else
      {
        v93 = v10;
        v47 = [v34 role];
        v92 = [v95 incomingPosterConfiguration];
        v48 = [PBFPosterRoleCoordinatorChange updatePosterWithinRole:v47 incomingPoster:?];
        v49 = PBFLogDataStore([v35 addObject:v48]);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = *(v22 + 32);
          *buf = 138543618;
          v119 = v50;
          v120 = 2114;
          v121 = v48;
          _os_log_impl(&dword_21B526000, v49, OS_LOG_TYPE_DEFAULT, "[%{public}@] updating poster: %{public}@", buf, 0x16u);
        }

        v51 = [v95 incomingAssocPosterConfiguration];

        if (v51)
        {
          v52 = [v95 incomingAssocPosterConfiguration];
          if ([v52 incomingPosterType] == 5)
          {
            v53 = [PBFPosterRoleCoordinatorChange updatePosterWithinRole:v47 incomingPoster:v52];
          }

          else
          {
            v57 = [v52 incomingPosterType];
            if (v57 != 4)
            {
              v85 = PBFLogDataStore(v57);
              if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
              {
                v86 = *(v22 + 32);
                *buf = 138543362;
                v119 = v86;
                _os_log_impl(&dword_21B526000, v85, OS_LOG_TYPE_DEFAULT, "[%{public}@] bailing; issue with assoc poster", buf, 0xCu);
              }

              v87 = *(v22 + 64);
              v88 = MEMORY[0x277CCA9B8];
              v116 = *MEMORY[0x277CCA470];
              v117 = @"Associated poster configuration has incorrect PRIncomingPosterType; should be AssociatedNew/AssociatedUpdate but is something else that we do not handle for this.";
              v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
              v90 = [v88 pbf_dataStoreErrorWithCode:-2214 userInfo:v89];
              (*(v87 + 16))(v87, 0, v93, v90);

              v10 = v93;
              v44 = v94;
              v80 = v92;
              goto LABEL_59;
            }

            v53 = [PBFPosterRoleCoordinatorChange addPosterToRole:v47 incomingPoster:v52];
          }

          v58 = v53;
          [v35 addObject:v53];
        }

        v91 = v34;
        v41 = v47;
        v59 = v35;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v60 = [v95 postersToDelete];
        v61 = [v60 countByEnumeratingWithState:&v103 objects:v115 count:16];
        if (v61)
        {
          v62 = v61;
          v63 = *v104;
          do
          {
            v64 = 0;
            do
            {
              if (*v104 != v63)
              {
                objc_enumerationMutation(v60);
              }

              v65 = *(*(&v103 + 1) + 8 * v64);
              v66 = PBFLogDataStore(v61);
              if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
              {
                v67 = *(v22 + 32);
                *buf = 138543618;
                v119 = v67;
                v120 = 2114;
                v121 = v65;
                _os_log_impl(&dword_21B526000, v66, OS_LOG_TYPE_DEFAULT, "[%{public}@] poster to delete: %{public}@", buf, 0x16u);
              }

              v68 = [v65 pbf_posterUUID];
              v69 = [PBFPosterRoleCoordinatorChange removePosterFromRole:v41 matchingUUID:v68];
              [v59 addObject:v69];

              ++v64;
            }

            while (v62 != v64);
            v61 = [v60 countByEnumeratingWithState:&v103 objects:v115 count:16];
            v62 = v61;
          }

          while (v61);
        }

        v10 = v93;
        v35 = v59;
        v34 = v91;
      }

      v70 = *(v22 + 56);
      v71 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRSPosterUpdate for %@", v34];
      v102 = 0;
      LOBYTE(v70) = [v70 _stateLock_executeDataStoreUpdateWithChanges:v35 diffs:0 options:1 reason:v71 context:0 error:&v102];
      v47 = v102;

      if (v70)
      {
        v72 = *(v22 + 56);
        v73 = [*(v22 + 40) serverIdentity];
        v74 = [v73 posterUUID];
        v75 = [v72 _stateLock_posterConfigurationPathForUUID:v74];

        v77 = PBFLogDataStore(v76);
        v28 = v95;
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          v78 = *(v22 + 32);
          *buf = 138543618;
          v119 = v78;
          v120 = 2114;
          v121 = v75;
          _os_log_impl(&dword_21B526000, v77, OS_LOG_TYPE_DEFAULT, "[%{public}@] successfully performed updates; new path: %{public}@", buf, 0x16u);
        }

        v79 = *(*(v22 + 56) + 200);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __110__PBFPosterExtensionDataStore__stateLock_applyUpdatesAndIngestConfiguration_toPath_powerLogReason_completion___block_invoke_368;
        block[3] = &unk_2782C5D48;
        v97 = *(v22 + 32);
        v98 = *(v22 + 48);
        v99 = v75;
        v101 = *(v22 + 64);
        v100 = v10;
        v80 = v75;
        dispatch_async(v79, block);

        v44 = v94;
      }

      else
      {
        v28 = v95;
        if (v47)
        {
          v81 = v47;
          v80 = v81;
        }

        else
        {
          v82 = MEMORY[0x277CCA9B8];
          v113 = *MEMORY[0x277CCA470];
          v114 = @"The update was rejected for a reason which defies explanation";
          v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
          v80 = [v82 pbf_generalErrorWithCode:0 userInfo:v83];
        }

        v44 = v94;
        v84 = PBFLogDataStore(v81);
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          __110__PBFPosterExtensionDataStore__stateLock_applyUpdatesAndIngestConfiguration_toPath_powerLogReason_completion___block_invoke_cold_1();
        }

        (*(*(v22 + 64) + 16))();
      }

LABEL_59:

      goto LABEL_60;
    }

    if (v32)
    {
      v45 = *(a1 + 32);
      *buf = 138543362;
      v119 = v45;
      _os_log_impl(&dword_21B526000, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] firing completion handler; updates were rejected because there were some missing updates", buf, 0xCu);
    }

    v46 = *(a1 + 64);
    v44 = v94;
    if (v94)
    {
      (*(v46 + 16))(v46, 0, v10, v94);
    }

    else
    {
      v54 = MEMORY[0x277CCA9B8];
      v111 = *MEMORY[0x277CCA470];
      v112 = @"The update was rejected because some results did not come in for some updates";
      v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
      v56 = [v54 pbf_generalErrorWithCode:0 userInfo:v55];
      (*(v46 + 16))(v46, 0, v10, v56);
    }
  }

  else
  {
    v43 = PBFLogDataStore(v27);
    v44 = v94;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      __110__PBFPosterExtensionDataStore__stateLock_applyUpdatesAndIngestConfiguration_toPath_powerLogReason_completion___block_invoke_cold_2();
    }

    (*(*(a1 + 64) + 16))();
  }

LABEL_60:
}

uint64_t __110__PBFPosterExtensionDataStore__stateLock_applyUpdatesAndIngestConfiguration_toPath_powerLogReason_completion___block_invoke_368(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = PBFLogDataStore(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v10 = 138543618;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_21B526000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] firing completion handler for updates %{public}@", &v10, 0x16u);
  }

  v5 = [*(a1 + 40) bs_containsObjectPassingTest:&__block_literal_global_372];
  if (v5)
  {
    v6 = PBFLogDataStore(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = [MEMORY[0x277D3EDE8] loadAmbientWidgetLayoutForPath:*(a1 + 48) error:0];
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] ambient identifiers: %{public}@", &v10, 0x16u);
    }
  }

  return (*(*(a1 + 64) + 16))();
}

- (void)_stateLock_convertPosterUpdatesToRoleCoordinatorChanges:(id)changes toPath:(id)path powerLogReason:(int64_t)reason completion:(id)completion
{
  v370[2] = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  pathCopy = path;
  completionCopy = completion;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (completionCopy)
    {
      v13 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, 0, v13);
    }

    goto LABEL_226;
  }

  identity = [pathCopy identity];
  type = [identity type];

  if (type != 3)
  {
    [PBFPosterExtensionDataStore _stateLock_convertPosterUpdatesToRoleCoordinatorChanges:a2 toPath:? powerLogReason:? completion:?];
  }

  v16 = changesCopy;
  NSClassFromString(&cfstr_Nsarray.isa);
  if (!v16)
  {
    [PBFPosterExtensionDataStore _stateLock_convertPosterUpdatesToRoleCoordinatorChanges:a2 toPath:? powerLogReason:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionDataStore _stateLock_convertPosterUpdatesToRoleCoordinatorChanges:a2 toPath:? powerLogReason:? completion:?];
  }

  v17 = MEMORY[0x277CCACA8];
  if (!completionCopy)
  {
    [PBFPosterExtensionDataStore _stateLock_convertPosterUpdatesToRoleCoordinatorChanges:a2 toPath:? powerLogReason:? completion:?];
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  v19 = [v17 stringWithFormat:@"PosterUpdates-%@", uUID];

  v286 = [objc_alloc(MEMORY[0x277D3ED58]) _initWithPath:pathCopy];
  identity2 = [pathCopy identity];
  role = [identity2 role];
  provider = [identity2 provider];
  v336[0] = 0;
  v336[1] = v336;
  v336[2] = 0x3032000000;
  v336[3] = __Block_byref_object_copy_;
  v336[4] = __Block_byref_object_dispose_;
  runtimeAssertionProvider = self->_runtimeAssertionProvider;
  v21 = NSStringFromSelector(a2);
  currentProcess = [MEMORY[0x277D47008] currentProcess];
  v337 = [(PBFRuntimeAssertionProviding *)runtimeAssertionProvider acquirePosterUpdateRuntimeAssertionForReason:v21 target:currentProcess];

  v330 = 0;
  v331 = &v330;
  v332 = 0x3032000000;
  v333 = __Block_byref_object_copy_;
  v334 = __Block_byref_object_dispose_;
  v335 = 0;
  v23 = self->_instanceCollection;
  extensionForIdentifier = [(PFPosterExtensionProvider *)self->_extensionProvider extensionForIdentifier];
  v25 = [extensionForIdentifier objectForKey:provider];

  instanceProvider = [(PFPosterExtensionProvider *)self->_extensionProvider instanceProvider];
  v329 = 0;
  v27 = [instanceProvider acquireInstanceForExtension:v25 reason:v19 error:&v329];
  v288 = v329;

  v323 = 0;
  v324 = &v323;
  v325 = 0x3032000000;
  v326 = __Block_byref_object_copy_;
  v327 = __Block_byref_object_dispose_;
  v328 = 0;
  v282 = v25;
  v317 = 0;
  v318 = &v317;
  v319 = 0x3032000000;
  v320 = __Block_byref_object_copy_;
  v321 = __Block_byref_object_dispose_;
  v322 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __120__PBFPosterExtensionDataStore__stateLock_convertPosterUpdatesToRoleCoordinatorChanges_toPath_powerLogReason_completion___block_invoke;
  aBlock[3] = &unk_2782C5D98;
  v312 = completionCopy;
  v285 = v27;
  v309 = v285;
  v281 = v23;
  v310 = v281;
  v280 = v19;
  v311 = v280;
  v313 = &v323;
  v314 = &v317;
  v315 = &v330;
  v316 = v336;
  v28 = _Block_copy(aBlock);
  if (v288 || !v25)
  {
    v32 = v288;
    if (!v288)
    {
      v33 = MEMORY[0x277CCA9B8];
      v369[0] = *MEMORY[0x277CCA450];
      v369[1] = @"provider";
      v370[0] = @"Unable to build up a new extension instance to service applying updates";
      provider2 = [identity2 provider];
      v23 = provider2;
      v35 = @"(null provider)";
      if (provider2)
      {
        v35 = provider2;
      }

      v370[1] = v35;
      posterCollection = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v370 forKeys:v369 count:2];
      v32 = [v33 pbf_dataStoreErrorWithCode:-2211 userInfo:posterCollection];
    }

    (*(v28 + 2))(v28, 0, 0, v32);
    v279 = v23;
    if (!v288)
    {
      goto LABEL_224;
    }

    goto LABEL_225;
  }

  v29 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKey:role];
  posterCollection = [v29 posterCollection];
  v279 = v29;
  supportedAttributes = [objc_opt_class() supportedAttributes];
  v277 = [posterCollection attributesForPoster:v286 ofTypes:supportedAttributes];

  v307 = 0;
  v278 = [v285 pr_assetUpdaterWithError:&v307];
  v31 = v307;
  v276 = v31;
  if (v31)
  {
    (*(v28 + 2))(v28, 0, 0, v31);
    goto LABEL_223;
  }

  if (!v278 || ([v278 isValid] & 1) == 0)
  {
    v46 = [MEMORY[0x277CCA9B8] pbf_dataStoreErrorWithCode:-2211 userInfo:MEMORY[0x277CBEC10]];
    (*(v28 + 2))(v28, 0, 0, v46);
    goto LABEL_222;
  }

  auditToken = [v278 auditToken];
  if (!auditToken)
  {
    v47 = [MEMORY[0x277CCA9B8] pbf_dataStoreErrorWithCode:-2210 userInfo:MEMORY[0x277CBEC10]];
    (*(v28 + 2))(v28, 0, 0, v47);
    goto LABEL_221;
  }

  target = [v278 target];
  if (!target)
  {
    v48 = [MEMORY[0x277CCA9B8] pbf_dataStoreErrorWithCode:-2209 userInfo:MEMORY[0x277CBEC10]];
    (*(v28 + 2))(v28, 0, 0, v48);
    goto LABEL_220;
  }

  v36 = self->_runtimeAssertionProvider;
  v37 = [@"applyUpdates:toPath:powerLogReason:completion: update for " stringByAppendingString:provider];
  v38 = [(PBFRuntimeAssertionProviding *)v36 acquirePosterEditingRuntimeAssertionForReason:v37 target:target];
  v39 = v331[5];
  v331[5] = v38;

  _stateLock_switcherConfiguration = [(PBFPosterExtensionDataStore *)self _stateLock_switcherConfiguration];
  v270 = [_stateLock_switcherConfiguration _childPosterConfigurationForConfiguration:v286];

  _path = [v270 _path];
  serverIdentity = [_path serverIdentity];

  v43 = [MEMORY[0x277D3ECF8] mutableConfigurationWithRole:role];
  _path2 = [v43 _path];
  v268 = serverIdentity;
  [MEMORY[0x277D3ECF8] mutableConfigurationWithRole:role];
  v266 = v264 = v43;
  _path3 = [v266 _path];
  v262 = objc_opt_new();
  v306 = 0;
  v44 = [v286 loadConfiguredPropertiesWithError:&v306];
  v45 = v306;
  v255 = v45;
  if (v45)
  {
    (*(v28 + 2))(v28, 0, 0, v45);
    v260 = 0;
    v257 = v268;
    goto LABEL_219;
  }

  v49 = [v44 mutableCopy];
  v50 = v49;
  v248 = v44;
  if (v49)
  {
    v269 = v49;
  }

  else
  {
    v269 = [MEMORY[0x277D3EDD8] defaultConfiguredPropertiesForRole:role];
  }

  v51 = [v277 mutableCopy];
  v52 = v51;
  if (v51)
  {
    v256 = v51;
  }

  else
  {
    v256 = objc_opt_new();
  }

  v244 = [v16 bs_firstObjectPassingTest:&__block_literal_global_406];

  v249 = objc_opt_new();
  v305 = 0;
  v53 = [v266 copyContentsOfConfiguration:v286 error:&v305];
  v54 = v305;
  v55 = v54;
  if ((v53 & 1) == 0)
  {
    v195 = v54;
    if (!v54)
    {
      v196 = MEMORY[0x277CCA9B8];
      v367 = *MEMORY[0x277CCA470];
      v368 = @"Unable to copy contents of existing poster into temporary poster";
      v263 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v368 forKeys:&v367 count:1];
      v195 = [v196 pbf_generalErrorWithCode:7 userInfo:v263];
    }

    (*(v28 + 2))(v28, 0, 0, v195);
    goto LABEL_202;
  }

  if (v270)
  {
    v304 = 0;
    v56 = [v43 copyContentsOfConfiguration:v270 error:&v304];
    v57 = v304;
    v55 = v57;
    if (v56)
    {

      goto LABEL_37;
    }

    v195 = v57;
    if (!v57)
    {
      v197 = MEMORY[0x277CCA9B8];
      v365 = *MEMORY[0x277CCA470];
      v366 = @"Unable to copy contents of existing assoc poster into temporary poster";
      v263 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v366 forKeys:&v365 count:1];
      v195 = [v197 pbf_generalErrorWithCode:7 userInfo:v263];
    }

    (*(v28 + 2))(v28, 0, 0, v195);
LABEL_202:
    v260 = 0;
    v257 = v268;
    if (!v55)
    {
      goto LABEL_216;
    }

    goto LABEL_218;
  }

LABEL_37:
  v263 = objc_opt_new();
  v302 = 0u;
  v303 = 0u;
  v300 = 0u;
  v301 = 0u;
  obj = v16;
  v58 = [obj countByEnumeratingWithState:&v300 objects:v364 count:16];
  if (!v58)
  {
    v260 = 0;
    v257 = v268;
    goto LABEL_205;
  }

  v260 = 0;
  v254 = *v301;
  v243 = *MEMORY[0x277CCA470];
  v242 = *MEMORY[0x277D3EEA0];
  v237 = *MEMORY[0x277D3EA30];
  v250 = *MEMORY[0x277D3EA38];
  v252 = *MEMORY[0x277D3EEC0];
  v241 = *MEMORY[0x277D3EEA8];
  v257 = v268;
  while (2)
  {
    v273 = 0;
    v253 = v58;
    do
    {
      if (*v301 != v254)
      {
        objc_enumerationMutation(obj);
      }

      v272 = *(*(&v300 + 1) + 8 * v273);
      type2 = [v272 type];
      v275 = type2;
      v60 = type2;
      if (type2 > 9)
      {
        if (type2 > 0x15)
        {
          goto LABEL_80;
        }

        if (((1 << type2) & 0x3BE000) != 0)
        {
          goto LABEL_49;
        }

        if (type2 != 12)
        {
          v60 = type2;
          if (type2 == 18)
          {
            payload = [v272 payload];
            v82 = objc_opt_class();
            v83 = __BSSafeCast(payload, v82);

            v291 = 0;
            v62 = [v269 applyUpdate:v272 error:&v291];
            v61 = v291;

            goto LABEL_63;
          }

LABEL_80:
          if (v60 == 10)
          {
            payload2 = [v272 payload];
            v99 = objc_opt_class();
            v246 = __BSSafeCast(payload2, v99);

            propertyListRoot = [v246 propertyListRoot];
            v239 = [propertyListRoot objectForKey:@"chargerIdentifier"];

            supportedAttributes2 = [objc_opt_class() supportedAttributes];
            v102 = [supportedAttributes2 containsObject:v242];

            if (v102)
            {
              if (v246 && v239)
              {
                v103 = [v277 objectForKey:v242];
                v236 = [v103 isAssociatedWithChargerIdentifier:v239];
                v229 = v103;
                if (v236)
                {
                  v104 = MEMORY[0x277CCA9B8];
                  v354 = v243;
                  v355 = @"Charger identifier already associated with poster";
                  v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v355 forKeys:&v354 count:1];
                  v61 = [v104 pbf_dataStoreErrorWithCode:-2214 userInfo:v105];
                }

                else
                {
                  v152 = [v103 mutableCopy];
                  v153 = v152;
                  if (v152)
                  {
                    v154 = v152;
                  }

                  else
                  {
                    v154 = objc_opt_new();
                  }

                  v105 = v154;

                  v25 = v282;
                  [v105 associateWithChargerIdentifier:v239];
                  v174 = [v105 copy];
                  if (v244)
                  {
                    pbf_posterUUID = [v286 pbf_posterUUID];
                    v176 = [PBFPosterRoleCoordinatorChange assignAttributeToPosterWithinRole:role matchingUUID:pbf_posterUUID attribute:v174];
                    [v249 addObject:v176];
                  }

                  else
                  {
                    [v256 setObject:v174 forKeyedSubscript:v242];
                  }

                  v61 = 0;
                }

                v62 = v236 ^ 1;
                v89 = v229;
                goto LABEL_158;
              }

              v128 = MEMORY[0x277CCA9B8];
              v356 = v243;
              v357 = @"Charger identifier payload was invalid";
              v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v357 forKeys:&v356 count:1];
              v111 = [v128 pbf_dataStoreErrorWithCode:-2214 userInfo:v89];
            }

            else
            {
              v110 = MEMORY[0x277CCA9B8];
              v358 = v243;
              v359 = @"This attribute is incompatible with this role";
              v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v359 forKeys:&v358 count:1];
              v111 = [v110 pbf_dataStoreErrorWithCode:-2214 userInfo:v89];
            }

            v61 = v111;
            v62 = 0;
          }

          else
          {
            if (v60 != 11)
            {
              goto LABEL_209;
            }

            payload3 = [v272 payload];
            v85 = objc_opt_class();
            v246 = __BSSafeCast(payload3, v85);

            propertyListRoot2 = [v246 propertyListRoot];
            v239 = [propertyListRoot2 objectForKey:@"chargerIdentifier"];

            supportedAttributes3 = [objc_opt_class() supportedAttributes];
            v88 = [supportedAttributes3 containsObject:v242];

            if (v88)
            {
              if (v246 && v239)
              {
                v89 = [v277 objectForKey:v242];
                v62 = [v89 isAssociatedWithChargerIdentifier:v239];
                if (v62)
                {
                  v234 = v89;
                  v90 = [v89 mutableCopy];
                  [v90 disassociateFromChargerIdentifier:v239];
                  v228 = v90;
                  v91 = [v90 copy];
                  if (v244)
                  {
                    pbf_posterUUID2 = [v286 pbf_posterUUID];
                    v93 = [PBFPosterRoleCoordinatorChange assignAttributeToPosterWithinRole:role matchingUUID:pbf_posterUUID2 attribute:v91];
                    [v249 addObject:v93];
                  }

                  else
                  {
                    [v256 setObject:v91 forKeyedSubscript:v242];
                  }

                  v61 = 0;
                  v89 = v234;
                }

                else
                {
                  v61 = 0;
                }

                goto LABEL_158;
              }

              v127 = MEMORY[0x277CCA9B8];
              v350 = v243;
              v351 = @"Charger identifier payload was invalid";
              v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v351 forKeys:&v350 count:1];
              v109 = [v127 pbf_dataStoreErrorWithCode:-2214 userInfo:v89];
            }

            else
            {
              v108 = MEMORY[0x277CCA9B8];
              v352 = v243;
              v353 = @"This attribute is incompatible with this role";
              v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v353 forKeys:&v352 count:1];
              v109 = [v108 pbf_dataStoreErrorWithCode:-2214 userInfo:v89];
            }

            v61 = v109;
            v62 = 0;
          }

LABEL_158:

          goto LABEL_63;
        }
      }

      else
      {
        if (type2 <= 5)
        {
          if ((type2 - 1) >= 5)
          {
            if (type2)
            {
              goto LABEL_209;
            }

            v61 = 0;
            v62 = 1;
            goto LABEL_63;
          }

LABEL_49:
          if (![role isEqual:v250])
          {
            v198 = MEMORY[0x277CCA9B8];
            v362 = v243;
            v363 = @"This attribute is incompatible with this role";
            v199 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v363 forKeys:&v362 count:1];
            v200 = [v198 pbf_dataStoreErrorWithCode:-2214 userInfo:v199];
LABEL_207:
            v61 = v200;

LABEL_208:
            if (!v61)
            {
LABEL_209:
              v61 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:7 userInfo:0];
            }

            v201 = [MEMORY[0x277D3E9E0] failedUpdateResultForUpdate:v272 error:v61];
            [v263 addObject:v201];
            v55 = v61;

            if (!v61)
            {
              goto LABEL_212;
            }

            (*(v28 + 2))(v28, 0, v263, v61);
            goto LABEL_217;
          }

          v63 = v272;
          v64 = v63;
          if (v275 == 3)
          {
            v65 = objc_alloc(MEMORY[0x277D3E9C8]);
            payload4 = [v64 payload];
            if (v270)
            {
              v67 = [v65 _initWithUpdateType:4 payload:payload4];
            }

            else
            {
              v67 = [v65 _initWithUpdateType:5 payload:payload4];
            }

            v68 = v67;
          }

          else
          {
            v68 = v63;
          }

          v299 = 0;
          v62 = [v269 applyUpdate:v68 error:&v299];
          v61 = v299;

          goto LABEL_63;
        }

        if (type2 <= 7)
        {
          if (type2 != 6)
          {
            payload5 = [v272 payload];
            v70 = objc_opt_class();
            v245 = __BSSafeCast(payload5, v70);

            if (!v245 || ([v245 switcherProviderUpdateSessionInfo], v71 = objc_claimAutoreleasedReturnValue(), v72 = v71 == 0, v71, v72))
            {
              v106 = MEMORY[0x277CCA9B8];
              v340 = v243;
              v341 = @"Home Screen Apperance payload was invalid for updating lock screen";
              v107 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v341 forKeys:&v340 count:1];
              v61 = [v106 pbf_dataStoreErrorWithCode:-2214 userInfo:v107];
              v62 = 0;
            }

            else
            {
              switcherProviderUpdateSessionInfo = [v245 switcherProviderUpdateSessionInfo];
              identity3 = [pathCopy identity];
              provider3 = [identity3 provider];
              v293 = 0;
              v238 = [(PBFPosterExtensionDataStore *)self _stateLock_prepareReloadConfigurationOperationForExtension:provider3 path:pathCopy locationInUse:0 sessionInfo:switcherProviderUpdateSessionInfo powerLogReason:reason assetUpdater:v278 error:&v293];
              v233 = switcherProviderUpdateSessionInfo;
              v76 = v293;

              if (v76)
              {
                error2 = v76;
                goto LABEL_112;
              }

              [v285 pr_addRefreshConfigurationOperation:v238 waitUntilFinished:1];
              error = [v238 error];

              if (error)
              {
                error2 = [v238 error];
LABEL_112:
                v61 = error2;
                v62 = 0;
              }

              else
              {
                postRefreshPosterConfiguration = [v238 postRefreshPosterConfiguration];
                contentsURL = [postRefreshPosterConfiguration contentsURL];
                preRefreshPosterConfiguration = [v238 preRefreshPosterConfiguration];
                contentsURL2 = [preRefreshPosterConfiguration contentsURL];
                v161 = [contentsURL isEqual:contentsURL2];

                if (v161)
                {
                  v162 = MEMORY[0x277CCA9B8];
                  v338 = v243;
                  v339 = @"Lock Screen Poster rejected this update";
                  v163 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v339 forKeys:&v338 count:1];
                  v61 = [v162 pbf_dataStoreErrorWithCode:-2214 userInfo:v163];
                  v62 = 0;
                }

                else
                {
                  v163 = [objc_alloc(MEMORY[0x277D3ED58]) _initWithPath:postRefreshPosterConfiguration];
                  v180 = [MEMORY[0x277D3ECF8] mutableConfigurationWithRole:role];
                  v292 = 0;
                  v62 = [v180 copyContentsOfConfiguration:v163 error:&v292];
                  v61 = v292;
                  if (v62)
                  {
                    v227 = v180;

                    _path4 = [v227 _path];

                    _path3 = _path4;
                  }

                  else
                  {
                    v227 = v266;
                  }

                  v266 = v227;
                }

                v25 = v282;
              }

              v107 = v233;
            }

            goto LABEL_63;
          }

          payload6 = [v272 payload];
          v95 = objc_opt_class();
          v247 = __BSSafeCast(payload6, v95);

          if (!v247)
          {
            v112 = MEMORY[0x277CCA9B8];
            v348 = v243;
            v349 = @"Home Screen Apperance payload was invalid";
            v113 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v349 forKeys:&v348 count:1];
            v114 = [v112 pbf_dataStoreErrorWithCode:-2214 userInfo:v113];
            v62 = 0;

            goto LABEL_176;
          }

          homeScreenConfiguration = [v269 homeScreenConfiguration];
          v96 = [homeScreenConfiguration mutableCopy];
          v97 = v96;
          if (v96)
          {
            v240 = v96;
          }

          else
          {
            v115 = MEMORY[0x277D3ED08];
            identity4 = [pathCopy identity];
            provider4 = [identity4 provider];
            role2 = [pathCopy role];
            v240 = [v115 defaultHomeScreenConfigurationForProvider:provider4 role:role2];
          }

          v224 = [v247 updatedAppearanceType] - 1;
          if (v224 < 4)
          {
            [v240 setSelectedAppearanceType:v224];
          }

          solidColorAppearance = [v247 solidColorAppearance];

          if (solidColorAppearance)
          {
            solidColorAppearance2 = [homeScreenConfiguration solidColorAppearance];
            v118 = objc_alloc(MEMORY[0x277D3ED40]);
            solidColorAppearance3 = [v247 solidColorAppearance];
            color = [solidColorAppearance3 color];
            uIColor = [color UIColor];
            v122 = [v118 initWithColor:uIColor];

            colorPickerConfiguration = [solidColorAppearance2 colorPickerConfiguration];
            v124 = [colorPickerConfiguration copy];
            v125 = v124;
            if (v124)
            {
              v126 = v124;
            }

            else
            {
              v126 = objc_alloc_init(MEMORY[0x277D3ECD8]);
            }

            v130 = v126;

            [v130 setSelectedColor:v122];
            v131 = [objc_alloc(MEMORY[0x277D3EE18]) initWithColor:v122 colorPickerConfiguration:v130];
            [v240 setSolidColorAppearance:v131];
          }

          gradientColorAppearance = [v247 gradientColorAppearance];

          if (gradientColorAppearance)
          {
            gradientAppearance = [homeScreenConfiguration gradientAppearance];
            v132 = objc_alloc(MEMORY[0x277D3ED40]);
            gradientColorAppearance2 = [v247 gradientColorAppearance];
            color2 = [gradientColorAppearance2 color];
            uIColor2 = [color2 UIColor];
            v136 = [v132 initWithColor:uIColor2];

            colorPickerConfiguration2 = [gradientAppearance colorPickerConfiguration];
            v138 = [colorPickerConfiguration2 copy];
            v139 = v138;
            if (v138)
            {
              v140 = v138;
            }

            else
            {
              v140 = objc_alloc_init(MEMORY[0x277D3ECD8]);
            }

            v141 = v140;

            [v141 setSelectedColor:v136];
            v142 = [objc_alloc(MEMORY[0x277D3EDA0]) initWithColor:v136 colorPickerConfiguration:v141];
            [v240 setGradientAppearance:v142];
          }

          homeProviderIdentifier = [v247 homeProviderIdentifier];
          if (!homeProviderIdentifier || ([v247 homeProviderIdentifier], v144 = objc_claimAutoreleasedReturnValue(), v145 = v144 == 0, v144, homeProviderIdentifier, v145))
          {
            v150 = 0;
            v151 = 0;
            goto LABEL_165;
          }

          _path5 = [v270 _path];
          identity5 = [_path5 identity];
          provider5 = [identity5 provider];

          homeProviderIdentifier2 = [v247 homeProviderIdentifier];
          v147 = [(PBFPosterExtensionDataStore *)self _stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier:homeProviderIdentifier2];
          LODWORD(identity5) = v147 == 0;

          if (identity5)
          {
            v155 = MEMORY[0x277CCA9B8];
            v346 = @"providerIdentifier";
            v156 = @"(null)";
            if (homeProviderIdentifier2)
            {
              v156 = homeProviderIdentifier2;
            }

            v347 = v156;
            v157 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v347 forKeys:&v346 count:1];
            v150 = [v155 pbf_dataStoreErrorWithCode:-2220 userInfo:v157];
            v151 = 0;
            goto LABEL_164;
          }

          homeProviderUpdateSessionInfo = [v247 homeProviderUpdateSessionInfo];
          if (v270 && ((v148 = [provider5 isEqual:homeProviderIdentifier2], !homeProviderIdentifier2) ? (v149 = 1) : (v149 = v148), (v149 & 1) == 0))
          {
            [v262 addObject:v270];
            v217 = [MEMORY[0x277D3ECF8] mutableConfigurationWithRole:role];

            _path6 = [v217 _path];

            v257 = 0;
            _path2 = _path6;
          }

          else
          {
            v217 = v264;
          }

          extensionForIdentifier2 = [(PFPosterExtensionProvider *)self->_extensionProvider extensionForIdentifier];
          v166 = [extensionForIdentifier2 objectForKey:homeProviderIdentifier2];

          v297 = 0;
          v167 = [(PFPosterExtensionInstanceProvider *)v281 acquireInstanceForExtension:v166 reason:v280 error:&v297];
          v168 = v297;
          v169 = v324[5];
          v324[5] = v167;

          if (v168)
          {
            v170 = 0;
            v150 = v168;
          }

          else
          {
            v171 = v324[5];
            v296 = 0;
            v215 = [v171 pr_assetUpdaterWithError:&v296];
            v150 = v296;
            v170 = v215;
          }

          objc_storeStrong(v318 + 5, v170);
          if (!v168)
          {
          }

          v151 = 0;
          if (!_path2 || v150)
          {
            goto LABEL_163;
          }

          v172 = v318[5];
          v295 = 0;
          v265 = [(PBFPosterExtensionDataStore *)self _stateLock_prepareReloadConfigurationOperationForExtension:homeProviderIdentifier2 path:_path2 locationInUse:0 sessionInfo:homeProviderUpdateSessionInfo powerLogReason:reason assetUpdater:v172 error:&v295];
          v216 = v295;
          if (v216)
          {
            error4 = v216;
            goto LABEL_161;
          }

          [v324[5] pr_addRefreshConfigurationOperation:v265 waitUntilFinished:1];
          error3 = [v265 error];
          v178 = error3 == 0;

          if (!v178)
          {
            error4 = [v265 error];
LABEL_161:
            v150 = error4;
            v151 = 0;
LABEL_162:
            [(PFPosterExtensionInstanceProvider *)v281 relinquishExtensionInstance:v324[5] reason:v280];
            v25 = v282;
            [v318[5] invalidate];

LABEL_163:
            v157 = homeProviderUpdateSessionInfo;
            v264 = v217;
LABEL_164:

LABEL_165:
            [v269 setHomeScreenConfiguration:v240];
            if (v224 < 4)
            {
              v179 = 1;
            }

            else
            {
              v179 = v151;
            }

            if (solidColorAppearance)
            {
              v179 = 1;
            }

            if (gradientColorAppearance)
            {
              v179 = 1;
            }

            v114 = v150;
            if (v150)
            {
              v62 = 0;
            }

            else
            {
              v62 = v179;
            }

LABEL_176:
            v61 = v114;
            goto LABEL_63;
          }

          postRefreshPosterConfiguration2 = [v265 postRefreshPosterConfiguration];
          contentsURL3 = [postRefreshPosterConfiguration2 contentsURL];
          preRefreshPosterConfiguration2 = [v265 preRefreshPosterConfiguration];
          contentsURL4 = [preRefreshPosterConfiguration2 contentsURL];
          v184 = [contentsURL3 isEqual:contentsURL4];

          if (v184)
          {
            v185 = MEMORY[0x277CCA9B8];
            v344 = v243;
            v345 = @"Home Screen Poster rejected this update";
            v214 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v345 forKeys:&v344 count:1];
            v186 = [v185 pbf_dataStoreErrorWithCode:-2214 userInfo:v214];
            goto LABEL_190;
          }

          if (postRefreshPosterConfiguration2)
          {
            v214 = [objc_alloc(MEMORY[0x277D3ED58]) _initWithPath:postRefreshPosterConfiguration2];
            if (!v257)
            {
              v187 = MEMORY[0x277D3EB98];
              descriptorIdentifier = [identity2 descriptorIdentifier];
              v189 = objc_opt_new();
              v257 = [v187 configurationIdentityWithProvider:homeProviderIdentifier2 identifier:descriptorIdentifier role:role posterUUID:v189 version:0 supplement:0];
            }

            v212 = [MEMORY[0x277D3ECF8] mutableConfigurationWithRole:role];
            v294 = 0;
            v190 = [v212 copyContentsOfConfiguration:v214 error:&v294];
            v150 = v294;
            if (v190)
            {
              v211 = v212;

              _path7 = [v211 _path];

              v191 = objc_alloc(MEMORY[0x277D3ECE0]);
              posterUUID = [v257 posterUUID];
              pbf_posterUUID3 = [v286 pbf_posterUUID];
              v192 = [MEMORY[0x277D3ED60] defaultConfiguredPropertiesForRole:role];
              v193 = [v191 initWithNewPath:_path7 destinationPosterUUID:posterUUID parentPosterUUID:pbf_posterUUID3 sourceIdentity:v257 configuredProperties:v192 attributes:0];

              v260 = v193;
            }

            else
            {
              _path7 = _path2;
              v211 = v217;
            }

            v151 = 1;
            _path2 = _path7;
            v217 = v211;
          }

          else
          {
            v194 = MEMORY[0x277CCA9B8];
            v342 = v243;
            v343 = @"Home Screen Poster returned no configuration";
            v214 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v343 forKeys:&v342 count:1];
            v186 = [v194 pbf_dataStoreErrorWithCode:-2214 userInfo:v214];
LABEL_190:
            v150 = v186;
            v151 = 0;
          }

          goto LABEL_162;
        }

        if (type2 == 8)
        {
          goto LABEL_49;
        }
      }

      if (![role isEqual:v237])
      {
        v209 = MEMORY[0x277CCA9B8];
        v360 = v243;
        v361 = @"This attribute is incompatible with this role";
        v199 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v361 forKeys:&v360 count:1];
        v200 = [v209 pbf_dataStoreErrorWithCode:-2214 userInfo:v199];
        goto LABEL_207;
      }

      v298 = 0;
      v62 = [v269 applyUpdate:v272 error:&v298];
      v61 = v298;
LABEL_63:
      if (!v62 || v61)
      {
        goto LABEL_208;
      }

      if (v275 <= 0xF)
      {
        if (((1 << v275) & 0xE078) != 0)
        {
          homeScreenConfiguration2 = [v269 homeScreenConfiguration];
          v79 = [homeScreenConfiguration2 copy];
          [v256 setObject:v79 forKeyedSubscript:v252];
LABEL_68:

          goto LABEL_69;
        }

        if (v275 == 12)
        {
          homeScreenConfiguration2 = [v269 ambientConfiguration];
          v79 = [homeScreenConfiguration2 copy];
          [v256 setObject:v79 forKeyedSubscript:v241];
          goto LABEL_68;
        }
      }

LABEL_69:
      v80 = [MEMORY[0x277D3E9E0] successfulUpdateResultForUpdate:v272];
      [v263 addObject:v80];

      ++v273;
    }

    while (v253 != v273);
    v58 = [obj countByEnumeratingWithState:&v300 objects:v364 count:16];
    if (v58)
    {
      continue;
    }

    break;
  }

LABEL_205:

LABEL_212:
  if (v244)
  {
    v202 = [PBFPosterConfigurationUpdateResult alloc];
    v203 = [objc_alloc(MEMORY[0x277D3ED58]) _initWithPath:pathCopy];
    v204 = [(PBFPosterConfigurationUpdateResult *)v202 initWithConfiguration:v203 updates:obj changes:v249];
  }

  else
  {
    v205 = objc_alloc(MEMORY[0x277D3ECE0]);
    identity6 = [pathCopy identity];
    posterUUID2 = [identity6 posterUUID];
    identity7 = [pathCopy identity];
    v203 = [v205 initWithUpdatedPath:_path3 updatedPosterUUID:posterUUID2 sourceIdentity:identity7 configuredProperties:v269 attributes:v256];

    v204 = [[PBFPosterConfigurationUpdateResult alloc] initWithIncomingPosterConfiguration:v203 incomingAssocPosterConfiguration:v260 postersToDelete:v262];
  }

  v195 = v204;

  (*(v28 + 2))(v28, v195, v263, 0);
  v55 = 0;
LABEL_216:

LABEL_217:
LABEL_218:

  v44 = v248;
LABEL_219:

  v48 = v270;
LABEL_220:

  v47 = target;
LABEL_221:

  v46 = auditToken;
LABEL_222:

LABEL_223:
  v32 = v277;
LABEL_224:

LABEL_225:
  _Block_object_dispose(&v317, 8);

  _Block_object_dispose(&v323, 8);
  _Block_object_dispose(&v330, 8);

  _Block_object_dispose(v336, 8);
LABEL_226:
}

void __120__PBFPosterExtensionDataStore__stateLock_convertPosterUpdatesToRoleCoordinatorChanges_toPath_powerLogReason_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  v2 = *(a1 + 32);
  if (v2)
  {
    [*(a1 + 40) relinquishExtensionInstance:v2 reason:*(a1 + 48)];
  }

  v3 = *(*(*(a1 + 64) + 8) + 40);
  if (v3)
  {
    [*(a1 + 40) relinquishExtensionInstance:v3 reason:*(a1 + 48)];
  }

  v4 = *(*(*(a1 + 72) + 8) + 40);
  if (v4)
  {
    [v4 invalidate];
  }

  [*(*(*(a1 + 80) + 8) + 40) invalidate];
  v5 = *(*(a1 + 80) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  [*(*(*(a1 + 88) + 8) + 40) invalidate];
  v7 = *(*(a1 + 88) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

- (id)fetchSuggestionDescriptorsForConfigurationMatchingUUID:(id)d error:(id *)error
{
  dCopy = d;
  os_unfair_lock_lock(&self->_stateLock);
  v11 = 0;
  v7 = [(PBFPosterExtensionDataStore *)self _stateLock_fetchSuggestionDescriptorsForConfigurationMatchingUUID:dCopy error:&v11];

  v8 = v11;
  os_unfair_lock_unlock(&self->_stateLock);
  if (error && v8)
  {
    v9 = v8;
    *error = v8;
  }

  return v7;
}

- (void)refreshSuggestionDescriptorsForConfigurationMatchingUUID:(id)d sessionInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
  dCopy = d;
  os_unfair_lock_lock(&self->_stateLock);
  [(PBFPosterExtensionDataStore *)self _stateLock_refreshSuggestionDescriptorsForConfigurationMatchingUUID:dCopy sessionInfo:infoCopy completion:completionCopy];

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)commitSuggestionsForConfigurationMatchingUUID:(id)d selectSuggestionDescriptorUUID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  dCopy = d;
  os_unfair_lock_lock(&self->_stateLock);
  [(PBFPosterExtensionDataStore *)self _stateLock_commitSuggestionsForConfigurationMatchingUUID:dCopy selectSuggestionDescriptorUUID:iDCopy completion:completionCopy];

  os_unfair_lock_unlock(&self->_stateLock);
}

- (id)_stateLock_fetchSuggestionDescriptorsForConfigurationMatchingUUID:(id)d error:(id *)error
{
  v18[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_14;
  }

  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v7 = 0;
      goto LABEL_14;
    }

    goto LABEL_5;
  }

  v8 = [(PBFPosterExtensionDataStore *)self _stateLock_extensionStoreCoordinatorForPosterUUID:dCopy];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 suggestionDescriptorStoreCoordinatorsForConfigurationUUID:dCopy];
    v7 = [v10 bs_mapNoNulls:&__block_literal_global_466];
  }

  else
  {
    if (error)
    {
      v11 = MEMORY[0x277CCA9B8];
      v17[0] = *MEMORY[0x277CCA470];
      v17[1] = @"posterUUID";
      v18[0] = @"unable to find extension store coordinator for poster uuid";
      uUIDString = [dCopy UUIDString];
      v13 = uUIDString;
      v14 = @"(null)";
      if (uUIDString)
      {
        v14 = uUIDString;
      }

      v18[1] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
      *error = [v11 pbf_dataStoreErrorWithCode:-2220 userInfo:v15];
    }

    v7 = 0;
  }

LABEL_14:

  return v7;
}

- (void)_stateLock_refreshSuggestionDescriptorsForConfigurationMatchingUUID:(id)d sessionInfo:(id)info completion:(id)completion
{
  v55[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  infoCopy = info;
  completionCopy = completion;
  if (![(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    v12 = [(PBFPosterExtensionDataStore *)self _stateLock_extensionStoreCoordinatorForPosterUUID:dCopy];
    if (v12)
    {
      v13 = objc_alloc(MEMORY[0x277D3ED58]);
      v14 = [v12 configurationStoreCoordinatorForPosterUUID:dCopy];
      pathOfLatestVersion = [v14 pathOfLatestVersion];
      v34 = [v13 _initWithPath:pathOfLatestVersion];

      v16 = [v12 suggestionDescriptorStoreCoordinatorsForConfigurationUUID:dCopy];
      v17 = [v16 bs_mapNoNulls:&__block_literal_global_469];

      if (![v17 count])
      {

        v17 = 0;
      }

      extensionIdentifier = [v12 extensionIdentifier];
      v33 = self->_extensionProvider;
      uUIDString = [dCopy UUIDString];
      v20 = NSStringFromSelector(a2);
      v32 = [uUIDString stringByAppendingFormat:@"-%@", v20];

      v53 = 0;
      v30 = [(PFPosterExtensionProvider *)v33 acquireInstanceForExtensionWithIdentifier:extensionIdentifier reason:v32 error:&v53];
      v31 = v53;
      if (v31)
      {
        if (completionCopy)
        {
          completionCopy[2](completionCopy, 0, v31);
        }
      }

      else
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __122__PBFPosterExtensionDataStore__stateLock_refreshSuggestionDescriptorsForConfigurationMatchingUUID_sessionInfo_completion___block_invoke_2;
        aBlock[3] = &unk_2782C5E00;
        v52 = completionCopy;
        v24 = v33;
        v49 = v24;
        v25 = extensionIdentifier;
        v50 = v25;
        v26 = v32;
        v51 = v26;
        v27 = _Block_copy(aBlock);
        objc_initWeak(&location, self);
        v28 = [v30 pr_updateSuggestions:v17 forConfiguration:v34 sessionInfo:infoCopy];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __122__PBFPosterExtensionDataStore__stateLock_refreshSuggestionDescriptorsForConfigurationMatchingUUID_sessionInfo_completion___block_invoke_3;
        v38[3] = &unk_2782C5E48;
        v39 = v12;
        v40 = dCopy;
        v45 = v27;
        v41 = v24;
        v42 = v25;
        v43 = v26;
        objc_copyWeak(&v46, &location);
        v44 = v34;
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __122__PBFPosterExtensionDataStore__stateLock_refreshSuggestionDescriptorsForConfigurationMatchingUUID_sessionInfo_completion___block_invoke_5;
        v36[3] = &unk_2782C5AB0;
        v29 = v45;
        v37 = v29;
        [v28 addSuccessBlock:v38 andFailureBlock:v36];

        objc_destroyWeak(&v46);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      if (!completionCopy)
      {
LABEL_17:

        goto LABEL_18;
      }

      v21 = MEMORY[0x277CCA9B8];
      v54[0] = *MEMORY[0x277CCA470];
      v54[1] = @"posterUUID";
      v55[0] = @"unable to find extension store coordinator for poster uuid";
      uUIDString2 = [dCopy UUIDString];
      v34 = uUIDString2;
      v23 = @"(null)";
      if (uUIDString2)
      {
        v23 = uUIDString2;
      }

      v55[1] = v23;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];
      extensionIdentifier = [v21 pbf_dataStoreErrorWithCode:-2220 userInfo:v17];
      completionCopy[2](completionCopy, 0, extensionIdentifier);
    }

    goto LABEL_17;
  }

  if (completionCopy)
  {
    v11 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    completionCopy[2](completionCopy, 0, v11);
  }

LABEL_18:
}

id __122__PBFPosterExtensionDataStore__stateLock_refreshSuggestionDescriptorsForConfigurationMatchingUUID_sessionInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 pathOfLatestVersion];
  v3 = [objc_alloc(MEMORY[0x277D3ED80]) _initWithPath:v2];

  return v3;
}

uint64_t __122__PBFPosterExtensionDataStore__stateLock_refreshSuggestionDescriptorsForConfigurationMatchingUUID_sessionInfo_completion___block_invoke_2(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [v3 relinquishExtensionInstanceWithIdentifier:v4 reason:v5];
}

void __122__PBFPosterExtensionDataStore__stateLock_refreshSuggestionDescriptorsForConfigurationMatchingUUID_sessionInfo_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __PFServerPosterPathFromPFPosterContents();
  v5 = [v3 bs_mapNoNulls:v4];

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v16 = 0;
  v8 = [v6 updateSuggestionDescriptors:v5 forConfigurationUUID:v7 error:&v16];
  v9 = v16;
  v10 = *(a1 + 80);
  if (v8)
  {
    v11 = [*(a1 + 32) suggestionDescriptorPathsForConfigurationUUID:*(a1 + 40)];
    (*(v10 + 16))(v10, v11, 0);
  }

  else
  {
    (*(v10 + 16))(*(a1 + 80), 0, v9);
  }

  [*(a1 + 48) relinquishExtensionInstanceWithIdentifier:*(a1 + 56) reason:*(a1 + 64)];
  if (!v9)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v13 = [*(a1 + 32) suggestionDescriptorPathsForConfigurationUUID:*(a1 + 40)];
    v14 = [v13 bs_mapNoNulls:&__block_literal_global_477];
    [WeakRetained _notifyObserversDidUpdateSuggestionDescriptors:v14 forConfiguration:*(a1 + 72)];

    v15 = objc_loadWeakRetained((a1 + 88));
    [v15 _notifyObserversDidUpdateSuggestionDescriptors];
  }
}

id __122__PBFPosterExtensionDataStore__stateLock_refreshSuggestionDescriptorsForConfigurationMatchingUUID_sessionInfo_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D3ED80];
  v3 = a2;
  v4 = [[v2 alloc] _initWithPath:v3];

  return v4;
}

- (void)_stateLock_commitSuggestionsForConfigurationMatchingUUID:(id)d selectSuggestionDescriptorUUID:(id)iD completion:(id)completion
{
  v59[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  if (![(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    v13 = [(PBFPosterExtensionDataStore *)self _stateLock_extensionStoreCoordinatorForPosterUUID:dCopy];
    v14 = v13;
    if (!v13)
    {
      if (!completionCopy)
      {
LABEL_24:

        goto LABEL_25;
      }

      v36 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA470];
      v59[0] = @"unable to find extension store coordinator for poster uuid";
      v58[0] = v37;
      v58[1] = @"posterUUID";
      uUIDString = [dCopy UUIDString];
      v15 = uUIDString;
      v39 = @"(null)";
      if (uUIDString)
      {
        v39 = uUIDString;
      }

      v59[1] = v39;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
      _stateLock_updatedSuggestionDescriptorsForPosterUUID = [v36 pbf_dataStoreErrorWithCode:-2220 userInfo:v16];
      completionCopy[2](completionCopy, _stateLock_updatedSuggestionDescriptorsForPosterUUID);
      goto LABEL_22;
    }

    if (iDCopy)
    {
      v15 = [v13 suggestionDescriptorStoreCoordinatorsForConfigurationUUID:dCopy];
      v16 = [v14 suggestionDescriptorStoreCoordinatorForPosterUUID:iDCopy];
      if (([v15 containsObject:v16] & 1) == 0)
      {
        if (completionCopy)
        {
          v41 = MEMORY[0x277CCA9B8];
          v56 = *MEMORY[0x277CCA470];
          v57 = @"selected suggestion descriptor poster uuid does not belong to this poster. Sacre bleu!";
          _stateLock_updatedSuggestionDescriptorsForPosterUUID = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          v42 = [v41 pbf_dataStoreErrorWithCode:-2214 userInfo:_stateLock_updatedSuggestionDescriptorsForPosterUUID];
          completionCopy[2](completionCopy, v42);

          goto LABEL_22;
        }

LABEL_23:

        goto LABEL_24;
      }

      v47 = iDCopy;
      v51 = v15;
      v52 = v14;
      v17 = [v14 configurationStoreCoordinatorForPosterUUID:dCopy];
      pathOfLatestVersion = [v17 pathOfLatestVersion];

      role = [pathOfLatestVersion role];
      v19 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKey:role];
      posterCollection = [v19 posterCollection];
      v21 = [posterCollection posterWithUUID:dCopy];

      posterCollection2 = [v19 posterCollection];
      v49 = v19;
      supportedAttributes = [objc_opt_class() supportedAttributes];
      v48 = v21;
      v24 = [posterCollection2 attributesForPoster:v21 ofTypes:supportedAttributes];

      v25 = objc_alloc(MEMORY[0x277D3ECE0]);
      pathOfLatestVersion2 = [v16 pathOfLatestVersion];
      serverIdentity = [pathOfLatestVersion serverIdentity];
      v50 = pathOfLatestVersion;
      v28 = [MEMORY[0x277D3EDE0] modelObjectCacheForPath:pathOfLatestVersion];
      [v28 configuredProperties];
      v29 = v46 = v16;
      v30 = [v25 initWithUpdatedPath:pathOfLatestVersion2 updatedPosterUUID:dCopy sourceIdentity:serverIdentity configuredProperties:v29 attributes:v24];

      v31 = [PBFPosterRoleCoordinatorChange updatePosterWithinRole:role incomingPoster:v30];
      v55 = v31;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
      v33 = NSStringFromSelector(a2);
      v54 = 0;
      [(PBFPosterExtensionDataStore *)self _stateLock_executeDataStoreUpdateWithChanges:v32 diffs:0 options:0 reason:v33 context:0 error:&v54];
      v34 = v54;

      if (v34)
      {
        completionCopy[2](completionCopy, v34);

        _stateLock_updatedSuggestionDescriptorsForPosterUUID = v46;
        iDCopy = v47;
        v16 = v51;
        v14 = v52;
        v15 = v49;
LABEL_22:

        goto LABEL_23;
      }

      v14 = v52;
      v40 = v49;
      iDCopy = v47;
    }

    else
    {
      v40 = 0;
    }

    v53 = 0;
    [v14 updateSuggestionDescriptors:MEMORY[0x277CBEBF8] forConfigurationUUID:dCopy error:&v53];
    v16 = v53;
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v16);
    }

    if (!v16)
    {
      posterCollection3 = [v40 posterCollection];
      v44 = [posterCollection3 posterWithUUID:dCopy];
      [(PBFPosterExtensionDataStore *)self _notifyObserversDidUpdateSuggestionDescriptors:MEMORY[0x277CBEBF8] forConfiguration:v44];

      v16 = 0;
      _stateLock_updatedSuggestionDescriptorsForPosterUUID = [(PBFPosterExtensionDataStore *)self _stateLock_updatedSuggestionDescriptorsForPosterUUID];
      [(PBFPosterExtensionDataStore *)self _notifyObserversDidUpdateSuggestionDescriptorsForPosterUUID:_stateLock_updatedSuggestionDescriptorsForPosterUUID];
      v15 = v40;
      goto LABEL_22;
    }

    v15 = v40;
    goto LABEL_23;
  }

  if (completionCopy)
  {
    v12 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    completionCopy[2](completionCopy, v12);
  }

LABEL_25:
}

- (id)_stateLock_extensionStoreCoordinatorForPosterUUID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    objectEnumerator = [(NSDictionary *)self->_roleToRoleCoordinator objectEnumerator];
    v6 = [objectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          posterCollection = [*(*(&v17 + 1) + 8 * i) posterCollection];
          v11 = [posterCollection posterWithUUID:dCopy];

          if (v11)
          {

            pr_posterProvider = [v11 pr_posterProvider];
            v14 = [(PBFPosterExtensionDataStore *)self _stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier:pr_posterProvider];
            v12 = v14;
            if (v14)
            {
              v15 = v14;
            }

            goto LABEL_14;
          }
        }

        v7 = [objectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
    v11 = objectEnumerator;
LABEL_14:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)providerForPath:(id)path
{
  identity = [path identity];
  provider = [identity provider];

  v6 = [(PBFPosterExtensionDataStore *)self providerForExtensionIdentifier:provider];

  return v6;
}

- (id)providerForExtensionIdentifier:(id)identifier
{
  extensionProvider = self->_extensionProvider;
  identifierCopy = identifier;
  extensionForIdentifier = [(PFPosterExtensionProvider *)extensionProvider extensionForIdentifier];
  v6 = [extensionForIdentifier objectForKey:identifierCopy];

  return v6;
}

- (id)pbf_posterSnapshotCoordinatorForIdentity:(id)identity
{
  identityCopy = identity;
  provider = [identityCopy provider];
  v6 = [(PBFPosterExtensionDataStore *)self pbf_posterExtensionStoreCoordinatorForProviderIdentifier:provider error:0];
  v7 = [v6 pbf_posterSnapshotCoordinatorForIdentity:identityCopy];

  return v7;
}

- (void)pbf_enumerateSnapshotCoordinators:(id)coordinators
{
  coordinatorsCopy = coordinators;
  os_unfair_lock_lock(&self->_extensionProvidingLock);
  extensionProvidingLock_extensionStoreCoordinatorForExtensionBundleIdentifier = self->_extensionProvidingLock_extensionStoreCoordinatorForExtensionBundleIdentifier;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__PBFPosterExtensionDataStore_pbf_enumerateSnapshotCoordinators___block_invoke;
  v7[3] = &unk_2782C5E98;
  v8 = coordinatorsCopy;
  v6 = coordinatorsCopy;
  [(NSMutableDictionary *)extensionProvidingLock_extensionStoreCoordinatorForExtensionBundleIdentifier enumerateKeysAndObjectsUsingBlock:v7];
  os_unfair_lock_unlock(&self->_extensionProvidingLock);
}

void __65__PBFPosterExtensionDataStore_pbf_enumerateSnapshotCoordinators___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__PBFPosterExtensionDataStore_pbf_enumerateSnapshotCoordinators___block_invoke_2;
  v6[3] = &unk_2782C5E70;
  v7 = *(a1 + 32);
  v8 = a4;
  [a3 pbf_enumerateSnapshotCoordinators:v6];
}

- (id)pbf_posterExtensionStoreCoordinatorForProviderIdentifier:(id)identifier error:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    os_unfair_lock_lock(&self->_extensionProvidingLock);
    v7 = [(NSMutableDictionary *)self->_extensionProvidingLock_extensionStoreCoordinatorForExtensionBundleIdentifier objectForKey:identifierCopy];
    os_unfair_lock_unlock(&self->_extensionProvidingLock);
    if (error && !v7)
    {
      v8 = MEMORY[0x277CCA9B8];
      v13 = @"providerIdentifier";
      v14 = identifierCopy;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v10 = [v8 pbf_dataStoreErrorWithCode:-2220 userInfo:v9];
LABEL_7:
      *error = v10;
    }
  }

  else
  {
    if (error)
    {
      v11 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA470];
      v16[0] = @"providerIdentifier was nil";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v10 = [v11 pbf_dataStoreErrorWithCode:-2220 userInfo:v9];
      v7 = 0;
      goto LABEL_7;
    }

    v7 = 0;
  }

  return v7;
}

- (id)pbf_posterExtensionStoreCoordinatorsForRole:(id)role
{
  v26 = *MEMORY[0x277D85DE8];
  roleCopy = role;
  extensionForIdentifier = [(PFPosterExtensionProvider *)self->_extensionProvider extensionForIdentifier];
  allValues = [extensionForIdentifier allValues];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __75__PBFPosterExtensionDataStore_pbf_posterExtensionStoreCoordinatorsForRole___block_invoke;
  v23[3] = &unk_2782C5EC0;
  v7 = roleCopy;
  v24 = v7;
  v8 = [allValues bs_filter:v23];
  v9 = [v8 bs_mapNoNulls:&__block_literal_global_490];

  if ([v9 count])
  {
    v10 = objc_opt_new();
    os_unfair_lock_lock(&self->_extensionProvidingLock);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [(NSMutableDictionary *)self->_extensionProvidingLock_extensionStoreCoordinatorForExtensionBundleIdentifier objectForKey:*(*(&v19 + 1) + 8 * i), v19];
          [v10 bs_safeAddObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v13);
    }

    os_unfair_lock_unlock(&self->_extensionProvidingLock);
    v17 = [v10 copy];
  }

  else
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  return v17;
}

uint64_t __75__PBFPosterExtensionDataStore_pbf_posterExtensionStoreCoordinatorsForRole___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 supportedRoles];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (void)createPosterConfigurationForProviderIdentifier:(id)identifier posterDescriptorIdentifier:(id)descriptorIdentifier role:(id)role completion:(id)completion
{
  v60[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  descriptorIdentifierCopy = descriptorIdentifier;
  roleCopy = role;
  completionCopy = completion;
  if (!completionCopy)
  {
    [PBFPosterExtensionDataStore createPosterConfigurationForProviderIdentifier:a2 posterDescriptorIdentifier:? role:? completion:?];
  }

  v15 = completionCopy;
  v16 = identifierCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v16)
  {
    [PBFPosterExtensionDataStore createPosterConfigurationForProviderIdentifier:a2 posterDescriptorIdentifier:? role:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionDataStore createPosterConfigurationForProviderIdentifier:a2 posterDescriptorIdentifier:? role:? completion:?];
  }

  v17 = roleCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v17)
  {
    [PBFPosterExtensionDataStore createPosterConfigurationForProviderIdentifier:a2 posterDescriptorIdentifier:? role:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionDataStore createPosterConfigurationForProviderIdentifier:a2 posterDescriptorIdentifier:? role:? completion:?];
  }

  v18 = descriptorIdentifierCopy;
  if (v18)
  {
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PBFPosterExtensionDataStore createPosterConfigurationForProviderIdentifier:a2 posterDescriptorIdentifier:? role:? completion:?];
    }
  }

  v19 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKeyedSubscript:v17];
  if (v19)
  {
    os_unfair_lock_lock(&self->_stateLock);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __121__PBFPosterExtensionDataStore_createPosterConfigurationForProviderIdentifier_posterDescriptorIdentifier_role_completion___block_invoke;
    aBlock[3] = &unk_2782C5888;
    aBlock[4] = self;
    v20 = _Block_copy(aBlock);
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __121__PBFPosterExtensionDataStore_createPosterConfigurationForProviderIdentifier_posterDescriptorIdentifier_role_completion___block_invoke_2;
    v54[3] = &unk_2782C5F08;
    v21 = v20;
    v55 = v21;
    v48 = v15;
    v56 = v48;
    v22 = _Block_copy(v54);
    context = objc_autoreleasePoolPush();
    v53 = 0;
    v23 = [(PBFPosterExtensionDataStore *)self _stateLock_incomingPosterConfigurationForProviderIdentifier:v16 posterDescriptorIdentifier:v18 role:v17 error:&v53];
    v24 = v53;
    v25 = v23;
    v26 = v24;
    v50 = v25;
    if (v25)
    {
      v42 = a2;
      v43 = v22;
      v46 = v15;
      v47 = v21;
      v45 = v19;
      v44 = [PBFPosterRoleCoordinatorChange addPosterToRole:v17 incomingPoster:?];
      v58 = v44;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
      v52 = 0;
      _buildRoleCoordinatorTransitionContext = [(PBFPosterExtensionDataStore *)self _buildRoleCoordinatorTransitionContext];
      v51 = 0;
      v29 = [(PBFPosterExtensionDataStore *)self _stateLock_executeDataStoreUpdateWithChanges:v27 diffs:&v52 options:0 reason:@"posterCreation" context:_buildRoleCoordinatorTransitionContext error:&v51];
      v30 = v52;
      v31 = v51;

      if (v29)
      {
        v32 = v31;
        v21 = v47;
        v47[2](v47);
        v33 = [v30 objectForKeyedSubscript:v17];
        if (!v33)
        {
          [PBFPosterExtensionDataStore createPosterConfigurationForProviderIdentifier:v42 posterDescriptorIdentifier:? role:? completion:?];
        }

        v34 = v33;
        newCollection = [v33 newCollection];
        destinationUUID = [v50 destinationUUID];
        v37 = [newCollection posterWithUUID:destinationUUID];

        _path = [v37 _path];
        v31 = v32;
        (*(v48 + 2))(v48, _path, v32);

        v19 = v45;
        v15 = v46;
        v22 = v43;
      }

      else
      {
        v22[2](v22, v31);
        v19 = v45;
        v15 = v46;
        v21 = v47;
      }
    }

    else
    {
      v22[2](v22, v24);
      v31 = v26;
    }

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v39 = MEMORY[0x277CCA9B8];
    v59 = @"roleIdentifier";
    v60[0] = v17;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
    v41 = [v39 pbf_dataStoreErrorWithCode:-2203 userInfo:v40];
    (v15)[2](v15, 0, v41);
  }
}

void __121__PBFPosterExtensionDataStore_createPosterConfigurationForProviderIdentifier_posterDescriptorIdentifier_role_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, 0, v4);
  }
}

- (id)_stateLock_incomingPosterConfigurationForProviderIdentifier:(id)identifier posterDescriptorIdentifier:(id)descriptorIdentifier role:(id)role error:(id *)error
{
  v57[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  descriptorIdentifierCopy = descriptorIdentifier;
  roleCopy = role;
  v13 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKeyedSubscript:roleCopy];
  if (v13)
  {
    v14 = [(PBFPosterExtensionDataStore *)self pbf_posterExtensionStoreCoordinatorForProviderIdentifier:identifierCopy error:error];
    if (!v14)
    {
      if (error && !*error)
      {
        v30 = MEMORY[0x277CCA9B8];
        v54[0] = @"providerIdentifier";
        v54[1] = @"posterDescriptorIdentifier";
        v31 = @"(null descriptorIdentifier)";
        if (descriptorIdentifierCopy)
        {
          v31 = descriptorIdentifierCopy;
        }

        v55[0] = identifierCopy;
        v55[1] = v31;
        v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];
        [v30 pbf_dataStoreErrorWithCode:-2220 userInfo:v42];
        *error = v28 = 0;
      }

      else
      {
        v28 = 0;
      }

      goto LABEL_34;
    }

    v41 = [MEMORY[0x277D3ECF8] mutableConfigurationWithRole:roleCopy];
    if (!descriptorIdentifierCopy)
    {
      v40 = 0;
      goto LABEL_29;
    }

    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy_;
    v50 = __Block_byref_object_dispose_;
    v51 = 0;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __129__PBFPosterExtensionDataStore__stateLock_incomingPosterConfigurationForProviderIdentifier_posterDescriptorIdentifier_role_error___block_invoke;
    v43[3] = &unk_2782C5F30;
    v15 = descriptorIdentifierCopy;
    v44 = v15;
    v45 = &v46;
    [v14 enumerateDescriptorStoreCoordinators:v43];
    v16 = v47[5];
    v17 = v16 != 0;
    if (v16)
    {
      pathOfLatestVersion = [v16 pathOfLatestVersion];
      v19 = [v41 copyContentsOfPath:pathOfLatestVersion error:error];

      if (v19)
      {
        identityOfLatestVersion = [v47[5] identityOfLatestVersion];
        v21 = MEMORY[0x277D3EDE8];
        pathOfLatestVersion2 = [v47[5] pathOfLatestVersion];
        v23 = [v21 loadConfigurableOptionsForPath:pathOfLatestVersion2 error:0];

        preferredRenderingConfiguration = [v23 preferredRenderingConfiguration];
        v25 = preferredRenderingConfiguration;
        if (preferredRenderingConfiguration)
        {
          v40 = preferredRenderingConfiguration;
        }

        else
        {
          v40 = objc_alloc_init(MEMORY[0x277D3EDF8]);
        }

        goto LABEL_26;
      }
    }

    else if (error)
    {
      v29 = MEMORY[0x277CCA9B8];
      v52[0] = @"providerIdentifier";
      v52[1] = @"posterDescriptorIdentifier";
      v53[0] = identifierCopy;
      v53[1] = v15;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
      [v29 pbf_dataStoreErrorWithCode:-2218 userInfo:v23];
      v40 = 0;
      *error = identityOfLatestVersion = 0;
LABEL_26:

LABEL_27:
      _Block_object_dispose(&v46, 8);

      if (!v17)
      {
        v28 = 0;
LABEL_32:

        goto LABEL_34;
      }

      if (identityOfLatestVersion)
      {
LABEL_30:
        v34 = [v13 defaultAttributesForNewPosterFromProvider:{identifierCopy, v40}];
        v35 = [v34 mutableCopy];

        v36 = [MEMORY[0x277D3ED60] defaultConfiguredPropertiesForRole:roleCopy renderingConfiguration:v40];
        v37 = objc_alloc(MEMORY[0x277D3ECE0]);
        _path = [v41 _path];
        v28 = [v37 initWithNewPath:_path destinationPosterUUID:0 sourceIdentity:identityOfLatestVersion configuredProperties:v36 attributes:v35];

        [v28 trackTemporaryState:v41];
        goto LABEL_32;
      }

LABEL_29:
      v32 = MEMORY[0x277D3EB98];
      uUID = [MEMORY[0x277CCAD78] UUID];
      identityOfLatestVersion = [v32 configurationIdentityWithProvider:identifierCopy identifier:descriptorIdentifierCopy role:roleCopy posterUUID:uUID version:0 supplement:0];

      goto LABEL_30;
    }

    v40 = 0;
    identityOfLatestVersion = 0;
    v17 = 0;
    goto LABEL_27;
  }

  if (!error)
  {
    v28 = 0;
    goto LABEL_35;
  }

  v26 = MEMORY[0x277CCA9B8];
  if (roleCopy)
  {
    v27 = roleCopy;
  }

  else
  {
    v27 = @"(null role identifier)";
  }

  v56 = @"roleIdentifier";
  v57[0] = v27;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
  [v26 pbf_dataStoreErrorWithCode:-2203 userInfo:v14];
  *error = v28 = 0;
LABEL_34:

LABEL_35:

  return v28;
}

void __129__PBFPosterExtensionDataStore__stateLock_incomingPosterConfigurationForProviderIdentifier_posterDescriptorIdentifier_role_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 descriptorIdentifier];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)refreshPosterConfigurationMatchingUUID:(id)d sessionInfo:(id)info completion:(id)completion
{
  dCopy = d;
  infoCopy = info;
  completionCopy = completion;
  v12 = dCopy;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v12)
  {
    [PBFPosterExtensionDataStore refreshPosterConfigurationMatchingUUID:a2 sessionInfo:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionDataStore refreshPosterConfigurationMatchingUUID:a2 sessionInfo:? completion:?];
  }

  os_unfair_lock_lock(&self->_stateLock);
  [(PBFPosterExtensionDataStore *)self _stateLock_enqueueRefreshPosterConfigurationMatchingUUID:v12 sessionInfo:infoCopy powerLogReason:3 completion:completionCopy];
  os_unfair_lock_unlock(&self->_stateLock);
}

- (id)posterConfigurationsForRole:(id)role error:(id *)error
{
  v4 = [(PBFPosterExtensionDataStore *)self posterCollectionForRole:role error:error];
  orderedPosters = [v4 orderedPosters];
  array = [orderedPosters array];
  v7 = [array bs_mapNoNulls:&__block_literal_global_510];

  return v7;
}

- (id)posterCollectionForRole:(id)role error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  roleCopy = role;
  os_unfair_lock_lock(&self->_stateLock);
  v7 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKeyedSubscript:roleCopy];
  if (v7)
  {
    v8 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKeyedSubscript:roleCopy];
    error = [v8 posterCollection];
  }

  else if (error)
  {
    v9 = MEMORY[0x277CCA9B8];
    if (roleCopy)
    {
      v10 = roleCopy;
    }

    else
    {
      v10 = @"(null role identifier)";
    }

    v13 = @"roleIdentifier";
    v14[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *error = [v9 pbf_dataStoreErrorWithCode:-2203 userInfo:v11];

    error = 0;
  }

  os_unfair_lock_unlock(&self->_stateLock);

  return error;
}

- (id)posterConfigurationsForExtension:(id)extension
{
  extensionCopy = extension;
  v5 = objc_opt_new();
  os_unfair_lock_lock(&self->_stateLock);
  roleToRoleCoordinator = self->_roleToRoleCoordinator;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __64__PBFPosterExtensionDataStore_posterConfigurationsForExtension___block_invoke;
  v14 = &unk_2782C5FA0;
  v15 = extensionCopy;
  v16 = v5;
  v7 = v5;
  v8 = extensionCopy;
  [(NSDictionary *)roleToRoleCoordinator enumerateKeysAndObjectsUsingBlock:&v11];
  os_unfair_lock_unlock(&self->_stateLock);
  v9 = [v7 copy];

  return v9;
}

void __64__PBFPosterExtensionDataStore_posterConfigurationsForExtension___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 posterCollection];
  v5 = [v4 orderedPosters];
  v6 = [v5 array];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__PBFPosterExtensionDataStore_posterConfigurationsForExtension___block_invoke_2;
  v7[3] = &unk_2782C5F78;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  [v6 enumerateObjectsUsingBlock:v7];
}

void __64__PBFPosterExtensionDataStore_posterConfigurationsForExtension___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 pbf_posterProvider];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [v7 _path];
    [v5 addObject:v6];
  }
}

- (id)activePosterForRole:(id)role assocPoster:(id *)poster error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  roleCopy = role;
  v9 = PBFLogDataStore(roleCopy);
  v10 = os_signpost_id_generate(v9);

  v12 = PBFLogDataStore(v11);
  v13 = v12;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 138543362;
    v33 = roleCopy;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "activePosterForRole", "role: %{public}@", buf, 0xCu);
  }

  v14 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKeyedSubscript:roleCopy];
  if (v14)
  {
    os_unfair_lock_lock(&self->_activePosterLock);
    posterCollection = [v14 posterCollection];
    v16 = [(NSMutableDictionary *)self->_activePosterLock_roleToActivePosterConfiguration objectForKeyedSubscript:roleCopy];
    os_unfair_lock_unlock(&self->_activePosterLock);
    if (!error || v16)
    {
      if (poster && v16)
      {
        *poster = [posterCollection associatedPosterForPoster:v16];
      }
    }

    else
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = @"(null role identifier)";
      if (roleCopy)
      {
        v18 = roleCopy;
      }

      v19 = *MEMORY[0x277CCA470];
      v28[0] = @"roleIdentifier";
      v28[1] = v19;
      v29[0] = v18;
      v29[1] = @"No active poster could be determined for role";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
      *error = [v17 pbf_dataStoreErrorWithCode:-2219 userInfo:v20];
    }
  }

  else
  {
    v21 = PBFLogRoleCoordinator(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      [PBFPosterExtensionDataStore activePosterForRole:assocPoster:error:];
    }

    if (!error)
    {
      v16 = 0;
      goto LABEL_21;
    }

    v23 = MEMORY[0x277CCA9B8];
    if (roleCopy)
    {
      v24 = roleCopy;
    }

    else
    {
      v24 = @"(null role identifier)";
    }

    v30 = @"roleIdentifier";
    v31 = v24;
    posterCollection = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    [v23 pbf_dataStoreErrorWithCode:-2203 userInfo:posterCollection];
    *error = v16 = 0;
  }

LABEL_21:
  v25 = PBFLogDataStore(v22);
  v26 = v25;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 138543362;
    v33 = roleCopy;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v26, OS_SIGNPOST_INTERVAL_END, v10, "activePosterForRole", "role: %{public}@", buf, 0xCu);
  }

  return v16;
}

- (id)selectedPosterForRole:(id)role error:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  roleCopy = role;
  os_unfair_lock_lock(&self->_stateLock);
  v7 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKeyedSubscript:roleCopy];
  v8 = v7;
  if (v7)
  {
    posterCollection = [v7 posterCollection];
    error = [posterCollection selectedPoster];
  }

  else if (error)
  {
    v10 = MEMORY[0x277CCA9B8];
    if (roleCopy)
    {
      v11 = roleCopy;
    }

    else
    {
      v11 = @"(null role identifier)";
    }

    v14 = @"roleIdentifier";
    v15[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *error = [v10 pbf_dataStoreErrorWithCode:-2203 userInfo:v12];

    error = 0;
  }

  os_unfair_lock_unlock(&self->_stateLock);

  return error;
}

- (BOOL)updateSelectedPosterUUID:(id)d role:(id)role from:(id)from error:(id *)error
{
  v73[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  roleCopy = role;
  fromCopy = from;
  v14 = fromCopy;
  if (dCopy)
  {
    v15 = PBFLogDataStore(fromCopy);
    spid = os_signpost_id_generate(v15);

    v17 = PBFLogDataStore(v16);
    v18 = v17;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 138543874;
      *&buf[4] = roleCopy;
      *&buf[12] = 2114;
      *&buf[14] = v14;
      *&buf[22] = 2114;
      v67 = dCopy;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v18, OS_SIGNPOST_INTERVAL_BEGIN, spid, "updateSelectedPosterUUID:role:from:", "role: %{public}@ bundleIdentifier: %{public}@ configurationUUID: %{public}@", buf, 0x20u);
    }

    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = 0;
    os_unfair_lock_lock(&self->_stateLock);
    v19 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKeyedSubscript:roleCopy];
    v20 = v19;
    if (!v19)
    {
      if (!error)
      {
        goto LABEL_44;
      }

      v31 = MEMORY[0x277CCA9B8];
      if (roleCopy)
      {
        v32 = roleCopy;
      }

      else
      {
        v32 = @"(null role identifier)";
      }

      v70 = @"roleIdentifier";
      v71 = v32;
      posterCollection = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      *error = [v31 pbf_dataStoreErrorWithCode:-2203 userInfo:posterCollection];
LABEL_43:

LABEL_44:
      os_unfair_lock_unlock(&self->_stateLock);
      v46 = PBFLogDataStore(v45);
      v47 = v46;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
      {
        *buf = 138543874;
        *&buf[4] = roleCopy;
        *&buf[12] = 2114;
        *&buf[14] = v14;
        *&buf[22] = 2114;
        v67 = dCopy;
        _os_signpost_emit_with_name_impl(&dword_21B526000, v47, OS_SIGNPOST_INTERVAL_END, spid, "updateSelectedPosterUUID:role:from:", "role: %{public}@ bundleIdentifier: %{public}@ configurationUUID: %{public}@", buf, 0x20u);
      }

      v30 = *(v59 + 24);
      _Block_object_dispose(&v58, 8);
      goto LABEL_48;
    }

    posterCollection = [v19 posterCollection];
    v55 = [posterCollection posterWithUUID:dCopy];
    pbf_activeChargerIdentifier = [MEMORY[0x277CBEBD0] pbf_activeChargerIdentifier];
    v22 = [(__CFString *)roleCopy isEqual:*MEMORY[0x277D3EE98]];
    if (pbf_activeChargerIdentifier)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 == 1)
    {
      selectedPoster = [MEMORY[0x277D3E9C8] posterUpdateAssociateWithChargerIdentifier:?];
      if (v55)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v67 = __Block_byref_object_copy_;
        v68 = __Block_byref_object_dispose_;
        v69 = 0;
        v65 = selectedPoster;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __72__PBFPosterExtensionDataStore_updateSelectedPosterUUID_role_from_error___block_invoke;
        v57[3] = &unk_2782C5FC8;
        v57[4] = buf;
        v57[5] = &v58;
        [(PBFPosterExtensionDataStore *)self _stateLock_updatePosterConfiguration:v55 updates:v24 completion:v57];

        if (error)
        {
          v25 = *(*&buf[8] + 40);
          if (v25)
          {
            *error = v25;
          }
        }

        _Block_object_dispose(buf, 8);
      }
    }

    else
    {
      if (!v55)
      {
        if (error)
        {
          v34 = MEMORY[0x277CCA9B8];
          if (roleCopy)
          {
            v35 = roleCopy;
          }

          else
          {
            v35 = @"(null role identifier)";
          }

          v63[0] = @"roleIdentifier";
          v63[1] = @"configurationUUID";
          v64[0] = v35;
          v53 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:dCopy];
          v64[1] = v53;
          v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:2];
          *error = [v34 pbf_dataStoreErrorWithCode:-2219 userInfo:v36];
        }

        goto LABEL_42;
      }

      selectedPoster = [posterCollection selectedPoster];
      v51 = [(PBFPosterExtensionDataStore *)self activePosterConfigurationForRole:roleCopy assocPoster:0];
      v33 = [selectedPoster isEqual:v55];
      if ((v33 & [selectedPoster isEqual:v51]) == 1)
      {
        *(v59 + 24) = 1;
      }

      else
      {
        v37 = [(PBFPosterExtensionDataStore *)self _buildRoleCoordinatorTransitionContextWithDesiredActivePosterUUID:dCopy role:roleCopy];
        v50 = v14;
        if ((v33 & 1) != 0 || -[__CFString isEqual:](roleCopy, "isEqual:", *MEMORY[0x277D3EEF0]) && ([v55 loadFocusConfigurationWithError:0], v38 = objc_claimAutoreleasedReturnValue(), v39 = v38 == 0, v38, !v39))
        {
          v49 = 0;
        }

        else
        {
          v40 = [PBFPosterRoleCoordinatorChange selectPosterForRole:roleCopy matchingUUID:dCopy];
          v62 = v40;
          v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
        }

        v41 = MEMORY[0x277CCACA8];
        v42 = NSStringFromSelector(a2);
        v43 = [v41 stringWithFormat:@"%@ from %@", v42, v50];

        v44 = [(PBFPosterExtensionDataStore *)self _stateLock_executeDataStoreUpdateWithChanges:v49 diffs:0 options:0 reason:v43 context:v37 error:error];
        *(v59 + 24) = v44;

        v14 = v50;
      }
    }

LABEL_42:
    goto LABEL_43;
  }

  if (error)
  {
    v26 = MEMORY[0x277CCA9B8];
    if (roleCopy)
    {
      v27 = roleCopy;
    }

    else
    {
      v27 = @"(null role identifier)";
    }

    v72[0] = @"roleIdentifier";
    v72[1] = @"configurationUUID";
    v73[0] = v27;
    v28 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:0];
    v73[1] = v28;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:2];
    *error = [v26 pbf_dataStoreErrorWithCode:-2219 userInfo:v29];
  }

  v30 = 0;
LABEL_48:

  return v30 & 1;
}

void __72__PBFPosterExtensionDataStore_updateSelectedPosterUUID_role_from_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a4);
  if (!v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)executeDataStoreUpdateWithChanges:(id)changes diffs:(id *)diffs options:(unint64_t)options reason:(id)reason error:(id *)error
{
  reasonCopy = reason;
  changesCopy = changes;
  os_unfair_lock_lock(&self->_stateLock);
  LOBYTE(error) = [(PBFPosterExtensionDataStore *)self _stateLock_executeDataStoreUpdateWithChanges:changesCopy diffs:diffs options:options reason:reasonCopy context:0 error:error];

  os_unfair_lock_unlock(&self->_stateLock);
  return error;
}

- (BOOL)deletePosterConfigurationsMatchingUUID:(id)d error:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  os_unfair_lock_lock(&self->_stateLock);
  v8 = [(PBFPosterExtensionDataStore *)self _stateLock_posterWithUUID:dCopy error:0];
  v9 = v8;
  if (dCopy && v8)
  {
    v10 = [PBFPosterDataStoreEventBuilder posterDeleted:v8];
    userInfo = [v10 userInfo];
    v12 = [userInfo mutableCopy];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = objc_opt_new();
    }

    v16 = v14;

    v18 = NSStringFromSelector(a2);
    [v16 setObject:v18 forKeyedSubscript:@"origin"];

    v19 = [v10 buildWithError:error];
    v20 = v19;
    if (v19)
    {
      v23 = v19;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
      v17 = [(PBFPosterExtensionDataStore *)self _stateLock_processEvents:v21 context:0 error:error];
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_13;
  }

  if (error)
  {
    v15 = MEMORY[0x277CCA9B8];
    v24 = @"configurationUUID";
    v10 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:dCopy];
    v25[0] = v10;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [v15 pbf_dataStoreErrorWithCode:-2219 userInfo:v16];
    *error = v17 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v17 = 0;
LABEL_14:
  os_unfair_lock_unlock(&self->_stateLock);

  return v17;
}

- (BOOL)togglePosterConfigurationHiddenMatchingUUID:(id)d error:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  os_unfair_lock_lock(&self->_stateLock);
  v7 = [(PBFPosterExtensionDataStore *)self _stateLock_posterWithUUID:dCopy error:0];
  v8 = v7;
  if (dCopy && v7)
  {
    v9 = [v7 loadConfiguredPropertiesWithError:0];
    v10 = [v9 mutableCopy];

    ambientConfiguration = [v10 ambientConfiguration];
    v12 = [ambientConfiguration mutableCopy];

    [v12 setHidden:{objc_msgSend(v12, "hidden") ^ 1}];
    [v10 setAmbientConfiguration:v12];
    v13 = objc_opt_new();
    v14 = [PBFPosterRoleCoordinatorChange updateConfiguredProperties:v10 forPosterWithinRole:*MEMORY[0x277D3EE98] matchingUUID:dCopy];
    [v13 addObject:v14];

    _buildRoleCoordinatorTransitionContext = [(PBFPosterExtensionDataStore *)self _buildRoleCoordinatorTransitionContext];
    v16 = [(PBFPosterExtensionDataStore *)self _stateLock_executeDataStoreUpdateWithChanges:v13 diffs:0 options:0 reason:@"toggledHidden" context:_buildRoleCoordinatorTransitionContext error:0];
  }

  else
  {
    if (error)
    {
      v17 = MEMORY[0x277CCA9B8];
      v21 = @"configurationUUID";
      v18 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:dCopy];
      v22[0] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      *error = [v17 pbf_dataStoreErrorWithCode:-2219 userInfo:v19];
    }

    v16 = 0;
  }

  os_unfair_lock_unlock(&self->_stateLock);

  return v16;
}

- (void)duplicatePosterConfigurationMatchingUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v9 = dCopy;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v9)
  {
    [PBFPosterExtensionDataStore duplicatePosterConfigurationMatchingUUID:a2 completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionDataStore duplicatePosterConfigurationMatchingUUID:a2 completion:?];
  }

  if (!completionCopy)
  {
    [PBFPosterExtensionDataStore duplicatePosterConfigurationMatchingUUID:a2 completion:self];
  }

  os_unfair_lock_lock(&self->_stateLock);
  [(PBFPosterExtensionDataStore *)self _stateLock_duplicatePosterConfigurationMatchingUUID:v9 completion:completionCopy];
  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)_stateLock_duplicatePosterConfigurationMatchingUUID:(id)d completion:(id)completion
{
  v42 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  if (![(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    aSelector = a2;
    v31 = completionCopy;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    keyEnumerator = [(NSDictionary *)self->_roleToRoleCoordinator keyEnumerator];
    v11 = [keyEnumerator countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
LABEL_6:
      v14 = 0;
      while (1)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v15 = *(*(&v33 + 1) + 8 * v14);
        v16 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKey:v15];
        posterCollection = [v16 posterCollection];
        v18 = [posterCollection posterWithUUID:dCopy];

        if (v18)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [keyEnumerator countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v12)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      v9 = v15;
      posterCollection2 = [v16 posterCollection];
      v19 = [posterCollection2 posterWithUUID:dCopy];

      if (v9 && v19)
      {
        uUID = [MEMORY[0x277CCAD78] UUID];
        v24 = [PBFPosterRoleCoordinatorChange duplicatePosterWithinRole:v9 matchingUUID:dCopy toUUID:uUID];
        v37 = v24;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
        v26 = NSStringFromSelector(aSelector);
        v32 = 0;
        [(PBFPosterExtensionDataStore *)self _stateLock_executeDataStoreUpdateWithChanges:v25 diffs:0 options:0 reason:v26 context:0 error:&v32];
        v27 = v32;

        completionCopy = v31;
        if (v31)
        {
          if (v27)
          {
            v28 = 0;
          }

          else
          {
            v28 = uUID;
          }

          (v31)[2](v31, v28, v27);
        }

        goto LABEL_24;
      }

      v20 = MEMORY[0x277CCA9B8];
      v38 = @"configurationID";
      v39 = @"role";
      v40[0] = dCopy;
      v21 = @"(null role)";
      if (v9)
      {
        v21 = v9;
      }
    }

    else
    {
LABEL_12:

      v19 = 0;
      v9 = 0;
      v20 = MEMORY[0x277CCA9B8];
      v38 = @"configurationID";
      v39 = @"role";
      v40[0] = dCopy;
      v21 = @"(null role)";
    }

    v40[1] = v21;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v38 count:2];
    uUID = [v20 pbf_dataStoreErrorWithCode:-2219 userInfo:v29];

    completionCopy = v31;
    v31[2](v31, 0, uUID);
LABEL_24:

    goto LABEL_25;
  }

  if (completionCopy)
  {
    v9 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    completionCopy[2](completionCopy, 0, v9);
LABEL_25:
  }
}

- (id)exportPosterConfigurationMatchingUUID:(id)d error:(id *)error
{
  v20[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!dCopy)
  {
    [PBFPosterExtensionDataStore exportPosterConfigurationMatchingUUID:a2 error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionDataStore exportPosterConfigurationMatchingUUID:a2 error:?];
  }

  os_unfair_lock_lock(&self->_stateLock);
  v17 = 0;
  v18 = 0;
  [(PBFPosterExtensionDataStore *)self _stateLock_findStoreCoordinatorsForUUID:dCopy extensionStoreCoordinator:&v18 configurationStoreCoordinator:&v17];
  v8 = v18;
  v9 = v17;
  os_unfair_lock_unlock(&self->_stateLock);
  if (v8 && v9)
  {
    error = [PBFPosterConfigurationStoreArchiver archiveConfigurationStoreWithCoordinator:v9 error:error];
  }

  else if (error)
  {
    v10 = MEMORY[0x277CCA9B8];
    v19[0] = @"providerIdentifier";
    extensionIdentifier = [v8 extensionIdentifier];
    v12 = extensionIdentifier;
    if (extensionIdentifier)
    {
      v13 = extensionIdentifier;
    }

    else
    {
      v13 = @"(null)";
    }

    v19[1] = @"configurationUUID";
    v20[0] = v13;
    v14 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:dCopy];
    v20[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    *error = [v10 pbf_dataStoreErrorWithCode:-2219 userInfo:v15];

    error = 0;
  }

  return error;
}

- (void)importPosterConfigurationFromArchiveData:(id)data completion:(id)completion
{
  v59[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  v9 = dataCopy;
  NSClassFromString(&cfstr_Nsdata.isa);
  if (!v9)
  {
    [PBFPosterExtensionDataStore importPosterConfigurationFromArchiveData:a2 completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionDataStore importPosterConfigurationFromArchiveData:a2 completion:?];
  }

  v52 = 0;
  v53 = 0;
  v10 = [PBFPosterConfigurationStoreArchiver unarchiveConfigurationStoreArchiveData:v9 manifest:&v53 error:&v52];
  v11 = v53;
  v12 = v52;
  if (v10)
  {
    extensionIdentifier = [v11 extensionIdentifier];
    v51 = 0;
    v14 = [(PBFPosterExtensionDataStore *)self pbf_posterExtensionStoreCoordinatorForProviderIdentifier:extensionIdentifier error:&v51];
    v46 = v51;

    if (!v14 || v46)
    {
      if (v46)
      {
        v19 = v46;
      }

      else
      {
        v27 = MEMORY[0x277CCA9B8];
        v58 = @"providerIdentifier";
        extensionIdentifier2 = [v11 extensionIdentifier];
        v59[0] = extensionIdentifier2;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:1];
        v19 = [v27 pbf_dataStoreErrorWithCode:-2220 userInfo:v29];

        v12 = extensionIdentifier2;
      }

      completionCopy[2](completionCopy, 0, v19);
      goto LABEL_23;
    }

    v45 = v14;
    role = [v11 role];
    if ((PFPosterRoleIsValid() & 1) == 0)
    {
      v24 = MEMORY[0x277CCA9B8];
      if (role)
      {
        v25 = role;
      }

      else
      {
        v25 = @"()";
      }

      v56 = @"role";
      v57 = v25;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v19 = [v24 pbf_dataStoreErrorWithCode:-2203 userInfo:v26];

      completionCopy[2](completionCopy, 0, v19);
      goto LABEL_22;
    }

    os_unfair_lock_lock(&self->_stateLock);
    v44 = [PBFPosterRoleCoordinatorChange addPosterToRole:role incomingPoster:v10];
    v55 = v44;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
    v50 = 0;
    v17 = role;
    v18 = [(PBFPosterExtensionDataStore *)self _stateLock_executeDataStoreUpdateWithChanges:v16 diffs:0 options:0 reason:@"importPoster" context:0 error:&v50];
    v19 = v50;

    if (v18)
    {
      v41 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKeyedSubscript:v17];
      posterCollection = [v41 posterCollection];
      destinationUUID = [v10 destinationUUID];
      v42 = [posterCollection posterWithUUID:destinationUUID];

      os_unfair_lock_unlock(&self->_stateLock);
      role = v17;
      v43 = posterCollection;
      if (!v19)
      {
        v39 = [PBFPosterSnapshotRequest alloc];
        _path = [v42 _path];
        pbf_posterProvider = [v42 pbf_posterProvider];
        v35 = [posterCollection configuredPropertiesForPoster:v42];
        v30 = +[PBFPosterSnapshotDefinition defaultConfigurationDefinitions];
        v31 = +[PBFGenericDisplayContext mainScreen];
        v36 = [(PBFPosterSnapshotRequest *)v39 initWithPath:_path provider:pbf_posterProvider configuredProperties:v35 definitions:v30 context:v31];

        v32 = [(PBFPosterSnapshotRequest *)v36 requestWithLoadFromCacheIfAvailable:0];
        v40 = [v32 requestWithPowerLogReason:6];

        snapshotManager = self->_snapshotManager;
        v54 = v40;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __83__PBFPosterExtensionDataStore_importPosterConfigurationFromArchiveData_completion___block_invoke;
        v47[3] = &unk_2782C5FF0;
        v47[4] = self;
        v23 = v42;
        v48 = v23;
        v49 = completionCopy;
        [(PBFPosterSnapshotManager *)snapshotManager prewarmSnapshotsForRequests:v34 completion:v47];

        role = v17;
        v14 = v45;
        v22 = v41;
        goto LABEL_21;
      }

      v22 = v41;
      v23 = v42;
    }

    else
    {
      os_unfair_lock_unlock(&self->_stateLock);
      v23 = 0;
      v43 = 0;
      v22 = 0;
      role = v17;
    }

    completionCopy[2](completionCopy, 0, v19);
    v14 = v45;
LABEL_21:

LABEL_22:
LABEL_23:

    v12 = v19;
    goto LABEL_24;
  }

  completionCopy[2](completionCopy, 0, v12);
LABEL_24:
}

void __83__PBFPosterExtensionDataStore_importPosterConfigurationFromArchiveData_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _notifyObserversDidAddConfiguration:*(a1 + 40)];
  [*(a1 + 32) _notifyObserversDidUpdateConfigurations];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) _path];
  (*(v2 + 16))(v2, v3, 0);
}

- (void)refreshSnapshotForPosterConfigurationMatchUUID:(id)d completion:(id)completion
{
  v59[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  if (!completionCopy)
  {
    [PBFPosterExtensionDataStore refreshSnapshotForPosterConfigurationMatchUUID:a2 completion:?];
  }

  v9 = completionCopy;
  v10 = dCopy;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v10)
  {
    [PBFPosterExtensionDataStore refreshSnapshotForPosterConfigurationMatchUUID:a2 completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionDataStore refreshSnapshotForPosterConfigurationMatchUUID:a2 completion:?];
  }

  os_unfair_lock_lock(&self->_stateLock);
  _stateLock_fetchPosterConfigurations = [(PBFPosterExtensionDataStore *)self _stateLock_fetchPosterConfigurations];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __89__PBFPosterExtensionDataStore_refreshSnapshotForPosterConfigurationMatchUUID_completion___block_invoke;
  v53[3] = &unk_2782C6018;
  v12 = v10;
  v54 = v12;
  v13 = [_stateLock_fetchPosterConfigurations bs_firstObjectPassingTest:v53];

  os_unfair_lock_unlock(&self->_stateLock);
  if (v13)
  {
    os_unfair_lock_lock(&self->_stateLock);
    v52 = 0;
    [(PBFPosterExtensionDataStore *)self _stateLock_findStoreCoordinatorsForUUID:v12 extensionStoreCoordinator:0 configurationStoreCoordinator:&v52];
    v14 = v52;
    os_unfair_lock_unlock(&self->_stateLock);
    if (v14)
    {
      v46 = 0;
      v47 = &v46;
      v48 = 0x3032000000;
      v49 = __Block_byref_object_copy_;
      v50 = __Block_byref_object_dispose_;
      v51 = [MEMORY[0x277D46DB8] pf_finishTaskInterruptableWithExplanation:@"refresh snapshot" invalidationHandler:0];
      [v47[5] acquireWithError:0];
      v15 = [objc_alloc(MEMORY[0x277D3ED58]) _initWithPath:v13];
      v16 = [PBFPosterSnapshotRequest alloc];
      v17 = +[PBFPosterSnapshotDefinition defaultConfigurationDefinitions];
      v18 = +[PBFGenericDisplayContext mainScreen];
      v19 = [(PBFPosterSnapshotRequest *)v16 initWithConfiguration:v15 definitions:v17 context:v18];

      v20 = [(PBFPosterSnapshotRequest *)v19 requestWithPowerLogReason:3];

      v36 = [v20 requestWithLoadFromCacheIfAvailable:0];

      v21 = objc_opt_new();
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __89__PBFPosterExtensionDataStore_refreshSnapshotForPosterConfigurationMatchUUID_completion___block_invoke_2;
      aBlock[3] = &unk_2782C6040;
      objc_copyWeak(&v44, &location);
      v22 = v21;
      v40 = v22;
      v23 = v15;
      v41 = v23;
      v42 = v9;
      v43 = &v46;
      v24 = _Block_copy(aBlock);
      snapshotManager = self->_snapshotManager;
      v55 = v36;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
      [(PBFPosterSnapshotManager *)snapshotManager prewarmSnapshotsForRequests:v26 completion:v24];

      v27 = dispatch_time(0, 10000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __89__PBFPosterExtensionDataStore_refreshSnapshotForPosterConfigurationMatchUUID_completion___block_invoke_3;
      block[3] = &unk_2782C6068;
      v38 = v24;
      v28 = v24;
      dispatch_after(v27, MEMORY[0x277D85CD0], block);

      objc_destroyWeak(&v44);
      objc_destroyWeak(&location);

      _Block_object_dispose(&v46, 8);
    }

    else
    {
      v32 = MEMORY[0x277CCA9B8];
      v56 = @"configurationUUID";
      v33 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:v12];
      v57 = v33;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v35 = [v32 pbf_dataStoreErrorWithCode:-2219 userInfo:v34];

      (v9)[2](v9, v35);
    }
  }

  else
  {
    v29 = MEMORY[0x277CCA9B8];
    v58 = @"configurationUUID";
    v30 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:v12];
    v59[0] = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:1];
    v14 = [v29 pbf_dataStoreErrorWithCode:-2219 userInfo:v31];

    (v9)[2](v9, v14);
  }
}

uint64_t __89__PBFPosterExtensionDataStore_refreshSnapshotForPosterConfigurationMatchUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 serverIdentity];
  v4 = [v3 posterUUID];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

void __89__PBFPosterExtensionDataStore_refreshSnapshotForPosterConfigurationMatchUUID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if ([*(a1 + 32) signal])
  {
    [WeakRetained _notifyObserversDidUpdateConfiguration:*(a1 + 40)];
    [WeakRetained _notifyObserversDidUpdateSnapshotForConfiguration:*(a1 + 40)];
    (*(*(a1 + 48) + 16))();
    [*(*(*(a1 + 56) + 8) + 40) invalidate];
    v4 = *(*(a1 + 56) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }
}

void __89__PBFPosterExtensionDataStore_refreshSnapshotForPosterConfigurationMatchUUID_completion___block_invoke_3(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA470];
  v6[0] = &stru_282CD3858;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v4 = [v2 pbf_generalErrorWithCode:2 userInfo:v3];
  (*(v1 + 16))(v1, v4);
}

- (void)ingestSnapshotCollection:(id)collection forPosterConfigurationUUID:(id)d error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  dCopy = d;
  v11 = collectionCopy;
  NSClassFromString(&cfstr_Prspostersnaps_0.isa);
  if (!v11)
  {
    [PBFPosterExtensionDataStore ingestSnapshotCollection:a2 forPosterConfigurationUUID:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionDataStore ingestSnapshotCollection:a2 forPosterConfigurationUUID:? error:?];
  }

  v12 = dCopy;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v12)
  {
    [PBFPosterExtensionDataStore ingestSnapshotCollection:a2 forPosterConfigurationUUID:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionDataStore ingestSnapshotCollection:a2 forPosterConfigurationUUID:? error:?];
  }

  v14 = PBFLogDataStore(v13);
  v15 = os_signpost_id_generate(v14);

  v17 = PBFLogDataStore(v16);
  v18 = v17;
  v19 = v15 - 1;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 138543362;
    v37 = v12;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v15, "ingestSnapshotCollection:forPosterConfigurationUUID:", "configurationUUID: %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_stateLock);
  _stateLock_fetchPosterConfigurations = [(PBFPosterExtensionDataStore *)self _stateLock_fetchPosterConfigurations];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __89__PBFPosterExtensionDataStore_ingestSnapshotCollection_forPosterConfigurationUUID_error___block_invoke;
  v32[3] = &unk_2782C6018;
  v21 = v12;
  v33 = v21;
  v22 = [_stateLock_fetchPosterConfigurations bs_firstObjectPassingTest:v32];

  os_unfair_lock_unlock(&self->_stateLock);
  if (v22)
  {
    v24 = [objc_alloc(MEMORY[0x277D3ED58]) _initWithPath:v22];
    v25 = [(PBFPosterSnapshotManager *)self->_snapshotManager ingestSnapshotCollection:v11 forConfiguration:v24 error:error];
    if (v25)
    {
      v25 = [(PBFPosterExtensionDataStore *)self _notifyObserversDidUpdateSnapshotForConfiguration:v24];
    }

    v26 = PBFLogDataStore(v25);
    v27 = v26;
    if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 138543362;
      v37 = v21;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v27, OS_SIGNPOST_INTERVAL_END, v15, "ingestSnapshotCollection:forPosterConfigurationUUID:", "configurationUUID: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (error)
    {
      v28 = MEMORY[0x277CCA9B8];
      v34 = @"configurationUUID";
      v29 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:v21];
      v35 = v29;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *error = [v28 pbf_dataStoreErrorWithCode:-2219 userInfo:v30];
    }

    v31 = PBFLogDataStore(v23);
    v24 = v31;
    if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      *buf = 138543362;
      v37 = v21;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v24, OS_SIGNPOST_INTERVAL_END, v15, "ingestSnapshotCollection:forPosterConfigurationUUID:", "configurationUUID: %{public}@", buf, 0xCu);
    }
  }
}

uint64_t __89__PBFPosterExtensionDataStore_ingestSnapshotCollection_forPosterConfigurationUUID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 serverIdentity];
  v4 = [v3 posterUUID];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

- (id)fetchPosterConfigurationsSortedByUseForRole:(id)role
{
  roleCopy = role;
  os_unfair_lock_lock(&self->_stateLock);
  v5 = [(PBFPosterExtensionDataStore *)self _stateLock_fetchPosterConfigurationsSortedByUse:1 forRole:roleCopy];

  os_unfair_lock_unlock(&self->_stateLock);

  return v5;
}

- (void)notePosterConfigurationUnderlyingModelDidChange:(id)change
{
  v19 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  os_unfair_lock_lock(&self->_stateLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSDictionary *)self->_roleToRoleCoordinator allValues];
  v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        posterCollection = [*(*(&v14 + 1) + 8 * i) posterCollection];
        v11 = [posterCollection posterWithUUID:changeCopy];

        if (v11)
        {
          v12 = MEMORY[0x277D3EDE0];
          _path = [v11 _path];
          [v12 invalidateModelObjectCacheForPath:_path];

          goto LABEL_11;
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_stateLock);
}

- (id)_stateLock_prepareReloadConfigurationOperationForExtension:(id)extension path:(id)path locationInUse:(BOOL)use sessionInfo:(id)info powerLogReason:(int64_t)reason assetUpdater:(id)updater error:(id *)error
{
  useCopy = use;
  v59[1] = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  pathCopy = path;
  infoCopy = info;
  updaterCopy = updater;
  if (![(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    v46 = useCopy;
    v48 = pathCopy;
    v47 = extensionCopy;
    if ([updaterCopy isValid])
    {
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v21 = self->_instanceCollection;
      extensionForIdentifier = [(PFPosterExtensionProvider *)self->_extensionProvider extensionForIdentifier];
      v31 = [extensionForIdentifier objectForKey:extensionCopy];

      v57 = 0;
      v20 = [(PFPosterExtensionInstanceProvider *)v21 acquireInstanceForExtension:v31 reason:@"ReloadConfiguration" error:&v57];
      v33 = v57;
      if (v33)
      {
        v24 = v33;
        if (error)
        {
          v34 = v33;
          v19 = 0;
          *error = v24;
        }

        else
        {
          v19 = 0;
        }

LABEL_26:

LABEL_27:
        extensionCopy = v47;

        pathCopy = v48;
        goto LABEL_28;
      }

      v56 = 0;
      v35 = [v20 pr_assetUpdaterWithError:&v56];
      v36 = v56;

      if (v36)
      {
        v37 = 1;
      }

      else
      {
        v37 = v35 == 0;
      }

      v38 = !v37;
      if (error && (v38 & 1) == 0)
      {
        if (v36)
        {
          v39 = v36;
          *error = v36;
        }

        else
        {
          v44 = MEMORY[0x277CCA9B8];
          v41 = v47;
          if (!v47)
          {
            v41 = @"(null)";
          }

          v58 = @"extensionIdentifier";
          v59[0] = v41;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:1];
          v42 = v45 = reason;
          v43 = [v44 pbf_dataStoreErrorWithCode:-2220 userInfo:v42];
          *error = v43;

          reason = v45;
        }
      }

      if (!v38)
      {
        v19 = 0;
        updaterCopy = v35;
        goto LABEL_27;
      }

      updaterCopy = v35;
      extensionCopy = v47;
    }

    updaterCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"extensionIdentifier:%@ sessionInfo:%@ assetUpdater: %@", extensionCopy, infoCopy, updaterCopy];;
    v23 = MEMORY[0x277D46DB8];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __155__PBFPosterExtensionDataStore__stateLock_prepareReloadConfigurationOperationForExtension_path_locationInUse_sessionInfo_powerLogReason_assetUpdater_error___block_invoke;
    v54[3] = &unk_2782C59F0;
    v24 = updaterCopy;
    v55 = v24;
    v25 = [v23 pf_finishTaskInterruptableWithExplanation:@"Finish Reload Configuration Operation" invalidationHandler:v54];
    v53 = 0;
    [v25 acquireWithError:&v53];
    v26 = v53;
    v27 = v26;
    if (v26)
    {
      reasonCopy = reason;
      v29 = PBFLogReloadConfiguration(v26);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterExtensionDataStore _stateLock_prepareReloadConfigurationOperationForExtension:path:locationInUse:sessionInfo:powerLogReason:assetUpdater:error:];
      }

      reason = reasonCopy;
    }

    v19 = [[PBFPosterExtensionReloadConfigurationOperation alloc] initWithUpdatingService:updaterCopy sessionInfo:infoCopy existingConfigurationPath:v48 locationInUse:v46 runtimeAssertionProvider:self->_runtimeAssertionProvider timeout:reason powerLogReason:90.0];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __155__PBFPosterExtensionDataStore__stateLock_prepareReloadConfigurationOperationForExtension_path_locationInUse_sessionInfo_powerLogReason_assetUpdater_error___block_invoke_574;
    v49[3] = &unk_2782C6090;
    v21 = v21;
    v50 = v21;
    v20 = v20;
    v51 = v20;
    v52 = v25;
    v30 = v25;
    [(PBFPosterExtensionReloadConfigurationOperation *)v19 addCompletionObserver:v49];

    v31 = v55;
    goto LABEL_26;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    *error = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

LABEL_28:

  return v19;
}

void __155__PBFPosterExtensionDataStore__stateLock_prepareReloadConfigurationOperationForExtension_path_locationInUse_sessionInfo_powerLogReason_assetUpdater_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PBFLogReloadConfiguration(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __155__PBFPosterExtensionDataStore__stateLock_prepareReloadConfigurationOperationForExtension_path_locationInUse_sessionInfo_powerLogReason_assetUpdater_error___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_DEFAULT, "Invalidated reloadConfiguration '%{public}@' finish task assertion", &v7, 0xCu);
  }
}

uint64_t __155__PBFPosterExtensionDataStore__stateLock_prepareReloadConfigurationOperationForExtension_path_locationInUse_sessionInfo_powerLogReason_assetUpdater_error___block_invoke_574(uint64_t a1)
{
  [*(a1 + 32) relinquishExtensionInstance:*(a1 + 40) reason:@"ReloadConfiguration"];
  v2 = *(a1 + 48);

  return [v2 invalidate];
}

- (void)_stateLock_enqueueRefreshPosterConfigurationMatchingUUID:(id)d sessionInfo:(id)info powerLogReason:(int64_t)reason completion:(id)completion
{
  v116[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  infoCopy = info;
  completionCopy = completion;
  if (![(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (![(PBFPosterExtensionDataStore *)self _stateLock_hasBeenUnlockedSinceBoot])
    {
      v22 = MEMORY[0x277CCA9B8];
      v115 = @"posterUUID";
      v23 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:dCopy];
      v116[0] = v23;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:&v115 count:1];
      v25 = [v22 pbf_dataStoreErrorWithCode:-2205 userInfo:v24];

      completionCopy[2](completionCopy, 0, v25);
      goto LABEL_39;
    }

    v101 = 0;
    v102 = &v101;
    v103 = 0x3032000000;
    v104 = __Block_byref_object_copy_;
    v105 = __Block_byref_object_dispose_;
    v106 = 0;
    v99 = 0;
    v100 = 0;
    [(PBFPosterExtensionDataStore *)self _stateLock_findStoreCoordinatorsForUUID:dCopy extensionStoreCoordinator:&v100 configurationStoreCoordinator:&v99];
    v15 = v100;
    objc_storeStrong(&v106, v99);
    v16 = v102[5];
    if (v16)
    {
      if (v15)
      {
        identityOfLatestVersion = [v16 identityOfLatestVersion];
        if (!identityOfLatestVersion)
        {
          v32 = MEMORY[0x277CCA9B8];
          v109 = @"posterUUID";
          v33 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:dCopy];
          v110 = v33;
          v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
          extensionIdentifier = [v32 pbf_dataStoreErrorWithCode:-2213 userInfo:v34];

          completionCopy[2](completionCopy, 0, extensionIdentifier);
LABEL_37:

          goto LABEL_38;
        }

        extensionIdentifier = [v15 extensionIdentifier];
        v72 = self->_extensionProvider;
        uUIDString = [dCopy UUIDString];
        v20 = NSStringFromSelector(a2);
        v71 = [uUIDString stringByAppendingFormat:@"-%@", v20];

        v98 = 0;
        v70 = [(PFPosterExtensionProvider *)v72 acquireInstanceForExtensionWithIdentifier:extensionIdentifier reason:v71 error:&v98];
        v21 = v98;
        v69 = v21;
        if (v21)
        {
          completionCopy[2](completionCopy, 0, v21);
LABEL_36:

          goto LABEL_37;
        }

        v97 = 0;
        v35 = [v70 pr_assetUpdaterWithError:&v97];
        v68 = v97;
        if (v68)
        {
          [(PFPosterExtensionProvider *)v72 relinquishExtensionInstanceWithIdentifier:extensionIdentifier reason:v71];
          completionCopy[2](completionCopy, 0, v68);
LABEL_35:

          goto LABEL_36;
        }

        v66 = v35;
        v36 = MEMORY[0x277D3EBA0];
        containerURL = [v15 containerURL];
        v67 = [v36 pathWithProviderURL:containerURL identity:identityOfLatestVersion];

        if (!infoCopy || [infoCopy isEmpty])
        {
          pr_refreshConfigurationOperations = [v70 pr_refreshConfigurationOperations];
          v95[0] = MEMORY[0x277D85DD0];
          v95[1] = 3221225472;
          v95[2] = __126__PBFPosterExtensionDataStore__stateLock_enqueueRefreshPosterConfigurationMatchingUUID_sessionInfo_powerLogReason_completion___block_invoke;
          v95[3] = &unk_2782C60B8;
          v96 = v67;
          v39 = [pr_refreshConfigurationOperations bs_firstObjectPassingTest:v95];

          if (v39)
          {
            v89[0] = MEMORY[0x277D85DD0];
            v89[1] = 3221225472;
            v89[2] = __126__PBFPosterExtensionDataStore__stateLock_enqueueRefreshPosterConfigurationMatchingUUID_sessionInfo_powerLogReason_completion___block_invoke_2;
            v89[3] = &unk_2782C60E0;
            v93 = completionCopy;
            v94 = &v101;
            v90 = v72;
            v91 = extensionIdentifier;
            v92 = v71;
            [v39 addCompletionObserver:v89];

            v40 = v93;
LABEL_34:

            v35 = v66;
            goto LABEL_35;
          }
        }

        _stateLock_switcherConfiguration = [(PBFPosterExtensionDataStore *)self _stateLock_switcherConfiguration];
        selectedConfiguration = [_stateLock_switcherConfiguration selectedConfiguration];
        _path = [selectedConfiguration _path];
        serverIdentity = [_path serverIdentity];
        posterUUID = [serverIdentity posterUUID];
        v59 = _stateLock_switcherConfiguration;
        if ([posterUUID isEqual:dCopy])
        {
        }

        else
        {
          activeConfiguration = [_stateLock_switcherConfiguration activeConfiguration];
          _path2 = [activeConfiguration _path];
          serverIdentity2 = [_path2 serverIdentity];
          posterUUID2 = [serverIdentity2 posterUUID];
          v55 = [posterUUID2 isEqual:dCopy];

          if ((v55 & 1) == 0)
          {
            pf_wantsLocation = 0;
LABEL_25:
            v88 = 0;
            v46 = [(PBFPosterExtensionDataStore *)self _stateLock_prepareReloadConfigurationOperationForExtension:extensionIdentifier path:v67 locationInUse:pf_wantsLocation sessionInfo:infoCopy powerLogReason:reason assetUpdater:v66 error:&v88];
            v47 = v88;
            v48 = v47;
            v39 = v46;
            if (v47 || !v46)
            {
              v53 = v47;
              if (!v47)
              {
                v54 = MEMORY[0x277CCA9B8];
                v107 = *MEMORY[0x277CCA470];
                v108 = @"Unable to create reloadConfigurationOperation";
                self = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
                v53 = [v54 pbf_dataStoreErrorWithCode:-2222 userInfo:self];
              }

              completionCopy[2](completionCopy, 0, v53);
              if (!v48)
              {
              }

              [(PFPosterExtensionProvider *)v72 relinquishExtensionInstanceWithIdentifier:extensionIdentifier reason:v71];
            }

            else
            {
              snapshotManager = [(PBFPosterExtensionDataStore *)self snapshotManager];
              v50 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 3221225472;
              aBlock[2] = __126__PBFPosterExtensionDataStore__stateLock_enqueueRefreshPosterConfigurationMatchingUUID_sessionInfo_powerLogReason_completion___block_invoke_3;
              aBlock[3] = &unk_2782C6130;
              v62 = v50;
              v81 = v62;
              v87 = completionCopy;
              v65 = identityOfLatestVersion;
              v82 = v65;
              v48 = snapshotManager;
              v83 = v48;
              v84 = v72;
              v85 = extensionIdentifier;
              v86 = v71;
              v51 = _Block_copy(aBlock);
              objc_initWeak(&location, self);
              v73[0] = MEMORY[0x277D85DD0];
              v73[1] = 3221225472;
              v73[2] = __126__PBFPosterExtensionDataStore__stateLock_enqueueRefreshPosterConfigurationMatchingUUID_sessionInfo_powerLogReason_completion___block_invoke_5;
              v73[3] = &unk_2782C61D0;
              objc_copyWeak(&v78, &location);
              v52 = v51;
              v77 = v52;
              v74 = v65;
              v75 = v67;
              v76 = dCopy;
              [v39 addCompletionObserver:v73];
              [v70 pr_addRefreshConfigurationOperation:v39 waitUntilFinished:0];

              objc_destroyWeak(&v78);
              objc_destroyWeak(&location);
            }

            v40 = v59;
            goto LABEL_34;
          }
        }

        extension = [v70 extension];
        posterExtensionInfoPlist = [extension posterExtensionInfoPlist];
        pf_wantsLocation = [posterExtensionInfoPlist pf_wantsLocation];

        goto LABEL_25;
      }

      v29 = MEMORY[0x277CCA9B8];
      v111 = @"posterUUID";
      v30 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:dCopy];
      v112 = v30;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
      identityOfLatestVersion = [v29 pbf_dataStoreErrorWithCode:-2220 userInfo:v31];

      completionCopy[2](completionCopy, 0, identityOfLatestVersion);
    }

    else
    {
      v26 = MEMORY[0x277CCA9B8];
      v113 = @"posterUUID";
      v27 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:dCopy];
      v114 = v27;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
      identityOfLatestVersion = [v26 pbf_dataStoreErrorWithCode:-2219 userInfo:v28];

      completionCopy[2](completionCopy, 0, identityOfLatestVersion);
    }

LABEL_38:

    _Block_object_dispose(&v101, 8);
    goto LABEL_39;
  }

  if (completionCopy)
  {
    v14 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    completionCopy[2](completionCopy, 0, v14);
  }

LABEL_39:
}

uint64_t __126__PBFPosterExtensionDataStore__stateLock_enqueueRefreshPosterConfigurationMatchingUUID_sessionInfo_powerLogReason_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preRefreshPosterConfiguration];
  v5 = [v4 identity];
  v6 = [*(a1 + 32) identity];
  if ([v5 isEqual:v6])
  {
    v7 = [v3 hasUniqueSessionInfo] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __126__PBFPosterExtensionDataStore__stateLock_enqueueRefreshPosterConfigurationMatchingUUID_sessionInfo_powerLogReason_completion___block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    (*(a1[7] + 16))();
  }

  else
  {
    v4 = [*(*(a1[8] + 8) + 40) pathOfLatestVersion];
    (*(a1[7] + 16))();
  }

  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];

  return [v5 relinquishExtensionInstanceWithIdentifier:v6 reason:v7];
}

void __126__PBFPosterExtensionDataStore__stateLock_enqueueRefreshPosterConfigurationMatchingUUID_sessionInfo_powerLogReason_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) setFlag:1])
  {
    v8 = *(a1 + 80);
    if (v8)
    {
      (*(v8 + 16))(v8, v5, v6);
    }

    if (!v5 || v6)
    {
      goto LABEL_10;
    }

    v9 = [v5 serverIdentity];
    if (![v9 isEqual:*(a1 + 40)])
    {
      v10 = [v5 serverIdentity];
      v11 = [v10 role];
      v12 = [v11 isEqualToString:*MEMORY[0x277D3EBC0]];

      if (!v12)
      {
LABEL_10:
        [*(a1 + 56) relinquishExtensionInstanceWithIdentifier:*(a1 + 64) reason:*(a1 + 72)];
        goto LABEL_11;
      }

      v13 = objc_opt_new();
      v9 = [MEMORY[0x277CCAB58] indexSetWithIndex:2];
      [v9 addIndex:1];
      v14 = [objc_alloc(MEMORY[0x277D3ED58]) _initWithPath:v5];
      v15 = [PBFGenericDisplayContext mainScreenDisplayContextsForKnownOrientationsAndUserInterfaceStyles:v9];
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __126__PBFPosterExtensionDataStore__stateLock_enqueueRefreshPosterConfigurationMatchingUUID_sessionInfo_powerLogReason_completion___block_invoke_4;
      v23 = &unk_2782C6108;
      v24 = v14;
      v25 = v13;
      v16 = v13;
      v17 = v14;
      [v15 enumerateObjectsUsingBlock:&v20];

      v18 = *(a1 + 48);
      v19 = [v16 allObjects];
      [v18 prewarmSnapshotsForRequests:v19 completion:0];
    }

    goto LABEL_10;
  }

LABEL_11:
  objc_autoreleasePoolPop(v7);
}

void __126__PBFPosterExtensionDataStore__stateLock_enqueueRefreshPosterConfigurationMatchingUUID_sessionInfo_powerLogReason_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = [PBFPosterSnapshotRequest snapshotRequestForConfiguration:*(a1 + 32) context:a2];
  v4 = [v3 requestWithIntention:1];

  [*(a1 + 40) addObject:v4];
}

void __126__PBFPosterExtensionDataStore__stateLock_enqueueRefreshPosterConfigurationMatchingUUID_sessionInfo_powerLogReason_completion___block_invoke_5(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v8 = WeakRetained;
  if (v6)
  {
    (*(a1[7] + 2))();
  }

  else if (v5 && WeakRetained)
  {
    v9 = [v5 postRefreshPosterConfiguration];
    v10 = [v9 serverIdentity];
    v11 = v10;
    if (v10 && a1[4])
    {
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __126__PBFPosterExtensionDataStore__stateLock_enqueueRefreshPosterConfigurationMatchingUUID_sessionInfo_powerLogReason_completion___block_invoke_6;
      v34[3] = &unk_2782C6158;
      v35 = v10;
      v12 = a1[4];
      v13 = a1[7];
      v14 = a1[5];
      *&v15 = a1[6];
      *(&v15 + 1) = v13;
      *&v16 = v12;
      *(&v16 + 1) = v14;
      v36 = v16;
      v37 = v15;
      [v5 invalidateAssertionsWithCompletion:v34];

      v17 = v35;
    }

    else
    {
      v30 = v10;
      v29 = [v5 preRefreshPosterConfiguration];
      v20 = [MEMORY[0x277D3EDE8] loadConfiguredPropertiesForPath:? error:?];
      v21 = [MEMORY[0x277D3EDE8] loadConfiguredPropertiesForPath:v9 error:0];
      v22 = [v21 mutableCopy];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = objc_opt_new();
      }

      v25 = v24;

      [v25 mergeConfiguredProperties:v20];
      v26 = objc_alloc(MEMORY[0x277D3ECE0]);
      v27 = [a1[4] posterUUID];
      v28 = [v26 initWithUpdatedPath:v9 updatedPosterUUID:v27 sourceIdentity:a1[4] configuredProperties:v25 attributes:0];

      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __126__PBFPosterExtensionDataStore__stateLock_enqueueRefreshPosterConfigurationMatchingUUID_sessionInfo_powerLogReason_completion___block_invoke_583;
      v31[3] = &unk_2782C61A8;
      v32 = v5;
      v33 = a1[7];
      [v8 _ingestRefreshPosterConfiguration:v28 completion:v31];

      v17 = v29;
      v11 = v30;
    }
  }

  else
  {
    v18 = a1[7];
    v19 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    v18[2](v18, 0, v19);
  }
}

void __126__PBFPosterExtensionDataStore__stateLock_enqueueRefreshPosterConfigurationMatchingUUID_sessionInfo_powerLogReason_completion___block_invoke_6(uint64_t a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isEqual:*(a1 + 40)])
  {
    v2 = *(*(a1 + 64) + 16);

    v2();
  }

  else
  {
    v3 = MEMORY[0x277CCA9B8];
    v17 = @"posterUUID";
    v4 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:*(a1 + 56)];
    v18[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v6 = [v3 pbf_dataStoreErrorWithCode:-2213 userInfo:v5];

    v8 = PBFLogPosterContents(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = 138412802;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      v15 = 2114;
      v16 = v6;
      _os_log_error_impl(&dword_21B526000, v8, OS_LOG_TYPE_ERROR, "updated configuration isn't new but fails to match the previous descriptor : new=%@ previous=%@ error:%{public}@", &v11, 0x20u);
    }

    (*(*(a1 + 64) + 16))();
  }
}

void __126__PBFPosterExtensionDataStore__stateLock_enqueueRefreshPosterConfigurationMatchingUUID_sessionInfo_powerLogReason_completion___block_invoke_583(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __126__PBFPosterExtensionDataStore__stateLock_enqueueRefreshPosterConfigurationMatchingUUID_sessionInfo_powerLogReason_completion___block_invoke_2_584;
    v8[3] = &unk_2782C6180;
    v11 = *(a1 + 40);
    v9 = v5;
    v10 = v6;
    [v7 invalidateAssertionsWithCompletion:v8];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_ingestRefreshPosterConfiguration:(id)configuration completion:(id)completion
{
  v56[2] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  completionCopy = completion;
  getFlag = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if (!getFlag)
  {
    os_unfair_lock_lock(&self->_stateLock);
    sourceIdentity = [configurationCopy sourceIdentity];
    role = [configurationCopy role];
    destinationUUID = [configurationCopy destinationUUID];
    v14 = @"(null role)";
    if (role)
    {
      v14 = role;
    }

    v15 = v14;
    v16 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKeyedSubscript:role];
    v17 = v16;
    if (v16)
    {
      v46 = v15;
      posterCollection = [v16 posterCollection];
      v19 = [posterCollection posterWithUUID:destinationUUID];

      if (v19)
      {
        v44 = posterCollection;
        v45 = destinationUUID;
        v43 = [PBFPosterRoleCoordinatorChange updatePosterWithinRole:role incomingPoster:configurationCopy];
        v52 = v43;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
        v21 = NSStringFromSelector(a2);
        v49 = 0;
        v22 = [(PBFPosterExtensionDataStore *)self _stateLock_executeDataStoreUpdateWithChanges:v20 diffs:0 options:0 reason:v21 context:0 error:&v49];
        v23 = v49;

        if (v22)
        {
          posterCollection2 = [v17 posterCollection];
          orderedPosters = [posterCollection2 orderedPosters];
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __76__PBFPosterExtensionDataStore__ingestRefreshPosterConfiguration_completion___block_invoke;
          v47[3] = &unk_2782C61F8;
          v48 = sourceIdentity;
          v26 = [orderedPosters bs_firstObjectPassingTest:v47];

          os_unfair_lock_unlock(&self->_stateLock);
          _path = [v26 _path];
          completionCopy[2](completionCopy, _path, v23);

          destinationUUID = v45;
          v15 = v46;
          posterCollection = v44;
        }

        else
        {
          os_unfair_lock_unlock(&self->_stateLock);
          v38 = PBFLogRoleCoordinator(v37);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            [PBFPosterExtensionDataStore _ingestRefreshPosterConfiguration:completion:];
          }

          destinationUUID = v45;
          v15 = v46;
          posterCollection = v44;
          if (completionCopy)
          {
            if (!v23)
            {
              v39 = MEMORY[0x277CCA9B8];
              v50[0] = *MEMORY[0x277CCA470];
              v50[1] = @"role";
              v51[0] = @"Role Coordinator could not execute refresh poster configuration";
              v51[1] = v46;
              v50[2] = @"posterUUID";
              v40 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:v45];
              v51[2] = v40;
              v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:3];
              v42 = v39;
              destinationUUID = v45;
              v23 = [v42 pbf_dataStoreErrorWithCode:-2222 userInfo:v41];

              posterCollection = v44;
              v15 = v46;
            }

            completionCopy[2](completionCopy, 0, v23);
          }
        }
      }

      else
      {
        os_unfair_lock_unlock(&self->_stateLock);
        v33 = PBFLogRoleCoordinator(v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [PBFPosterExtensionDataStore _ingestRefreshPosterConfiguration:completion:];
        }

        v15 = v46;
        if (!completionCopy)
        {
          goto LABEL_28;
        }

        v34 = MEMORY[0x277CCA9B8];
        v53[0] = *MEMORY[0x277CCA470];
        v53[1] = @"role";
        v54[0] = @"Poster w/ UUID could not be found";
        v54[1] = v46;
        v53[2] = @"posterUUID";
        v35 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:destinationUUID];
        v54[2] = v35;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:3];
        v23 = [v34 pbf_dataStoreErrorWithCode:-2213 userInfo:v36];

        v15 = v46;
        completionCopy[2](completionCopy, 0, v23);
      }
    }

    else
    {
      os_unfair_lock_unlock(&self->_stateLock);
      v29 = PBFLogRoleCoordinator(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterExtensionDataStore _ingestRefreshPosterConfiguration:completion:];
      }

      if (!completionCopy)
      {
        goto LABEL_29;
      }

      v30 = MEMORY[0x277CCA9B8];
      v55[0] = *MEMORY[0x277CCA470];
      v55[1] = @"role";
      v56[0] = @"RoleCoordinator not setup for role";
      v56[1] = v15;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
      posterCollection = [v30 pbf_generalErrorWithCode:1 userInfo:v31];

      completionCopy[2](completionCopy, 0, posterCollection);
    }

LABEL_28:

LABEL_29:
    goto LABEL_30;
  }

  v10 = PBFLogRoleCoordinator(getFlag);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [PBFPosterExtensionDataStore _ingestRefreshPosterConfiguration:a2 completion:?];
  }

  if (completionCopy)
  {
    sourceIdentity = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    completionCopy[2](completionCopy, 0, sourceIdentity);
LABEL_30:
  }
}

BOOL __76__PBFPosterExtensionDataStore__ingestRefreshPosterConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _path];
  v4 = [v3 serverIdentity];

  v5 = [v4 posterUUID];
  v6 = [*(a1 + 32) posterUUID];
  if ([v5 isEqual:v6])
  {
    v7 = [v4 version];
    v8 = v7 > [*(a1 + 32) version];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_stateLock_fetchPosterConfigurationsSortedByUse:(BOOL)use forRole:(id)role
{
  useCopy = use;
  roleCopy = role;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v8 = [(PBFPosterExtensionDataStoreSQLiteDatabase *)self->_database sortedPosterUUIDsForRole:roleCopy error:0];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_opt_new();
    }

    v11 = v10;

    v12 = objc_opt_new();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __87__PBFPosterExtensionDataStore__stateLock_fetchPosterConfigurationsSortedByUse_forRole___block_invoke;
    v22[3] = &unk_2782C6220;
    v13 = v11;
    v23 = v13;
    v14 = v12;
    v24 = v14;
    [(PBFPosterExtensionDataStore *)self _stateLock_enumerateConfigurationStoreCoordinators:v22];
    if (useCopy)
    {
      _stateLock_lastUseDatesForPosterCollection = [(PBFPosterExtensionDataStore *)self _stateLock_lastUseDatesForPosterCollection];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __87__PBFPosterExtensionDataStore__stateLock_fetchPosterConfigurationsSortedByUse_forRole___block_invoke_2;
      v20[3] = &unk_2782C6248;
      v21 = _stateLock_lastUseDatesForPosterCollection;
      v16 = _stateLock_lastUseDatesForPosterCollection;
      [v14 sortUsingComparator:v20];
    }

    else
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __87__PBFPosterExtensionDataStore__stateLock_fetchPosterConfigurationsSortedByUse_forRole___block_invoke_3;
      v18[3] = &unk_2782C6248;
      v19 = v13;
      [v14 sortUsingComparator:v18];
      v16 = v19;
    }

    v7 = [v14 copy];
  }

  return v7;
}

void __87__PBFPosterExtensionDataStore__stateLock_fetchPosterConfigurationsSortedByUse_forRole___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = [a3 identityOfLatestVersion];
  if (v5)
  {
    v6 = MEMORY[0x277D3EBA0];
    v7 = [v11 containerURL];
    v8 = [v6 pathWithProviderURL:v7 identity:v5];

    v9 = *(a1 + 32);
    v10 = [v5 posterUUID];
    LODWORD(v9) = [v9 containsObject:v10];

    if (v9)
    {
      [*(a1 + 40) addObject:v8];
    }
  }
}

uint64_t __87__PBFPosterExtensionDataStore__stateLock_fetchPosterConfigurationsSortedByUse_forRole___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 serverIdentity];
  v8 = [v7 posterUUID];
  v9 = [v5 objectForKey:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v12 = v11;

  v13 = *(a1 + 32);
  v14 = [v6 serverIdentity];

  v15 = [v14 posterUUID];
  v16 = [v13 objectForKey:v15];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v19 = v18;

  v20 = [v12 compare:v19];
  return v20;
}

uint64_t __87__PBFPosterExtensionDataStore__stateLock_fetchPosterConfigurationsSortedByUse_forRole___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [a2 serverIdentity];
  v9 = [v8 posterUUID];
  v10 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "indexOfObject:", v9)}];

  v11 = MEMORY[0x277CCABB0];
  v12 = *(a1 + 32);
  v13 = [v7 serverIdentity];

  v14 = [v13 posterUUID];
  v15 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "indexOfObject:", v14)}];

  v16 = [v10 compare:v15];
  return v16;
}

- (id)_stateLock_lastUseDatesForPosterCollection
{
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    v3 = MEMORY[0x277CBEC10];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __73__PBFPosterExtensionDataStore__stateLock_lastUseDatesForPosterCollection__block_invoke;
    v6[3] = &unk_2782C6270;
    v3 = dictionary;
    v7 = v3;
    [(PBFPosterExtensionDataStore *)self _stateLock_enumerateConfigurationStoreCoordinators:v6];
  }

  return v3;
}

void __73__PBFPosterExtensionDataStore__stateLock_lastUseDatesForPosterCollection__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = [v8 providerInfo];
  v5 = [v4 objectForKey:@"kConfigurationLastUseDateKey"];

  if (!v5)
  {
    v5 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v6 = *(a1 + 32);
  v7 = [v8 posterUUID];
  [v6 setObject:v5 forKey:v7];
}

- (void)_stateLock_findStoreCoordinatorsForUUID:(id)d extensionStoreCoordinator:(id *)coordinator configurationStoreCoordinator:(id *)storeCoordinator
{
  dCopy = d;
  if (coordinator | storeCoordinator && ([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy_;
    v23 = __Block_byref_object_dispose_;
    v24 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy_;
    v17 = __Block_byref_object_dispose_;
    v18 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __127__PBFPosterExtensionDataStore__stateLock_findStoreCoordinatorsForUUID_extensionStoreCoordinator_configurationStoreCoordinator___block_invoke;
    v9[3] = &unk_2782C6298;
    v10 = dCopy;
    v11 = &v19;
    v12 = &v13;
    [(PBFPosterExtensionDataStore *)self _stateLock_enumerateConfigurationStoreCoordinators:v9];
    if (coordinator)
    {
      *coordinator = v20[5];
    }

    if (storeCoordinator)
    {
      *storeCoordinator = v14[5];
    }

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v19, 8);
  }
}

void __127__PBFPosterExtensionDataStore__stateLock_findStoreCoordinatorsForUUID_extensionStoreCoordinator_configurationStoreCoordinator___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v8 = a3;
  v9 = [v8 posterUUID];
  v10 = [v9 isEqual:a1[4]];

  if (v10)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
    *a4 = 1;
  }
}

- (void)_stateLock_enumerateConfigurationStoreCoordinators:(id)coordinators
{
  coordinatorsCopy = coordinators;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier = self->_stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __82__PBFPosterExtensionDataStore__stateLock_enumerateConfigurationStoreCoordinators___block_invoke;
    v6[3] = &unk_2782C5E98;
    v7 = coordinatorsCopy;
    [(NSMutableDictionary *)stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier enumerateKeysAndObjectsUsingBlock:v6];
  }
}

void __82__PBFPosterExtensionDataStore__stateLock_enumerateConfigurationStoreCoordinators___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v8 configurationStoreCoordinatorsWithError:0];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__PBFPosterExtensionDataStore__stateLock_enumerateConfigurationStoreCoordinators___block_invoke_2;
  v11[3] = &unk_2782C62C0;
  v13 = *(a1 + 32);
  v10 = v8;
  v12 = v10;
  v14 = v16;
  v15 = a4;
  [v9 enumerateObjectsUsingBlock:v11];

  _Block_object_dispose(v16, 8);
}

uint64_t __82__PBFPosterExtensionDataStore__stateLock_enumerateConfigurationStoreCoordinators___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 40) + 16))();
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a3 = 1;
    **(a1 + 56) = 1;
  }

  return result;
}

- (PRSwitcherConfiguration)switcherConfiguration
{
  os_unfair_lock_lock(&self->_stateLock);
  _stateLock_switcherConfiguration = [(PBFPosterExtensionDataStore *)self _stateLock_switcherConfiguration];
  os_unfair_lock_unlock(&self->_stateLock);

  return _stateLock_switcherConfiguration;
}

- (BOOL)canPersistNewPosterConfiguration
{
  os_unfair_lock_lock(&self->_stateLock);
  _stateLock_canPersistNewPosterConfiguration = [(PBFPosterExtensionDataStore *)self _stateLock_canPersistNewPosterConfiguration];
  os_unfair_lock_unlock(&self->_stateLock);
  return _stateLock_canPersistNewPosterConfiguration;
}

- (BOOL)_stateLock_canPersistNewPosterConfiguration
{
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    return 0;
  }

  _stateLock_switcherConfiguration = [(PBFPosterExtensionDataStore *)self _stateLock_switcherConfiguration];
  configurations = [_stateLock_switcherConfiguration configurations];
  v6 = [configurations count];

  _stateLock_maximumPosterConfigurationCount = [(PBFPosterExtensionDataStore *)self _stateLock_maximumPosterConfigurationCount];
  v3 = _stateLock_maximumPosterConfigurationCount >= 0 && v6 < _stateLock_maximumPosterConfigurationCount;

  return v3;
}

- (BOOL)updateDataStoreForIncomingFocusModeChange:(id)change error:(id *)error
{
  v47[1] = *MEMORY[0x277D85DE8];
  changeCopy = change;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isWallpaperModificationAllowed = [mEMORY[0x277D262A0] isWallpaperModificationAllowed];

  v10 = PBFLogDataStore(v9);
  v11 = v10;
  if (isWallpaperModificationAllowed)
  {
    v12 = os_signpost_id_generate(v10);

    v14 = PBFLogDataStore(v13);
    v15 = v14;
    v39 = v12 - 1;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 138543362;
      v41 = changeCopy;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "updateDataStoreForIncomingFocusModeChange:", "newFocusModeIdentifier: %{public}@", buf, 0xCu);
    }

    spid = v12;

    v17 = PBFLogDataStore(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = changeCopy;
      _os_log_impl(&dword_21B526000, v17, OS_LOG_TYPE_DEFAULT, "Incoming focus mode change: %@", buf, 0xCu);
    }

    os_unfair_lock_lock(&self->_stateLock);
    v18 = [(PBFPosterExtensionDataStore *)self _activityModeForFocusUUID:changeCopy];
    v19 = PBFLogDataStore(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      _activeActivity = [(PBFPosterExtensionDataStore *)self _activeActivity];
      *buf = 138412546;
      v41 = _activeActivity;
      v42 = 2112;
      v43 = v18;
      _os_log_impl(&dword_21B526000, v19, OS_LOG_TYPE_DEFAULT, "Beginning transition from activity mode: %@ to activity mode: %@", buf, 0x16u);
    }

    v21 = [(PBFPosterExtensionDataStore *)self _buildRoleCoordinatorTransitionContextForActivity:v18];
    [v21 setTransitionFromIncomingFocusModeChange:1];
    v22 = *MEMORY[0x277D3EEF0];
    v23 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKeyedSubscript:*MEMORY[0x277D3EEF0]];
    v24 = [v23 determineActivePosterConfigurationForContext:v21];
    v25 = [(PBFPosterExtensionDataStore *)self activePosterConfigurationForRole:v22 assocPoster:0];
    v26 = v25;
    if (v24 && (v25 = BSEqualObjects(), (v25 & 1) == 0))
    {
      v30 = PBFLogDataStore(v25);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v41 = v18;
        v42 = 2112;
        v43 = v24;
        v44 = 2112;
        v45 = v26;
        _os_log_impl(&dword_21B526000, v30, OS_LOG_TYPE_DEFAULT, "Executing incoming focus mode transition to %{public}@, new active poster configuration: %@ does not match current active poster configuration: %@", buf, 0x20u);
      }

      pbf_posterUUID = [v24 pbf_posterUUID];
      [v21 setDesiredActiveConfiguration:pbf_posterUUID forRole:v22];

      changeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"updateDataStoreForIncomingFocusModeChange:%@", changeCopy];
      v28 = [(PBFPosterExtensionDataStore *)self _stateLock_executeDataStoreUpdateWithChanges:0 diffs:0 options:0 reason:changeCopy context:v21 error:error];
    }

    else
    {
      changeCopy = PBFLogDataStore(v25);
      if (os_log_type_enabled(changeCopy, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v41 = v18;
        v42 = 2112;
        v43 = v26;
        _os_log_impl(&dword_21B526000, changeCopy, OS_LOG_TYPE_DEFAULT, "Incoming focus mode transition to activity mode %@; already setup for configuration %@", buf, 0x16u);
      }

      v28 = 1;
    }

    os_unfair_lock_unlock(&self->_stateLock);
    v33 = PBFLogDataStore(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v41) = v28;
      _os_log_impl(&dword_21B526000, v33, OS_LOG_TYPE_DEFAULT, "Finished transitioning to new Incoming focus mode change: %{BOOL}u", buf, 8u);
    }

    v35 = PBFLogDataStore(v34);
    v36 = v35;
    if (v39 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      *buf = 138543362;
      v41 = changeCopy;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v36, OS_SIGNPOST_INTERVAL_END, spid, "updateDataStoreForIncomingFocusModeChange:", "newFocusModeIdentifier: %{public}@", buf, 0xCu);
    }

    goto LABEL_28;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B526000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring incoming focus mode change because MDM blocks wallpaper changes", buf, 2u);
  }

  if (error)
  {
    v29 = MEMORY[0x277CCA9B8];
    v46 = *MEMORY[0x277CCA470];
    v47[0] = @"Forbidden by ManagedConfiguration";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
    [v29 pbf_generalErrorWithCode:7 userInfo:v18];
    *error = LOBYTE(v28) = 0;
LABEL_28:

    goto LABEL_29;
  }

  LOBYTE(v28) = 0;
LABEL_29:

  return v28;
}

- (BOOL)updateDataStoreForIncomingAvailableFocusModeChange:(id)change error:(id *)error
{
  v68[1] = *MEMORY[0x277D85DE8];
  changeCopy = change;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isWallpaperModificationAllowed = [mEMORY[0x277D262A0] isWallpaperModificationAllowed];

  if (isWallpaperModificationAllowed)
  {
    v11 = *MEMORY[0x277D3EEF0];
    v12 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKeyedSubscript:v11];
    v13 = v12;
    if (v12)
    {
      posterCollection = [v12 posterCollection];
      v47 = v13;
      v48 = changeCopy;
      selfCopy = self;
      errorCopy = error;
      v52 = v11;
      aSelector = a2;
      if ([changeCopy count])
      {
        [MEMORY[0x277CBEB98] setWithArray:changeCopy];
      }

      else
      {
        [MEMORY[0x277CBEB98] set];
      }
      v20 = ;
      v21 = objc_opt_new();
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      orderedPosters = [posterCollection orderedPosters];
      v23 = [orderedPosters countByEnumeratingWithState:&v56 objects:v64 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v57;
        v49 = v21;
        v50 = v20;
        v53 = *v57;
        v54 = orderedPosters;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v57 != v25)
            {
              objc_enumerationMutation(orderedPosters);
            }

            v27 = *(*(&v56 + 1) + 8 * i);
            v55 = 0;
            v28 = [v27 loadFocusConfigurationWithError:&v55];
            v29 = v55;
            v30 = v29;
            if (v29)
            {
              activityUUID = PBFLogDataStore(v29);
              if (os_log_type_enabled(activityUUID, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v61 = v27;
                v62 = 2114;
                v63 = v28;
                _os_log_error_impl(&dword_21B526000, activityUUID, OS_LOG_TYPE_ERROR, "Could not load focus mode for poster %@: %{public}@", buf, 0x16u);
              }
            }

            else
            {
              activityUUID = [v28 activityUUID];
              if (activityUUID)
              {
                v32 = [v20 containsObject:activityUUID];
                v33 = v32;
                v34 = PBFLogDataStore(v32);
                v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
                if (v33)
                {
                  if (v35)
                  {
                    *buf = 138412546;
                    v61 = v28;
                    v62 = 2112;
                    v63 = v27;
                    _os_log_impl(&dword_21B526000, v34, OS_LOG_TYPE_DEFAULT, "Focus mode %@ available for %@", buf, 0x16u);
                  }
                }

                else
                {
                  if (v35)
                  {
                    *buf = 138412546;
                    v61 = v28;
                    v62 = 2112;
                    v63 = v27;
                    _os_log_impl(&dword_21B526000, v34, OS_LOG_TYPE_DEFAULT, "Focus mode %@ unavailable for %@; updating poster", buf, 0x16u);
                  }

                  v34 = [posterCollection configuredPropertiesForPoster:v27];
                  v36 = [v34 mutableCopy];
                  if (v36 || ([MEMORY[0x277D3EDD8] defaultConfiguredPropertiesForRole:v52], (v36 = objc_claimAutoreleasedReturnValue()) != 0))
                  {
                    v37 = v36;
                    [v36 setFocusConfiguration:0];
                    pbf_posterUUID = [v27 pbf_posterUUID];
                    v39 = [PBFPosterRoleCoordinatorChange updateConfiguredProperties:v37 forPosterWithinRole:v52 matchingUUID:pbf_posterUUID];

                    v41 = PBFLogDataStore(v40);
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138543362;
                      v61 = v39;
                      _os_log_impl(&dword_21B526000, v41, OS_LOG_TYPE_INFO, "Queueing up change: %{public}@", buf, 0xCu);
                    }

                    v21 = v49;
                    [v49 bs_safeAddObject:v39];

                    v20 = v50;
                  }
                }

                orderedPosters = v54;

                v25 = v53;
              }
            }
          }

          v24 = [orderedPosters countByEnumeratingWithState:&v56 objects:v64 count:16];
        }

        while (v24);
      }

      if ([v21 count])
      {
        os_unfair_lock_lock(&selfCopy->_stateLock);
        v42 = NSStringFromSelector(aSelector);
        v16 = [(PBFPosterExtensionDataStore *)selfCopy _stateLock_executeDataStoreUpdateWithChanges:v21 diffs:0 options:0 reason:v42 context:0 error:errorCopy];

        os_unfair_lock_unlock(&selfCopy->_stateLock);
      }

      else
      {
        v16 = 1;
      }

      v13 = v47;
      changeCopy = v48;
      v11 = v52;
    }

    else
    {
      if (error)
      {
        v17 = MEMORY[0x277CCA9B8];
        v65[0] = *MEMORY[0x277CCA470];
        v65[1] = @"role";
        v18 = @"(null role)";
        if (v11)
        {
          v18 = v11;
        }

        v66[0] = @"RoleCoordinator not setup for role";
        v66[1] = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
        *error = [v17 pbf_generalErrorWithCode:1 userInfo:v19];
      }

      posterCollection = PBFLogRoleCoordinator(v12);
      if (os_log_type_enabled(posterCollection, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterExtensionDataStore updateDataStoreForIncomingAvailableFocusModeChange:error:];
      }

      v16 = 0;
    }

    goto LABEL_45;
  }

  v14 = PBFLogDataStore(v10);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B526000, v14, OS_LOG_TYPE_DEFAULT, "Ignoring incoming focus mode change because MDM blocks wallpaper changes", buf, 2u);
  }

  if (error)
  {
    v15 = MEMORY[0x277CCA9B8];
    v67 = *MEMORY[0x277CCA470];
    v68[0] = @"Forbidden by ManagedConfiguration";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:&v67 count:1];
    [v15 pbf_generalErrorWithCode:7 userInfo:v11];
    *error = v16 = 0;
LABEL_45:

    goto LABEL_46;
  }

  v16 = 0;
LABEL_46:

  return v16;
}

- (BOOL)updateDataStoreForIncomingActiveChargerIdentifierUpdate:(id)update error:(id *)error
{
  v60[1] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v7 = PBFLogDataStore(updateCopy);
  v8 = os_signpost_id_generate(v7);

  v10 = PBFLogDataStore(v9);
  v11 = v10;
  v12 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 138543362;
    v56 = updateCopy;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "updateDataStoreForIncomingActiveChargerIdentifierUpdate:", "activeChargerIdentifierUpdate: %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_stateLock);
  pbf_activeChargerIdentifier = [MEMORY[0x277CBEBD0] pbf_activeChargerIdentifier];
  if (!BSEqualStrings())
  {
    v16 = [PBFPosterDataStoreEventBuilder activeChargerIdentifierDidUpdate:updateCopy from:pbf_activeChargerIdentifier];
    v53 = 0;
    v18 = [v16 buildWithError:&v53];
    v51 = v53;
    if (!v18)
    {
      os_unfair_lock_unlock(&self->_stateLock);
      v31 = PBFLogDataStore(v30);
      v32 = v31;
      if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        *buf = 138543362;
        v56 = updateCopy;
        _os_signpost_emit_with_name_impl(&dword_21B526000, v32, OS_SIGNPOST_INTERVAL_END, v8, "updateDataStoreForIncomingActiveChargerIdentifierUpdate:", "activeChargerIdentifierUpdate: %{public}@", buf, 0xCu);
      }

      v33 = v51;
      if (error)
      {
        if (!v51)
        {
          v34 = MEMORY[0x277CCA9B8];
          v59 = *MEMORY[0x277CCA470];
          v60[0] = @"Unable to build PBFPosterDataStoreEvent";
          v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
          v33 = [v34 pbf_dataStoreErrorWithCode:-2214 userInfo:v35];
        }

        v36 = v33;
        LOBYTE(v17) = 0;
        *error = v33;
      }

      else
      {
        LOBYTE(v17) = 0;
      }

      goto LABEL_35;
    }

    errorCopy = error;
    v50 = v18;
    spid = v8;
    v19 = *MEMORY[0x277D3EE98];
    v20 = [(PBFPosterExtensionDataStore *)self _buildRoleCoordinatorTransitionContextForChargerIdentifier:updateCopy];
    v21 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKeyedSubscript:v19];
    v22 = [(PBFPosterExtensionDataStore *)self activePosterConfigurationForRole:v19 assocPoster:0];
    pbf_posterUUID = [v22 pbf_posterUUID];
    [v20 setDesiredActiveConfiguration:pbf_posterUUID forRole:v19];

    v47 = v21;
    v52 = v20;
    v24 = [v21 determineActivePosterConfigurationForContext:v20];
    v49 = v22;
    if (!v24)
    {
      pbf_posterUUID2 = PBFLogDataStore(0);
      if (os_log_type_enabled(pbf_posterUUID2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v56 = updateCopy;
        _os_log_impl(&dword_21B526000, pbf_posterUUID2, OS_LOG_TYPE_DEFAULT, "Incoming charger id update to %{public}@ did not find a matching configuration", buf, 0xCu);
      }

      goto LABEL_27;
    }

    v25 = BSEqualObjects();
    v26 = v25;
    v27 = PBFLogDataStore(v25);
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v26)
    {
      if (v28)
      {
        *buf = 138543618;
        v56 = updateCopy;
        v57 = 2114;
        v58 = v49;
        v29 = "Incoming charger id update to %{public}@ sticking with current active poster configuration: %{public}@";
LABEL_25:
        _os_log_impl(&dword_21B526000, v27, OS_LOG_TYPE_DEFAULT, v29, buf, 0x16u);
      }
    }

    else if (v28)
    {
      *buf = 138543618;
      v56 = updateCopy;
      v57 = 2114;
      v58 = v24;
      v29 = "Executing charger id update to %{public}@ to new active poster configuration: %{public}@";
      goto LABEL_25;
    }

    pbf_posterUUID2 = [v24 pbf_posterUUID];
    [v52 setDesiredActiveConfiguration:pbf_posterUUID2 forRole:v19];
LABEL_27:

    v39 = PBFLogDataStore(v38);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v56 = updateCopy;
      _os_log_impl(&dword_21B526000, v39, OS_LOG_TYPE_DEFAULT, "Transitioning to new active charger identifier: %{public}@", buf, 0xCu);
    }

    v54 = v50;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
    v41 = [MEMORY[0x277CBEB98] setWithObject:v19];
    v17 = [(PBFPosterExtensionDataStore *)self _stateLock_processEvents:v40 roles:v41 context:v52 error:errorCopy];

    if (v17)
    {
      [MEMORY[0x277CBEBD0] pbf_setActiveChargerIdentifier:updateCopy];
    }

    os_unfair_lock_unlock(&self->_stateLock);
    v43 = PBFLogDataStore(v42);
    v44 = v43;
    if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
    {
      *buf = 138543362;
      v56 = updateCopy;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v44, OS_SIGNPOST_INTERVAL_END, spid, "updateDataStoreForIncomingActiveChargerIdentifierUpdate:", "activeChargerIdentifierUpdate: %{public}@", buf, 0xCu);
    }

    v18 = v50;
    v33 = v51;
LABEL_35:

    goto LABEL_36;
  }

  os_unfair_lock_unlock(&self->_stateLock);
  v15 = PBFLogDataStore(v14);
  v16 = v15;
  if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 138543362;
    v56 = updateCopy;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v16, OS_SIGNPOST_INTERVAL_END, v8, "updateDataStoreForIncomingActiveChargerIdentifierUpdate:", "activeChargerIdentifierUpdate: %{public}@", buf, 0xCu);
  }

  LOBYTE(v17) = 0;
LABEL_36:

  return v17;
}

- (void)processIncomingPosterConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  v9 = configurationCopy;
  NSClassFromString(&cfstr_Princomingpost.isa);
  if (!v9)
  {
    [PBFPosterExtensionDataStore processIncomingPosterConfiguration:a2 completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionDataStore processIncomingPosterConfiguration:a2 completion:?];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__PBFPosterExtensionDataStore_processIncomingPosterConfiguration_completion___block_invoke;
  v12[3] = &unk_2782C62E8;
  v12[4] = self;
  v13 = v9;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = v9;
  PBFDispatchAsyncWithString(@"processIncomingPosterConfiguration", QOS_CLASS_USER_INTERACTIVE, v12);
}

void __77__PBFPosterExtensionDataStore_processIncomingPosterConfiguration_completion___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 188));
  [*(a1 + 32) _stateLock_processIncomingPosterConfiguration:*(a1 + 40) completion:*(a1 + 48)];
  v2 = (*(a1 + 32) + 188);

  os_unfair_lock_unlock(v2);
}

- (void)_stateLock_processIncomingPosterConfiguration:(id)configuration completion:(id)completion
{
  v55[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  completionCopy = completion;
  if (![(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    path = [configurationCopy path];
    role = [path role];

    incomingPosterType = [configurationCopy incomingPosterType];
    v12 = 0;
    if (incomingPosterType > 2)
    {
      if (incomingPosterType == 3)
      {
        if (!completionCopy)
        {
          goto LABEL_24;
        }

        v31 = MEMORY[0x277CCA9B8];
        v54 = *MEMORY[0x277CCA470];
        v55[0] = @"Please use duplicatePosterConfigurationMatchingUUID:";
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
        v33 = [v31 pbf_dataStoreErrorWithCode:-2214 userInfo:v32];

        notificationQueue = self->_notificationQueue;
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __88__PBFPosterExtensionDataStore__stateLock_processIncomingPosterConfiguration_completion___block_invoke;
        v46[3] = &unk_2782C6310;
        v47 = v33;
        v48 = completionCopy;
        v12 = v33;
        dispatch_async(notificationQueue, v46);

        v17 = v48;
        goto LABEL_23;
      }

      if (incomingPosterType == 5)
      {
LABEL_13:
        v13 = [PBFPosterRoleCoordinatorChange updatePosterWithinRole:role incomingPoster:configurationCopy];
        goto LABEL_14;
      }

      if (incomingPosterType != 4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!incomingPosterType)
      {
        if (!completionCopy)
        {
          goto LABEL_24;
        }

        v27 = MEMORY[0x277CCA9B8];
        v52 = *MEMORY[0x277CCA470];
        v53 = @"PRIncomingPosterConfiguration has the wrong incomingPosterType";
        v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        v29 = [v27 pbf_dataStoreErrorWithCode:-2214 userInfo:v28];

        v30 = self->_notificationQueue;
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __88__PBFPosterExtensionDataStore__stateLock_processIncomingPosterConfiguration_completion___block_invoke_2;
        v43[3] = &unk_2782C6310;
        v44 = v29;
        v45 = completionCopy;
        v12 = v29;
        dispatch_async(v30, v43);

        v17 = v45;
        goto LABEL_23;
      }

      if (incomingPosterType != 1)
      {
        if (incomingPosterType != 2)
        {
LABEL_15:
          v51 = v12;
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
          v15 = NSStringFromSelector(a2);
          v42 = 0;
          v16 = [(PBFPosterExtensionDataStore *)self _stateLock_executeDataStoreUpdateWithChanges:v14 diffs:0 options:0 reason:v15 context:0 error:&v42];
          v17 = v42;

          if (v16)
          {
            if (completionCopy)
            {
              v18 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKeyedSubscript:role];
              posterCollection = [v18 posterCollection];
              destinationUUID = [configurationCopy destinationUUID];
              v21 = [posterCollection posterWithUUID:destinationUUID];

              v22 = self->_notificationQueue;
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __88__PBFPosterExtensionDataStore__stateLock_processIncomingPosterConfiguration_completion___block_invoke_4;
              block[3] = &unk_2782C6180;
              v38 = completionCopy;
              v36 = v21;
              v17 = v17;
              v37 = v17;
              v23 = v21;
              dispatch_async(v22, block);

LABEL_22:
            }
          }

          else if (completionCopy)
          {
            if (!v17)
            {
              v24 = MEMORY[0x277CCA9B8];
              v49 = *MEMORY[0x277CCA470];
              v50 = @"Unable to process incoming configuration";
              v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
              v17 = [v24 pbf_dataStoreErrorWithCode:-2222 userInfo:v25];
            }

            v26 = self->_notificationQueue;
            v39[0] = MEMORY[0x277D85DD0];
            v39[1] = 3221225472;
            v39[2] = __88__PBFPosterExtensionDataStore__stateLock_processIncomingPosterConfiguration_completion___block_invoke_3;
            v39[3] = &unk_2782C6310;
            v41 = completionCopy;
            v17 = v17;
            v40 = v17;
            dispatch_async(v26, v39);

            v23 = v41;
            goto LABEL_22;
          }

LABEL_23:

          goto LABEL_24;
        }

        goto LABEL_13;
      }
    }

    v13 = [PBFPosterRoleCoordinatorChange addPosterToRole:role incomingPoster:configurationCopy];
LABEL_14:
    v12 = v13;
    goto LABEL_15;
  }

  if (completionCopy)
  {
    role = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, role);
LABEL_24:
  }
}

- (void)updateFocusModeForActivePosterChange
{
  os_unfair_lock_lock(&self->_stateLock);
  [(PBFPosterExtensionDataStore *)self _stateLock_updateFocusModeForActivePosterChange];

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)_stateLock_updateFocusModeForActivePosterChange
{
  v57 = *MEMORY[0x277D85DE8];
  getFlag = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if (getFlag)
  {
    return;
  }

  v4 = PBFLogDataStore(getFlag);
  v5 = os_signpost_id_generate(v4);

  v7 = PBFLogDataStore(v6);
  v8 = v7;
  v9 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "_stateLock_updateFocusModeForActivePosterChange", "", buf, 2u);
  }

  v10 = *MEMORY[0x277D3EEF0];
  v11 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKeyedSubscript:*MEMORY[0x277D3EEF0]];
  posterCollection = [v11 posterCollection];
  v13 = [(PBFPosterExtensionDataStore *)self activePosterConfigurationForRole:v10 assocPoster:0];
  _activeActivity = [(PBFPosterExtensionDataStore *)self _activeActivity];
  v45 = posterCollection;
  v15 = [posterCollection configuredPropertiesForPoster:v13];
  focusConfiguration = [v15 focusConfiguration];

  v18 = PBFLogPosterContents(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v52 = v13;
    v53 = 2112;
    v54 = focusConfiguration;
    v55 = 2112;
    v56 = _activeActivity;
    _os_log_impl(&dword_21B526000, v18, OS_LOG_TYPE_DEFAULT, "[Transitioning to newly active poster] %@ with focusConfiguration: %@ from current active activity: %@", buf, 0x20u);
  }

  if (focusConfiguration)
  {
    activityUUID = [focusConfiguration activityUUID];
    v21 = [(PBFPosterExtensionDataStore *)self _activityModeForFocusUUID:activityUUID];
    v22 = v21;
    if (v21 && (v21 = BSEqualObjects(), (v21 & 1) == 0))
    {
      v23 = PBFLogPosterContents([(PBFPosterExtensionDataStore *)self _updateActiveActivity:v22 active:1 reason:@"PosterBoard is transitioning to a newly active poster which so happens to have this activity."]);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = v22;
        v24 = "[Transitioning to newly active poster] and turning on linked focus activity: %@";
        goto LABEL_26;
      }
    }

    else
    {
      v23 = PBFLogPosterContents(v21);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = v22;
        v24 = "[Transitioning to newly active poster] and linked focus activity: %@ has already been turned on";
LABEL_26:
        _os_log_impl(&dword_21B526000, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 0xCu);
      }
    }

LABEL_28:
    goto LABEL_29;
  }

  if (_activeActivity)
  {
    v41 = v5 - 1;
    v42 = v13;
    v43 = v11;
    v44 = v5;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    orderedPosters = [v45 orderedPosters];
    v26 = [orderedPosters countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v47;
      while (2)
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v47 != v28)
          {
            objc_enumerationMutation(orderedPosters);
          }

          v30 = [v45 configuredPropertiesForPoster:*(*(&v46 + 1) + 8 * i)];
          focusConfiguration2 = [v30 focusConfiguration];

          activityUUID2 = [focusConfiguration2 activityUUID];
          activityUniqueIdentifier = [_activeActivity activityUniqueIdentifier];
          v34 = [activityUUID2 isEqual:activityUniqueIdentifier];

          if (v34)
          {
            v37 = PBFLogPosterContents([(PBFPosterExtensionDataStore *)self _updateActiveActivity:0 active:0 reason:@"PosterBoard is transitioning to a newly active poster with no associated focus."]);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v52 = _activeActivity;
              _os_log_impl(&dword_21B526000, v37, OS_LOG_TYPE_DEFAULT, "[Transitioning to newly active poster] without linked focus activity. Turning off focus activity: %@ because it is linked to another poster.", buf, 0xCu);
            }

            v39 = PBFLogDataStore(v38);
            v40 = v39;
            focusConfiguration = 0;
            v13 = v42;
            v11 = v43;
            if (v41 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_21B526000, v40, OS_SIGNPOST_INTERVAL_END, v44, "_stateLock_updateFocusModeForActivePosterChange", "", buf, 2u);
            }

            goto LABEL_38;
          }
        }

        v27 = [orderedPosters countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    activityUUID = PBFLogPosterContents(v35);
    if (os_log_type_enabled(activityUUID, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = _activeActivity;
      _os_log_impl(&dword_21B526000, activityUUID, OS_LOG_TYPE_DEFAULT, "[Transitioning to newly active poster] without linked focus activity. Leaving focus activity: %@ on because it is not linked to another poster.", buf, 0xCu);
    }

    v11 = v43;
    v5 = v44;
    focusConfiguration = 0;
    v13 = v42;
    v9 = v41;
    goto LABEL_28;
  }

LABEL_29:
  v36 = PBFLogDataStore(v19);
  orderedPosters = v36;
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21B526000, orderedPosters, OS_SIGNPOST_INTERVAL_END, v5, "_stateLock_updateFocusModeForActivePosterChange", "", buf, 2u);
  }

LABEL_38:
}

- (void)processEvents:(id)events context:(id)context QOS:(unsigned int)s reason:(id)reason completion:(id)completion
{
  eventsCopy = events;
  contextCopy = context;
  completionCopy = completion;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__PBFPosterExtensionDataStore_processEvents_context_QOS_reason_completion___block_invoke;
  v18[3] = &unk_2782C6338;
  v18[4] = self;
  v19 = eventsCopy;
  v20 = contextCopy;
  v21 = completionCopy;
  v15 = completionCopy;
  v16 = contextCopy;
  v17 = eventsCopy;
  PBFDispatchAsyncWithString(reason, s, v18);
}

void __75__PBFPosterExtensionDataStore_processEvents_context_QOS_reason_completion___block_invoke(void *a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1[4] + 188));
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v9 = 0;
  v5 = [v2 _stateLock_processEvents:v3 context:v4 error:&v9];
  v6 = v9;
  os_unfair_lock_unlock((a1[4] + 188));
  if ((v5 & 1) == 0 && !v6)
  {
    v7 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA470];
    v11[0] = @"events processing was not successful, but no error was issued";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v6 = [v7 pbf_generalErrorWithCode:0 userInfo:v8];
  }

  (*(a1[7] + 16))();
}

- (id)updateDataStoreForSwitcherConfiguration:(id)configuration options:(unint64_t)options reason:(id)reason error:(id *)error
{
  reasonCopy = reason;
  configurationCopy = configuration;
  os_unfair_lock_lock(&self->_stateLock);
  v12 = [(PBFPosterExtensionDataStore *)self _stateLock_updateDataStoreForSwitcherConfiguration:configurationCopy options:options reason:reasonCopy error:error];

  os_unfair_lock_unlock(&self->_stateLock);

  return v12;
}

- (void)_transitionToNewSwitcherConfigurationIfNeededForReason:(id)reason error:(id *)error
{
  reasonCopy = reason;
  os_unfair_lock_lock(&self->_stateLock);
  [(PBFPosterExtensionDataStore *)self _transitionToNewSwitcherConfigurationIfNeededForReason:reasonCopy error:error];

  os_unfair_lock_unlock(&self->_stateLock);
}

- (id)_stateLock_updateDataStoreForSwitcherConfiguration:(id)configuration options:(unint64_t)options reason:(id)reason error:(id *)error
{
  v174 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  reasonCopy = reason;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_112;
  }

  v148 = *MEMORY[0x277D3EEF0];
  v13 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKeyedSubscript:?];
  v14 = v13;
  if (!v13)
  {
    v12 = 0;
    goto LABEL_111;
  }

  optionsCopy = options;
  errorCopy = error;
  v135 = v13;
  _stateLock_switcherConfiguration = [(PBFPosterExtensionDataStore *)self _stateLock_switcherConfiguration];
  v16 = MEMORY[0x277CBEB98];
  selfCopy = self;
  extensionForIdentifier = [(PFPosterExtensionProvider *)self->_extensionProvider extensionForIdentifier];
  allKeys = [extensionForIdentifier allKeys];
  v145 = [v16 setWithArray:allKeys];

  configurations = [_stateLock_switcherConfiguration configurations];
  v20 = [configurations bs_mapNoNulls:&__block_literal_global_638];

  configurations2 = [configurationCopy configurations];
  v22 = [configurations2 bs_mapNoNulls:&__block_literal_global_640];

  desiredActiveConfiguration = [configurationCopy desiredActiveConfiguration];
  activeConfiguration = [_stateLock_switcherConfiguration activeConfiguration];
  v25 = [desiredActiveConfiguration isEqual:activeConfiguration];

  selectedConfiguration = [configurationCopy selectedConfiguration];
  v137 = _stateLock_switcherConfiguration;
  selectedConfiguration2 = [_stateLock_switcherConfiguration selectedConfiguration];
  v28 = [selectedConfiguration isEqual:selectedConfiguration2];

  v144 = v22;
  v136 = v20;
  v29 = [v22 isEqualToArray:v20];
  posterConfigurationsNeedingFocusConfigurationDeleted = [configurationCopy posterConfigurationsNeedingFocusConfigurationDeleted];
  v141 = [posterConfigurationsNeedingFocusConfigurationDeleted count];

  posterConfigurationsNeedingFocusConfigurationUpdates = [configurationCopy posterConfigurationsNeedingFocusConfigurationUpdates];
  v140 = [posterConfigurationsNeedingFocusConfigurationUpdates count];

  posterConfigurationsNeedingHomeScreenConfigurationUpdates = [configurationCopy posterConfigurationsNeedingHomeScreenConfigurationUpdates];
  v138 = [posterConfigurationsNeedingHomeScreenConfigurationUpdates count];

  incomingPosterConfigurations = [configurationCopy incomingPosterConfigurations];
  v34 = [incomingPosterConfigurations count];

  incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs = [configurationCopy incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs];
  v36 = [incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs count];

  v132 = v28;
  if (v28 && v25 && v29 && !v141 && !v140 && !v138 && !v34 && !v36)
  {
    v37 = v137;
    v12 = v137;
    v14 = v135;
    goto LABEL_110;
  }

  if (v34 && ![(PBFPosterExtensionDataStore *)selfCopy _stateLock_canPersistNewPosterConfiguration])
  {
    v37 = v137;
    configurations3 = [v137 configurations];
    v113 = [configurations3 count];

    _stateLock_maximumPosterConfigurationCount = [(PBFPosterExtensionDataStore *)selfCopy _stateLock_maximumPosterConfigurationCount];
    v115 = PBFLogDataStore(_stateLock_maximumPosterConfigurationCount);
    v14 = v135;
    if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v171 = v113;
      v172 = 2048;
      v173 = _stateLock_maximumPosterConfigurationCount;
      _os_log_impl(&dword_21B526000, v115, OS_LOG_TYPE_DEFAULT, "refusing to ingest a new poster configuration because there are %lu existing configurations (limit: %li)", buf, 0x16u);
    }

    if (errorCopy)
    {
      *errorCopy = [MEMORY[0x277CCA9B8] pbf_dataStoreErrorWithCode:-2206 userInfo:0];
    }

    v12 = v137;
    goto LABEL_110;
  }

  v147 = objc_opt_new();
  if ((v29 & 1) == 0)
  {
    v38 = a2;
    collection = [v137 collection];
    orderedPosterUUIDs = [collection orderedPosterUUIDs];

    v41 = MEMORY[0x277CBEB70];
    configurations4 = [configurationCopy configurations];
    v43 = [configurations4 bs_mapNoNulls:&__block_literal_global_643];
    v44 = [v41 orderedSetWithArray:v43];

    v45 = [orderedPosterUUIDs count];
    if (v45 == [v44 count] && (objc_msgSend(orderedPosterUUIDs, "isEqual:", v44) & 1) == 0)
    {
      v46 = [PBFPosterRoleCoordinatorChange reorderPostersForRole:v148 sortedPosterUUIDs:v44];
      [v147 addObject:v46];
    }

    a2 = v38;
  }

  v131 = reasonCopy;
  if (v34)
  {
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    incomingPosterConfigurations2 = [configurationCopy incomingPosterConfigurations];
    v48 = [incomingPosterConfigurations2 countByEnumeratingWithState:&v162 objects:v169 count:16];
    if (!v48)
    {
      goto LABEL_42;
    }

    v49 = v48;
    v50 = *v163;
    while (1)
    {
      v51 = 0;
      do
      {
        if (*v163 != v50)
        {
          objc_enumerationMutation(incomingPosterConfigurations2);
        }

        v52 = *(*(&v162 + 1) + 8 * v51);
        incomingPosterType = [v52 incomingPosterType];
        if (incomingPosterType <= 1)
        {
          if (incomingPosterType == 1)
          {
            v54 = [PBFPosterRoleCoordinatorChange addPosterToRole:v148 incomingPoster:v52];
            goto LABEL_34;
          }

          if (!incomingPosterType)
          {
LABEL_115:
            v128 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported incoming poster: %@", v52];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [PBFPosterExtensionDataStore _stateLock_updateDataStoreForSwitcherConfiguration:a2 options:selfCopy reason:v128 error:?];
            }

            [v128 UTF8String];
            _bs_set_crash_log_message();
            __break(0);
            JUMPOUT(0x21B545B60);
          }
        }

        else
        {
          if (incomingPosterType == 2)
          {
            v54 = [PBFPosterRoleCoordinatorChange updatePosterWithinRole:v148 incomingPoster:v52];
LABEL_34:
            v55 = v54;
            [v147 addObject:v54];

            goto LABEL_35;
          }

          if ((incomingPosterType - 3) < 3)
          {
            goto LABEL_115;
          }
        }

LABEL_35:
        ++v51;
      }

      while (v49 != v51);
      v56 = [incomingPosterConfigurations2 countByEnumeratingWithState:&v162 objects:v169 count:16];
      v49 = v56;
      if (!v56)
      {
LABEL_42:

        reasonCopy = v131;
        break;
      }
    }
  }

  if (!v36)
  {
    goto LABEL_59;
  }

  obj = a2;
  incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs2 = [configurationCopy incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs];
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  keyEnumerator = [incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs2 keyEnumerator];
  v59 = [keyEnumerator countByEnumeratingWithState:&v158 objects:v168 count:16];
  if (!v59)
  {
    goto LABEL_58;
  }

  v60 = v59;
  v61 = *v159;
  do
  {
    for (i = 0; i != v60; ++i)
    {
      if (*v159 != v61)
      {
        objc_enumerationMutation(keyEnumerator);
      }

      v63 = [incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs2 objectForKey:*(*(&v158 + 1) + 8 * i)];
      incomingPosterType2 = [v63 incomingPosterType];
      if (incomingPosterType2 == 4)
      {
        v65 = [PBFPosterRoleCoordinatorChange addPosterToRole:v148 incomingPoster:v63];
LABEL_55:
        v66 = v65;
        [v147 addObject:v65];

        goto LABEL_56;
      }

      if (incomingPosterType2 == 5)
      {
        v65 = [PBFPosterRoleCoordinatorChange updatePosterWithinRole:v148 incomingPoster:v63];
        goto LABEL_55;
      }

      if (incomingPosterType2 < 4)
      {
        v129 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported assoc incoming poster: %@", v63];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [PBFPosterExtensionDataStore _stateLock_updateDataStoreForSwitcherConfiguration:selfCopy options:v129 reason:? error:?];
        }

        [v129 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x21B545BBCLL);
      }

LABEL_56:
    }

    v60 = [keyEnumerator countByEnumeratingWithState:&v158 objects:v168 count:16];
  }

  while (v60);
LABEL_58:

  reasonCopy = v131;
LABEL_59:
  if ((v29 & 1) == 0)
  {
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    obja = v136;
    v67 = [obja countByEnumeratingWithState:&v154 objects:v167 count:16];
    if (v67)
    {
      v68 = v67;
      v69 = *v155;
      do
      {
        for (j = 0; j != v68; ++j)
        {
          if (*v155 != v69)
          {
            objc_enumerationMutation(obja);
          }

          v71 = *(*(&v154 + 1) + 8 * j);
          v153[0] = MEMORY[0x277D85DD0];
          v153[1] = 3221225472;
          v153[2] = __103__PBFPosterExtensionDataStore__stateLock_updateDataStoreForSwitcherConfiguration_options_reason_error___block_invoke_650;
          v153[3] = &unk_2782C6018;
          v153[4] = v71;
          v72 = [v144 bs_containsObjectPassingTest:v153];
          serverIdentity = [v71 serverIdentity];
          provider = [serverIdentity provider];
          v75 = [v145 containsObject:provider];

          if ((v72 & 1) == 0 && v75)
          {
            serverIdentity2 = [v71 serverIdentity];
            posterUUID = [serverIdentity2 posterUUID];
            v78 = [PBFPosterRoleCoordinatorChange removePosterFromRole:v148 matchingUUID:posterUUID];
            [v147 addObject:v78];
          }
        }

        v68 = [obja countByEnumeratingWithState:&v154 objects:v167 count:16];
      }

      while (v68);
    }

    reasonCopy = v131;
  }

  if (v141 || v140 || v138)
  {
    v79 = objc_opt_new();
    posterConfigurationsNeedingHomeScreenConfigurationUpdates2 = [configurationCopy posterConfigurationsNeedingHomeScreenConfigurationUpdates];
    keyEnumerator2 = [posterConfigurationsNeedingHomeScreenConfigurationUpdates2 keyEnumerator];
    allObjects = [keyEnumerator2 allObjects];
    [v79 addObjectsFromArray:allObjects];

    posterConfigurationsNeedingFocusConfigurationUpdates2 = [configurationCopy posterConfigurationsNeedingFocusConfigurationUpdates];
    keyEnumerator3 = [posterConfigurationsNeedingFocusConfigurationUpdates2 keyEnumerator];
    allObjects2 = [keyEnumerator3 allObjects];
    [v79 addObjectsFromArray:allObjects2];

    posterConfigurationsNeedingFocusConfigurationDeleted2 = [configurationCopy posterConfigurationsNeedingFocusConfigurationDeleted];
    allObjects3 = [posterConfigurationsNeedingFocusConfigurationDeleted2 allObjects];
    [v79 addObjectsFromArray:allObjects3];

    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v88 = v79;
    v89 = [v88 countByEnumeratingWithState:&v149 objects:v166 count:16];
    if (v89)
    {
      v90 = v89;
      v91 = *v150;
      do
      {
        for (k = 0; k != v90; ++k)
        {
          if (*v150 != v91)
          {
            objc_enumerationMutation(v88);
          }

          v93 = *(*(&v149 + 1) + 8 * k);
          posterConfigurationsNeedingHomeScreenConfigurationUpdates3 = [configurationCopy posterConfigurationsNeedingHomeScreenConfigurationUpdates];
          v95 = [posterConfigurationsNeedingHomeScreenConfigurationUpdates3 objectForKey:v93];

          posterConfigurationsNeedingFocusConfigurationUpdates3 = [configurationCopy posterConfigurationsNeedingFocusConfigurationUpdates];
          v97 = [posterConfigurationsNeedingFocusConfigurationUpdates3 objectForKey:v93];

          posterConfigurationsNeedingFocusConfigurationDeleted3 = [configurationCopy posterConfigurationsNeedingFocusConfigurationDeleted];
          v99 = [posterConfigurationsNeedingFocusConfigurationDeleted3 containsObject:v93];

          v100 = [v93 loadConfiguredPropertiesWithError:0];
          v101 = [v100 mutableCopy];

          if ((v99 & 1) != 0 || v97)
          {
            if (v99)
            {
              v102 = 0;
            }

            else
            {
              v102 = v97;
            }

            [v101 setFocusConfiguration:v102];
          }

          if (v95)
          {
            [v101 setHomeScreenConfiguration:v95];
          }

          pbf_posterUUID = [v93 pbf_posterUUID];
          v104 = [PBFPosterRoleCoordinatorChange updateConfiguredProperties:v101 forPosterWithinRole:v148 matchingUUID:pbf_posterUUID];
          [v147 addObject:v104];
        }

        v90 = [v88 countByEnumeratingWithState:&v149 objects:v166 count:16];
      }

      while (v90);
    }

    reasonCopy = v131;
  }

  v37 = v137;
  v105 = selfCopy;
  if ((v132 & 1) == 0)
  {
    selectedConfiguration3 = [configurationCopy selectedConfiguration];
    v107 = MEMORY[0x277D3EDE8];
    _path = [selectedConfiguration3 _path];
    v109 = [v107 loadFocusConfigurationForPath:_path error:0];

    if (v109)
    {
      selectedConfiguration4 = PBFLogDataStore(v110);
      if (os_log_type_enabled(selectedConfiguration4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v171 = selectedConfiguration3;
        _os_log_impl(&dword_21B526000, selectedConfiguration4, OS_LOG_TYPE_DEFAULT, "Making poster %@ with paired focus mode the new selected configuration- this should never occur!", buf, 0xCu);
      }

LABEL_101:
    }

    else if (selectedConfiguration3)
    {
      selectedConfiguration4 = [configurationCopy selectedConfiguration];
      pbf_posterUUID2 = [selectedConfiguration4 pbf_posterUUID];
      v117 = [PBFPosterRoleCoordinatorChange selectPosterForRole:v148 matchingUUID:pbf_posterUUID2];
      [v147 addObject:v117];

      v105 = selfCopy;
      goto LABEL_101;
    }
  }

  desiredActiveConfiguration2 = [configurationCopy desiredActiveConfiguration];
  _buildRoleCoordinatorTransitionContext = [(PBFPosterExtensionDataStore *)v105 _buildRoleCoordinatorTransitionContext];
  [_buildRoleCoordinatorTransitionContext setTransitionFromIncomingFocusModeChange:{objc_msgSend(configurationCopy, "activeConfigurationDueToIncomingFocusModeChange")}];
  pbf_posterUUID3 = [desiredActiveConfiguration2 pbf_posterUUID];
  [_buildRoleCoordinatorTransitionContext setDesiredActiveConfiguration:pbf_posterUUID3 forRole:v148];

  v122 = PBFLogDataStore(v121);
  if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
  {
    activeConfigurationDueToIncomingFocusModeChange = [configurationCopy activeConfigurationDueToIncomingFocusModeChange];
    v124 = @"NO";
    if (activeConfigurationDueToIncomingFocusModeChange)
    {
      v124 = @"YES";
    }

    *buf = 138412546;
    v171 = desiredActiveConfiguration2;
    v172 = 2112;
    v173 = v124;
    _os_log_impl(&dword_21B526000, v122, OS_LOG_TYPE_DEFAULT, "_updateDataStoreForSwitcherConfiguration created context with desiredActiveConfiguration: %@ dueToIncomingFocusModeChange: %@", buf, 0x16u);
  }

  v125 = [(PBFPosterExtensionDataStore *)selfCopy _stateLock_executeDataStoreUpdateWithChanges:v147 diffs:0 options:optionsCopy reason:reasonCopy context:_buildRoleCoordinatorTransitionContext error:errorCopy];
  stateLock_switcherConfiguration = v137;
  v14 = v135;
  if (v125)
  {
    stateLock_switcherConfiguration = selfCopy->_stateLock_switcherConfiguration;
  }

  v12 = stateLock_switcherConfiguration;

LABEL_110:
LABEL_111:

LABEL_112:

  return v12;
}

uint64_t __103__PBFPosterExtensionDataStore__stateLock_updateDataStoreForSwitcherConfiguration_options_reason_error___block_invoke_650(uint64_t a1, void *a2)
{
  v3 = [a2 serverIdentity];
  v4 = [v3 posterUUID];
  v5 = [*(a1 + 32) serverIdentity];
  v6 = [v5 posterUUID];
  v7 = [v4 isEqual:v6];

  return v7;
}

- (id)_buildRoleCoordinatorTransitionContextForActivity:(id)activity
{
  v4 = MEMORY[0x277CBEBD0];
  activityCopy = activity;
  pbf_activeChargerIdentifier = [v4 pbf_activeChargerIdentifier];
  v7 = [(PBFPosterExtensionDataStore *)self _buildRoleCoordinatorTransitionContextForActiveFocusMode:activityCopy chargerIdentifier:pbf_activeChargerIdentifier];

  return v7;
}

- (id)_buildRoleCoordinatorTransitionContextForChargerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _activeActivity = [(PBFPosterExtensionDataStore *)self _activeActivity];
  v6 = [(PBFPosterExtensionDataStore *)self _buildRoleCoordinatorTransitionContextForActiveFocusMode:_activeActivity chargerIdentifier:identifierCopy];

  return v6;
}

- (id)_buildRoleCoordinatorTransitionNotingInitialUpdate
{
  _buildRoleCoordinatorTransitionContext = [(PBFPosterExtensionDataStore *)self _buildRoleCoordinatorTransitionContext];
  [_buildRoleCoordinatorTransitionContext setInitialUpdate:1];

  return _buildRoleCoordinatorTransitionContext;
}

- (id)_buildRoleCoordinatorTransitionContext
{
  _activeActivity = [(PBFPosterExtensionDataStore *)self _activeActivity];
  pbf_activeChargerIdentifier = [MEMORY[0x277CBEBD0] pbf_activeChargerIdentifier];
  v5 = [(PBFPosterExtensionDataStore *)self _buildRoleCoordinatorTransitionContextForActiveFocusMode:_activeActivity chargerIdentifier:pbf_activeChargerIdentifier];

  return v5;
}

- (id)_buildRoleCoordinatorTransitionContextWithDesiredActivePosterUUID:(id)d role:(id)role
{
  dCopy = d;
  roleCopy = role;
  _buildRoleCoordinatorTransitionContext = [(PBFPosterExtensionDataStore *)self _buildRoleCoordinatorTransitionContext];
  v9 = _buildRoleCoordinatorTransitionContext;
  if (dCopy && roleCopy)
  {
    [_buildRoleCoordinatorTransitionContext setDesiredActiveConfiguration:dCopy forRole:roleCopy];
  }

  return v9;
}

- (id)_buildRoleCoordinatorTransitionContextForActiveFocusMode:(id)mode chargerIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_extensionProvidingLock);
  v8 = [(NSMutableDictionary *)self->_extensionProvidingLock_extensionStoreCoordinatorForExtensionBundleIdentifier copy];
  os_unfair_lock_unlock(&self->_extensionProvidingLock);
  os_unfair_lock_lock(&self->_activePosterLock);
  v9 = [(NSMutableDictionary *)self->_activePosterLock_roleToActivePosterConfiguration copy];
  os_unfair_lock_unlock(&self->_activePosterLock);
  v11 = PBFLogDataStore(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    activityUniqueIdentifier = [modeCopy activityUniqueIdentifier];
    v15 = 138412290;
    v16 = activityUniqueIdentifier;
    _os_log_impl(&dword_21B526000, v11, OS_LOG_TYPE_DEFAULT, "Creating transitionContext with activeActivity: %@", &v15, 0xCu);
  }

  v13 = [[PBFPosterRoleCoordinatorGenericTransitionContext alloc] initWithActiveFocusMode:modeCopy activeChargerIdentifier:identifierCopy extensionStoreCoordinators:v8 currentActivePosterForRole:v9];

  return v13;
}

- (BOOL)_stateLock_executeDataStoreUpdateWithChanges:(id)changes diffs:(id *)diffs options:(unint64_t)options reason:(id)reason context:(id)context error:(id *)error
{
  v62 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  reasonCopy = reason;
  contextCopy = context;
  if (![(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (!contextCopy)
    {
      contextCopy = [(PBFPosterExtensionDataStore *)self _buildRoleCoordinatorTransitionContext];
    }

    pbf_transitionContextIdentifier = [contextCopy pbf_transitionContextIdentifier];
    uUIDString = [pbf_transitionContextIdentifier UUIDString];
    v20 = [uUIDString substringToIndex:7];

    v22 = PBFLogDataStore(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v59 = v20;
      v60 = 2114;
      v61 = reasonCopy;
      _os_log_impl(&dword_21B526000, v22, OS_LOG_TYPE_DEFAULT, "(%{public}@} executing data store update for reason: %{public}@", buf, 0x16u);
    }

    if (!self->_database)
    {
      if (!error)
      {
        v17 = 0;
        goto LABEL_24;
      }

      v48 = v20;
      v29 = MEMORY[0x277CCA9B8];
      v56 = *MEMORY[0x277CCA470];
      v57 = @"Database is nil when trying to initialize Poster role processor";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      [v29 pbf_generalErrorWithCode:1 userInfo:v26];
      *error = v17 = 0;
LABEL_23:

      v20 = v48;
LABEL_24:

      goto LABEL_25;
    }

    v47 = changesCopy;
    v48 = v20;
    v46 = reasonCopy;
    v23 = [PBFPosterRoleProcessor alloc];
    database = self->_database;
    allValues = [(NSDictionary *)self->_roleToRoleCoordinator allValues];
    v26 = [(PBFPosterRoleProcessor *)v23 initWithDataStorage:database roleCoordinators:allValues];

    [(PBFPosterRoleProcessor *)v26 addObserver:self];
    if (options)
    {
      v54 = @"updateOptions";
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:options];
      v55 = v27;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    }

    else
    {
      v28 = 0;
    }

    runtimeAssertionProvider = self->_runtimeAssertionProvider;
    v31 = [@"dataStoreUpdate-" stringByAppendingString:v48];
    currentProcess = [MEMORY[0x277D47008] currentProcess];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __111__PBFPosterExtensionDataStore__stateLock_executeDataStoreUpdateWithChanges_diffs_options_reason_context_error___block_invoke;
    v52[3] = &unk_2782C59F0;
    v33 = v48;
    v53 = v33;
    v34 = [(PBFRuntimeAssertionProviding *)runtimeAssertionProvider acquirePrewarmRuntimeAssertionForReason:v31 target:currentProcess invalidationHandler:v52];

    v35 = [@"executeDataStoreUpdateWithChanges-%@" stringByAppendingString:v33];
    v51 = 0;
    v36 = [(PBFPosterRoleProcessor *)v26 processChanges:v47 context:contextCopy reason:v35 userInfo:v28 error:&v51];
    v37 = v51;

    v17 = v36 != 0;
    if (v36)
    {
      if (diffs)
      {
        *diffs = [v36 collectionDiffsPerRole];
      }

      if (!error)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v45 = PBFLogDataStore(v38);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterExtensionDataStore _stateLock_executeDataStoreUpdateWithChanges:diffs:options:reason:context:error:];
      }

      if (!error)
      {
        goto LABEL_20;
      }
    }

    v39 = v37;
    *error = v37;
LABEL_20:
    v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PBFPosterExtensionDataStore _stateLock_executeDataStoreUpdateWithChanges:diffs:options:reason:context:error:]"];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __111__PBFPosterExtensionDataStore__stateLock_executeDataStoreUpdateWithChanges_diffs_options_reason_context_error___block_invoke_671;
    v49[3] = &unk_2782C5888;
    v41 = v34;
    v50 = v41;
    PBFDispatchAsyncWithString(v40, QOS_CLASS_DEFAULT, v49);

    v43 = PBFLogDataStore(v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v59 = v33;
      _os_log_impl(&dword_21B526000, v43, OS_LOG_TYPE_DEFAULT, "(%{public}@} Fin.", buf, 0xCu);
    }

    reasonCopy = v46;
    changesCopy = v47;
    goto LABEL_23;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_25:

  return v17;
}

void __111__PBFPosterExtensionDataStore__stateLock_executeDataStoreUpdateWithChanges_diffs_options_reason_context_error___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PBFLogDataStore(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "(%{public}@) PosterBoard runtime assertion invalidated: %{public}@", &v6, 0x16u);
  }
}

- (void)_stateLock_setupPathAssertionsAndUpdateActivePosterFromDiff:(id)diff roleCoordinator:(id)coordinator context:(id)context
{
  v129 = *MEMORY[0x277D85DE8];
  diffCopy = diff;
  coordinatorCopy = coordinator;
  contextCopy = context;
  getFlag = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if (getFlag)
  {
    goto LABEL_54;
  }

  v82 = a2;
  v13 = PBFLogDataStore(getFlag);
  v14 = os_signpost_id_generate(v13);

  v16 = PBFLogDataStore(v15);
  v17 = v16;
  v85 = v14 - 1;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 138543618;
    v120 = coordinatorCopy;
    v121 = 2114;
    v122 = contextCopy;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v14, "_stateLock_setupPathAssertionsAndUpdateActivePosterFromDiff:roleCoordinator:context:", "roleCoordinator: %{public}@ context: %{public}@", buf, 0x16u);
  }

  spid = v14;

  role = [coordinatorCopy role];
  v19 = [role stringByAppendingFormat:@"-%@", @"Configuration Used in Switcher"];
  v20 = [role stringByAppendingFormat:@"-%@", @"In use by home screen poster"];
  v93 = [role stringByAppendingFormat:@"-%@", @"User-Selected Configuration"];
  v95 = [role stringByAppendingFormat:@"-%@", @"Active Configuration"];
  initialCollection = [diffCopy initialCollection];
  newCollection = [diffCopy newCollection];
  v23 = self->_assertionManager;
  v97 = role;
  selfCopy = self;
  v24 = [(PBFPosterExtensionDataStore *)self activePosterConfigurationForRole:role assocPoster:0];
  v86 = contextCopy;
  v87 = coordinatorCopy;
  v25 = [coordinatorCopy determineActivePosterConfigurationForContext:contextCopy];
  selectedPoster = [initialCollection selectedPoster];
  selectedPoster2 = [newCollection selectedPoster];
  v107[0] = MEMORY[0x277D85DD0];
  v107[1] = 3221225472;
  v107[2] = __115__PBFPosterExtensionDataStore__stateLock_setupPathAssertionsAndUpdateActivePosterFromDiff_roleCoordinator_context___block_invoke;
  v107[3] = &unk_2782C63B0;
  v88 = diffCopy;
  v108 = diffCopy;
  v28 = v19;
  v109 = v28;
  v29 = initialCollection;
  v110 = v29;
  v30 = v20;
  v111 = v30;
  v90 = selectedPoster;
  v112 = v90;
  v31 = v93;
  v113 = v31;
  v89 = selectedPoster2;
  v114 = v89;
  v32 = v25;
  v115 = v32;
  v91 = v24;
  v116 = v91;
  v96 = v95;
  v117 = v96;
  v33 = newCollection;
  v118 = v33;
  v34 = [(PBFPosterExtensionDataStoreAssertionManager *)v23 executeTransaction:v107];
  v84 = v29;
  v92 = v32;
  if ((v34 & 1) == 0)
  {
    v94 = v30;
    v36 = PBFLogDataStore(v34);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v37 = v97;
      v120 = v97;
      _os_log_impl(&dword_21B526000, v36, OS_LOG_TYPE_DEFAULT, "Role %{public}@ had no changes... moving on...", buf, 0xCu);
      coordinatorCopy = v87;
      contextCopy = v86;
    }

    else
    {
      coordinatorCopy = v87;
      contextCopy = v86;
      v37 = v97;
    }

    goto LABEL_50;
  }

  if (v32)
  {
    v35 = v32;
  }

  else
  {
    v35 = 0;
  }

  [(PBFPosterExtensionDataStore *)selfCopy markPosterConfigurationAsActive:v35 forRole:v97];
  v38 = [(PBFPosterExtensionDataStoreAssertionManager *)selfCopy->_assertionManager numberOfAssertionsForReason:v28];
  orderedPosters = [v33 orderedPosters];
  v40 = [orderedPosters count];

  v42 = PBFLogDataStore(v41);
  v43 = v42;
  v80 = v23;
  v81 = v31;
  if (v38 == v40)
  {
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v120 = v97;
      v121 = 2048;
      v122 = v38;
      _os_log_impl(&dword_21B526000, v43, OS_LOG_TYPE_DEFAULT, "Role %{public}@ numberOfOrderedPostersAssertionsForReason %lu", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
  {
    [PBFPosterExtensionDataStore _stateLock_setupPathAssertionsAndUpdateActivePosterFromDiff:roleCoordinator:context:];
  }

  v79 = v28;
  v36 = [(PBFPosterExtensionDataStoreAssertionManager *)selfCopy->_assertionManager inUsePosterPathIdentitiesForReason:v28];
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  orderedPosters2 = [v33 orderedPosters];
  v45 = [orderedPosters2 countByEnumeratingWithState:&v103 objects:v128 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v104;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v104 != v47)
        {
          objc_enumerationMutation(orderedPosters2);
        }

        _path = [*(*(&v103 + 1) + 8 * i) _path];
        serverIdentity = [_path serverIdentity];
        v51 = [v36 containsObject:serverIdentity];

        if ((v51 & 1) == 0)
        {
          [PBFPosterExtensionDataStore _stateLock_setupPathAssertionsAndUpdateActivePosterFromDiff:v82 roleCoordinator:? context:?];
        }
      }

      v46 = [orderedPosters2 countByEnumeratingWithState:&v103 objects:v128 count:16];
    }

    while (v46);
  }

  v94 = v30;
  v52 = [(PBFPosterExtensionDataStoreAssertionManager *)selfCopy->_assertionManager inUsePosterPathIdentitiesForReason:v30];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  associatedPosters = [v33 associatedPosters];
  v54 = [associatedPosters countByEnumeratingWithState:&v99 objects:v127 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v100;
    do
    {
      for (j = 0; j != v55; ++j)
      {
        if (*v100 != v56)
        {
          objc_enumerationMutation(associatedPosters);
        }

        _path2 = [*(*(&v99 + 1) + 8 * j) _path];
        serverIdentity2 = [_path2 serverIdentity];
        v60 = [v52 containsObject:serverIdentity2];

        if ((v60 & 1) == 0)
        {
          [PBFPosterExtensionDataStore _stateLock_setupPathAssertionsAndUpdateActivePosterFromDiff:v82 roleCoordinator:? context:?];
        }
      }

      v55 = [associatedPosters countByEnumeratingWithState:&v99 objects:v127 count:16];
    }

    while (v55);
  }

  v61 = [(PBFPosterExtensionDataStoreAssertionManager *)selfCopy->_assertionManager numberOfAssertionsForReason:v96];
  v62 = PBFLogDataStore(v61);
  v63 = v62;
  if (v61 < 2)
  {
    v37 = v97;
    v64 = v81;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v120 = v97;
      v121 = 2048;
      v122 = v61;
      v123 = 2114;
      v124 = v91;
      v125 = 2114;
      v126 = v92;
      _os_log_impl(&dword_21B526000, v63, OS_LOG_TYPE_DEFAULT, "Role %{public}@ numberOfActivePosterInUseAssertions %lu; %{public}@ -> %{public}@", buf, 0x2Au);
    }
  }

  else
  {
    v37 = v97;
    v64 = v81;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
    {
      *buf = 138544130;
      v120 = v97;
      v121 = 2048;
      v122 = v61;
      v123 = 2114;
      v124 = v91;
      v125 = 2114;
      v126 = v92;
      _os_log_fault_impl(&dword_21B526000, v63, OS_LOG_TYPE_FAULT, "Role %{public}@ numberOfActivePosterInUseAssertions %lu; %{public}@ -> %{public}@", buf, 0x2Au);
    }
  }

  v65 = [(PBFPosterExtensionDataStoreAssertionManager *)selfCopy->_assertionManager numberOfAssertionsForReason:v64];
  v66 = v65;
  if (v65 && ([v33 selectedPoster], v67 = objc_claimAutoreleasedReturnValue(), v67, v67))
  {
    v68 = PBFLogDataStore(v65);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v120 = v37;
      v121 = 2048;
      v122 = v66;
      v123 = 2114;
      v124 = v90;
      v125 = 2114;
      v126 = v89;
      _os_log_impl(&dword_21B526000, v68, OS_LOG_TYPE_DEFAULT, "Role %{public}@ numberOfInUseSelectedPosterInUseAssertions %lu; %{public}@ -> %{public}@", buf, 0x2Au);
    }
  }

  else
  {
    v68 = PBFLogDataStore(v65);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
    {
      *buf = 138544130;
      v120 = v37;
      v121 = 2048;
      v122 = v66;
      v123 = 2114;
      v124 = v90;
      v125 = 2114;
      v126 = v89;
      _os_log_fault_impl(&dword_21B526000, v68, OS_LOG_TYPE_FAULT, "Role %{public}@ numberOfInUseSelectedPosterInUseAssertions %lu; %{public}@ -> %{public}@", buf, 0x2Au);
    }
  }

  v69 = [(PBFPosterExtensionDataStoreAssertionManager *)selfCopy->_assertionManager numberOfAssertionsForReason:v94];
  associatedPosterUUIDs = [v33 associatedPosterUUIDs];
  v71 = [associatedPosterUUIDs count];

  v73 = PBFLogDataStore(v72);
  v74 = v73;
  if (v69 != v71)
  {
    diffCopy = v88;
    v23 = v80;
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_49;
    }

    associatedPosterUUIDs2 = [v33 associatedPosterUUIDs];
    *buf = 138543874;
    v120 = v37;
    v121 = 2048;
    v122 = v69;
    v123 = 2114;
    v124 = associatedPosterUUIDs2;
    _os_log_fault_impl(&dword_21B526000, v74, OS_LOG_TYPE_FAULT, "Role %{public}@ numberOfInUseAssocPostersInUseAssertions %lu; associatedPosterUUIDs: %{public}@", buf, 0x20u);
    goto LABEL_47;
  }

  diffCopy = v88;
  v23 = v80;
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    associatedPosterUUIDs2 = [v33 associatedPosterUUIDs];
    *buf = 138543874;
    v120 = v37;
    v121 = 2048;
    v122 = v69;
    v123 = 2114;
    v124 = associatedPosterUUIDs2;
    _os_log_impl(&dword_21B526000, v74, OS_LOG_TYPE_DEFAULT, "Role %{public}@ numberOfInUseAssocPostersInUseAssertions %lu; associatedPosterUUIDs: %{public}@", buf, 0x20u);
LABEL_47:
  }

LABEL_49:

  contextCopy = v86;
  coordinatorCopy = v87;
  v28 = v79;
  v31 = v81;
LABEL_50:

  v77 = PBFLogDataStore(v76);
  v78 = v77;
  if (v85 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v77))
  {
    *buf = 138543618;
    v120 = coordinatorCopy;
    v121 = 2114;
    v122 = contextCopy;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v78, OS_SIGNPOST_INTERVAL_END, spid, "_stateLock_setupPathAssertionsAndUpdateActivePosterFromDiff:roleCoordinator:context:", "roleCoordinator: %{public}@ context: %{public}@", buf, 0x16u);
  }

LABEL_54:
}

uint64_t __115__PBFPosterExtensionDataStore__stateLock_setupPathAssertionsAndUpdateActivePosterFromDiff_roleCoordinator_context___block_invoke(uint64_t a1, void *a2)
{
  v81 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) removedPosters];
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __115__PBFPosterExtensionDataStore__stateLock_setupPathAssertionsAndUpdateActivePosterFromDiff_roleCoordinator_context___block_invoke_2;
  v76[3] = &unk_2782C6360;
  v5 = v3;
  v77 = v5;
  v78 = *(a1 + 40);
  [v4 bs_each:v76];

  v6 = [*(a1 + 32) addedPosters];
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __115__PBFPosterExtensionDataStore__stateLock_setupPathAssertionsAndUpdateActivePosterFromDiff_roleCoordinator_context___block_invoke_3;
  v73[3] = &unk_2782C6360;
  v7 = v5;
  v74 = v7;
  v75 = *(a1 + 40);
  [v6 bs_each:v73];

  v8 = [*(a1 + 32) updatedPosters];
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __115__PBFPosterExtensionDataStore__stateLock_setupPathAssertionsAndUpdateActivePosterFromDiff_roleCoordinator_context___block_invoke_4;
  v69[3] = &unk_2782C6388;
  v70 = *(a1 + 48);
  v9 = v7;
  v71 = v9;
  v72 = *(a1 + 40);
  [v8 bs_each:v69];

  v10 = [*(a1 + 32) removedAssocPosters];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __115__PBFPosterExtensionDataStore__stateLock_setupPathAssertionsAndUpdateActivePosterFromDiff_roleCoordinator_context___block_invoke_5;
  v66[3] = &unk_2782C6360;
  v11 = v9;
  v67 = v11;
  v68 = *(a1 + 56);
  [v10 bs_each:v66];

  v12 = [*(a1 + 32) addedAssocPosters];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __115__PBFPosterExtensionDataStore__stateLock_setupPathAssertionsAndUpdateActivePosterFromDiff_roleCoordinator_context___block_invoke_6;
  v63[3] = &unk_2782C6360;
  v13 = v11;
  v64 = v13;
  v65 = *(a1 + 56);
  [v12 bs_each:v63];

  v14 = [*(a1 + 32) updatedAssocPosters];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __115__PBFPosterExtensionDataStore__stateLock_setupPathAssertionsAndUpdateActivePosterFromDiff_roleCoordinator_context___block_invoke_7;
  v59[3] = &unk_2782C6388;
  v60 = *(a1 + 48);
  v15 = v13;
  v61 = v15;
  v62 = *(a1 + 56);
  [v14 bs_each:v59];

  if (([*(a1 + 32) selectedPostersAreEqual] & 1) == 0)
  {
    v16 = [*(a1 + 64) _path];
    v17 = [v16 serverIdentity];
    [v15 invalidateInUseAssertionForIdentity:v17 reason:*(a1 + 72)];

    v18 = [*(a1 + 80) _path];
    v19 = [v18 serverIdentity];
    [v15 acquireInUseAssertionForIdentity:v19 reason:*(a1 + 72)];
  }

  v20 = BSEqualObjects();
  v21 = *(a1 + 96);
  if (v20)
  {
    if (v21)
    {
      goto LABEL_10;
    }
  }

  else if (v21)
  {
    v22 = [v21 _path];
    v23 = [v22 serverIdentity];
    [v15 invalidateInUseAssertionForIdentity:v23 reason:*(a1 + 104)];
  }

  v24 = *(a1 + 88);
  if (v24)
  {
    v25 = [v24 _path];
    v26 = [v25 serverIdentity];
    [v15 acquireInUseAssertionForIdentity:v26 reason:*(a1 + 104)];
  }

LABEL_10:
  v27 = [v15 numberOfAssertionsForReason:*(a1 + 40)];
  v28 = [*(a1 + 112) orderedPosters];
  v29 = [v28 count];

  if (v27 != v29)
  {
    v30 = [v15 inUsePosterPathIdentitiesForReason:*(a1 + 40)];
    v31 = MEMORY[0x277CBEB98];
    v32 = [*(a1 + 112) orderedPosters];
    v33 = [v32 array];
    v34 = [v33 bs_mapNoNulls:&__block_literal_global_674];
    v35 = [v31 setWithArray:v34];

    v36 = [v30 mutableCopy];
    v50 = v35;
    [v36 minusSet:v35];
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v37 = v36;
    v38 = [v37 countByEnumeratingWithState:&v55 objects:v80 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v56;
      do
      {
        v41 = 0;
        do
        {
          if (*v56 != v40)
          {
            objc_enumerationMutation(v37);
          }

          [v15 invalidateInUseAssertionForIdentity:*(*(&v55 + 1) + 8 * v41++) reason:*(a1 + 40)];
        }

        while (v39 != v41);
        v39 = [v37 countByEnumeratingWithState:&v55 objects:v80 count:16];
      }

      while (v39);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v42 = [*(a1 + 112) orderedPosters];
    v43 = [v42 countByEnumeratingWithState:&v51 objects:v79 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v52;
      do
      {
        v46 = 0;
        do
        {
          if (*v52 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = [*(*(&v51 + 1) + 8 * v46) _path];
          v48 = [v47 serverIdentity];

          if (([v30 containsObject:v48] & 1) == 0)
          {
            [v15 acquireInUseAssertionForIdentity:v48 reason:*(a1 + 40)];
          }

          ++v46;
        }

        while (v44 != v46);
        v44 = [v42 countByEnumeratingWithState:&v51 objects:v79 count:16];
      }

      while (v44);
    }
  }

  return 1;
}

void __115__PBFPosterExtensionDataStore__stateLock_setupPathAssertionsAndUpdateActivePosterFromDiff_roleCoordinator_context___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = [a2 _path];
  v4 = [v5 serverIdentity];
  [v3 invalidateInUseAssertionForIdentity:v4 reason:*(a1 + 40)];
}

void __115__PBFPosterExtensionDataStore__stateLock_setupPathAssertionsAndUpdateActivePosterFromDiff_roleCoordinator_context___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = [a2 _path];
  v4 = [v5 serverIdentity];
  [v3 acquireInUseAssertionForIdentity:v4 reason:*(a1 + 40)];
}

void __115__PBFPosterExtensionDataStore__stateLock_setupPathAssertionsAndUpdateActivePosterFromDiff_roleCoordinator_context___block_invoke_4(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v4 pbf_posterUUID];
  v12 = [v3 posterWithUUID:v5];

  v6 = a1[5];
  v7 = [v12 _path];
  v8 = [v7 serverIdentity];
  [v6 invalidateInUseAssertionForIdentity:v8 reason:a1[6]];

  v9 = a1[5];
  v10 = [v4 _path];

  v11 = [v10 serverIdentity];
  [v9 acquireInUseAssertionForIdentity:v11 reason:a1[6]];
}

void __115__PBFPosterExtensionDataStore__stateLock_setupPathAssertionsAndUpdateActivePosterFromDiff_roleCoordinator_context___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = [a2 _path];
  v4 = [v5 serverIdentity];
  [v3 invalidateInUseAssertionForIdentity:v4 reason:*(a1 + 40)];
}

void __115__PBFPosterExtensionDataStore__stateLock_setupPathAssertionsAndUpdateActivePosterFromDiff_roleCoordinator_context___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = [a2 _path];
  v4 = [v5 serverIdentity];
  [v3 acquireInUseAssertionForIdentity:v4 reason:*(a1 + 40)];
}

void __115__PBFPosterExtensionDataStore__stateLock_setupPathAssertionsAndUpdateActivePosterFromDiff_roleCoordinator_context___block_invoke_7(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v4 pbf_posterUUID];
  v12 = [v3 associatedPosterForUUID:v5];

  v6 = a1[5];
  v7 = [v12 _path];
  v8 = [v7 serverIdentity];
  [v6 invalidateInUseAssertionForIdentity:v8 reason:a1[6]];

  v9 = a1[5];
  v10 = [v4 _path];

  v11 = [v10 serverIdentity];
  [v9 acquireInUseAssertionForIdentity:v11 reason:a1[6]];
}

id __115__PBFPosterExtensionDataStore__stateLock_setupPathAssertionsAndUpdateActivePosterFromDiff_roleCoordinator_context___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = [a2 _path];
  v3 = [v2 serverIdentity];

  return v3;
}

- (void)_stateLock_pushUpdateNotificationsForRole:(id)role diff:(id)diff previouslyActiveConfiguration:(id)configuration newActiveConfiguration:(id)activeConfiguration options:(unint64_t)options reason:(id)reason context:(id)context
{
  v215 = *MEMORY[0x277D85DE8];
  roleCopy = role;
  diffCopy = diff;
  configurationCopy = configuration;
  activeConfigurationCopy = activeConfiguration;
  reasonCopy = reason;
  contextCopy = context;
  selfCopy = self;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    goto LABEL_171;
  }

  v138 = contextCopy;
  pbf_transitionContextIdentifier = [contextCopy pbf_transitionContextIdentifier];
  uUIDString = [pbf_transitionContextIdentifier UUIDString];
  v155 = [uUIDString substringToIndex:7];

  v18 = PBFLogDataStore(v17);
  spid = os_signpost_id_generate(v18);

  v20 = PBFLogDataStore(v19);
  v21 = v20;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 138544642;
    v206 = roleCopy;
    v207 = 2114;
    v208 = configurationCopy;
    v209 = 2114;
    *v210 = activeConfigurationCopy;
    *&v210[8] = 2048;
    optionsCopy = options;
    *v212 = 2114;
    *&v212[2] = reasonCopy;
    v213 = 2114;
    v214 = contextCopy;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v21, OS_SIGNPOST_INTERVAL_BEGIN, spid, "pushUpdateNotificationsForRole", "role: '%{public}@'; previousActivePosterConfiguration:'%{public}@' newlyActivatedConfiguration:'%{public}@'; options:'%lu' reason:'%{public}@'; context:'%{public}@';", buf, 0x3Eu);
  }

  v23 = PBFLogDataStore(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v206 = v155;
    v207 = 2114;
    v208 = roleCopy;
    _os_log_impl(&dword_21B526000, v23, OS_LOG_TYPE_DEFAULT, "(%{public}@) Preparing to issue update notifications for role %{public}@", buf, 0x16u);
  }

  newCollection = [diffCopy newCollection];
  selectedPoster = [newCollection selectedPoster];
  addedPosters = [diffCopy addedPosters];
  updatedPosters = [diffCopy updatedPosters];
  removedPosters = [diffCopy removedPosters];
  selectedPostersAreEqual = [diffCopy selectedPostersAreEqual];
  v149 = BSEqualObjects();
  v24 = ![diffCopy orderedPostersAreEqual] || !objc_msgSend(diffCopy, "associatedPostersAreEqual") || objc_msgSend(updatedPosters, "count") != 0;
  v130 = v24;
  v131 = [addedPosters count];
  v129 = [removedPosters count];
  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  newCollection2 = [diffCopy newCollection];
  orderedPosters = [newCollection2 orderedPosters];

  v27 = [orderedPosters countByEnumeratingWithState:&v194 objects:v204 count:16];
  if (v27)
  {
    v28 = *v195;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v195 != v28)
        {
          objc_enumerationMutation(orderedPosters);
        }

        v30 = *(*(&v194 + 1) + 8 * i);
        newCollection3 = [diffCopy newCollection];
        v32 = [newCollection3 associatedPosterForPoster:v30];

        if (v32)
        {
          [strongToStrongObjectsMapTable setObject:v32 forKey:v30];
        }
      }

      v27 = [orderedPosters countByEnumeratingWithState:&v194 objects:v204 count:16];
    }

    while (v27);
  }

  v151 = *MEMORY[0x277D3EEF0];
  if ([roleCopy isEqual:?])
  {
    isInitialUpdate = [diffCopy isEqual];
    if ((isInitialUpdate & selectedPostersAreEqual & v149) == 1)
    {
      isInitialUpdate = [v138 isInitialUpdate];
      if ((isInitialUpdate & 1) == 0)
      {
        if (selfCopy->_stateLock_switcherConfiguration)
        {
          v34 = PBFLogDataStore(isInitialUpdate);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v206 = v155;
            v207 = 2114;
            v208 = roleCopy;
            _os_log_impl(&dword_21B526000, v34, OS_LOG_TYPE_DEFAULT, "(%{public}@) Did *NOT* update switcher model for role %{public}@", buf, 0x16u);
          }

          goto LABEL_41;
        }
      }
    }

    v36 = PBFLogDataStore(isInitialUpdate);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v206 = v155;
      v207 = 2114;
      v208 = roleCopy;
      _os_log_impl(&dword_21B526000, v36, OS_LOG_TYPE_DEFAULT, "(%{public}@) preparing to update switcher model for role %{public}@", buf, 0x16u);
    }

    v193 = 0;
    v37 = [(PBFPosterExtensionDataStore *)selfCopy _stateLock_buildSwitcherConfigurationWithContext:v138 outMutated:&v193];
    if (([v138 isInitialUpdate] & 1) != 0 || !selfCopy->_stateLock_switcherConfiguration)
    {
      orderedPosters2 = [newCollection orderedPosters];
      v43 = [orderedPosters2 count];

      v45 = PBFLogDataStore(v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v206 = v155;
        v207 = 2114;
        v208 = roleCopy;
        _os_log_impl(&dword_21B526000, v45, OS_LOG_TYPE_DEFAULT, "(%{public}@) Initializing switcher model for role %{public}@", buf, 0x16u);
      }

      objc_storeStrong(&selfCopy->_stateLock_switcherConfiguration, v37);
      v40 = PBFLogDataStore([(PBFPosterExtensionDataStore *)selfCopy _notifyObserversDidInitializeWithSwitcherConfiguration:selfCopy->_stateLock_switcherConfiguration withChanges:(v43 == 0) | (v193 & 1)]);
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      *buf = 138543618;
      v206 = v155;
      v207 = 2114;
      v208 = roleCopy;
      v41 = "(%{public}@) Initialized switcher model for role %{public}@";
    }

    else
    {
      objc_storeStrong(&selfCopy->_stateLock_switcherConfiguration, v37);
      v39 = PBFLogDataStore(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v206 = v155;
        v207 = 2114;
        v208 = roleCopy;
        _os_log_impl(&dword_21B526000, v39, OS_LOG_TYPE_DEFAULT, "(%{public}@) Updated switcher model for role %{public}@", buf, 0x16u);
      }

      v40 = PBFLogDataStore([(PBFPosterExtensionDataStore *)selfCopy _notifyObserversDidUpdateSwitcherConfiguration:v37]);
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      *buf = 138543618;
      v206 = v155;
      v207 = 2114;
      v208 = roleCopy;
      v41 = "(%{public}@) Notified observers for updated switcher configuration for role %{public}@";
    }

    _os_log_impl(&dword_21B526000, v40, OS_LOG_TYPE_DEFAULT, v41, buf, 0x16u);
LABEL_40:

LABEL_41:
    if (selectedPostersAreEqual)
    {
      v46 = PBFLogDataStore(v35);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v206 = v155;
        v207 = 2114;
        v208 = roleCopy;
        _os_log_impl(&dword_21B526000, v46, OS_LOG_TYPE_DEFAULT, "(%{public}@) Skipping notify of updated selected configuration for role %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v46 = [(PRSwitcherConfiguration *)selfCopy->_stateLock_switcherConfiguration homeScreenPosterConfigurationForPosterConfiguration:selectedPoster];
      v47 = PBFLogDataStore([(PBFPosterExtensionDataStore *)selfCopy _notifyObserversDidUpdateSelectedConfiguration:selectedPoster associatedConfiguration:v46 reason:reasonCopy]);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v206 = v155;
        v207 = 2114;
        v208 = roleCopy;
        _os_log_impl(&dword_21B526000, v47, OS_LOG_TYPE_DEFAULT, "(%{public}@) Did notify of updated selected configuration for role %{public}@", buf, 0x16u);
      }
    }

    v49 = PBFLogDataStore(v48);
    v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
    if (v149)
    {
      if (v50)
      {
        *buf = 138543618;
        v206 = v155;
        v207 = 2114;
        v208 = roleCopy;
        _os_log_impl(&dword_21B526000, v49, OS_LOG_TYPE_DEFAULT, "(%{public}@) Did *NOT* notify of updated active configuration for role %{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (v50)
      {
        *buf = 138543618;
        v206 = v155;
        v207 = 2114;
        v208 = roleCopy;
        _os_log_impl(&dword_21B526000, v49, OS_LOG_TYPE_DEFAULT, "(%{public}@) preparing to update last activated date for role %{public}@", buf, 0x16u);
      }

      _path = [activeConfigurationCopy _path];
      serverIdentity = [_path serverIdentity];
      posterUUID = [serverIdentity posterUUID];

      v192 = 0;
      [(PBFPosterExtensionDataStore *)selfCopy _stateLock_findStoreCoordinatorsForUUID:posterUUID extensionStoreCoordinator:0 configurationStoreCoordinator:&v192];
      v49 = v192;
      providerInfo = [v49 providerInfo];
      v55 = [providerInfo mutableCopy];
      v56 = v55;
      if (v55)
      {
        dictionary = v55;
      }

      else
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
      }

      v58 = [MEMORY[0x277CBEAA8] now];
      [dictionary setObject:v58 forKeyedSubscript:@"kConfigurationLastUseDateKey"];

      v191 = 0;
      LODWORD(v58) = [v49 setProviderInfo:dictionary error:&v191];
      v59 = v191;
      v60 = PBFLogDataStore(v59);
      v61 = v60;
      if (v58)
      {
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v206 = v155;
          v207 = 2114;
          v208 = posterUUID;
          v209 = 2114;
          *v210 = roleCopy;
          _os_log_impl(&dword_21B526000, v61, OS_LOG_TYPE_DEFAULT, "(%{public}@) Success updating last activated date for poster %{public}@ in role %{public}@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544130;
        v206 = v155;
        v207 = 2114;
        v208 = posterUUID;
        v209 = 2114;
        *v210 = roleCopy;
        *&v210[8] = 2114;
        optionsCopy = v59;
        _os_log_error_impl(&dword_21B526000, v61, OS_LOG_TYPE_ERROR, "(%{public}@) FAILED updating last activated date for poster %{public}@ in role %{public}@: %{public}@", buf, 0x2Au);
      }

      v63 = PBFLogDataStore(v62);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v206 = v155;
        v207 = 2114;
        v208 = roleCopy;
        _os_log_impl(&dword_21B526000, v63, OS_LOG_TYPE_DEFAULT, "(%{public}@) Preparing to notify observers for updated active configuration for role %{public}@", buf, 0x16u);
      }

      v64 = [newCollection associatedPosterForPoster:activeConfigurationCopy];
      v65 = PBFLogDataStore([(PBFPosterExtensionDataStore *)selfCopy _notifyObserversDidUpdateActiveConfiguration:activeConfigurationCopy associatedConfiguration:v64 reason:reasonCopy]);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v206 = v155;
        v207 = 2114;
        v208 = roleCopy;
        _os_log_impl(&dword_21B526000, v65, OS_LOG_TYPE_DEFAULT, "(%{public}@) Notified observers for updated active configuration for role %{public}@", buf, 0x16u);
      }
    }
  }

  if ([updatedPosters count])
  {
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v66 = updatedPosters;
    v67 = [v66 countByEnumeratingWithState:&v187 objects:v203 count:16];
    v68 = v67;
    if (v67)
    {
      v69 = *v188;
      do
      {
        v70 = 0;
        do
        {
          if (*v188 != v69)
          {
            objc_enumerationMutation(v66);
          }

          v71 = *(*(&v187 + 1) + 8 * v70);
          v72 = PBFLogDataStore(v67);
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v206 = v155;
            v207 = 2114;
            v208 = v71;
            v209 = 2114;
            *v210 = roleCopy;
            _os_log_impl(&dword_21B526000, v72, OS_LOG_TYPE_DEFAULT, "(%{public}@) Preparing to notify observers for updated configuration %{public}@ for role %{public}@", buf, 0x20u);
          }

          v73 = PBFLogDataStore([(PBFPosterExtensionDataStore *)selfCopy _notifyObserversDidUpdateConfiguration:v71]);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v206 = v155;
            v207 = 2114;
            v208 = v71;
            v209 = 2114;
            *v210 = roleCopy;
            _os_log_impl(&dword_21B526000, v73, OS_LOG_TYPE_DEFAULT, "(%{public}@) Notified observers for updated configuration %{public}@ for role %{public}@", buf, 0x20u);
          }

          ++v70;
        }

        while (v68 != v70);
        v67 = [v66 countByEnumeratingWithState:&v187 objects:v203 count:16];
        v68 = v67;
      }

      while (v67);
    }
  }

  else
  {
    v66 = PBFLogDataStore(0);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v206 = v155;
      v207 = 2114;
      v208 = roleCopy;
      _os_log_impl(&dword_21B526000, v66, OS_LOG_TYPE_DEFAULT, "(%{public}@) Did *NOT* notify observers for specific updated configurations for role %{public}@", buf, 0x16u);
    }
  }

  if ([addedPosters count] || (v74 = objc_msgSend(diffCopy, "isEqual"), (v74 & 1) == 0))
  {
    v185 = 0u;
    v186 = 0u;
    v183 = 0u;
    v184 = 0u;
    v75 = addedPosters;
    v76 = [v75 countByEnumeratingWithState:&v183 objects:v202 count:16];
    v77 = v76;
    if (v76)
    {
      v78 = *v184;
      do
      {
        v79 = 0;
        do
        {
          if (*v184 != v78)
          {
            objc_enumerationMutation(v75);
          }

          v80 = *(*(&v183 + 1) + 8 * v79);
          v81 = PBFLogDataStore(v76);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v206 = v155;
            v207 = 2114;
            v208 = v80;
            v209 = 2114;
            *v210 = roleCopy;
            _os_log_impl(&dword_21B526000, v81, OS_LOG_TYPE_DEFAULT, "(%{public}@) Preparing to notify observers for added configuration %{public}@ for role %{public}@", buf, 0x20u);
          }

          v82 = PBFLogDataStore([(PBFPosterExtensionDataStore *)selfCopy _notifyObserversDidAddConfiguration:v80]);
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v206 = v155;
            v207 = 2114;
            v208 = v80;
            v209 = 2114;
            *v210 = roleCopy;
            _os_log_impl(&dword_21B526000, v82, OS_LOG_TYPE_DEFAULT, "(%{public}@) Notified observers for added configuration %{public}@ for role %{public}@", buf, 0x20u);
          }

          ++v79;
        }

        while (v77 != v79);
        v76 = [v75 countByEnumeratingWithState:&v183 objects:v202 count:16];
        v77 = v76;
      }

      while (v76);
    }
  }

  else
  {
    v75 = PBFLogDataStore(v74);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v206 = v155;
      v207 = 2114;
      v208 = roleCopy;
      _os_log_impl(&dword_21B526000, v75, OS_LOG_TYPE_DEFAULT, "(%{public}@) Did *NOT* notify observers for added configurations for role %{public}@", buf, 0x16u);
    }
  }

  if ([removedPosters count])
  {
    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    v83 = removedPosters;
    v84 = [v83 countByEnumeratingWithState:&v179 objects:v201 count:16];
    v85 = v84;
    if (v84)
    {
      v86 = *v180;
      do
      {
        v87 = 0;
        do
        {
          if (*v180 != v86)
          {
            objc_enumerationMutation(v83);
          }

          v88 = *(*(&v179 + 1) + 8 * v87);
          v89 = PBFLogDataStore(v84);
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v206 = v155;
            v207 = 2114;
            v208 = v88;
            v209 = 2114;
            *v210 = roleCopy;
            _os_log_impl(&dword_21B526000, v89, OS_LOG_TYPE_DEFAULT, "(%{public}@) Preparing to notify observers for deleted configuration %{public}@ for role %{public}@", buf, 0x20u);
          }

          v90 = PBFLogDataStore([(PBFPosterExtensionDataStore *)selfCopy _notifyObserversDidDeleteConfiguration:v88]);
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v206 = v155;
            v207 = 2114;
            v208 = v88;
            v209 = 2114;
            *v210 = roleCopy;
            _os_log_impl(&dword_21B526000, v90, OS_LOG_TYPE_DEFAULT, "(%{public}@) Notified observers for deleted configuration %{public}@ for role %{public}@", buf, 0x20u);
          }

          ++v87;
        }

        while (v85 != v87);
        v84 = [v83 countByEnumeratingWithState:&v179 objects:v201 count:16];
        v85 = v84;
      }

      while (v84);
    }
  }

  else
  {
    v83 = PBFLogDataStore(0);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v206 = v155;
      v207 = 2114;
      v208 = roleCopy;
      _os_log_impl(&dword_21B526000, v83, OS_LOG_TYPE_DEFAULT, "(%{public}@) Did *NOT* notify observers for deleted configurations for role %{public}@", buf, 0x16u);
    }
  }

  v91 = [strongToStrongObjectsMapTable count];
  if (v91 && (v91 = [roleCopy isEqual:v151], v91))
  {
    v92 = PBFLogDataStore(v91);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v206 = v155;
      v207 = 2114;
      v208 = strongToStrongObjectsMapTable;
      v209 = 2114;
      *v210 = roleCopy;
      _os_log_impl(&dword_21B526000, v92, OS_LOG_TYPE_DEFAULT, "(%{public}@) Preparing to notify observers for changes to associated posters %{public}@ for role %{public}@", buf, 0x20u);
    }

    v177 = 0u;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    keyEnumerator = [strongToStrongObjectsMapTable keyEnumerator];
    v94 = [keyEnumerator countByEnumeratingWithState:&v175 objects:v200 count:16];
    if (v94)
    {
      v95 = *v176;
      do
      {
        for (j = 0; j != v94; ++j)
        {
          if (*v176 != v95)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v97 = *(*(&v175 + 1) + 8 * j);
          v98 = [strongToStrongObjectsMapTable objectForKey:v97];
          v99 = v98;
          if (v98)
          {
            v100 = PBFLogDataStore(v98);
            if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              v206 = v155;
              v207 = 2114;
              v208 = v99;
              v209 = 2114;
              *v210 = roleCopy;
              _os_log_impl(&dword_21B526000, v100, OS_LOG_TYPE_DEFAULT, "(%{public}@) Preparing to notify observers for updated associated poster %{public}@ for role %{public}@", buf, 0x20u);
            }

            v101 = PBFLogDataStore([(PBFPosterExtensionDataStore *)selfCopy _notifyObserversDidUpdateConfiguration:v97 homeScreenAssociatedConfiguration:v99]);
            if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              v206 = v155;
              v207 = 2114;
              v208 = v99;
              v209 = 2114;
              *v210 = roleCopy;
              _os_log_impl(&dword_21B526000, v101, OS_LOG_TYPE_DEFAULT, "(%{public}@) Notified observers for updated associated poster %{public}@ for role %{public}@", buf, 0x20u);
            }
          }
        }

        v94 = [keyEnumerator countByEnumeratingWithState:&v175 objects:v200 count:16];
      }

      while (v94);
    }
  }

  else
  {
    keyEnumerator = PBFLogDataStore(v91);
    if (os_log_type_enabled(keyEnumerator, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v206 = v155;
      v207 = 2114;
      v208 = roleCopy;
      _os_log_impl(&dword_21B526000, keyEnumerator, OS_LOG_TYPE_DEFAULT, "(%{public}@) Did *NOT* notify observers for changes to associated posters for role %{public}@", buf, 0x16u);
    }
  }

  v102 = [MEMORY[0x277D3EF30] proactiveGallerySupportedForRole:roleCopy];
  v132 = v149 ^ 1;
  v133 = selectedPostersAreEqual ^ 1;
  if (v102)
  {
    if (((v132 | v133) & 1) != 0 || (v102 = [addedPosters count]) != 0 || (v102 = objc_msgSend(removedPosters, "count"), v102 != 0 || v130 || v129 != 0 || v131 != 0))
    {
      v103 = PBFLogDataStore(v102);
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v206 = v155;
        v207 = 2114;
        v208 = roleCopy;
        _os_log_impl(&dword_21B526000, v103, OS_LOG_TYPE_DEFAULT, "(%{public}@) Pushing updated poster configurations for role %{public}@", buf, 0x16u);
      }

      [(PBFPosterExtensionDataStore *)selfCopy _stateLock_pushPosterConfigurationsToProactiveWithCompletion:0];
      [(PBFPosterExtensionDataStore *)selfCopy _notifyObserversDidUpdateConfigurations];
    }

    else
    {
      v127 = PBFLogDataStore(v102);
      if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v206 = v155;
        v207 = 2114;
        v208 = roleCopy;
        _os_log_impl(&dword_21B526000, v127, OS_LOG_TYPE_DEFAULT, "(%{public}@) DID NOT push updated poster configurations for role %{public}@", buf, 0x16u);
      }
    }
  }

  if (!(v149 & 1 | (([roleCopy isEqual:v151] & 1) == 0)) && (objc_msgSend(v138, "pbf_transitionFromIncomingFocusModeChange") & 1) == 0)
  {
    v104 = [roleCopy isEqual:v151];
    if (v104)
    {
      v105 = PBFLogDataStore(v104);
      if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v206 = v155;
        v207 = 2114;
        v208 = roleCopy;
        _os_log_impl(&dword_21B526000, v105, OS_LOG_TYPE_DEFAULT, "(%{public}@) will update focus mode for active poster change for role %{public}@", buf, 0x16u);
      }

      v106 = PBFLogDataStore([(PBFPosterExtensionDataStore *)selfCopy _stateLock_updateFocusModeForActivePosterChange]);
      if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v206 = v155;
        v207 = 2114;
        v208 = roleCopy;
        _os_log_impl(&dword_21B526000, v106, OS_LOG_TYPE_DEFAULT, "(%{public}@) did update focus mode for active poster change for role %{public}@", buf, 0x16u);
      }
    }
  }

  isInitialUpdate2 = [roleCopy isEqual:v151];
  if (!(options & 1 | ((isInitialUpdate2 & 1) == 0)))
  {
    isInitialUpdate2 = [diffCopy isEqual];
    if ((isInitialUpdate2 & 1) == 0)
    {
      isInitialUpdate2 = [roleCopy isEqual:v151];
      if (isInitialUpdate2)
      {
        isInitialUpdate2 = [v138 isInitialUpdate];
        if ((isInitialUpdate2 & 1) == 0)
        {
          v108 = PBFLogDataStore(isInitialUpdate2);
          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v206 = v155;
            v207 = 2114;
            v208 = roleCopy;
            _os_log_impl(&dword_21B526000, v108, OS_LOG_TYPE_DEFAULT, "(%{public}@) will prewarm snapshots for role %{public}@", buf, 0x16u);
          }

          v109 = objc_opt_new();
          addedPosters2 = [diffCopy addedPosters];
          [v109 unionSet:addedPosters2];

          addedAssocPosters = [diffCopy addedAssocPosters];
          [v109 unionSet:addedAssocPosters];

          updatedPosters2 = [diffCopy updatedPosters];
          [v109 unionSet:updatedPosters2];

          updatedAssocPosters = [diffCopy updatedAssocPosters];
          [v109 unionSet:updatedAssocPosters];

          v148 = +[PBFGenericDisplayContext mainScreenDisplayContextsForKnownOrientations];
          v114 = selfCopy->_snapshotManager;
          objc_initWeak(buf, selfCopy);
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __154__PBFPosterExtensionDataStore__stateLock_pushUpdateNotificationsForRole_diff_previouslyActiveConfiguration_newActiveConfiguration_options_reason_context___block_invoke;
          aBlock[3] = &unk_2782C63D8;
          objc_copyWeak(&v174, buf);
          v128 = v114;
          v173 = v128;
          v115 = _Block_copy(aBlock);
          v116 = dispatch_group_create();
          dispatch_group_enter(v116);
          v170 = 0u;
          v171 = 0u;
          v168 = 0u;
          v169 = 0u;
          obj = v109;
          v117 = [obj countByEnumeratingWithState:&v168 objects:v199 count:16];
          if (v117)
          {
            v146 = *v169;
            do
            {
              v118 = 0;
              v150 = v117;
              do
              {
                if (*v169 != v146)
                {
                  objc_enumerationMutation(obj);
                }

                v119 = *(*(&v168 + 1) + 8 * v118);
                v164 = 0u;
                v165 = 0u;
                v166 = 0u;
                v167 = 0u;
                v158 = v148;
                v120 = [v158 countByEnumeratingWithState:&v164 objects:v198 count:{16, v128}];
                v152 = v118;
                if (v120)
                {
                  v121 = *v165;
                  do
                  {
                    for (k = 0; k != v120; ++k)
                    {
                      if (*v165 != v121)
                      {
                        objc_enumerationMutation(v158);
                      }

                      v123 = *(*(&v164 + 1) + 8 * k);
                      dispatch_group_enter(v116);
                      v162[0] = MEMORY[0x277D85DD0];
                      v162[1] = 3221225472;
                      v162[2] = __154__PBFPosterExtensionDataStore__stateLock_pushUpdateNotificationsForRole_diff_previouslyActiveConfiguration_newActiveConfiguration_options_reason_context___block_invoke_2;
                      v162[3] = &unk_2782C6400;
                      objc_copyWeak(&v163, buf);
                      v162[4] = v119;
                      v115[2](v115, v119, v123, v162);
                      dispatch_group_leave(v116);
                      objc_destroyWeak(&v163);
                    }

                    v120 = [v158 countByEnumeratingWithState:&v164 objects:v198 count:16];
                  }

                  while (v120);
                }

                v118 = v152 + 1;
              }

              while (v152 + 1 != v150);
              v117 = [obj countByEnumeratingWithState:&v168 objects:v199 count:16];
            }

            while (v117);
          }

          dispatch_group_leave(v116);
          mEMORY[0x277D3EBA8] = [MEMORY[0x277D3EBA8] sharedWorkloop];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __154__PBFPosterExtensionDataStore__stateLock_pushUpdateNotificationsForRole_diff_previouslyActiveConfiguration_newActiveConfiguration_options_reason_context___block_invoke_3;
          block[3] = &unk_2782C6428;
          block[4] = selfCopy;
          v160 = v155;
          v161 = roleCopy;
          dispatch_group_notify(v116, mEMORY[0x277D3EBA8], block);

          objc_destroyWeak(&v174);
          objc_destroyWeak(buf);
        }
      }
    }
  }

  v125 = PBFLogDataStore(isInitialUpdate2);
  v126 = v125;
  if (spid - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v125))
  {
    *buf = 138544898;
    v206 = roleCopy;
    v207 = 2114;
    v208 = v138;
    v209 = 1024;
    *v210 = v133;
    *&v210[4] = 1024;
    *&v210[6] = v132;
    LOWORD(optionsCopy) = 1024;
    *(&optionsCopy + 2) = v130;
    HIWORD(optionsCopy) = 1024;
    *v212 = v131 != 0;
    *&v212[4] = 1024;
    *&v212[6] = v129 != 0;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v126, OS_SIGNPOST_INTERVAL_END, spid, "pushUpdateNotificationsForRole", "role: '%{public}@'; context:'%{public}@'; didUpdateSelectedConfiguration:'%{BOOL}u' didUpdateActiveConfiguration:'%{BOOL}u' configurationsWereUpdate:'%{BOOL}u' configurationsWereAdded:'%{BOOL}u' configurationsWereDeleted:'%{BOOL}u'", buf, 0x34u);
  }

  contextCopy = v138;
LABEL_171:
}

void __154__PBFPosterExtensionDataStore__stateLock_pushUpdateNotificationsForRole_diff_previouslyActiveConfiguration_newActiveConfiguration_options_reason_context___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = [PBFPosterSnapshotRequest alloc];
    v12 = +[PBFPosterSnapshotDefinition defaultConfigurationDefinitions];
    v13 = [(PBFPosterSnapshotRequest *)v11 initWithConfiguration:v7 definitions:v12 context:v8];

    v14 = [(PBFPosterSnapshotRequest *)v13 requestWithIntention:1];
    v15 = [v14 requestWithPowerLogReason:6];

    v16 = *(a1 + 32);
    v18[0] = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    [v16 prewarmSnapshotsForRequests:v17 completion:v9];
  }
}

void __154__PBFPosterExtensionDataStore__stateLock_pushUpdateNotificationsForRole_diff_previouslyActiveConfiguration_newActiveConfiguration_options_reason_context___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!a2 && WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained _notifyObserversDidUpdateSnapshotForConfiguration:*(a1 + 32)];
    WeakRetained = v5;
  }
}

void __154__PBFPosterExtensionDataStore__stateLock_pushUpdateNotificationsForRole_diff_previouslyActiveConfiguration_newActiveConfiguration_options_reason_context___block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = PBFLogDataStore([*(a1 + 32) _notifyObserversDidUpdateConfigurations]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&dword_21B526000, v2, OS_LOG_TYPE_DEFAULT, "(%{public}@) did finish prewarming snapshots for role %{public}@; did additional push for updated configurations (because we've always done this, but its probably not needed)", &v5, 0x16u);
  }
}

- (BOOL)_stateLock_processEvents:(id)events context:(id)context error:(id *)error
{
  contextCopy = context;
  eventsCopy = events;
  supportedRoles = [objc_opt_class() supportedRoles];
  LOBYTE(error) = [(PBFPosterExtensionDataStore *)self _stateLock_processEvents:eventsCopy roles:supportedRoles context:contextCopy error:error];

  return error;
}

- (BOOL)_stateLock_processEvents:(id)events roles:(id)roles context:(id)context error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  rolesCopy = roles;
  contextCopy = context;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    if (!contextCopy)
    {
      contextCopy = [(PBFPosterExtensionDataStore *)self _buildRoleCoordinatorTransitionContext];
    }

    v35 = eventsCopy;
    pbf_transitionContextIdentifier = [contextCopy pbf_transitionContextIdentifier];
    uUIDString = [pbf_transitionContextIdentifier UUIDString];
    v16 = [uUIDString substringToIndex:7];

    v17 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v34 = rolesCopy;
    v18 = rolesCopy;
    v19 = [v18 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v41;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v41 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKeyedSubscript:*(*(&v40 + 1) + 8 * i), v34];
          [v17 bs_safeAddObject:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v20);
    }

    v24 = [[PBFPosterRoleProcessor alloc] initWithDataStorage:self->_database roleCoordinators:v17];
    [(PBFPosterRoleProcessor *)v24 addObserver:self];
    runtimeAssertionProvider = self->_runtimeAssertionProvider;
    v26 = [@"processEvents-" stringByAppendingString:v16];
    currentProcess = [MEMORY[0x277D47008] currentProcess];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __76__PBFPosterExtensionDataStore__stateLock_processEvents_roles_context_error___block_invoke;
    v38[3] = &unk_2782C59F0;
    v39 = v16;
    v28 = v16;
    v29 = [(PBFRuntimeAssertionProviding *)runtimeAssertionProvider acquirePrewarmRuntimeAssertionForReason:v26 target:currentProcess invalidationHandler:v38];

    eventsCopy = v35;
    v30 = [(PBFPosterRoleProcessor *)v24 processEvents:v35 context:contextCopy reason:@"processEvents" userInfo:0 error:error];
    v13 = v30 != 0;
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PBFPosterExtensionDataStore _stateLock_processEvents:roles:context:error:]"];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __76__PBFPosterExtensionDataStore__stateLock_processEvents_roles_context_error___block_invoke_691;
    v36[3] = &unk_2782C5888;
    v37 = v29;
    v32 = v29;
    PBFDispatchAsyncWithString(v31, QOS_CLASS_DEFAULT, v36);

    rolesCopy = v34;
  }

  return v13;
}

void __76__PBFPosterExtensionDataStore__stateLock_processEvents_roles_context_error___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PBFLogDataStore(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "(%{public}@) PosterBoard runtime assertion invalidated: %{public}@", &v6, 0x16u);
  }
}

- (void)_stateLock_initialRoleCoordinatorSetup
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_stateLock_initialRoleCoordinatorSetupPerformed"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
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

void __69__PBFPosterExtensionDataStore__stateLock_initialRoleCoordinatorSetup__block_invoke_2(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = [v3 configurationStoreCoordinatorsWithError:0];
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v34 + 1) + 8 * i) posterUUID];
        if (([*(a1 + 32) containsObject:v10] & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v7);
  }

  v11 = [v4 count];
  if (v11)
  {
    v12 = PBFLogRoleCoordinator(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __69__PBFPosterExtensionDataStore__stateLock_initialRoleCoordinatorSetup__block_invoke_2_cold_1(v3, v4);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = v4;
    v14 = [v13 countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v14)
    {
      v16 = v14;
      v17 = *v31;
      *&v15 = 138543618;
      v28 = v15;
      do
      {
        v18 = 0;
        do
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v30 + 1) + 8 * v18);
          v29 = 0;
          v20 = [v3 teardownConfigurationStoreCoordinatorForPosterUUID:v19 error:{&v29, v28}];
          v21 = v29;
          v22 = PBFLogRoleCoordinator(v21);
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
          if (v20)
          {
            if (!v23)
            {
              goto LABEL_22;
            }

            *buf = 138543362;
            v39 = v19;
            v24 = v22;
            v25 = "Cleaned up orphaned poster SUCCEEDED  %{public}@";
            v26 = 12;
          }

          else
          {
            if (!v23)
            {
              goto LABEL_22;
            }

            *buf = v28;
            v39 = v19;
            v40 = 2114;
            v41 = v21;
            v24 = v22;
            v25 = "Cleaning up orphaned poster configuration %{public}@ failed: %{public}@";
            v26 = 22;
          }

          _os_log_error_impl(&dword_21B526000, v24, OS_LOG_TYPE_ERROR, v25, buf, v26);
LABEL_22:

          ++v18;
        }

        while (v16 != v18);
        v27 = [v13 countByEnumeratingWithState:&v30 objects:v42 count:16];
        v16 = v27;
      }

      while (v27);
    }
  }
}

- (id)_stateLock_switcherConfiguration
{
  getFlag = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if (getFlag)
  {
    v4 = PBFLogPosterContents(getFlag);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "(_stateLock_switcherConfiguration...) Can't get switcher configuration: DataStore is invalidated.", v10, 2u);
    }

    v5 = 0;
  }

  else
  {
    stateLock_switcherConfiguration = self->_stateLock_switcherConfiguration;
    if (!stateLock_switcherConfiguration)
    {
      v7 = [(PBFPosterExtensionDataStore *)self _stateLock_buildSwitcherConfigurationWithContext:0 outMutated:0];
      v8 = self->_stateLock_switcherConfiguration;
      self->_stateLock_switcherConfiguration = v7;

      stateLock_switcherConfiguration = self->_stateLock_switcherConfiguration;
    }

    v5 = stateLock_switcherConfiguration;
  }

  return v5;
}

- (id)_stateLock_buildSwitcherConfigurationWithContext:(id)context outMutated:(BOOL *)mutated
{
  v58 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  getFlag = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if (getFlag)
  {
    v8 = PBFLogPosterContents(getFlag);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B526000, v8, OS_LOG_TYPE_DEFAULT, "(_stateLock_buildSwitcherConfigurationWithContext...) Can't build switcher configuration: DataStore is invalidated.", buf, 2u);
    }

    v9 = 0;
  }

  else
  {
    v10 = *MEMORY[0x277D3EEF0];
    v11 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKeyedSubscript:*MEMORY[0x277D3EEF0]];
    v8 = v11;
    if (v11)
    {
      posterCollection = [v11 posterCollection];
      orderedPosters = [posterCollection orderedPosters];
      v14 = [orderedPosters bs_map:&__block_literal_global_701];
      array = [v14 array];

      v49 = array;
      v16 = [array bs_mapNoNulls:&__block_literal_global_703];
      _stateLock_lastUseDatesForPosterCollection = [(PBFPosterExtensionDataStore *)self _stateLock_lastUseDatesForPosterCollection];
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __91__PBFPosterExtensionDataStore__stateLock_buildSwitcherConfigurationWithContext_outMutated___block_invoke_3;
      v52[3] = &unk_2782C6498;
      v48 = _stateLock_lastUseDatesForPosterCollection;
      v53 = v48;
      v50 = v16;
      v18 = [v16 sortedArrayUsingComparator:v52];
      stateLock_switcherConfiguration = self->_stateLock_switcherConfiguration;
      if (stateLock_switcherConfiguration)
      {
        [(PRSwitcherConfiguration *)stateLock_switcherConfiguration selectedConfiguration];
      }

      else
      {
        [posterCollection selectedPoster];
      }
      v51 = ;
      v20 = self->_stateLock_switcherConfiguration;
      if (v20)
      {
        [(PRSwitcherConfiguration *)v20 activeConfiguration];
      }

      else
      {
        [(PBFPosterExtensionDataStore *)self activePosterConfigurationForRole:v10 assocPoster:0];
      }
      v21 = ;
      v22 = [(PBFPosterExtensionDataStore *)self activePosterConfigurationForRole:v10 assocPoster:0];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = v21;
      }

      v25 = v24;

      selectedPoster = [posterCollection selectedPoster];
      v27 = PBFLogPosterContents(selectedPoster);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v55 = v21;
        _os_log_impl(&dword_21B526000, v27, OS_LOG_TYPE_DEFAULT, "(_buildSwitcherConfiguration...) currentActiveConfiguration: %{public}@", buf, 0xCu);
      }

      v29 = PBFLogPosterContents(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v55 = v25;
        _os_log_impl(&dword_21B526000, v29, OS_LOG_TYPE_DEFAULT, "(_buildSwitcherConfiguration...) activeConfiguration: %{public}@", buf, 0xCu);
      }

      v31 = PBFLogPosterContents(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v55 = selectedPoster;
        _os_log_impl(&dword_21B526000, v31, OS_LOG_TYPE_DEFAULT, "(_buildSwitcherConfiguration...) selectedConfiguration: %{public}@", buf, 0xCu);
      }

      if (!selectedPoster)
      {
        v32 = [posterCollection fallbackSelectedForSortedConfigurations:v18 reverse:1];
        selectedPoster = v32;
        if (!v32)
        {
          v33 = PBFLogPosterContents(0);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21B526000, v33, OS_LOG_TYPE_DEFAULT, "(_buildSwitcherConfiguration...) No selected configuration, no configuration to fallback to. Get ready for a bumpy ride.", buf, 2u);
          }

          selectedPoster = 0;
        }
      }

      v47 = v21;
      if (contextCopy)
      {
        v34 = [v8 determineActivePosterConfigurationForContext:contextCopy, v21];

        v25 = v34;
      }

      v35 = v18;
      v36 = PBFLogPosterContents(v32);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v55 = v25;
        _os_log_impl(&dword_21B526000, v36, OS_LOG_TYPE_DEFAULT, "(_buildSwitcherConfiguration...) determined activeConfiguration: %{public}@", buf, 0xCu);
      }

      v9 = [objc_alloc(MEMORY[0x277D3ED10]) _initWithCollection:posterCollection activeConfiguration:v25];
      v37 = PBFLogPosterContents([v9 setActiveConfigurationDueToIncomingFocusModeChange:{objc_msgSend(contextCopy, "pbf_transitionFromIncomingFocusModeChange")}]);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        pbf_transitionFromIncomingFocusModeChange = [contextCopy pbf_transitionFromIncomingFocusModeChange];
        v39 = @"NO";
        if (pbf_transitionFromIncomingFocusModeChange)
        {
          v39 = @"YES";
        }

        *buf = 138543618;
        v55 = v9;
        v56 = 2112;
        v57 = v39;
        _os_log_impl(&dword_21B526000, v37, OS_LOG_TYPE_DEFAULT, "(_buildSwitcherConfiguration...) generated switcher configuration: %{public}@, transitionFromIncomingFocusModeChange: %@", buf, 0x16u);
      }

      v41 = PBFLogPosterContents(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v55 = v16;
        _os_log_impl(&dword_21B526000, v41, OS_LOG_TYPE_DEFAULT, "(_buildSwitcherConfiguration...) posterConfigurations: %{public}@", buf, 0xCu);
      }

      v43 = PBFLogPosterContents(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v55 = v25;
        _os_log_impl(&dword_21B526000, v43, OS_LOG_TYPE_DEFAULT, "(_buildSwitcherConfiguration...) activeConfiguration: %{public}@", buf, 0xCu);
      }

      if (mutated)
      {
        selectedConfiguration = [v9 selectedConfiguration];
        v45 = BSEqualObjects();

        if ((v45 & 1) == 0)
        {
          *mutated = 1;
        }
      }
    }

    else
    {
      posterCollection = PBFLogPosterContents(0);
      if (os_log_type_enabled(posterCollection, OS_LOG_TYPE_FAULT))
      {
        [PBFPosterExtensionDataStore _stateLock_buildSwitcherConfigurationWithContext:posterCollection outMutated:?];
      }

      v9 = 0;
    }
  }

  return v9;
}

id __91__PBFPosterExtensionDataStore__stateLock_buildSwitcherConfigurationWithContext_outMutated___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D3ED58];
  v3 = a2;
  v4 = [[v2 alloc] _initWithPath:v3];

  return v4;
}

uint64_t __91__PBFPosterExtensionDataStore__stateLock_buildSwitcherConfigurationWithContext_outMutated___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 _path];
  v8 = [v7 serverIdentity];
  v9 = [v8 posterUUID];
  v10 = [v5 objectForKey:v9];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v13 = v12;

  v14 = *(a1 + 32);
  v15 = [v6 _path];

  v16 = [v15 serverIdentity];
  v17 = [v16 posterUUID];
  v18 = [v14 objectForKey:v17];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v21 = v20;

  v22 = [v13 compare:v21];
  return v22;
}

- (void)enqueueGalleryConfigurationUpdateWithOptions:(unint64_t)options powerLogReason:(int64_t)reason completion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = PBFLogGallery(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446210;
    v11 = "[PBFPosterExtensionDataStore enqueueGalleryConfigurationUpdateWithOptions:powerLogReason:completion:]";
    _os_log_impl(&dword_21B526000, v9, OS_LOG_TYPE_DEFAULT, "(%{public}s) Queuing up a new gallery update...", &v10, 0xCu);
  }

  [(PBFGalleryController *)self->_galleryController enqueueGalleryConfigurationUpdateWithOptions:options powerLogReason:reason completion:completionCopy];
}

- (void)checkForGalleryUpdates
{
  v3 = +[PBFGenericDisplayContext mainScreen];
  v4 = PBFLogDataStore(v3);
  v5 = os_signpost_id_generate(v4);

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__PBFPosterExtensionDataStore_checkForGalleryUpdates__block_invoke;
  v7[3] = &unk_2782C56C0;
  v8 = v3;
  v9 = v5;
  v7[4] = self;
  v6 = v3;
  PBFDispatchAsyncWithString(@"checkForGalleryUpdates", QOS_CLASS_USER_INITIATED, v7);
}

void __53__PBFPosterExtensionDataStore_checkForGalleryUpdates__block_invoke(uint64_t a1)
{
  v1 = a1;
  v61[2] = *MEMORY[0x277D85DE8];
  v2 = PBFLogDataStore(a1);
  v3 = v2;
  v4 = *(v1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "checkForGalleryUpdates:", "", buf, 2u);
  }

  v5 = *(v1 + 32);
  v61[0] = @"PBFDataComponentGallery";
  v61[1] = @"PBFDataComponentStaticDescriptors";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
  v7 = [v5 dataFreshnessForComponents:v6];

  v8 = [v7 isFresh];
  if (v8)
  {
    v9 = PBFLogDataStore(v8);
    v10 = v9;
    v11 = *(v1 + 48);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
LABEL_44:
      _os_signpost_emit_with_name_impl(&dword_21B526000, v10, OS_SIGNPOST_INTERVAL_END, v11, "checkForGalleryUpdates:", "", buf, 2u);
      goto LABEL_45;
    }

    goto LABEL_45;
  }

  v12 = [*(*(v1 + 32) + 88) currentGalleryConfiguration];

  if (!v12)
  {
    v14 = PBFLogGallery(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v60 = "[PBFPosterExtensionDataStore checkForGalleryUpdates]_block_invoke";
      _os_log_impl(&dword_21B526000, v14, OS_LOG_TYPE_DEFAULT, "(%{public}s) No gallery found; queuing up a new gallery update...", buf, 0xCu);
    }

    [*(*(v1 + 32) + 88) enqueueGalleryConfigurationUpdateWithOptions:2 powerLogReason:0 completion:0];
  }

  os_unfair_lock_lock((*(v1 + 32) + 188));
  v15 = *(v1 + 32);
  v16 = *(v15 + 120);
  os_unfair_lock_unlock((v15 + 188));
  if (v16)
  {
    v50 = v7;
    v18 = [*(v1 + 32) currentGalleryConfiguration];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v19 = [v18 sectionIdentifiers];
    v20 = [v19 firstObject];
    v49 = v18;
    v21 = [v18 itemsForSectionWithIdentifier:v20];

    obj = v21;
    v22 = [v21 countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (!v22)
    {
      goto LABEL_40;
    }

    v23 = v22;
    v24 = *v55;
    v51 = *v55;
    v52 = v1;
    while (1)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v55 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = [*(*(&v54 + 1) + 8 * i) posterDescriptorLookupInfo];
        v27 = [v26 posterDescriptorPath];
        v28 = [v27 identity];
        v29 = [v28 type];

        if (v29 != 3)
        {
          v30 = [v26 posterDescriptorExtension];
          v31 = [v27 descriptorIdentifier];
          v32 = v31;
          if (v27)
          {
            v33 = v30 == 0;
          }

          else
          {
            v33 = 1;
          }

          if (!v33 && v31 != 0)
          {
            v35 = [MEMORY[0x277D755B8] pbf_galleryHeroSnapshotForExtension:v30 descriptorIdentifier:v31 displayContext:*(v1 + 40)];

            if (!v35)
            {
              v36 = [v27 identity];
              v37 = [v36 type];

              if (v37 == 2)
              {
                v38 = [v30 posterExtensionInfoPlist];
                v39 = [v38 pbf_posterBoardPosterDescriptorHeroGalleryOptionsForStaticDescriptorIdentifier:v32];
                goto LABEL_35;
              }

              v40 = [v27 identity];
              v41 = [v40 type];

              if (v41 == 1)
              {
                v38 = [MEMORY[0x277D3EDE0] modelObjectCacheForPath:v27];
                v42 = [v38 galleryOptions];
                v43 = v42;
                if (v42)
                {
                  v44 = v42;
                }

                else
                {
                  v44 = [MEMORY[0x277D3EDE8] loadPosterDescriptorGalleryOptionsForPath:v27 error:0];
                }

                v39 = v44;

LABEL_35:
              }

              else
              {
                v39 = 0;
              }

              v45 = [v39 galleryAssetLookupInfo];
              v46 = [v30 posterExtensionBundle];
              v1 = v52;
              v47 = [v45 pbf_imageFromBundle:v46 displayContext:*(v52 + 40) error:0];

              v24 = v51;
            }
          }
        }
      }

      v23 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
      if (!v23)
      {
LABEL_40:

        v7 = v50;
        break;
      }
    }
  }

  v48 = PBFLogDataStore(v17);
  v10 = v48;
  v11 = *(v1 + 48);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
  {
    *buf = 0;
    goto LABEL_44;
  }

LABEL_45:
}

- (void)pushToProactiveWithCompletion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock(&self->_stateLock);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__PBFPosterExtensionDataStore_pushToProactiveWithCompletion___block_invoke;
  v6[3] = &unk_2782C64C0;
  v7 = completionCopy;
  v5 = completionCopy;
  [(PBFPosterExtensionDataStore *)self _stateLock_pushPosterDescriptorsToProactiveForReason:@"DataStore XPC call" force:1 completion:v6];
  os_unfair_lock_unlock(&self->_stateLock);
}

uint64_t __61__PBFPosterExtensionDataStore_pushToProactiveWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)pushPosterDescriptorsToProactiveForReason:(id)reason completion:(id)completion
{
  completionCopy = completion;
  reasonCopy = reason;
  os_unfair_lock_lock(&self->_stateLock);
  if (reasonCopy)
  {
    v8 = reasonCopy;
  }

  else
  {
    v8 = @"(No reason given)";
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__PBFPosterExtensionDataStore_pushPosterDescriptorsToProactiveForReason_completion___block_invoke;
  v10[3] = &unk_2782C64C0;
  v11 = completionCopy;
  v9 = completionCopy;
  [(PBFPosterExtensionDataStore *)self _stateLock_pushPosterDescriptorsToProactiveForReason:v8 force:1 completion:v10];

  os_unfair_lock_unlock(&self->_stateLock);
}

uint64_t __84__PBFPosterExtensionDataStore_pushPosterDescriptorsToProactiveForReason_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)fetchPosterSuggestionsForFocusModeWithUUID:(id)d context:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v10 = MEMORY[0x277CEB538];
  dCopy = d;
  v12 = [v10 alloc];
  if ([dCopy length])
  {
    v13 = 0;
  }

  else
  {
    v13 = 6;
  }

  v14 = [v12 initWithType:v13 uuid:dCopy];

  currentGalleryConfiguration = [(PBFPosterExtensionDataStore *)self currentGalleryConfiguration];
  v16 = self->_snapshotManager;
  mEMORY[0x277CEB530] = [MEMORY[0x277CEB530] sharedInstance];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __93__PBFPosterExtensionDataStore_fetchPosterSuggestionsForFocusModeWithUUID_context_completion___block_invoke;
  v22[3] = &unk_2782C6538;
  selfCopy = self;
  v27 = completionCopy;
  v23 = currentGalleryConfiguration;
  v24 = contextCopy;
  v25 = v16;
  v18 = v16;
  v19 = contextCopy;
  v20 = currentGalleryConfiguration;
  v21 = completionCopy;
  [mEMORY[0x277CEB530] fetchFaceSuggestionsForFocusMode:v14 completion:v22];
}

void __93__PBFPosterExtensionDataStore_fetchPosterSuggestionsForFocusModeWithUUID_context_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v60 = *MEMORY[0x277D85DE8];
  if (!a2 || a3)
  {
    v31 = *(*(a1 + 64) + 16);

    v31();
  }

  else
  {
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __93__PBFPosterExtensionDataStore_fetchPosterSuggestionsForFocusModeWithUUID_context_completion___block_invoke_2;
    v55[3] = &unk_2782C64E8;
    v56 = *(a1 + 32);
    v5 = [a2 bs_mapNoNulls:v55];
    v6 = objc_opt_new();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v52;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v52 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [PBFPosterSnapshotRequest snapshotRequestForPreview:*(*(&v51 + 1) + 8 * i) context:*(a1 + 40)];
          v13 = [v12 requestWithPowerLogReason:0];

          [v6 addObject:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v51 objects:v59 count:16];
      }

      while (v9);
    }

    v32 = v6;

    v35 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    group = dispatch_group_create();
    dispatch_group_enter(group);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = v7;
    v37 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
    if (v37)
    {
      v34 = *v48;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v48 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v47 + 1) + 8 * j);
          dispatch_group_enter(group);
          v16 = [v15 posterDescriptorLookupInfo];
          v38 = [v16 posterDescriptorPath];

          v17 = [v15 posterDescriptorLookupInfo];
          v18 = [v17 posterDescriptorExtension];
          v19 = [v18 posterExtensionBundleIdentifier];

          v20 = [MEMORY[0x277D3ED60] pbf_configuredPropertiesForPreview:v15];
          v21 = +[PBFPosterSnapshotDefinition gallerySnapshotDefinition];
          v22 = [PBFPosterSnapshotRequest alloc];
          v57 = v21;
          v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
          v24 = [(PBFPosterSnapshotRequest *)v22 initWithPath:v38 provider:v19 configuredProperties:v20 definitions:v23 context:*(a1 + 40)];

          v25 = [(PBFPosterSnapshotRequest *)v24 requestWithLoadFromCacheIfAvailable:0];
          v26 = [v25 requestWithPowerLogReason:0];

          v27 = *(a1 + 48);
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __93__PBFPosterExtensionDataStore_fetchPosterSuggestionsForFocusModeWithUUID_context_completion___block_invoke_3;
          v43[3] = &unk_2782C6510;
          v44 = v35;
          v45 = v15;
          v46 = group;
          [v27 fetchPosterSnapshotForRequest:v26 definition:v21 completion:v43];
        }

        v37 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
      }

      while (v37);
    }

    dispatch_group_leave(group);
    v28 = *(*(a1 + 56) + 200);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __93__PBFPosterExtensionDataStore_fetchPosterSuggestionsForFocusModeWithUUID_context_completion___block_invoke_720;
    block[3] = &unk_2782C62E8;
    v40 = obj;
    v41 = v35;
    v42 = *(a1 + 64);
    v29 = v35;
    v30 = obj;
    dispatch_group_notify(group, v28, block);
  }
}

id __93__PBFPosterExtensionDataStore_fetchPosterSuggestionsForFocusModeWithUUID_context_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 posterBoardRepresentation];
  v4 = [v2 previewForItem:v3 section:0];

  return v4;
}

void __93__PBFPosterExtensionDataStore_fetchPosterSuggestionsForFocusModeWithUUID_context_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = PBFLogCommon(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __93__PBFPosterExtensionDataStore_fetchPosterSuggestionsForFocusModeWithUUID_context_completion___block_invoke_3_cold_1();
    }
  }

  if (v5)
  {
    v9 = *(a1 + 32);
    objc_sync_enter(v9);
    [*(a1 + 32) setObject:v5 forKey:*(a1 + 40)];
    objc_sync_exit(v9);
  }

  dispatch_group_leave(*(a1 + 48));
}

void __93__PBFPosterExtensionDataStore_fetchPosterSuggestionsForFocusModeWithUUID_context_completion___block_invoke_720(void *a1)
{
  v2 = [[PBFFocusPosterSuggestionData alloc] initWithPreviews:a1[4] previewsToSnapshotsMapTable:a1[5]];
  (*(a1[6] + 16))();
}

- (PBFGalleryConfiguration)currentGalleryConfiguration
{
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    _stateLock_currentGalleryConfiguration = 0;
  }

  else
  {
    os_unfair_lock_lock(&self->_stateLock);
    _stateLock_currentGalleryConfiguration = [(PBFPosterExtensionDataStore *)self _stateLock_currentGalleryConfiguration];
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return _stateLock_currentGalleryConfiguration;
}

- (id)_stateLock_currentGalleryConfiguration
{
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_stateLock_configuration;
    if (!v3)
    {
      if (!self->_stateLock_suggestedLayout)
      {
        currentGalleryConfiguration = [(PBFGalleryController *)self->_galleryController currentGalleryConfiguration];
        [(PBFPosterExtensionDataStore *)self _stateLock_updateGalleryWithSuggestedLayout:currentGalleryConfiguration descriptorsByExtensionBundleIdentifier:0 staticDescriptorsByExtensionBundleIdentifier:0];
      }

      v5 = self->_stateLock_configuration;
      v3 = v5;
      if (v5)
      {
        [(PBFGalleryConfiguration *)v5 trimComplicationsCache];
      }
    }
  }

  return v3;
}

- (void)fetchCurrentGalleryConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (configurationCopy)
  {
    v6 = NSStringFromSelector(a2);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__PBFPosterExtensionDataStore_fetchCurrentGalleryConfiguration___block_invoke;
    v7[3] = &unk_2782C6310;
    v7[4] = self;
    v8 = configurationCopy;
    PBFDispatchAsyncWithString(v6, QOS_CLASS_USER_INITIATED, v7);
  }
}

void __64__PBFPosterExtensionDataStore_fetchCurrentGalleryConfiguration___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) currentGalleryConfiguration];
  (*(v1 + 16))(v1, v2);
}

- (void)galleryController:(id)controller didUpdateCurrentGalleryConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = configurationCopy;
  if (configurationCopy)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __86__PBFPosterExtensionDataStore_galleryController_didUpdateCurrentGalleryConfiguration___block_invoke;
    v7[3] = &unk_2782C58B0;
    v7[4] = self;
    v8 = configurationCopy;
    PBFDispatchAsyncWithString(@"galleryController:didUpdateCurrentGalleryConfiguration:", QOS_CLASS_DEFAULT, v7);
  }
}

void __86__PBFPosterExtensionDataStore_galleryController_didUpdateCurrentGalleryConfiguration___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 188));
  [*(a1 + 32) _stateLock_updateGalleryWithSuggestedLayout:*(a1 + 40) descriptorsByExtensionBundleIdentifier:0 staticDescriptorsByExtensionBundleIdentifier:0];
  v2 = (*(a1 + 32) + 188);

  os_unfair_lock_unlock(v2);
}

- (void)snapshotManager:(id)manager didUpdateSnapshotForPath:(id)path forDefinition:(id)definition
{
  pathCopy = path;
  definitionCopy = definition;
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__PBFPosterExtensionDataStore_snapshotManager_didUpdateSnapshotForPath_forDefinition___block_invoke;
  block[3] = &unk_2782C6428;
  block[4] = self;
  v13 = pathCopy;
  v14 = definitionCopy;
  v10 = definitionCopy;
  v11 = pathCopy;
  dispatch_async(notificationQueue, block);
}

void __86__PBFPosterExtensionDataStore_snapshotManager_didUpdateSnapshotForPath_forDefinition___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(a1[4] + 216) getFlag] & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = *(a1[4] + 96);
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 posterExtensionDataStore:a1[4] didUpdateSnapshotForPath:a1[5] forDefinition:{a1[6], v8}];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__PBFPosterExtensionDataStore_addObserver___block_invoke;
  v7[3] = &unk_2782C58B0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(notificationQueue, v7);
}

void *__43__PBFPosterExtensionDataStore_addObserver___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 216) getFlag];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 96);
    if (!v3)
    {
      v4 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v5 = *(a1 + 32);
      v6 = *(v5 + 96);
      *(v5 + 96) = v4;

      v3 = *(*(a1 + 32) + 96);
    }

    v7 = *(a1 + 40);

    return [v3 addObject:v7];
  }

  return result;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__PBFPosterExtensionDataStore_removeObserver___block_invoke;
  v7[3] = &unk_2782C58B0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(notificationQueue, v7);
}

void *__46__PBFPosterExtensionDataStore_removeObserver___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 216) getFlag];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 96);

    return [v4 removeObject:v3];
  }

  return result;
}

- (void)_notifyObserversDidUpdateExtensions
{
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__PBFPosterExtensionDataStore__notifyObserversDidUpdateExtensions__block_invoke;
  block[3] = &unk_2782C5888;
  block[4] = self;
  dispatch_async(notificationQueue, block);
}

void __66__PBFPosterExtensionDataStore__notifyObserversDidUpdateExtensions__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(*(a1 + 32) + 216) getFlag] & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(*(a1 + 32) + 96) copy];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 posterExtensionDataStoreDidUpdateExtensions:*(a1 + 32)];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (void)_notifyObserversDidInitializeWithSwitcherConfiguration:(id)configuration withChanges:(BOOL)changes
{
  configurationCopy = configuration;
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__PBFPosterExtensionDataStore__notifyObserversDidInitializeWithSwitcherConfiguration_withChanges___block_invoke;
  block[3] = &unk_2782C6560;
  block[4] = self;
  v10 = configurationCopy;
  changesCopy = changes;
  v8 = configurationCopy;
  dispatch_async(notificationQueue, block);
}

void __98__PBFPosterExtensionDataStore__notifyObserversDidInitializeWithSwitcherConfiguration_withChanges___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(*(a1 + 32) + 216) getFlag] & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(*(a1 + 32) + 96) copy];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 posterExtensionDataStore:*(a1 + 32) didInitializeWithSwitcherConfiguration:*(a1 + 40) withChanges:*(a1 + 48)];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (void)_notifyObserversDidInitializeRoles:(id)roles suggestionDescriptors:(id)descriptors roleToPosterCollection:(id)collection
{
  rolesCopy = roles;
  descriptorsCopy = descriptors;
  collectionCopy = collection;
  notificationQueue = self->_notificationQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __111__PBFPosterExtensionDataStore__notifyObserversDidInitializeRoles_suggestionDescriptors_roleToPosterCollection___block_invoke;
  v15[3] = &unk_2782C6588;
  v15[4] = self;
  v16 = rolesCopy;
  v17 = descriptorsCopy;
  v18 = collectionCopy;
  v12 = collectionCopy;
  v13 = descriptorsCopy;
  v14 = rolesCopy;
  dispatch_async(notificationQueue, v15);
}

void __111__PBFPosterExtensionDataStore__notifyObserversDidInitializeRoles_suggestionDescriptors_roleToPosterCollection___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(a1[4] + 216) getFlag] & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(a1[4] + 96) copy];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 posterExtensionDataStore:a1[4] didInitializeActivePosters:a1[5] suggestionDescriptors:a1[6] posterCollections:a1[7]];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (void)_notifyObserversDidUpdateActivePosterForRoles:(id)roles suggestionDescriptors:(id)descriptors
{
  rolesCopy = roles;
  descriptorsCopy = descriptors;
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__PBFPosterExtensionDataStore__notifyObserversDidUpdateActivePosterForRoles_suggestionDescriptors___block_invoke;
  block[3] = &unk_2782C6428;
  block[4] = self;
  v12 = rolesCopy;
  v13 = descriptorsCopy;
  v9 = descriptorsCopy;
  v10 = rolesCopy;
  dispatch_async(notificationQueue, block);
}

void __99__PBFPosterExtensionDataStore__notifyObserversDidUpdateActivePosterForRoles_suggestionDescriptors___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(a1[4] + 216) getFlag] & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(a1[4] + 96) copy];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 posterExtensionDataStore:a1[4] activePostersWereUpdatedForRoles:a1[5] suggestionDescriptors:a1[6]];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (void)_notifyObserversDidUpdatePosterCollectionsForRoles:(id)roles
{
  rolesCopy = roles;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__PBFPosterExtensionDataStore__notifyObserversDidUpdatePosterCollectionsForRoles___block_invoke;
  v7[3] = &unk_2782C58B0;
  v7[4] = self;
  v8 = rolesCopy;
  v6 = rolesCopy;
  dispatch_async(notificationQueue, v7);
}

void __82__PBFPosterExtensionDataStore__notifyObserversDidUpdatePosterCollectionsForRoles___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(*(a1 + 32) + 216) getFlag] & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(*(a1 + 32) + 96) copy];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 posterExtensionDataStore:*(a1 + 32) posterCollectionsWereUpdatedForRoles:*(a1 + 40)];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (void)_notifyObserversDidUpdateSwitcherConfiguration:(id)configuration
{
  configurationCopy = configuration;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__PBFPosterExtensionDataStore__notifyObserversDidUpdateSwitcherConfiguration___block_invoke;
  v7[3] = &unk_2782C58B0;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(notificationQueue, v7);
}

void __78__PBFPosterExtensionDataStore__notifyObserversDidUpdateSwitcherConfiguration___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(*(a1 + 32) + 216) getFlag] & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(*(a1 + 32) + 96) copy];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 posterExtensionDataStore:*(a1 + 32) didUpdateSwitcherConfiguration:*(a1 + 40)];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (void)_notifyObserversDidUpdateGalleryConfiguration:(id)configuration
{
  configurationCopy = configuration;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__PBFPosterExtensionDataStore__notifyObserversDidUpdateGalleryConfiguration___block_invoke;
  v7[3] = &unk_2782C58B0;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(notificationQueue, v7);
}

void __77__PBFPosterExtensionDataStore__notifyObserversDidUpdateGalleryConfiguration___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(*(a1 + 32) + 216) getFlag] & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(*(a1 + 32) + 96) copy];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 posterExtensionDataStore:*(a1 + 32) didUpdateGalleryConfiguration:*(a1 + 40)];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (void)_notifyObserversDidUpdatePosterDescriptorsForExtensionBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __102__PBFPosterExtensionDataStore__notifyObserversDidUpdatePosterDescriptorsForExtensionBundleIdentifier___block_invoke;
  v7[3] = &unk_2782C58B0;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(notificationQueue, v7);
}

void __102__PBFPosterExtensionDataStore__notifyObserversDidUpdatePosterDescriptorsForExtensionBundleIdentifier___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(*(a1 + 32) + 216) getFlag] & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(*(a1 + 32) + 96) copy];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 posterExtensionDataStore:*(a1 + 32) didUpdatePosterDescriptorsForExtensionBundleIdentifier:*(a1 + 40)];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (void)_notifyObserversDidUpdateConfigurations
{
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__PBFPosterExtensionDataStore__notifyObserversDidUpdateConfigurations__block_invoke;
  block[3] = &unk_2782C5888;
  block[4] = self;
  dispatch_async(notificationQueue, block);
}

void __70__PBFPosterExtensionDataStore__notifyObserversDidUpdateConfigurations__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(*(a1 + 32) + 216) getFlag] & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(*(a1 + 32) + 96) copy];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 posterExtensionDataStoreDidUpdateConfigurations:*(a1 + 32)];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (void)_notifyObserversDidUpdateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__PBFPosterExtensionDataStore__notifyObserversDidUpdateConfiguration___block_invoke;
  v7[3] = &unk_2782C58B0;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(notificationQueue, v7);
}

void __70__PBFPosterExtensionDataStore__notifyObserversDidUpdateConfiguration___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(*(a1 + 32) + 216) getFlag] & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(*(a1 + 32) + 96) copy];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 posterExtensionDataStore:*(a1 + 32) didUpdateConfiguration:*(a1 + 40)];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (void)_notifyObserversDidAddConfiguration:(id)configuration
{
  configurationCopy = configuration;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__PBFPosterExtensionDataStore__notifyObserversDidAddConfiguration___block_invoke;
  v7[3] = &unk_2782C58B0;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(notificationQueue, v7);
}

void __67__PBFPosterExtensionDataStore__notifyObserversDidAddConfiguration___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(*(a1 + 32) + 216) getFlag] & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(*(a1 + 32) + 96) copy];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 posterExtensionDataStore:*(a1 + 32) didAddConfiguration:*(a1 + 40)];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (void)_notifyObserversDidDeleteConfiguration:(id)configuration
{
  configurationCopy = configuration;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__PBFPosterExtensionDataStore__notifyObserversDidDeleteConfiguration___block_invoke;
  v7[3] = &unk_2782C58B0;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(notificationQueue, v7);
}

void __70__PBFPosterExtensionDataStore__notifyObserversDidDeleteConfiguration___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(*(a1 + 32) + 216) getFlag] & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(*(a1 + 32) + 96) copy];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 posterExtensionDataStore:*(a1 + 32) didDeleteConfiguration:*(a1 + 40)];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (void)_notifyObserversDidUpdateSelectedConfiguration:(id)configuration associatedConfiguration:(id)associatedConfiguration reason:(id)reason
{
  configurationCopy = configuration;
  associatedConfigurationCopy = associatedConfiguration;
  reasonCopy = reason;
  notificationQueue = self->_notificationQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __109__PBFPosterExtensionDataStore__notifyObserversDidUpdateSelectedConfiguration_associatedConfiguration_reason___block_invoke;
  v15[3] = &unk_2782C6588;
  v15[4] = self;
  v16 = configurationCopy;
  v17 = associatedConfigurationCopy;
  v18 = reasonCopy;
  v12 = reasonCopy;
  v13 = associatedConfigurationCopy;
  v14 = configurationCopy;
  dispatch_async(notificationQueue, v15);
}

void __109__PBFPosterExtensionDataStore__notifyObserversDidUpdateSelectedConfiguration_associatedConfiguration_reason___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(a1[4] + 216) getFlag] & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(a1[4] + 96) copy];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 posterExtensionDataStore:a1[4] didUpdateSelectedConfiguration:a1[5] associatedConfiguration:a1[6] reason:a1[7]];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (void)_notifyObserversDidUpdateActiveConfiguration:(id)configuration associatedConfiguration:(id)associatedConfiguration reason:(id)reason
{
  configurationCopy = configuration;
  associatedConfigurationCopy = associatedConfiguration;
  reasonCopy = reason;
  notificationQueue = self->_notificationQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __107__PBFPosterExtensionDataStore__notifyObserversDidUpdateActiveConfiguration_associatedConfiguration_reason___block_invoke;
  v15[3] = &unk_2782C6588;
  v15[4] = self;
  v16 = configurationCopy;
  v17 = associatedConfigurationCopy;
  v18 = reasonCopy;
  v12 = reasonCopy;
  v13 = associatedConfigurationCopy;
  v14 = configurationCopy;
  dispatch_async(notificationQueue, v15);
}

void __107__PBFPosterExtensionDataStore__notifyObserversDidUpdateActiveConfiguration_associatedConfiguration_reason___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(a1[4] + 216) getFlag] & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(a1[4] + 96) copy];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 posterExtensionDataStore:a1[4] didUpdateActiveConfiguration:a1[5] associatedConfiguration:a1[6] reason:a1[7]];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (void)_notifyObserversDidUpdateConfiguration:(id)configuration homeScreenAssociatedConfiguration:(id)associatedConfiguration
{
  configurationCopy = configuration;
  associatedConfigurationCopy = associatedConfiguration;
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__PBFPosterExtensionDataStore__notifyObserversDidUpdateConfiguration_homeScreenAssociatedConfiguration___block_invoke;
  block[3] = &unk_2782C6428;
  block[4] = self;
  v12 = configurationCopy;
  v13 = associatedConfigurationCopy;
  v9 = associatedConfigurationCopy;
  v10 = configurationCopy;
  dispatch_async(notificationQueue, block);
}

void __104__PBFPosterExtensionDataStore__notifyObserversDidUpdateConfiguration_homeScreenAssociatedConfiguration___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(a1[4] + 216) getFlag] & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(a1[4] + 96) copy];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 posterExtensionDataStore:a1[4] posterConfiguration:a1[5] didUpdateAssociatedHomeScreenPosterConfigurationTo:a1[6]];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (void)_notifyObserversDidUpdateSnapshotForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__PBFPosterExtensionDataStore__notifyObserversDidUpdateSnapshotForConfiguration___block_invoke;
  v7[3] = &unk_2782C58B0;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(notificationQueue, v7);
}

void __81__PBFPosterExtensionDataStore__notifyObserversDidUpdateSnapshotForConfiguration___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(*(a1 + 32) + 216) getFlag] & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(*(a1 + 32) + 96) copy];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 posterExtensionDataStore:*(a1 + 32) didUpdateSnapshotForConfiguration:*(a1 + 40)];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (void)_notifyObserversDidUpdateSuggestionDescriptors:(id)descriptors forConfiguration:(id)configuration
{
  descriptorsCopy = descriptors;
  configurationCopy = configuration;
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__PBFPosterExtensionDataStore__notifyObserversDidUpdateSuggestionDescriptors_forConfiguration___block_invoke;
  block[3] = &unk_2782C6428;
  block[4] = self;
  v12 = descriptorsCopy;
  v13 = configurationCopy;
  v9 = configurationCopy;
  v10 = descriptorsCopy;
  dispatch_async(notificationQueue, block);
}

void __95__PBFPosterExtensionDataStore__notifyObserversDidUpdateSuggestionDescriptors_forConfiguration___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(a1[4] + 216) getFlag] & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(a1[4] + 96) copy];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 posterExtensionDataStore:a1[4] didUpdateSuggestions:a1[5] forConfiguration:a1[6]];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (void)_notifyObserversDidUpdateSuggestionDescriptorsForPosterUUID:(id)d
{
  dCopy = d;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __91__PBFPosterExtensionDataStore__notifyObserversDidUpdateSuggestionDescriptorsForPosterUUID___block_invoke;
  v7[3] = &unk_2782C58B0;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(notificationQueue, v7);
}

void __91__PBFPosterExtensionDataStore__notifyObserversDidUpdateSuggestionDescriptorsForPosterUUID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(*(a1 + 32) + 216) getFlag] & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(*(a1 + 32) + 96) copy];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 posterExtensionDataStore:*(a1 + 32) suggestionsForPosterUUIDUpdated:*(a1 + 40)];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (void)_notifyObserversDidUpdateSuggestionDescriptors
{
  _updatedSuggestionDescriptorsForPosterUUID = [(PBFPosterExtensionDataStore *)self _updatedSuggestionDescriptorsForPosterUUID];
  [(PBFPosterExtensionDataStore *)self _notifyObserversDidUpdateSuggestionDescriptorsForPosterUUID:_updatedSuggestionDescriptorsForPosterUUID];
}

- (id)posterWithUUID:(id)d error:(id *)error
{
  dCopy = d;
  os_unfair_lock_lock(&self->_stateLock);
  v7 = [(PBFPosterExtensionDataStore *)self _stateLock_posterWithUUID:dCopy error:error];

  os_unfair_lock_unlock(&self->_stateLock);

  return v7;
}

- (id)_stateLock_posterWithUUID:(id)d error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    objectEnumerator = [(NSDictionary *)self->_roleToRoleCoordinator objectEnumerator];
    v8 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
LABEL_5:
      v11 = 0;
      while (1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        posterCollection = [*(*(&v14 + 1) + 8 * v11) posterCollection];
        v6 = [posterCollection posterWithUUID:dCopy];

        if (v6)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v9)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v6 = 0;
    }
  }

  return v6;
}

- (void)updateSnapshotsForGallery:(id)gallery intention:(unint64_t)intention powerLogReason:(int64_t)reason completion:(id)completion
{
  selfCopy = self;
  v34 = *MEMORY[0x277D85DE8];
  galleryCopy = gallery;
  completionCopy = completion;
  v9 = objc_opt_new();
  +[PBFGenericDisplayContext mainScreenDisplayContextsForKnownOrientations];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v23)
  {
    v21 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [galleryCopy posterSnapshotRequestsForContext:{*(*(&v28 + 1) + 8 * v10), selfCopy}];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v25;
          do
          {
            v15 = 0;
            do
            {
              if (*v25 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [*(*(&v24 + 1) + 8 * v15) requestWithIntention:intention];
              v17 = [v16 requestWithPowerLogReason:reason];
              [v9 addObject:v17];

              ++v15;
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v13);
        }

        ++v10;
      }

      while (v10 != v23);
      v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v23);
  }

  [(PBFPosterSnapshotManager *)selfCopy->_snapshotManager prewarmSnapshotsForRequests:v9 completion:completionCopy, selfCopy];
}

- (void)_stateLock_updateExtensions:(id)extensions refreshDescriptors:(int64_t)descriptors powerLogReason:(int64_t)reason galleryUpdateOptions:(unint64_t)options queuedUpOperations:(id *)operations
{
  v334 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  getFlag = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if ((getFlag & 1) == 0)
  {
    optionsCopy = options;
    v229 = extensionsCopy;
    stateLock_initialRoleCoordinatorSetupPerformed = self->_stateLock_initialRoleCoordinatorSetupPerformed;
    v13 = PBFLogPosterContents(getFlag);
    v14 = os_signpost_id_generate(v13);

    v16 = PBFLogPosterContents(v15);
    v17 = v16;
    spid = v14;
    v226 = v14 - 1;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v14, "updateExtensions", "", buf, 2u);
    }

    uUID = [MEMORY[0x277CCAD78] UUID];
    v19 = MEMORY[0x277CCACA8];
    v227 = uUID;
    uUIDString = [uUID UUIDString];
    v21 = [uUIDString substringToIndex:7];
    v261 = [v19 stringWithFormat:@"updateExtensions/%@", v21];

    -[BSAtomicFlag setFlag:](self->_extensionsInputIsValidAtomicFlag, "setFlag:", [v229 count] != 0);
    v22 = [v229 count];
    v23 = PBFLogPosterContents(v22);
    v24 = v23;
    if (v22)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v317 = v261;
        v318 = 2112;
        *v319 = v229;
        _os_log_impl(&dword_21B526000, v24, OS_LOG_TYPE_DEFAULT, "(%{public}@) PosterBoard extensions updated %@", buf, 0x16u);
      }

      runtimeAssertionProvider = self->_runtimeAssertionProvider;
      currentProcess = [MEMORY[0x277D47008] currentProcess];
      v228 = [(PBFRuntimeAssertionProviding *)runtimeAssertionProvider acquirePosterUpdateRuntimeAssertionForReason:@"updateExtensions" target:currentProcess];

      v27 = v229;
      stateLock_fromExtensions = self->_stateLock_fromExtensions;
      if (stateLock_fromExtensions)
      {
        v29 = stateLock_fromExtensions;
      }

      else
      {
        v29 = [MEMORY[0x277CBEB98] set];
      }

      v30 = [v27 copy];
      v31 = self->_stateLock_fromExtensions;
      self->_stateLock_fromExtensions = v30;

      val = self;
      operationsCopy = operations;
      v244 = a2;
      if ((PBFCurrentDeviceClassSupported(v32) & 1) == 0)
      {
        v33 = [(NSSet *)v29 bs_filter:&__block_literal_global_771];

        v34 = [v27 bs_filter:&__block_literal_global_776];

        v29 = v33;
        v27 = v34;
      }

      v258 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v27, "count")}];
      v311 = 0u;
      v312 = 0u;
      v313 = 0u;
      v314 = 0u;
      v35 = v27;
      v36 = [v35 countByEnumeratingWithState:&v311 objects:v333 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v312;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v312 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v311 + 1) + 8 * i);
            posterExtensionBundleIdentifier = [v40 posterExtensionBundleIdentifier];
            [v258 setObject:v40 forKey:posterExtensionBundleIdentifier];

            v43 = PBFLogPosterContents(v42);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v317 = v261;
              v318 = 2114;
              *v319 = v40;
              _os_log_impl(&dword_21B526000, v43, OS_LOG_TYPE_DEFAULT, "(%{public}@) Extension: %{public}@", buf, 0x16u);
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v311 objects:v333 count:16];
        }

        while (v37);
      }

      v45 = PBFLogDataStore(v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v317 = v261;
        _os_log_impl(&dword_21B526000, v45, OS_LOG_TYPE_DEFAULT, "(%{public}@) Starting _updateExtensions", buf, 0xCu);
      }

      v46 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"posterExtensionBundleIdentifier" ascending:1];
      v332 = v46;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v332 count:1];

      allObjects = [v35 allObjects];
      v49 = [allObjects sortedArrayUsingDescriptors:v47];

      allObjects2 = [(NSSet *)v29 allObjects];
      v220 = v47;
      v51 = [allObjects2 sortedArrayUsingDescriptors:v47];

      v236 = objc_opt_new();
      v235 = objc_opt_new();
      v248 = objc_opt_new();
      v252 = v49;
      v222 = v51;
      v52 = [v49 differenceFromArray:v51 withOptions:0 usingEquivalenceTest:&__block_literal_global_787];
      v246 = v35;
      v224 = v52;
      if ([v52 hasChanges])
      {
        v253 = v29;
        v309 = 0u;
        v310 = 0u;
        v307 = 0u;
        v308 = 0u;
        removals = [v52 removals];
        v54 = [removals countByEnumeratingWithState:&v307 objects:v331 count:16];
        v237 = v54 != 0;
        if (v54)
        {
          v55 = v54;
          v56 = *v308;
          do
          {
            for (j = 0; j != v55; ++j)
            {
              if (*v308 != v56)
              {
                objc_enumerationMutation(removals);
              }

              v58 = *(*(&v307 + 1) + 8 * j);
              object = [v58 object];
              posterExtensionBundleIdentifier2 = [object posterExtensionBundleIdentifier];

              object2 = [v58 object];
              v306 = 0;
              v62 = [(PBFPosterExtensionDataStore *)val _stateLock_cleanupAfterDeletedExtension:object2 error:&v306];
              v63 = v306;

              v65 = PBFLogDataStore(v64);
              v66 = v65;
              if (v62)
              {
                if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v317 = v261;
                  v318 = 2114;
                  *v319 = posterExtensionBundleIdentifier2;
                  _os_log_impl(&dword_21B526000, v66, OS_LOG_TYPE_DEFAULT, "(%{public}@) Successfully cleaned up environment for extension '%{public}@'", buf, 0x16u);
                }
              }

              else if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543874;
                v317 = v261;
                v318 = 2114;
                *v319 = posterExtensionBundleIdentifier2;
                *&v319[8] = 2114;
                v320 = v63;
                _os_log_error_impl(&dword_21B526000, v66, OS_LOG_TYPE_ERROR, "(%{public}@) Error cleanup up environment for extension '%{public}@': %{public}@", buf, 0x20u);
              }

              [v258 removeObjectForKey:posterExtensionBundleIdentifier2];
              object3 = [v58 object];
              [v248 addObject:object3];

              v69 = PBFLogDataStore(v68);
              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
              {
                object4 = [v58 object];
                *buf = 138543618;
                v317 = v261;
                v318 = 2114;
                *v319 = object4;
                _os_log_impl(&dword_21B526000, v69, OS_LOG_TYPE_DEFAULT, "(%{public}@) _updateExtensions is removing: %{public}@", buf, 0x16u);
              }
            }

            v55 = [removals countByEnumeratingWithState:&v307 objects:v331 count:16];
          }

          while (v55);
        }

        v304 = 0u;
        v305 = 0u;
        v302 = 0u;
        v303 = 0u;
        insertions = [v224 insertions];
        v72 = [insertions countByEnumeratingWithState:&v302 objects:v330 count:16];
        if (v72)
        {
          v73 = v72;
          v74 = *v303;
          do
          {
            for (k = 0; k != v73; ++k)
            {
              if (*v303 != v74)
              {
                objc_enumerationMutation(insertions);
              }

              object5 = [*(*(&v302 + 1) + 8 * k) object];
              v301 = 0;
              v77 = [(PBFPosterExtensionDataStore *)val _stateLock_setupEnvironmentForExtension:object5 wasUpdated:0 error:&v301];
              v78 = v301;
              v79 = v78;
              if (v77)
              {
                v80 = PBFLogPosterContents(v78);
                if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v317 = v261;
                  v318 = 2112;
                  *v319 = object5;
                  _os_log_impl(&dword_21B526000, v80, OS_LOG_TYPE_DEFAULT, "(%{public}@) _updateExtensions is adding: %@", buf, 0x16u);
                }

                [v236 addObject:object5];
              }

              else
              {
                v81 = PBFLogDataStore(v78);
                if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v317 = v261;
                  v318 = 2114;
                  *v319 = v79;
                  _os_log_error_impl(&dword_21B526000, v81, OS_LOG_TYPE_ERROR, "(%{public}@) Error setting up environment for extension: %{public}@", buf, 0x16u);
                }
              }
            }

            v73 = [insertions countByEnumeratingWithState:&v302 objects:v330 count:16];
          }

          while (v73);
          v237 = 1;
        }

        v83 = PBFLogDataStore(v82);
        selfCopy = val;
        v29 = v253;
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v317 = v261;
          _os_log_impl(&dword_21B526000, v83, OS_LOG_TYPE_DEFAULT, "(%{public}@) _updateExtensions had insertions/deletions!", buf, 0xCu);
        }
      }

      else
      {
        v237 = 0;
        selfCopy = self;
      }

      v299 = 0u;
      v300 = 0u;
      v297 = 0u;
      v298 = 0u;
      obj = v29;
      v256 = [(NSSet *)obj countByEnumeratingWithState:&v297 objects:v329 count:16];
      if (v256)
      {
        v254 = *v298;
        do
        {
          for (m = 0; m != v256; ++m)
          {
            if (*v298 != v254)
            {
              objc_enumerationMutation(obj);
            }

            v86 = *(*(&v297 + 1) + 8 * m);
            posterExtensionBundleIdentifier3 = [(__CFString *)v86 posterExtensionBundleIdentifier];
            v295[0] = MEMORY[0x277D85DD0];
            v295[1] = 3221225472;
            v295[2] = __133__PBFPosterExtensionDataStore__stateLock_updateExtensions_refreshDescriptors_powerLogReason_galleryUpdateOptions_queuedUpOperations___block_invoke_788;
            v295[3] = &unk_2782C5EC0;
            v88 = posterExtensionBundleIdentifier3;
            v296 = v88;
            v89 = [v252 bs_firstObjectPassingTest:v295];
            v90 = [(PBFPosterExtensionDataStore *)selfCopy _stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier:v88];
            v91 = [v90 providerInfoObjectForKey:@"StaticPersistentIdentifier"];
            v259 = [v90 providerInfoObjectForKey:@"PersistentIdentifier"];
            persistentIdentifier = [v89 persistentIdentifier];
            posterExtensionInfoPlist = [v89 posterExtensionInfoPlist];
            pbf_staticDescriptorIdentifiers = [posterExtensionInfoPlist pbf_staticDescriptorIdentifiers];
            if ([pbf_staticDescriptorIdentifiers count])
            {
              v95 = _LSPersistentIdentifierCompare() == 0;
            }

            else
            {
              v95 = 0;
            }

            posterExtensionInfoPlist2 = [v89 posterExtensionInfoPlist];
            v97 = [posterExtensionInfoPlist2 pbf_supportsDynamicDescriptors] && objc_msgSend(v89, "pbf_supportsGalleryOrUserDefaultsHasItOverriddenToSupportGallery:", 0) && _LSPersistentIdentifierCompare() == 0;

            v98 = [v89 isEqual:v86];
            if (v95 || v97 || !v98)
            {
              v294 = 0;
              v99 = [(PBFPosterExtensionDataStore *)val _stateLock_updateEnvironmentForExtension:v89 fromExtension:v86 error:&v294];
              v100 = v294;
              v101 = v100;
              if (v99)
              {
                v102 = PBFLogDataStore([v235 addObject:v89]);
                if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  v317 = v261;
                  v318 = 2114;
                  *v319 = v88;
                  *&v319[8] = 2114;
                  v320 = v101;
                  _os_log_impl(&dword_21B526000, v102, OS_LOG_TYPE_DEFAULT, "(%@) Successfuly updated extension %{public}@:\t%{public}@ ", buf, 0x20u);
                }

                v237 = 1;
              }

              else
              {
                v103 = PBFLogDataStore(v100);
                v102 = v103;
                if (v101)
                {
                  if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412802;
                    v317 = v261;
                    v318 = 2114;
                    *v319 = v88;
                    *&v319[8] = 2114;
                    v320 = v101;
                    _os_log_error_impl(&dword_21B526000, v102, OS_LOG_TYPE_ERROR, "(%@) Error updating extension %{public}@:\t%{public}@ ", buf, 0x20u);
                  }
                }

                else if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138413058;
                  v317 = v261;
                  v318 = 2114;
                  *v319 = v88;
                  *&v319[8] = 2114;
                  v320 = v86;
                  *v321 = 2114;
                  *&v321[2] = v89;
                  _os_log_impl(&dword_21B526000, v102, OS_LOG_TYPE_DEFAULT, "(%@) Extension %{public}@ is the same  (%{public}@ vs %{public}@).  So that's nice.", buf, 0x2Au);
                }
              }
            }

            selfCopy = val;
          }

          v256 = [(NSSet *)obj countByEnumeratingWithState:&v297 objects:v329 count:16];
        }

        while (v256);
      }

      if ([(BSAtomicFlag *)selfCopy->_extensionsCurrentlyUpdatingFlag getFlag])
      {
        [PBFPosterExtensionDataStore _stateLock_updateExtensions:v244 refreshDescriptors:? powerLogReason:? galleryUpdateOptions:? queuedUpOperations:?];
      }

      [(BSAtomicFlag *)selfCopy->_extensionsCurrentlyUpdatingFlag setFlag:1];
      _stateLock_hasBeenUnlockedSinceBoot = [(PBFPosterExtensionDataStore *)selfCopy _stateLock_hasBeenUnlockedSinceBoot];
      v104 = [(NSMutableDictionary *)selfCopy->_stateLock_staticDescriptorsForExtensionBundleIdentifier mutableCopy];
      v105 = v104;
      if (v104)
      {
        v247 = v104;
      }

      else
      {
        v247 = objc_opt_new();
      }

      v106 = [(NSMutableDictionary *)selfCopy->_stateLock_descriptorsForExtensionBundleIdentifier mutableCopy];
      v107 = v106;
      if (v106)
      {
        v108 = v106;
      }

      else
      {
        v108 = objc_opt_new();
      }

      date = [MEMORY[0x277CBEAA8] date];
      v234 = objc_opt_new();
      v290 = 0u;
      v291 = 0u;
      v292 = 0u;
      v293 = 0u;
      v250 = v246;
      v245 = date;
      v255 = [v250 countByEnumeratingWithState:&v290 objects:v328 count:16];
      if (!v255)
      {
        v230 = 0;
        v241 = 0;
        v233 = 0;
        goto LABEL_165;
      }

      v230 = 0;
      v241 = 0;
      v233 = 0;
      v251 = *v291;
      v243 = v108;
      while (1)
      {
        for (n = 0; n != v255; ++n)
        {
          if (*v291 != v251)
          {
            objc_enumerationMutation(v250);
          }

          v111 = *(*(&v290 + 1) + 8 * n);
          posterExtensionBundleIdentifier4 = [v111 posterExtensionBundleIdentifier];
          v113 = [(PBFPosterExtensionDataStore *)selfCopy _stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier:posterExtensionBundleIdentifier4];
          if (v113)
          {
            v257 = [PBFDataRefreshContext staticDescriptorsRefreshContextForNow:date extension:v111];
            v114 = [[PBFDataComponentObjectEntity alloc] initWithComponent:@"PBFDataComponentStaticDescriptors" object:v113 context:v257];
            determineRefreshState = [(PBFDataComponentObjectEntity *)v114 determineRefreshState];

            needsRefresh = [(__CFString *)determineRefreshState needsRefresh];
            v260 = determineRefreshState;
            refreshReason = [(__CFString *)determineRefreshState refreshReason];
            v118 = refreshReason;
            v119 = @"NULL REFRESH REASON";
            if (refreshReason)
            {
              v119 = refreshReason;
            }

            v120 = v119;

            v122 = PBFLogDataStore(v121);
            if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              v317 = v261;
              v318 = 2114;
              *v319 = posterExtensionBundleIdentifier4;
              *&v319[8] = 2114;
              v320 = v260;
              _os_log_impl(&dword_21B526000, v122, OS_LOG_TYPE_DEFAULT, "(%{public}@) refresh state for %{public}@ static descriptors: %{public}@", buf, 0x20u);
            }

            v124 = PBFLogDataStore(v123);
            v125 = os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT);
            if (needsRefresh)
            {
              if (v125)
              {
                *buf = 138543874;
                v317 = v261;
                v318 = 2114;
                *v319 = posterExtensionBundleIdentifier4;
                *&v319[8] = 2114;
                v320 = v120;
                _os_log_impl(&dword_21B526000, v124, OS_LOG_TYPE_DEFAULT, "(%{public}@) Static descriptors for %{public}@ are not up to date; proceeding with update for reason %{public}@", buf, 0x20u);
              }

              v126 = [v247 objectForKeyedSubscript:posterExtensionBundleIdentifier4];
              v127 = v126;
              v128 = MEMORY[0x277CBEBF8];
              if (!v126)
              {
                v126 = MEMORY[0x277CBEBF8];
              }

              v129 = [v126 bs_mapNoNulls:&__block_literal_global_797];
              v130 = v129;
              if (v129)
              {
                v131 = v129;
              }

              else
              {
                v131 = v128;
              }

              v132 = v131;

              v289 = 0;
              v133 = [(PBFPosterExtensionDataStore *)selfCopy _stateLock_updateDescriptorsFromStaticDescriptorsForExtensionBundleIdentifier:posterExtensionBundleIdentifier4 reason:reason error:&v289];
              v124 = v289;
              v134 = PBFLogDataStore(v124);
              v135 = v134;
              if (v133)
              {
                v238 = v132;
                if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v317 = v261;
                  v318 = 2114;
                  *v319 = posterExtensionBundleIdentifier4;
                  _os_log_impl(&dword_21B526000, v135, OS_LOG_TYPE_DEFAULT, "(%{public}@) Updated static descriptors for %{public}@", buf, 0x16u);
                }

                posterStaticDescriptorLatestVersionPaths = [v113 posterStaticDescriptorLatestVersionPaths];
                allObjects3 = [posterStaticDescriptorLatestVersionPaths allObjects];
                v138 = [allObjects3 sortedArrayUsingSelector:sel_compareDescriptorIdentifiers_];
                v139 = v138;
                v140 = MEMORY[0x277CBEBF8];
                if (v138)
                {
                  v141 = v138;
                }

                else
                {
                  v141 = MEMORY[0x277CBEBF8];
                }

                [v247 setObject:v141 forKeyedSubscript:posterExtensionBundleIdentifier4];

                v142 = [v247 objectForKeyedSubscript:posterExtensionBundleIdentifier4];
                v143 = [v142 bs_mapNoNulls:&__block_literal_global_802];
                v144 = v143;
                if (v143)
                {
                  v145 = v143;
                }

                else
                {
                  v145 = v140;
                }

                v146 = v145;

                v281 = MEMORY[0x277D85DD0];
                v282 = 3221225472;
                v283 = __133__PBFPosterExtensionDataStore__stateLock_updateExtensions_refreshDescriptors_powerLogReason_galleryUpdateOptions_queuedUpOperations___block_invoke_2_803;
                v284 = &unk_2782C6618;
                v132 = v238;
                v285 = v238;
                v135 = v146;
                v286 = v135;
                v287 = v234;
                v288 = posterExtensionBundleIdentifier4;
                PFPosterRoleEnumerateValidRolesForCurrentDeviceClass();

                v233 = 1;
                selfCopy = val;
                v108 = v243;
              }

              else
              {
                if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543874;
                  v317 = v261;
                  v318 = 2114;
                  *v319 = posterExtensionBundleIdentifier4;
                  *&v319[8] = 2114;
                  v320 = v124;
                  _os_log_error_impl(&dword_21B526000, v135, OS_LOG_TYPE_ERROR, "(%{public}@) Failed to update static descriptors for %{public}@; error: %{public}@", buf, 0x20u);
                }

                v108 = v243;
              }

              date = v245;
            }

            else if (v125)
            {
              *buf = 138543618;
              v317 = v261;
              v318 = 2114;
              *v319 = posterExtensionBundleIdentifier4;
              _os_log_impl(&dword_21B526000, v124, OS_LOG_TYPE_DEFAULT, "(%{public}@) Static descriptors do not need updating for %{public}@; bailing", buf, 0x16u);
            }

            posterExtensionInfoPlist3 = [v111 posterExtensionInfoPlist];
            if ([posterExtensionInfoPlist3 pbf_supportsDynamicDescriptors])
            {
              v148 = [v111 pbf_supportsGalleryOrUserDefaultsHasItOverriddenToSupportGallery:0];

              if (v148)
              {
                lastRefreshDescriptorDate = [v113 lastRefreshDescriptorDate];
                lastRefreshDescriptorReason = [v113 lastRefreshDescriptorReason];
                v151 = lastRefreshDescriptorReason;
                v152 = @"Never been refreshed";
                if (lastRefreshDescriptorReason)
                {
                  v152 = lastRefreshDescriptorReason;
                }

                v240 = v152;

                v239 = lastRefreshDescriptorDate;
                v153 = [date timeIntervalSinceDate:lastRefreshDescriptorDate];
                v155 = v154;
                if (_stateLock_hasBeenUnlockedSinceBoot)
                {
                  lastRefreshDescriptorDate2 = [v113 lastRefreshDescriptorDate];
                  v157 = [PBFDataRefreshContext dynamicDescriptorsRefreshContextForNow:date extension:v111 lastRefreshDate:lastRefreshDescriptorDate2 refreshStrategy:descriptors];

                  v158 = [[PBFDataComponentObjectEntity alloc] initWithComponent:@"PBFDataComponentDynamicDescriptors" object:v113 context:v157];
                  determineRefreshState2 = [(PBFDataComponentObjectEntity *)v158 determineRefreshState];

                  v161 = PBFLogDataStore(v160);
                  if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543874;
                    v317 = v261;
                    v318 = 2114;
                    *v319 = posterExtensionBundleIdentifier4;
                    *&v319[8] = 2114;
                    v320 = determineRefreshState2;
                    _os_log_impl(&dword_21B526000, v161, OS_LOG_TYPE_DEFAULT, "(%{public}@) refresh state for %{public}@ dynamic descriptors: %{public}@", buf, 0x20u);
                  }

                  needsRefresh2 = [(__CFString *)determineRefreshState2 needsRefresh];
                  refreshReason2 = [(__CFString *)determineRefreshState2 refreshReason];
                  v164 = refreshReason2;
                  v165 = @"NULL REFRESH REASON";
                  if (refreshReason2)
                  {
                    v165 = refreshReason2;
                  }

                  v166 = v165;

                  if (needsRefresh2)
                  {
                    selfCopy = val;
                    v167 = [(PBFPosterExtensionDataStore *)val _stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier:posterExtensionBundleIdentifier4 reason:v166 powerLogReason:reason postEnqueueGalleryUpdateOptions:4 sessionInfo:0 completion:0];
                    v168 = v230;
                    if (!v230)
                    {
                      v168 = objc_opt_new();
                    }

                    v230 = v168;
                    [v168 bs_safeAddObject:v167];
                  }

                  else
                  {
                    posterExtensionInfoPlist4 = [v111 posterExtensionInfoPlist];
                    pbf_refreshDescriptorsFrequency = [posterExtensionInfoPlist4 pbf_refreshDescriptorsFrequency];

                    v167 = PBFLogDataStore(v177);
                    if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
                    {
                      v178 = RefreshDescriptorsFrequencyToDebugString(pbf_refreshDescriptorsFrequency);
                      *buf = 138544898;
                      v317 = v261;
                      v318 = 2112;
                      *v319 = posterExtensionBundleIdentifier4;
                      *&v319[8] = 2112;
                      v320 = v166;
                      *v321 = 2048;
                      *&v321[2] = v155;
                      v322 = 2114;
                      v323 = v240;
                      v324 = 2048;
                      descriptorsCopy = descriptors;
                      v326 = 2114;
                      v327 = v178;
                      _os_log_impl(&dword_21B526000, v167, OS_LOG_TYPE_DEFAULT, "(%{public}@) Avoiding update for %@; reason for no update: %@ (last updated %f ago / reason '%{public}@'); refreshDescriptorsStategy: %ld; extension refresh frequency: %{public}@", buf, 0x48u);
                    }

                    selfCopy = val;
                  }

                  v108 = v243;
                  date = v245;
LABEL_154:
                  v174 = v240;
                }

                else
                {
                  v157 = PBFLogDataStore(v153);
                  if (!os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_154;
                  }

                  *buf = 138544130;
                  v317 = v261;
                  v318 = 2114;
                  *v319 = posterExtensionBundleIdentifier4;
                  *&v319[8] = 2048;
                  v320 = v155;
                  *v321 = 2114;
                  v174 = v240;
                  *&v321[2] = v240;
                  _os_log_impl(&dword_21B526000, v157, OS_LOG_TYPE_DEFAULT, "(%{public}@) Avoiding dynamic poster descriptors update for %{public}@; keybag is locked. (%f ago/ reason: '%{public}@')", buf, 0x2Au);
                }

                v179 = [v108 objectForKeyedSubscript:posterExtensionBundleIdentifier4];

                if (!v179)
                {
                  dynamicPosterDescriptorLatestVersionPaths = [v113 dynamicPosterDescriptorLatestVersionPaths];
                  if ([dynamicPosterDescriptorLatestVersionPaths count])
                  {
                    allObjects4 = [dynamicPosterDescriptorLatestVersionPaths allObjects];
                    v182 = [allObjects4 sortedArrayUsingSelector:sel_compareDescriptorIdentifiers_];
                    [v108 setObject:v182 forKeyedSubscript:posterExtensionBundleIdentifier4];

                    selfCopy = val;
                    v241 = 1;
                  }
                }

LABEL_160:
                goto LABEL_161;
              }
            }

            else
            {
            }

            v169 = [v108 objectForKey:posterExtensionBundleIdentifier4];
            v170 = [v169 count];

            v172 = PBFLogDataStore(v171);
            v173 = os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT);
            if (v170)
            {
              if (v173)
              {
                *buf = 138543618;
                v317 = v261;
                v318 = 2114;
                *v319 = posterExtensionBundleIdentifier4;
                _os_log_impl(&dword_21B526000, v172, OS_LOG_TYPE_DEFAULT, "(%{public}@) Dynamic descriptors disabled for %{public}@; terminating them.", buf, 0x16u);
              }

              [v113 teardownAllDynamicDescriptors];
              [v108 removeObjectForKey:posterExtensionBundleIdentifier4];
              v241 = 1;
            }

            else
            {
              if (v173)
              {
                *buf = 138543618;
                v317 = v261;
                v318 = 2114;
                *v319 = posterExtensionBundleIdentifier4;
                _os_log_impl(&dword_21B526000, v172, OS_LOG_TYPE_DEFAULT, "(%{public}@) Dynamic descriptors disabled for %{public}@; no descriptors present, moving on.", buf, 0x16u);
              }
            }

            goto LABEL_160;
          }

LABEL_161:
        }

        v255 = [v250 countByEnumeratingWithState:&v290 objects:v328 count:16];
        if (!v255)
        {
LABEL_165:

          v183 = v233;
          v184 = v241;
          if ((((v237 | v233) & 1) != 0 || (v241 & 1) != 0 || !stateLock_initialRoleCoordinatorSetupPerformed) && (([(PBFGalleryController *)selfCopy->_galleryController currentGalleryConfiguration], v185 = objc_claimAutoreleasedReturnValue(), (v241 & 1) == 0) ? (v186 = 0) : (v186 = v108), (v233 & 1) == 0 ? (v187 = 0) : (v187 = v247), [(PBFPosterExtensionDataStore *)selfCopy _stateLock_updateGalleryWithSuggestedLayout:v185 descriptorsByExtensionBundleIdentifier:v186 staticDescriptorsByExtensionBundleIdentifier:v187], v185, !stateLock_initialRoleCoordinatorSetupPerformed))
          {
            [(PBFPosterExtensionDataStore *)selfCopy _stateLock_initialRoleCoordinatorSetup];
            selfCopy->_stateLock_initialRoleCoordinatorSetupPerformed = 1;
            v24 = v228;
            if (v233)
            {
              [(PBFPosterExtensionDataStore *)selfCopy _stateLock_pushPosterDescriptorsToProactiveForReason:@"Extensions were updated (static/initialRoleCoordinatorSetup)" force:1 completion:0];
            }

            [(BSAtomicFlag *)selfCopy->_extensionsCurrentlyUpdatingFlag setFlag:0];
          }

          else
          {
            [(BSAtomicFlag *)selfCopy->_extensionsCurrentlyUpdatingFlag setFlag:0];
            v24 = v228;
            if (v237)
            {
              supportedRoles = [objc_opt_class() supportedRoles];
              v189 = [MEMORY[0x277CBEB98] setWithArray:v222];
              v279[0] = MEMORY[0x277D85DD0];
              v279[1] = 3221225472;
              v279[2] = __133__PBFPosterExtensionDataStore__stateLock_updateExtensions_refreshDescriptors_powerLogReason_galleryUpdateOptions_queuedUpOperations___block_invoke_812;
              v279[3] = &unk_2782C5EC0;
              v190 = supportedRoles;
              v280 = v190;
              v191 = [v189 bs_filter:v279];

              v192 = [MEMORY[0x277CBEB98] setWithArray:v252];
              v277[0] = MEMORY[0x277D85DD0];
              v277[1] = 3221225472;
              v277[2] = __133__PBFPosterExtensionDataStore__stateLock_updateExtensions_refreshDescriptors_powerLogReason_galleryUpdateOptions_queuedUpOperations___block_invoke_2_813;
              v277[3] = &unk_2782C5EC0;
              v193 = v190;
              v278 = v193;
              v194 = [v192 bs_filter:v277];

              if (([v191 isEqual:v194] & 1) == 0)
              {
                v195 = [PBFPosterDataStoreEventBuilder extensionsUpdatedFrom:v191 to:v194 supportedRoles:v193];
                v276 = 0;
                v196 = [v195 buildWithError:&v276];
                v197 = v276;

                v199 = PBFLogDataStore(v198);
                v200 = v199;
                if (v197)
                {
                  if (os_log_type_enabled(v199, OS_LOG_TYPE_ERROR))
                  {
                    [PBFPosterExtensionDataStore _stateLock_updateExtensions:refreshDescriptors:powerLogReason:galleryUpdateOptions:queuedUpOperations:];
                  }
                }

                else
                {
                  if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543618;
                    v317 = v261;
                    v318 = 2114;
                    *v319 = v196;
                    _os_log_impl(&dword_21B526000, v200, OS_LOG_TYPE_DEFAULT, "(%{public}@) successfully built data store event for updated extensions: %{public}@", buf, 0x16u);
                  }

                  [v234 bs_safeAddObject:v196];
                }

                selfCopy = val;
              }

              v24 = v228;
              v184 = v241;
              v183 = v233;
            }
          }

          if ([v234 count])
          {
            v201 = [v234 copy];
            v275 = 0;
            v202 = [(PBFPosterExtensionDataStore *)selfCopy _stateLock_processEvents:v201 context:0 error:&v275];
            v203 = v275;

            v205 = PBFLogDataStore(v204);
            v206 = v205;
            if (v202)
            {
              if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v317 = v261;
                _os_log_impl(&dword_21B526000, v206, OS_LOG_TYPE_DEFAULT, "(%{public}@) successfully issued data store events for updated extensions", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(v205, OS_LOG_TYPE_ERROR))
            {
              [PBFPosterExtensionDataStore _stateLock_updateExtensions:refreshDescriptors:powerLogReason:galleryUpdateOptions:queuedUpOperations:];
            }

            v24 = v228;
          }

          v207 = PBFLogDataStore([(PBFPosterExtensionDataStore *)selfCopy _notifyObserversDidUpdateExtensions]);
          if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
          {
            v208 = [v230 count];
            *buf = 138413314;
            v317 = v261;
            v318 = 1024;
            *v319 = v184;
            v24 = v228;
            *&v319[4] = 1024;
            *&v319[6] = v183 & 1;
            LOWORD(v320) = 1024;
            *(&v320 + 2) = v237;
            HIWORD(v320) = 2048;
            *v321 = v208;
            _os_log_impl(&dword_21B526000, v207, OS_LOG_TYPE_DEFAULT, "(%@) Finished updating extensions; dynamic updated? %{BOOL}u -- static updated? %{BOOL}u -- extensions updated? %{BOOL}u -- queued up dynamic descriptors updates: %lu", buf, 0x28u);
          }

          if ([v230 count])
          {
            if (operationsCopy)
            {
              *operationsCopy = [v230 copy];
            }

            v209 = dispatch_group_create();
            v271 = 0u;
            v272 = 0u;
            v273 = 0u;
            v274 = 0u;
            v210 = v230;
            v211 = [v210 countByEnumeratingWithState:&v271 objects:v315 count:16];
            if (v211)
            {
              v212 = v211;
              v213 = *v272;
              do
              {
                for (ii = 0; ii != v212; ++ii)
                {
                  if (*v272 != v213)
                  {
                    objc_enumerationMutation(v210);
                  }

                  v215 = *(*(&v271 + 1) + 8 * ii);
                  dispatch_group_enter(v209);
                  v269[0] = MEMORY[0x277D85DD0];
                  v269[1] = 3221225472;
                  v269[2] = __133__PBFPosterExtensionDataStore__stateLock_updateExtensions_refreshDescriptors_powerLogReason_galleryUpdateOptions_queuedUpOperations___block_invoke_814;
                  v269[3] = &unk_2782C6640;
                  v270 = v209;
                  [v215 addCompletionObserver:v269];
                }

                v212 = [v210 countByEnumeratingWithState:&v271 objects:v315 count:16];
              }

              while (v212);
            }

            objc_initWeak(buf, val);
            v216 = dispatch_get_global_queue(21, 0);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __133__PBFPosterExtensionDataStore__stateLock_updateExtensions_refreshDescriptors_powerLogReason_galleryUpdateOptions_queuedUpOperations___block_invoke_2_816;
            block[3] = &unk_2782C6690;
            objc_copyWeak(v268, buf);
            v268[1] = optionsCopy;
            v267 = v227;
            dispatch_group_notify(v209, v216, block);

            objc_destroyWeak(v268);
            objc_destroyWeak(buf);

            v24 = v228;
            date = v245;
          }

          else if (([(BSAtomicFlag *)selfCopy->_isPrewarmingFlag getFlag]& 1) == 0)
          {
            v263[0] = MEMORY[0x277D85DD0];
            v263[1] = 3221225472;
            v263[2] = __133__PBFPosterExtensionDataStore__stateLock_updateExtensions_refreshDescriptors_powerLogReason_galleryUpdateOptions_queuedUpOperations___block_invoke_4_824;
            v263[3] = &unk_2782C6668;
            v263[4] = selfCopy;
            v265 = optionsCopy;
            v264 = v227;
            [(PBFPosterExtensionDataStore *)selfCopy _stateLock_pushPosterDescriptorsToProactiveForReason:@"Extensions were updated - no updates" force:0 completion:v263];
          }

          v217 = PBFLogPosterContents([v24 invalidate]);
          v218 = v217;
          if (v226 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v217))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_21B526000, v218, OS_SIGNPOST_INTERVAL_END, spid, "updateExtensions", "", buf, 2u);
          }

          goto LABEL_215;
        }
      }
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [PBFPosterExtensionDataStore _stateLock_updateExtensions:refreshDescriptors:powerLogReason:galleryUpdateOptions:queuedUpOperations:];
    }

LABEL_215:
    extensionsCopy = v229;
  }
}

uint64_t __133__PBFPosterExtensionDataStore__stateLock_updateExtensions_refreshDescriptors_powerLogReason_galleryUpdateOptions_queuedUpOperations___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 posterExtensionBundleIdentifier];
  v3 = [&unk_282D0A240 containsObject:v2];

  return v3;
}

uint64_t __133__PBFPosterExtensionDataStore__stateLock_updateExtensions_refreshDescriptors_powerLogReason_galleryUpdateOptions_queuedUpOperations___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 posterExtensionBundleIdentifier];
  v3 = [&unk_282D0A258 containsObject:v2];

  return v3;
}

uint64_t __133__PBFPosterExtensionDataStore__stateLock_updateExtensions_refreshDescriptors_powerLogReason_galleryUpdateOptions_queuedUpOperations___block_invoke_784(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 posterExtensionBundleIdentifier];
  v6 = [v4 posterExtensionBundleIdentifier];

  v7 = [v5 isEqualToString:v6];
  return v7;
}

uint64_t __133__PBFPosterExtensionDataStore__stateLock_updateExtensions_refreshDescriptors_powerLogReason_galleryUpdateOptions_queuedUpOperations___block_invoke_788(uint64_t a1, void *a2)
{
  v3 = [a2 posterExtensionBundleIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

id __133__PBFPosterExtensionDataStore__stateLock_updateExtensions_refreshDescriptors_powerLogReason_galleryUpdateOptions_queuedUpOperations___block_invoke_795(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D3ED80];
  v3 = a2;
  v4 = [[v2 alloc] _initWithPath:v3];

  return v4;
}

id __133__PBFPosterExtensionDataStore__stateLock_updateExtensions_refreshDescriptors_powerLogReason_galleryUpdateOptions_queuedUpOperations___block_invoke_800(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D3ED80];
  v3 = a2;
  v4 = [[v2 alloc] _initWithPath:v3];

  return v4;
}

void __133__PBFPosterExtensionDataStore__stateLock_updateExtensions_refreshDescriptors_powerLogReason_galleryUpdateOptions_queuedUpOperations___block_invoke_2_803(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __133__PBFPosterExtensionDataStore__stateLock_updateExtensions_refreshDescriptors_powerLogReason_galleryUpdateOptions_queuedUpOperations___block_invoke_3;
  v18[3] = &unk_2782C65F0;
  v5 = v3;
  v19 = v5;
  v6 = [v4 bs_filter:v18];
  v7 = a1[5];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __133__PBFPosterExtensionDataStore__stateLock_updateExtensions_refreshDescriptors_powerLogReason_galleryUpdateOptions_queuedUpOperations___block_invoke_4;
  v16 = &unk_2782C65F0;
  v8 = v5;
  v17 = v8;
  v9 = [v7 bs_filter:&v13];
  if ([v9 count] || objc_msgSend(v6, "count"))
  {
    v10 = a1[6];
    v11 = [PBFPosterDataStoreEventBuilder staticDescriptorsUpdatedForProvider:a1[7] role:v8 from:v6 to:v9];
    v12 = [v11 buildWithError:0];
    [v10 bs_safeAddObject:v12];
  }
}

uint64_t __133__PBFPosterExtensionDataStore__stateLock_updateExtensions_refreshDescriptors_powerLogReason_galleryUpdateOptions_queuedUpOperations___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 role];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __133__PBFPosterExtensionDataStore__stateLock_updateExtensions_refreshDescriptors_powerLogReason_galleryUpdateOptions_queuedUpOperations___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 role];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __133__PBFPosterExtensionDataStore__stateLock_updateExtensions_refreshDescriptors_powerLogReason_galleryUpdateOptions_queuedUpOperations___block_invoke_812(uint64_t a1, void *a2)
{
  v3 = [a2 supportedRoles];
  v4 = [v3 intersectsSet:*(a1 + 32)];

  return v4;
}

uint64_t __133__PBFPosterExtensionDataStore__stateLock_updateExtensions_refreshDescriptors_powerLogReason_galleryUpdateOptions_queuedUpOperations___block_invoke_2_813(uint64_t a1, void *a2)
{
  v3 = [a2 supportedRoles];
  v4 = [v3 intersectsSet:*(a1 + 32)];

  return v4;
}

void __133__PBFPosterExtensionDataStore__stateLock_updateExtensions_refreshDescriptors_powerLogReason_galleryUpdateOptions_queuedUpOperations___block_invoke_2_816(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 47);
    if (([*&v3[56]._os_unfair_lock_opaque getFlag] & 1) == 0)
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __133__PBFPosterExtensionDataStore__stateLock_updateExtensions_refreshDescriptors_powerLogReason_galleryUpdateOptions_queuedUpOperations___block_invoke_3_820;
      v5[3] = &unk_2782C6668;
      v4 = *(a1 + 48);
      v5[4] = v3;
      v7 = v4;
      v6 = *(a1 + 32);
      [(os_unfair_lock_s *)v3 _stateLock_pushPosterDescriptorsToProactiveForReason:@"Extensions were updated - updated reload descriptors" force:0 completion:v5];
    }

    os_unfair_lock_unlock(v3 + 47);
  }
}

- (void)_finishUpdateExtensionUpdateWithOptions:(unint64_t)options updateExtensionSession:(id)session pushToProactiveError:(id)error didUpdateProactiveDescriptors:(BOOL)descriptors
{
  v21 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v11 = MEMORY[0x277CCACA8];
  uUIDString = [session UUIDString];
  v13 = [uUIDString substringToIndex:7];
  v14 = [v11 stringWithFormat:@"finishUpdateExtension/%@", v13];

  if (errorCopy)
  {
    v16 = PBFLogDataStore(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PBFPosterExtensionDataStore _finishUpdateExtensionUpdateWithOptions:updateExtensionSession:pushToProactiveError:didUpdateProactiveDescriptors:];
    }
  }

  else if (descriptors)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __145__PBFPosterExtensionDataStore__finishUpdateExtensionUpdateWithOptions_updateExtensionSession_pushToProactiveError_didUpdateProactiveDescriptors___block_invoke;
    v17[3] = &unk_2782C66B8;
    v18 = v14;
    [(PBFPosterExtensionDataStore *)self enqueueGalleryConfigurationUpdateWithOptions:options powerLogReason:4 completion:v17];
    v16 = v18;
  }

  else
  {
    v16 = PBFLogDataStore(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v14;
      _os_log_impl(&dword_21B526000, v16, OS_LOG_TYPE_DEFAULT, "(%@)Finished dynamic descriptors update; push was identical to previous pushes, bailing.", buf, 0xCu);
    }
  }
}

void __145__PBFPosterExtensionDataStore__finishUpdateExtensionUpdateWithOptions_updateExtensionSession_pushToProactiveError_didUpdateProactiveDescriptors___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = PBFLogDataStore(v7);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __145__PBFPosterExtensionDataStore__finishUpdateExtensionUpdateWithOptions_updateExtensionSession_pushToProactiveError_didUpdateProactiveDescriptors___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = 138412546;
    v12 = v10;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&dword_21B526000, v9, OS_LOG_TYPE_DEFAULT, "(%@)Finished dynamic descriptors update; did update? %{BOOL}u", &v11, 0x12u);
  }
}

- (BOOL)_stateLock_updateDescriptorsFromStaticDescriptorsForExtensionBundleIdentifier:(id)identifier reason:(int64_t)reason error:(id *)error
{
  v150[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  getFlag = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if (!getFlag)
  {
    v11 = PBFLogPosterContents(getFlag);
    v12 = os_signpost_id_generate(v11);

    v14 = PBFLogPosterContents(v13);
    v15 = v14;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 138543362;
      v139 = identifierCopy;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "_stateLock_updateDescriptorsFromStaticDescriptorsForExtensionBundleIdentifier", "provider identifier: %{public}@", buf, 0xCu);
    }

    extensionForIdentifier = [(PFPosterExtensionProvider *)self->_extensionProvider extensionForIdentifier];
    v17 = [extensionForIdentifier objectForKey:identifierCopy];

    if (v17)
    {
      spid = v12;
      v106 = v12 - 1;
      v19 = [(PBFPosterExtensionDataStore *)self _stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier:identifierCopy];
      if (v19)
      {
        errorCopy = error;
        [PBFPowerLogger logUpdate:0 reason:reason inServiceOfBundleIdentifier:identifierCopy];
        [v19 teardownAllStaticDescriptorStoreCoordinators];
        posterExtensionInfoPlist = [v17 posterExtensionInfoPlist];
        v21 = MEMORY[0x277CBEB70];
        pbf_staticDescriptorIdentifiers = [posterExtensionInfoPlist pbf_staticDescriptorIdentifiers];
        v23 = pbf_staticDescriptorIdentifiers;
        if (pbf_staticDescriptorIdentifiers)
        {
          v24 = pbf_staticDescriptorIdentifiers;
        }

        else
        {
          v24 = MEMORY[0x277CBEBF8];
        }

        v25 = [v21 orderedSetWithArray:v24];

        supportedRoles = [objc_opt_class() supportedRoles];
        v133[0] = MEMORY[0x277D85DD0];
        v133[1] = 3221225472;
        v133[2] = __122__PBFPosterExtensionDataStore__stateLock_updateDescriptorsFromStaticDescriptorsForExtensionBundleIdentifier_reason_error___block_invoke;
        v133[3] = &unk_2782C66E0;
        v120 = posterExtensionInfoPlist;
        v134 = v120;
        v27 = supportedRoles;
        v135 = v27;
        v28 = [v25 bs_filter:v133];

        if ([v28 count])
        {
          v101 = v27;
          v102 = v17;
          v103 = identifierCopy;
          v109 = objc_opt_new();
          v129 = 0u;
          v130 = 0u;
          v131 = 0u;
          v132 = 0u;
          v100 = v28;
          obj = v28;
          v117 = [obj countByEnumeratingWithState:&v129 objects:v146 count:16];
          if (!v117)
          {
            v110 = 0;
            goto LABEL_78;
          }

          v110 = 0;
          v115 = *MEMORY[0x277CCA470];
          v116 = *v130;
          v108 = v19;
          while (1)
          {
            for (i = 0; i != v117; ++i)
            {
              if (*v130 != v116)
              {
                objc_enumerationMutation(obj);
              }

              v30 = *(*(&v129 + 1) + 8 * i);
              v31 = [v120 pbf_roleForStaticDescriptorIdentifier:v30];
              v128 = 0;
              v119 = v31;
              v32 = [v19 createStaticDescriptorStoreCoordinatorForIdentifier:v30 role:? error:?];
              v33 = v128;
              if (v32)
              {
                posterUUID = [v32 posterUUID];
                v127 = 0;
                v35 = [v32 addNewVersionWithContents:0 error:&v127];
                v36 = v127;

                v37 = [v32 pathForIdentity:v35];
                v33 = v36;
                if (!(v35 | v36))
                {
                  v38 = MEMORY[0x277CCA9B8];
                  v144 = v115;
                  v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"descriptor store w/ posterUUID %@ already existed", posterUUID];
                  v145 = v39;
                  [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
                  v40 = v19;
                  v42 = v41 = posterUUID;
                  v33 = [v38 pbf_descriptorStoreCoordinatorErrorWithCode:-3333 userInfo:v42];

                  posterUUID = v41;
                  v19 = v40;
                }

                v110 = 1;
                if (v37)
                {
                  if (v33)
                  {
                    goto LABEL_23;
                  }

                  goto LABEL_26;
                }
              }

              else
              {
                posterUUID = 0;
              }

              v43 = MEMORY[0x277CCA9B8];
              v142 = v115;
              v143 = @"Unable to create new static descriptor path";
              v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
              v45 = [v43 pbf_descriptorStoreCoordinatorErrorWithCode:-3330 userInfo:v44];

              v37 = 0;
              v33 = v45;
              if (v45)
              {
LABEL_23:
                [v109 addObject:v33];
                goto LABEL_48;
              }

LABEL_26:
              v114 = posterUUID;
              v46 = [objc_alloc(MEMORY[0x277D3ED00]) _initWithPath:v37];
              [v120 pbf_displayNameLocalizationKeyForStaticDescriptorIdentifier:v30];
              v113 = v118 = v46;
              [v46 setDisplayNameLocalizationKey:?];
              v47 = [v120 pbf_proactivePosterDescriptorGalleryOptionsForStaticDescriptorIdentifier:v30];
              v126 = 0;
              v112 = v47;
              LOBYTE(v46) = [MEMORY[0x277D3EDE8] storeProactiveGalleryOptionsToPath:v37 proactiveGalleryOptions:? error:?];
              v48 = v126;
              v49 = v48;
              if ((v46 & 1) == 0)
              {
                v50 = PBFLogPosterContents(v48);
                if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v139 = posterUUID;
                  v140 = 2114;
                  *v141 = v49;
                  _os_log_error_impl(&dword_21B526000, v50, OS_LOG_TYPE_ERROR, "Could not update proactive gallery options for static descriptor ingestion poster uuid %{public}@: %{public}@", buf, 0x16u);
                }
              }

              v51 = [v120 pbf_posterBoardPosterDescriptorGalleryOptionsForStaticDescriptorIdentifier:v30];
              v125 = 0;
              v111 = v51;
              v52 = [MEMORY[0x277D3EDE8] storePosterDescriptorGalleryOptions:v37 posterDescriptorGalleryOptions:? error:?];
              v53 = v125;

              if ((v52 & 1) == 0)
              {
                v55 = PBFLogPosterContents(v54);
                if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v139 = v114;
                  v140 = 2114;
                  *v141 = v53;
                  _os_log_error_impl(&dword_21B526000, v55, OS_LOG_TYPE_ERROR, "Could not update posterboard gallery options for static descriptor ingestion poster uuid %{public}@: %{public}@", buf, 0x16u);
                }
              }

              v56 = [v120 pbf_posterBoardPosterDescriptorRenderingConfigurationForStaticDescriptorIdentifier:v30];
              v57 = v56;
              if (v56)
              {
                v58 = PBFLogPosterContents(v56);
                if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
                {
                  isDepthEffectDisabled = [v57 isDepthEffectDisabled];
                  areMotionEffectsDisabled = [v57 areMotionEffectsDisabled];
                  *buf = 138412802;
                  v139 = v30;
                  v140 = 1024;
                  *v141 = isDepthEffectDisabled;
                  v19 = v108;
                  *&v141[4] = 1024;
                  *&v141[6] = areMotionEffectsDisabled;
                  _os_log_impl(&dword_21B526000, v58, OS_LOG_TYPE_INFO, "Static descriptor %@ provided a preferredRenderingConfiguration %d %d", buf, 0x18u);
                }

                [v118 setPreferredRenderingConfiguration:v57];
              }

              v61 = [v120 pbf_posterBoardPosterDescriptorGalleryDisplayBehaviorForStaticDescriptorIdentifier:v30];
              if (v61)
              {
                v62 = v61;
                ambientConfiguration = [v118 ambientConfiguration];
                v64 = [ambientConfiguration mutableCopy];

                v19 = v108;
                [v64 setGalleryDisplayBehavior:v62];
                [v118 setAmbientConfiguration:v64];
              }

              v65 = [v120 pbf_userInfoForStaticDescriptorIdentifier:v30];
              v66 = v65;
              if (v65)
              {
                v67 = v65;
              }

              else
              {
                v67 = MEMORY[0x277CBEC10];
              }

              v124 = 0;
              v68 = [v37 storeUserInfo:v67 error:&v124];
              v33 = v124;

              if ((v68 & 1) == 0)
              {
                v70 = PBFLogPosterContents(v69);
                if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v139 = v114;
                  v140 = 2114;
                  *v141 = v33;
                  _os_log_error_impl(&dword_21B526000, v70, OS_LOG_TYPE_ERROR, "Could not update userInfo for static descriptor ingestion poster uuid %{public}@: %{public}@", buf, 0x16u);
                }

                v19 = v108;
              }

              posterUUID = v114;
LABEL_48:
            }

            v117 = [obj countByEnumeratingWithState:&v129 objects:v146 count:16];
            if (!v117)
            {
LABEL_78:

              v17 = v102;
              identifierCopy = v103;
              if ([v109 count])
              {
                v87 = PBFLogPosterContents([v19 teardownAllStaticDescriptorStoreCoordinators]);
                if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
                {
                  [PBFPosterExtensionDataStore _stateLock_updateDescriptorsFromStaticDescriptorsForExtensionBundleIdentifier:reason:error:];
                }

                if (errorCopy)
                {
                  v88 = MEMORY[0x277CCA9B8];
                  v136 = *MEMORY[0x277CCA578];
                  v89 = [v109 copy];
                  v137 = v89;
                  v110 = 1;
                  v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
                  *errorCopy = [v88 pbf_dataStoreErrorWithCode:-2214 userInfo:v90];
                }

                else
                {
                  v110 = 1;
                }
              }

              array = [obj array];
              v122[0] = MEMORY[0x277D85DD0];
              v122[1] = 3221225472;
              v122[2] = __122__PBFPosterExtensionDataStore__stateLock_updateDescriptorsFromStaticDescriptorsForExtensionBundleIdentifier_reason_error___block_invoke_840;
              v122[3] = &unk_2782C6708;
              v92 = v19;
              v123 = v92;
              v93 = [array bs_mapNoNulls:v122];

              if (v93)
              {
                v94 = v93;
              }

              else
              {
                v94 = MEMORY[0x277CBEBF8];
              }

              [v92 providerInfoSetObject:v94 forKey:@"kProactiveStaticPosterDescriptorOrdering"];
              persistentIdentifier = [v102 persistentIdentifier];
              [v92 providerInfoSetObject:persistentIdentifier forKey:@"StaticPersistentIdentifier"];

              v97 = PBFLogPosterContents(v96);
              v98 = v97;
              if (v106 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v97))
              {
                *buf = 138543362;
                v139 = v103;
                _os_signpost_emit_with_name_impl(&dword_21B526000, v98, OS_SIGNPOST_INTERVAL_END, spid, "_stateLock_updateDescriptorsFromStaticDescriptorsForExtensionBundleIdentifier", "provider identifier: %{public}@", buf, 0xCu);
              }

              v28 = v100;
              v27 = v101;
              v86 = v109;
              goto LABEL_92;
            }
          }
        }

        [v19 providerInfoSetObject:0 forKey:@"kProactiveStaticPosterDescriptorOrdering"];
        persistentIdentifier2 = [v17 persistentIdentifier];
        [v19 providerInfoSetObject:persistentIdentifier2 forKey:@"StaticPersistentIdentifier"];

        v85 = PBFLogPosterContents(v84);
        v86 = v85;
        if (v106 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v85))
        {
          *buf = 138543362;
          v139 = identifierCopy;
          _os_signpost_emit_with_name_impl(&dword_21B526000, v86, OS_SIGNPOST_INTERVAL_END, v12, "_stateLock_updateDescriptorsFromStaticDescriptorsForExtensionBundleIdentifier", "provider identifier: %{public}@", buf, 0xCu);
        }

        v110 = 0;
LABEL_92:

        v10 = v110;
      }

      else
      {
        v77 = PBFLogPosterContents(0);
        v78 = v77;
        if (v106 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v77))
        {
          *buf = 138543362;
          v139 = identifierCopy;
          _os_signpost_emit_with_name_impl(&dword_21B526000, v78, OS_SIGNPOST_INTERVAL_END, v12, "_stateLock_updateDescriptorsFromStaticDescriptorsForExtensionBundleIdentifier", "provider identifier: %{public}@", buf, 0xCu);
        }

        v80 = PBFLogPosterContents(v79);
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          [PBFPosterExtensionDataStore _stateLock_updateDescriptorsFromStaticDescriptorsForExtensionBundleIdentifier:reason:error:];
        }

        if (error)
        {
          v81 = MEMORY[0x277CCA9B8];
          if (identifierCopy)
          {
            v82 = identifierCopy;
          }

          else
          {
            v82 = &stru_282CD3858;
          }

          v147 = @"extensionBundleIdentifier";
          v148 = v82;
          v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
          [v81 pbf_dataStoreErrorWithCode:-2217 userInfo:?];
          *error = v10 = 0;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v71 = PBFLogPosterContents(v18);
      v72 = v71;
      if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
      {
        *buf = 138543362;
        v139 = identifierCopy;
        _os_signpost_emit_with_name_impl(&dword_21B526000, v72, OS_SIGNPOST_INTERVAL_END, v12, "_stateLock_updateDescriptorsFromStaticDescriptorsForExtensionBundleIdentifier", "provider identifier: %{public}@", buf, 0xCu);
      }

      v74 = PBFLogPosterContents(v73);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterExtensionDataStore _stateLock_updateDescriptorsFromStaticDescriptorsForExtensionBundleIdentifier:reason:error:];
      }

      if (!error)
      {
        v10 = 0;
LABEL_94:

        goto LABEL_95;
      }

      v75 = MEMORY[0x277CCA9B8];
      if (identifierCopy)
      {
        v76 = identifierCopy;
      }

      else
      {
        v76 = @"(null extensionBundleIdentifier)";
      }

      v149 = @"extensionBundleIdentifier";
      v150[0] = v76;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v150 forKeys:&v149 count:1];
      [v75 pbf_dataStoreErrorWithCode:-2217 userInfo:v19];
      *error = v10 = 0;
    }

    goto LABEL_94;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_95:

  return v10 & 1;
}

uint64_t __122__PBFPosterExtensionDataStore__stateLock_updateDescriptorsFromStaticDescriptorsForExtensionBundleIdentifier_reason_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) pbf_roleForStaticDescriptorIdentifier:a2];
  v4 = [*(a1 + 40) containsObject:v3];

  return v4;
}

id __122__PBFPosterExtensionDataStore__stateLock_updateDescriptorsFromStaticDescriptorsForExtensionBundleIdentifier_reason_error___block_invoke_840(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) staticDescriptorStoreCoordinatorForIdentifier:a2];
  v3 = [v2 posterUUID];
  v4 = [v3 UUIDString];

  return v4;
}

- (BOOL)_stateLock_cleanupAfterDeletedExtension:(id)extension error:(id *)error
{
  extensionCopy = extension;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    posterExtensionBundleIdentifier = [extensionCopy posterExtensionBundleIdentifier];
    [(PBFPosterSnapshotManager *)self->_snapshotManager cancelRequestedSnapshotsForExtensionBundleIdentifier:posterExtensionBundleIdentifier];
    v9 = [(NSMutableDictionary *)self->_stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier objectForKey:posterExtensionBundleIdentifier];
    [v9 reapEverythingExceptLatestVersion];
    v7 = [(PBFPosterExtensionDataStore *)self _stateLock_deletePosterDescriptorsForExtensionBundleIdentifier:posterExtensionBundleIdentifier waitForPushToProactive:0 error:error];
  }

  return v7;
}

- (BOOL)_stateLock_setupEnvironmentForExtension:(id)extension wasUpdated:(BOOL *)updated error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  getFlag = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if (!getFlag)
  {
    v11 = PBFLogPosterContents(getFlag);
    v12 = os_signpost_id_generate(v11);

    v14 = PBFLogPosterContents(v13);
    v15 = v14;
    v16 = v12 - 1;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      posterExtensionBundleIdentifier = [extensionCopy posterExtensionBundleIdentifier];
      *buf = 138543362;
      v53 = posterExtensionBundleIdentifier;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "_stateLock_setupEnvironmentForExtension", "provider identifier: %{public}@", buf, 0xCu);
    }

    posterExtensionBundleIdentifier2 = [extensionCopy posterExtensionBundleIdentifier];
    v19 = [(NSMutableDictionary *)self->_stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier objectForKey:posterExtensionBundleIdentifier2];
    v20 = v19;
    if (v19)
    {
      if (!updated)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    extensionStoreCoordinatorContainerURL = [(PBFPosterExtensionDataStore *)self extensionStoreCoordinatorContainerURL];
    v20 = [extensionStoreCoordinatorContainerURL URLByAppendingPathComponent:posterExtensionBundleIdentifier2 isDirectory:1];

    if (([v20 checkResourceIsReachableAndReturnError:0] & 1) == 0)
    {
      v47 = v12;
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v27 = PFFileProtectionNoneAttributes();
      v49 = 0;
      v28 = [defaultManager createDirectoryAtURL:v20 withIntermediateDirectories:0 attributes:v27 error:&v49];
      v46 = v49;

      v30 = PBFLogCommon(v29);
      v31 = v30;
      if (v28)
      {
        v32 = v46;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v53 = posterExtensionBundleIdentifier2;
          _os_log_impl(&dword_21B526000, v31, OS_LOG_TYPE_DEFAULT, "Successfully created extension store coordinator container for provider '%{public}@", buf, 0xCu);
        }
      }

      else
      {
        v32 = v46;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [PBFPosterExtensionDataStore _stateLock_setupEnvironmentForExtension:wasUpdated:error:];
        }
      }

      v12 = v47;
      if (v32)
      {
        if (error)
        {
          v33 = v32;
          *error = v32;
        }

        v34 = PBFLogPosterContents(v33);
        v35 = v34;
        if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
        {
          posterExtensionBundleIdentifier3 = [extensionCopy posterExtensionBundleIdentifier];
          *buf = 138543362;
          v53 = posterExtensionBundleIdentifier3;
          _os_signpost_emit_with_name_impl(&dword_21B526000, v35, OS_SIGNPOST_INTERVAL_END, v47, "_stateLock_setupEnvironmentForExtension", "provider identifier: %{public}@", buf, 0xCu);
        }

        v10 = 0;
        goto LABEL_14;
      }
    }

    v37 = [[PBFPosterExtensionStoreCoordinator alloc] initWithContainerURL:v20 extensionIdentifier:posterExtensionBundleIdentifier2];
    v38 = v37;
    if (v37)
    {
      setupEnvironmentIfNecessary = [(PBFPosterExtensionStoreCoordinator *)v37 setupEnvironmentIfNecessary];
      v40 = setupEnvironmentIfNecessary;
      if (setupEnvironmentIfNecessary)
      {
LABEL_32:
        if (error)
        {
          setupEnvironmentIfNecessary = v40;
          *error = v40;
        }

        v41 = PBFLogPosterContents(setupEnvironmentIfNecessary);
        v42 = v41;
        if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
        {
          posterExtensionBundleIdentifier4 = [extensionCopy posterExtensionBundleIdentifier];
          *buf = 138543362;
          v53 = posterExtensionBundleIdentifier4;
          _os_signpost_emit_with_name_impl(&dword_21B526000, v42, OS_SIGNPOST_INTERVAL_END, v12, "_stateLock_setupEnvironmentForExtension", "provider identifier: %{public}@", buf, 0xCu);
        }

        v10 = 0;
        v20 = v38;
        goto LABEL_14;
      }
    }

    else
    {
      v44 = MEMORY[0x277CCA9B8];
      v50 = *MEMORY[0x277CCA470];
      v51 = @"Unable to setup extension store coordinator";
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v45 = v48 = v12;
      v40 = [v44 pbf_dataStoreErrorWithCode:-2219 userInfo:v45];

      v12 = v48;
      if (v40)
      {
        goto LABEL_32;
      }
    }

    [(PBFPosterExtensionStoreCoordinator *)v38 reapEverythingExceptLatestVersion];
    os_unfair_lock_lock(&self->_extensionProvidingLock);
    [(NSMutableDictionary *)self->_extensionProvidingLock_extensionStoreCoordinatorForExtensionBundleIdentifier setObject:v38 forKey:posterExtensionBundleIdentifier2];
    os_unfair_lock_unlock(&self->_extensionProvidingLock);
    [(NSMutableDictionary *)self->_stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier setObject:v38 forKey:posterExtensionBundleIdentifier2];

    v20 = v38;
    if (!updated)
    {
LABEL_10:
      v21 = PBFLogPosterContents(v19);
      v22 = v21;
      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
      {
        posterExtensionBundleIdentifier5 = [extensionCopy posterExtensionBundleIdentifier];
        *buf = 138543362;
        v53 = posterExtensionBundleIdentifier5;
        _os_signpost_emit_with_name_impl(&dword_21B526000, v22, OS_SIGNPOST_INTERVAL_END, v12, "_stateLock_setupEnvironmentForExtension", "provider identifier: %{public}@", buf, 0xCu);
      }

      v10 = v20 != 0;
LABEL_14:

      goto LABEL_16;
    }

LABEL_9:
    *updated = 0;
    goto LABEL_10;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_16:

  return v10;
}

- (BOOL)_stateLock_updateEnvironmentForExtension:(id)extension fromExtension:(id)fromExtension error:(id *)error
{
  v48[1] = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  fromExtensionCopy = fromExtension;
  getFlag = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if (getFlag)
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = LOBYTE(v11) = 0;
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    v12 = PBFLogDataStore(getFlag);
    v13 = os_signpost_id_generate(v12);

    v15 = PBFLogDataStore(v14);
    v16 = v15;
    v17 = v13 - 1;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      posterExtensionBundleIdentifier = [extensionCopy posterExtensionBundleIdentifier];
      v41 = 138543362;
      v42 = posterExtensionBundleIdentifier;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "_stateLock_updateEnvironmentForExtension", "provider identifier: %{public}@", &v41, 0xCu);
    }

    posterExtensionBundleIdentifier2 = [extensionCopy posterExtensionBundleIdentifier];
    v20 = [(PBFPosterExtensionDataStore *)self _stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier:posterExtensionBundleIdentifier2];
    v21 = PBFLogPosterContents(v20);
    v22 = v21;
    if (v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v41 = 138543362;
        v42 = posterExtensionBundleIdentifier2;
        _os_log_impl(&dword_21B526000, v22, OS_LOG_TYPE_DEFAULT, "Updating Extension %{public}@", &v41, 0xCu);
      }

      uniqueIdentifier = [fromExtensionCopy uniqueIdentifier];
      uniqueIdentifier2 = [extensionCopy uniqueIdentifier];
      v25 = [uniqueIdentifier isEqual:uniqueIdentifier2];

      if (v25)
      {
        v27 = PBFLogDataStore(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v41 = 138543874;
          v42 = posterExtensionBundleIdentifier2;
          v43 = 2114;
          v44 = fromExtensionCopy;
          v45 = 2114;
          v46 = extensionCopy;
          _os_log_debug_impl(&dword_21B526000, v27, OS_LOG_TYPE_DEBUG, "Extension process for %{public}@ is unchanged; (%{public}@ vs %{public}@)", &v41, 0x20u);
        }
      }

      else
      {
        v27 = PBFLogPosterContents(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v41 = 138543874;
          v42 = posterExtensionBundleIdentifier2;
          v43 = 2114;
          v44 = fromExtensionCopy;
          v45 = 2114;
          v46 = extensionCopy;
          _os_log_impl(&dword_21B526000, v27, OS_LOG_TYPE_DEFAULT, "Extension process for %{public}@ HAS changed; (%{public}@ vs %{public}@)", &v41, 0x20u);
        }
      }

      v11 = v25 ^ 1;
      v36 = PBFLogPosterContents(v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v41 = 138543618;
        v42 = posterExtensionBundleIdentifier2;
        v43 = 1024;
        LODWORD(v44) = v11;
        _os_log_impl(&dword_21B526000, v36, OS_LOG_TYPE_DEFAULT, "Updated Extension %{public}@: %{BOOL}u", &v41, 0x12u);
      }

      v38 = PBFLogDataStore(v37);
      v33 = v38;
      if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
      {
        posterExtensionBundleIdentifier3 = [extensionCopy posterExtensionBundleIdentifier];
        v41 = 138543618;
        v42 = posterExtensionBundleIdentifier3;
        v43 = 1024;
        LODWORD(v44) = v11;
        _os_signpost_emit_with_name_impl(&dword_21B526000, v33, OS_SIGNPOST_INTERVAL_END, v13, "_stateLock_updateEnvironmentForExtension", "provider identifier: %{public}@; didUpdate: %{BOOL}u", &v41, 0x12u);
      }
    }

    else
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterExtensionDataStore _stateLock_updateEnvironmentForExtension:fromExtension:error:];
      }

      if (error)
      {
        v29 = MEMORY[0x277CCA9B8];
        if (posterExtensionBundleIdentifier2)
        {
          v30 = posterExtensionBundleIdentifier2;
        }

        else
        {
          v30 = &stru_282CD3858;
        }

        v47 = @"extensionBundleIdentifier";
        v48[0] = v30;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
        *error = [v29 pbf_dataStoreErrorWithCode:-2217 userInfo:v31];
      }

      v32 = PBFLogDataStore(v28);
      v33 = v32;
      if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
      {
        posterExtensionBundleIdentifier4 = [extensionCopy posterExtensionBundleIdentifier];
        v41 = 138543362;
        v42 = posterExtensionBundleIdentifier4;
        _os_signpost_emit_with_name_impl(&dword_21B526000, v33, OS_SIGNPOST_INTERVAL_END, v13, "_stateLock_updateEnvironmentForExtension", "provider identifier: %{public}@", &v41, 0xCu);
      }

      LOBYTE(v11) = 0;
    }
  }

  return v11;
}

- (id)_stateLock_knownPosterDescriptorsForExtensionBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v5 = [(NSMutableDictionary *)self->_stateLock_descriptorsForExtensionBundleIdentifier objectForKey:identifierCopy];
  }

  return v5;
}

- (id)_stateLock_knownStaticPosterDescriptorsForExtensionBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v5 = [(NSMutableDictionary *)self->_stateLock_staticDescriptorsForExtensionBundleIdentifier objectForKey:identifierCopy];
  }

  return v5;
}

- (id)_stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableDictionary *)self->_stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier objectForKey:identifierCopy];
  }

  return v5;
}

- (id)_stateLock_extensionBundleIdentifierForConfigurationUUID:(id)d
{
  dCopy = d;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy_;
    v14 = __Block_byref_object_dispose_;
    v15 = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __88__PBFPosterExtensionDataStore__stateLock_extensionBundleIdentifierForConfigurationUUID___block_invoke;
    v7[3] = &unk_2782C6730;
    v8 = dCopy;
    v9 = &v10;
    [(PBFPosterExtensionDataStore *)self _stateLock_enumerateConfigurationStoreCoordinators:v7];
    v5 = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  return v5;
}

void __88__PBFPosterExtensionDataStore__stateLock_extensionBundleIdentifierForConfigurationUUID___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v7 = [a3 posterUUID];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    v9 = [v12 extensionIdentifier];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a4 = 1;
  }
}

- (void)enumerateExtensionStoreCoordinators:(id)coordinators
{
  coordinatorsCopy = coordinators;
  os_unfair_lock_lock(&self->_stateLock);
  [(PBFPosterExtensionDataStore *)self _stateLock_enumerateExtensionStoreCoordinators:coordinatorsCopy];

  os_unfair_lock_unlock(&self->_stateLock);
}

- (id)extensionStoreCoordinators
{
  os_unfair_lock_lock(&self->_stateLock);
  _stateLock_extensionStoreCoordinators = [(PBFPosterExtensionDataStore *)self _stateLock_extensionStoreCoordinators];
  os_unfair_lock_unlock(&self->_stateLock);

  return _stateLock_extensionStoreCoordinators;
}

- (id)_stateLock_extensionStoreCoordinators
{
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    allValues = MEMORY[0x277CBEBF8];
  }

  else
  {
    allValues = [(NSMutableDictionary *)self->_stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier allValues];
  }

  return allValues;
}

- (void)_stateLock_enumerateExtensionStoreCoordinators:(id)coordinators
{
  coordinatorsCopy = coordinators;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    allValues = [(NSMutableDictionary *)self->_stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier allValues];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __78__PBFPosterExtensionDataStore__stateLock_enumerateExtensionStoreCoordinators___block_invoke;
    v6[3] = &unk_2782C6758;
    v7 = coordinatorsCopy;
    [allValues enumerateObjectsUsingBlock:v6];
  }
}

- (id)_stateLock_posterConfigurationPathForUUID:(id)d
{
  dCopy = d;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy_;
    v14 = __Block_byref_object_dispose_;
    v15 = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __73__PBFPosterExtensionDataStore__stateLock_posterConfigurationPathForUUID___block_invoke;
    v7[3] = &unk_2782C6730;
    v8 = dCopy;
    v9 = &v10;
    [(PBFPosterExtensionDataStore *)self _stateLock_enumerateConfigurationStoreCoordinators:v7];
    v5 = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  return v5;
}

void __73__PBFPosterExtensionDataStore__stateLock_posterConfigurationPathForUUID___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  v6 = [v11 posterUUID];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    v8 = [v11 pathOfLatestVersion];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

- (BOOL)_stateLock_hasBeenUnlockedSinceBoot
{
  if ([(NSNumber *)self->_stateLock_hasBeenUnlockedSinceBoot BOOLValue])
  {
    return 1;
  }

  v4 = MEMORY[0x277CCABB0];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v5 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  v12 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  if (!getMKBDeviceUnlockedSinceBootSymbolLoc_ptr)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke;
    v8[3] = &unk_2782C5CB0;
    v8[4] = &v9;
    __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(v8);
    v5 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v5)
  {
    [PBFPosterExtensionDataStore _stateLock_hasBeenUnlockedSinceBoot];
  }

  v6 = [v4 numberWithInt:v5()];
  stateLock_hasBeenUnlockedSinceBoot = self->_stateLock_hasBeenUnlockedSinceBoot;
  self->_stateLock_hasBeenUnlockedSinceBoot = v6;

  return [(NSNumber *)self->_stateLock_hasBeenUnlockedSinceBoot BOOLValue];
}

- (id)_activityModeForFocusUUID:(id)d
{
  dCopy = d;
  sharedActivityManager = [objc_opt_class() sharedActivityManager];
  availableActivities = [sharedActivityManager availableActivities];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__PBFPosterExtensionDataStore__activityModeForFocusUUID___block_invoke;
  v9[3] = &unk_2782C57D0;
  v10 = dCopy;
  v6 = dCopy;
  v7 = [availableActivities bs_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __57__PBFPosterExtensionDataStore__activityModeForFocusUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 activityUniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_activeActivity
{
  sharedActivityManager = [objc_opt_class() sharedActivityManager];
  activeActivity = [sharedActivityManager activeActivity];

  return activeActivity;
}

- (void)_updateActiveActivity:(id)activity active:(BOOL)active reason:(id)reason
{
  activeCopy = active;
  v17 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  reasonCopy = reason;
  v10 = PBFLogDataStore(reasonCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    _activeActivity = [(PBFPosterExtensionDataStore *)self _activeActivity];
    v13 = 138412546;
    v14 = _activeActivity;
    v15 = 2112;
    v16 = activityCopy;
    _os_log_impl(&dword_21B526000, v10, OS_LOG_TYPE_DEFAULT, "Telling FCActivityManager to change active activity from %@ to %@", &v13, 0x16u);
  }

  sharedActivityManager = [objc_opt_class() sharedActivityManager];
  [sharedActivityManager setActivity:activityCopy active:activeCopy reason:reasonCopy];
}

- (id)activePosterConfigurationForRole:(id)role assocPoster:(id *)poster
{
  roleCopy = role;
  os_unfair_lock_lock(&self->_activePosterLock);
  v7 = [(NSMutableDictionary *)self->_activePosterLock_roleToActivePosterConfiguration objectForKeyedSubscript:roleCopy];
  os_unfair_lock_unlock(&self->_activePosterLock);
  if (poster && v7)
  {
    v8 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKeyedSubscript:roleCopy];
    posterCollection = [v8 posterCollection];
    pbf_posterUUID = [v7 pbf_posterUUID];
    *poster = [posterCollection associatedPosterForUUID:pbf_posterUUID];
  }

  return v7;
}

- (id)activePosterConfigurations
{
  os_unfair_lock_lock(&self->_activePosterLock);
  v3 = [(NSMutableDictionary *)self->_activePosterLock_roleToActivePosterConfiguration copy];
  os_unfair_lock_unlock(&self->_activePosterLock);

  return v3;
}

- (BOOL)markPosterConfigurationAsActive:(id)active forRole:(id)role
{
  v20 = *MEMORY[0x277D85DE8];
  activeCopy = active;
  roleCopy = role;
  os_unfair_lock_lock(&self->_activePosterLock);
  v8 = [(NSMutableDictionary *)self->_activePosterLock_roleToActivePosterConfiguration objectForKeyedSubscript:roleCopy];
  v9 = v8;
  if (v8 && (v10 = [v8 isEqual:activeCopy], (v10 & 1) != 0))
  {
    v11 = PBFLogRoleCoordinator(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      v17 = v9;
      v18 = 2114;
      v19 = activeCopy;
      _os_log_impl(&dword_21B526000, v11, OS_LOG_TYPE_DEFAULT, "Bailed; Will not transition Active poster from %{public}@ -> %{public}@", &v16, 0x16u);
    }

    v12 = 0;
  }

  else
  {
    activePosterLock_roleToActivePosterConfiguration = self->_activePosterLock_roleToActivePosterConfiguration;
    if (activeCopy)
    {
      v14 = [(NSMutableDictionary *)activePosterLock_roleToActivePosterConfiguration setObject:activeCopy forKeyedSubscript:roleCopy];
    }

    else
    {
      v14 = [(NSMutableDictionary *)activePosterLock_roleToActivePosterConfiguration removeObjectForKey:roleCopy];
    }

    v11 = PBFLogRoleCoordinator(v14);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      v17 = v9;
      v18 = 2114;
      v19 = activeCopy;
      _os_log_impl(&dword_21B526000, v11, OS_LOG_TYPE_DEFAULT, "Transitioned Active poster from %{public}@ -> %{public}@", &v16, 0x16u);
    }

    v12 = 1;
  }

  os_unfair_lock_unlock(&self->_activePosterLock);
  return v12;
}

- (id)_updatedSuggestionDescriptorsForPosterUUID
{
  os_unfair_lock_lock(&self->_stateLock);
  _stateLock_updatedSuggestionDescriptorsForPosterUUID = [(PBFPosterExtensionDataStore *)self _stateLock_updatedSuggestionDescriptorsForPosterUUID];
  os_unfair_lock_unlock(&self->_stateLock);

  return _stateLock_updatedSuggestionDescriptorsForPosterUUID;
}

- (id)_stateLock_updatedSuggestionDescriptorPathsForPosterUUID
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_activePosterLock);
  v3 = [(NSMutableDictionary *)self->_activePosterLock_roleToActivePosterConfiguration copy];
  os_unfair_lock_unlock(&self->_activePosterLock);
  v16 = v3;
  v17 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  objectEnumerator = [v3 objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        pbf_posterUUID = [v9 pbf_posterUUID];
        pbf_posterProvider = [v9 pbf_posterProvider];
        v12 = [(PBFPosterExtensionDataStore *)self _stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier:pbf_posterProvider];
        v13 = [v12 suggestionDescriptorPathsForConfigurationUUID:pbf_posterUUID];
        if ([v13 count])
        {
          v14 = [v13 copy];
          [v17 setObject:v14 forKeyedSubscript:pbf_posterUUID];
        }
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return v17;
}

- (id)_stateLock_updatedSuggestionDescriptorsForPosterUUID
{
  v3 = objc_opt_new();
  _stateLock_updatedSuggestionDescriptorPathsForPosterUUID = [(PBFPosterExtensionDataStore *)self _stateLock_updatedSuggestionDescriptorPathsForPosterUUID];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__PBFPosterExtensionDataStore__stateLock_updatedSuggestionDescriptorsForPosterUUID__block_invoke;
  v7[3] = &unk_2782C6780;
  v5 = v3;
  v8 = v5;
  [_stateLock_updatedSuggestionDescriptorPathsForPosterUUID enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __83__PBFPosterExtensionDataStore__stateLock_updatedSuggestionDescriptorsForPosterUUID__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = __PFServerPosterPathToPRPosterDescriptor();
  v7 = [v5 bs_mapNoNulls:v8];

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (BOOL)_stateLock_ingestReloadedDescriptorsForExtensionBundleIdentifier:(id)identifier preReloadDescriptors:(id)descriptors postReloadDescriptors:(id)reloadDescriptors error:(id *)error
{
  v220 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  descriptorsCopy = descriptors;
  reloadDescriptorsCopy = reloadDescriptors;
  v10 = objc_opt_new();
  v169 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(descriptorsCopy, "count")}];
  v201 = 0u;
  v202 = 0u;
  v203 = 0u;
  v204 = 0u;
  v11 = descriptorsCopy;
  v12 = [v11 countByEnumeratingWithState:&v201 objects:v219 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v202;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v202 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v201 + 1) + 8 * i);
        descriptorIdentifier = [v16 descriptorIdentifier];
        [v169 setObject:v16 forKey:descriptorIdentifier];

        v18 = [objc_alloc(MEMORY[0x277D3ED80]) _initWithPath:v16];
        [v10 addObject:v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v201 objects:v219 count:16];
    }

    while (v13);
  }

  v146 = v10;

  v19 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(reloadDescriptorsCopy, "count")}];
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  obj = reloadDescriptorsCopy;
  v20 = [obj countByEnumeratingWithState:&v197 objects:v218 count:16];
  v167 = v19;
  if (v20)
  {
    v21 = v20;
    v22 = *v198;
    do
    {
      v23 = 0;
      do
      {
        if (*v198 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v197 + 1) + 8 * v23);
        descriptorIdentifier2 = [(__CFString *)v24 descriptorIdentifier];
        v26 = descriptorIdentifier2;
        if (!descriptorIdentifier2)
        {
          v29 = PBFLogPosterContents(0);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v213 = v24;
            v31 = v29;
            v32 = "dropping replacement descriptor that is missing its descriptorIdentifier : %@";
            v33 = 12;
            goto LABEL_22;
          }

LABEL_23:

          goto LABEL_24;
        }

        if (![(__CFString *)descriptorIdentifier2 length])
        {
          v29 = PBFLogPosterContents(0);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v213 = v24;
            v214 = 2112;
            v215 = identifierCopy;
            v216 = 2112;
            v217 = v26;
            v31 = v29;
            v32 = "dropping replacement descriptor %@ for provider %@; its descriptorIdentifier's length is less than 1 : %@";
            v33 = 32;
LABEL_22:
            _os_log_impl(&dword_21B526000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, v33);
          }

          goto LABEL_23;
        }

        v27 = [v19 objectForKey:v26];

        if (v27)
        {
          v29 = PBFLogPosterContents(v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [v19 objectForKey:v26];
            *buf = 138412802;
            v213 = v26;
            v214 = 2112;
            v215 = v30;
            v216 = 2112;
            v217 = v24;
            _os_log_impl(&dword_21B526000, v29, OS_LOG_TYPE_DEFAULT, "multiple paths returned for descriptorIdentifier='%@' : dropping previous=%@ in favor of %@", buf, 0x20u);

            v19 = v167;
          }

          goto LABEL_23;
        }

        [v19 setObject:v24 forKey:v26];
LABEL_24:

        ++v23;
      }

      while (v21 != v23);
      v34 = [obj countByEnumeratingWithState:&v197 objects:v218 count:16];
      v21 = v34;
    }

    while (v34);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v36 = v11;
  v37 = [v36 countByEnumeratingWithState:&v193 objects:v211 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v194;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v194 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v193 + 1) + 8 * j);
        descriptorIdentifier3 = [v41 descriptorIdentifier];
        [dictionary setObject:v41 forKey:descriptorIdentifier3];
      }

      v38 = [v36 countByEnumeratingWithState:&v193 objects:v211 count:16];
    }

    while (v38);
  }

  v43 = identifierCopy;
  v166 = [(PBFPosterExtensionDataStore *)self _stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier:identifierCopy];
  if (!v166)
  {
    if (error)
    {
      v81 = MEMORY[0x277CCA9B8];
      v209 = @"extensionBundleIdentifier";
      if (identifierCopy)
      {
        v82 = identifierCopy;
      }

      else
      {
        v82 = @"(null extensionBundleIdentifier)";
      }

      v210 = v82;
      v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v210 forKeys:&v209 count:1];
      *error = [v81 pbf_dataStoreErrorWithCode:-2217 userInfo:v83];
    }

    v79 = 0;
    goto LABEL_138;
  }

  v44 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(obj, "count")}];
  v189 = 0u;
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  allKeys = [v19 allKeys];
  v151 = [allKeys countByEnumeratingWithState:&v189 objects:v208 count:16];
  if (!v151)
  {

    v145 = 0;
LABEL_79:
    v185 = 0u;
    v186 = 0u;
    v183 = 0u;
    v184 = 0u;
    allKeys2 = [dictionary allKeys];
    v85 = [allKeys2 countByEnumeratingWithState:&v183 objects:v207 count:16];
    if (v85)
    {
      v86 = v85;
      v87 = *v184;
      do
      {
        for (k = 0; k != v86; ++k)
        {
          if (*v184 != v87)
          {
            objc_enumerationMutation(allKeys2);
          }

          v89 = *(*(&v183 + 1) + 8 * k);
          v90 = [dictionary objectForKeyedSubscript:v89];
          v91 = [v44 objectForKey:v89];
          if (v91)
          {
          }

          else
          {
            v92 = [v169 objectForKey:v89];

            if (!v92)
            {
              [v44 setObject:v90 forKey:v89];
            }
          }

          v19 = v167;
        }

        v86 = [allKeys2 countByEnumeratingWithState:&v183 objects:v207 count:16];
      }

      while (v86);
    }

    allValues = [v44 allValues];
    v94 = [allValues copy];

    v43 = identifierCopy;
    v79 = [(PBFPosterExtensionDataStore *)self _stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier:identifierCopy];

    if (!v79)
    {
      if (v145)
      {
        v100 = 1;
        v101 = 0;
        goto LABEL_136;
      }

      v160 = v94;
      v139 = 0;
      goto LABEL_133;
    }

    v95 = MEMORY[0x277CBEB98];
    allKeys3 = [v169 allKeys];
    v97 = [v95 setWithArray:allKeys3];
    v98 = v97;
    if (v97)
    {
      v99 = v97;
    }

    else
    {
      v99 = [MEMORY[0x277CBEB98] set];
    }

    v158 = v99;
    v102 = v145;

    v103 = MEMORY[0x277CBEB98];
    allKeys4 = [v44 allKeys];
    v105 = [v103 setWithArray:allKeys4];
    v106 = v105;
    if (v105)
    {
      v107 = v105;
    }

    else
    {
      v107 = [MEMORY[0x277CBEB98] set];
    }

    v108 = v107;

    v165 = v108;
    v160 = v94;
    if (([v158 isEqual:v108] & 1) == 0)
    {
      v155 = v44;
      v181 = 0u;
      v182 = 0u;
      v179 = 0u;
      v180 = 0u;
      v109 = v158;
      v110 = [v109 countByEnumeratingWithState:&v179 objects:v206 count:16];
      if (v110)
      {
        v111 = v110;
        v112 = *v180;
        do
        {
          for (m = 0; m != v111; ++m)
          {
            if (*v180 != v112)
            {
              objc_enumerationMutation(v109);
            }

            v114 = *(*(&v179 + 1) + 8 * m);
            if (([v108 containsObject:v114] & 1) == 0)
            {
              v115 = [v169 objectForKey:v114];
              serverIdentity = [v115 serverIdentity];

              posterUUID = [(__CFString *)serverIdentity posterUUID];
              v178 = 0;
              v118 = [v166 teardownDynamicDescriptorStoreCoordinatorForPosterUUID:posterUUID error:&v178];
              v119 = v178;

              if (v118)
              {
                v121 = v119 == 0;
              }

              else
              {
                v121 = 0;
              }

              if (!v121)
              {
                v122 = PBFLogPosterContents(v120);
                if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v213 = serverIdentity;
                  v214 = 2112;
                  v215 = v119;
                  _os_log_error_impl(&dword_21B526000, v122, OS_LOG_TYPE_ERROR, "failed to remove descriptor from extension store coordinator '%@': %@", buf, 0x16u);
                }
              }

              v102 = 1;
              v108 = v165;
            }
          }

          v111 = [v109 countByEnumeratingWithState:&v179 objects:v206 count:16];
        }

        while (v111);
      }

      v145 = v102;

      v43 = identifierCopy;
      v94 = v160;
      v44 = v155;
    }

    v176[0] = MEMORY[0x277D85DD0];
    v176[1] = 3221225472;
    v176[2] = __145__PBFPosterExtensionDataStore__stateLock_ingestReloadedDescriptorsForExtensionBundleIdentifier_preReloadDescriptors_postReloadDescriptors_error___block_invoke;
    v176[3] = &unk_2782C67A8;
    v123 = v166;
    v177 = v123;
    v124 = [obj bs_mapNoNulls:v176];
    v125 = [v123 providerInfoObjectForKey:@"kProactiveDynamicPosterDescriptorOrdering"];
    v126 = [v124 isEqualToArray:v125];

    v162 = v124;
    if (v126)
    {
      if ((v145 & 1) == 0)
      {
        v127 = 0;
        v101 = 0;
        v79 = 0;
LABEL_129:

        v19 = v167;
        if (v127)
        {
          v100 = 1;
          v43 = identifierCopy;
          goto LABEL_136;
        }

        v139 = v101;
        v43 = identifierCopy;
LABEL_133:
        v140 = [(NSMutableDictionary *)self->_stateLock_descriptorsForExtensionBundleIdentifier objectForKeyedSubscript:v43];
        v141 = [v140 count];

        if (!v141)
        {
          [(NSMutableDictionary *)self->_stateLock_descriptorsForExtensionBundleIdentifier setObject:MEMORY[0x277CBEBF8] forKeyedSubscript:v43];
        }

        v100 = 0;
        v101 = v139;
        v94 = v160;
LABEL_136:

        if (v100)
        {
          [(PBFPosterExtensionDataStore *)self _notifyObserversDidUpdatePosterDescriptorsForExtensionBundleIdentifier:v43];
          v80 = [(PBFPosterExtensionDataStore *)self _stateLock_issueDescriptorUpdatedEventsForExtension:v43 preUpdate:v146 postUpdate:v79 error:error];
          goto LABEL_139;
        }

LABEL_138:
        v80 = 0;
        goto LABEL_139;
      }
    }

    else
    {
      [v123 providerInfoSetObject:v124 forKey:@"kProactiveDynamicPosterDescriptorOrdering"];
    }

    v128 = [(NSMutableDictionary *)self->_stateLock_descriptorsForExtensionBundleIdentifier copy];
    v129 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v128];
    dynamicPosterDescriptorLatestVersionPaths = [v123 dynamicPosterDescriptorLatestVersionPaths];
    allObjects = [dynamicPosterDescriptorLatestVersionPaths allObjects];
    v132 = [allObjects sortedArrayUsingSelector:sel_compareDescriptorIdentifiers_];
    [v129 setObject:v132 forKeyedSubscript:v43];

    v156 = [v129 copy];
    v79 = objc_opt_new();
    v172 = 0u;
    v173 = 0u;
    v174 = 0u;
    v175 = 0u;
    v153 = v129;
    v133 = [v129 objectForKeyedSubscript:v43];
    v134 = [v133 countByEnumeratingWithState:&v172 objects:v205 count:16];
    if (v134)
    {
      v135 = v134;
      v136 = *v173;
      do
      {
        for (n = 0; n != v135; ++n)
        {
          if (*v173 != v136)
          {
            objc_enumerationMutation(v133);
          }

          v138 = [objc_alloc(MEMORY[0x277D3ED80]) _initWithPath:*(*(&v172 + 1) + 8 * n)];
          [v79 addObject:v138];
        }

        v135 = [v133 countByEnumeratingWithState:&v172 objects:v205 count:16];
      }

      while (v135);
    }

    v170[0] = MEMORY[0x277D85DD0];
    v170[1] = 3221225472;
    v170[2] = __145__PBFPosterExtensionDataStore__stateLock_ingestReloadedDescriptorsForExtensionBundleIdentifier_preReloadDescriptors_postReloadDescriptors_error___block_invoke_2;
    v170[3] = &unk_2782C67F8;
    v171 = obj;
    [v79 sortUsingComparator:v170];
    v101 = v156;
    [(PBFPosterExtensionDataStore *)self _stateLock_updateGalleryWithSuggestedLayout:0 descriptorsByExtensionBundleIdentifier:v156 staticDescriptorsByExtensionBundleIdentifier:0];

    v127 = 1;
    v94 = v160;
    goto LABEL_129;
  }

  v150 = allKeys;
  v159 = 0;
  v145 = 0;
  v47 = *v190;
  *&v46 = 138412290;
  v143 = v46;
  v149 = *v190;
  do
  {
    v48 = 0;
    do
    {
      if (*v190 != v47)
      {
        objc_enumerationMutation(v150);
      }

      v49 = *(*(&v189 + 1) + 8 * v48);
      v50 = [v19 objectForKey:{v49, v143}];
      v51 = [v169 objectForKey:v49];
      v161 = [dictionary objectForKey:v49];
      role = [(__CFString *)v50 role];
      v53 = v49;
      v188 = 0;
      v157 = v53;
      v152 = role;
      v164 = [v166 dynamicDescriptorStoreCoordinatorForIdentifier:? role:? createIfNil:? error:?];
      v54 = v188;
      v55 = v54;
      v154 = v51;
      if (!v54)
      {
        serverIdentity2 = [(__CFString *)v50 serverIdentity];
        v59 = serverIdentity2;
        if (serverIdentity2)
        {
          if (v51 && (-[__CFString identity](v51, "identity"), v61 = objc_claimAutoreleasedReturnValue(), v62 = [v61 isEqual:v59], v61, v62))
          {
            if (v161)
            {
              v56 = v50;
              descriptorIdentifier4 = [v161 descriptorIdentifier];
              [v44 setObject:v161 forKey:descriptorIdentifier4];
              v64 = descriptorIdentifier4;
              v58 = 1;
              v65 = v159;
              goto LABEL_53;
            }

            v56 = v50;
            v76 = PBFLogPosterContents(serverIdentity2);
            v47 = v149;
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v143;
              v213 = v154;
              _os_log_impl(&dword_21B526000, v76, OS_LOG_TYPE_DEFAULT, "skipping non-updated descriptor that was deleted during the update callout : %@", buf, 0xCu);
            }

            v64 = v76;
            v58 = 1;
            v65 = v159;
          }

          else
          {
            v66 = PBFLogPosterContents(serverIdentity2);
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v213 = v50;
              v214 = 2112;
              v215 = v51;
              _os_log_error_impl(&dword_21B526000, v66, OS_LOG_TYPE_ERROR, "returned descriptor isn't new but fails to match a previous descriptor : new=%@ previous=%@", buf, 0x16u);
            }

            v56 = v50;

            v65 = [MEMORY[0x277CCA9B8] pbf_dataStoreErrorWithCode:-2214 userInfo:0];
            v58 = 0;
            v64 = v159;
LABEL_53:
            v47 = v149;
          }
        }

        else
        {
          contentsURL = [(__CFString *)v50 contentsURL];
          v187 = 0;
          v68 = [v164 addNewVersionWithContents:contentsURL error:&v187];
          v65 = v187;

          v148 = v68;
          if (v65)
          {
            v56 = v50;
            v70 = PBFLogPosterContents(v69);
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v213 = v157;
              v214 = 2112;
              v215 = v65;
              _os_log_error_impl(&dword_21B526000, v70, OS_LOG_TYPE_ERROR, "bailing update: failed to save updated descriptor '%@' with error: %@", buf, 0x16u);
            }

            v58 = 0;
          }

          else
          {
            v71 = v68;
            v56 = v50;
            v72 = MEMORY[0x277D3EBA0];
            containerURL = [v166 containerURL];
            v74 = [v72 pathWithProviderURL:containerURL identity:v71];

            descriptorIdentifier5 = [v74 descriptorIdentifier];
            [v44 setObject:v74 forKey:descriptorIdentifier5];

            v58 = 1;
            v65 = v159;
            v145 = 1;
          }

          v64 = v148;
          v47 = v149;
        }

        v159 = v65;
        v19 = v167;
        goto LABEL_61;
      }

      v56 = v50;
      v57 = PBFLogPosterContents(v54);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v213 = v157;
        v214 = 2112;
        v215 = v55;
        _os_log_error_impl(&dword_21B526000, v57, OS_LOG_TYPE_ERROR, "bailing update: descriptor '%@' cannot create a descriptorStoreCoordinator for reason: %@", buf, 0x16u);
      }

      v58 = 0;
      v59 = v159;
      v159 = v55;
LABEL_61:

      if (!v58)
      {
        goto LABEL_68;
      }

      ++v48;
    }

    while (v151 != v48);
    v77 = [v150 countByEnumeratingWithState:&v189 objects:v208 count:16];
    v151 = v77;
  }

  while (v77);
LABEL_68:

  v78 = v159;
  if (!v159)
  {
    goto LABEL_79;
  }

  if (error)
  {
    v78 = v159;
    *error = v78;
  }

  v79 = 0;
  v80 = 0;
  v43 = identifierCopy;
LABEL_139:

  return v80;
}

id __145__PBFPosterExtensionDataStore__stateLock_ingestReloadedDescriptorsForExtensionBundleIdentifier_preReloadDescriptors_postReloadDescriptors_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 descriptorIdentifier];
  v4 = [*(a1 + 32) dynamicDescriptorStoreCoordinatorForIdentifier:v3];
  v5 = [v4 posterUUID];
  v6 = [v5 UUIDString];

  return v6;
}

uint64_t __145__PBFPosterExtensionDataStore__stateLock_ingestReloadedDescriptorsForExtensionBundleIdentifier_preReloadDescriptors_postReloadDescriptors_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __145__PBFPosterExtensionDataStore__stateLock_ingestReloadedDescriptorsForExtensionBundleIdentifier_preReloadDescriptors_postReloadDescriptors_error___block_invoke_3;
  v24[3] = &unk_2782C67D0;
  v25 = v5;
  v8 = v5;
  v9 = [v7 bs_firstObjectPassingTest:v24];
  v10 = [v7 indexOfObject:v9];

  v11 = *(a1 + 32);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __145__PBFPosterExtensionDataStore__stateLock_ingestReloadedDescriptorsForExtensionBundleIdentifier_preReloadDescriptors_postReloadDescriptors_error___block_invoke_4;
  v22 = &unk_2782C67D0;
  v23 = v6;
  v12 = v6;
  v13 = [v11 bs_firstObjectPassingTest:&v19];
  v14 = [v11 indexOfObject:{v13, v19, v20, v21, v22}];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
  v17 = [v15 compare:v16];

  return v17;
}

uint64_t __145__PBFPosterExtensionDataStore__stateLock_ingestReloadedDescriptorsForExtensionBundleIdentifier_preReloadDescriptors_postReloadDescriptors_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 descriptorIdentifier];
  v4 = [*(a1 + 32) _path];
  v5 = [v4 descriptorIdentifier];
  v6 = [v3 isEqual:v5];

  return v6;
}

uint64_t __145__PBFPosterExtensionDataStore__stateLock_ingestReloadedDescriptorsForExtensionBundleIdentifier_preReloadDescriptors_postReloadDescriptors_error___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 descriptorIdentifier];
  v4 = [*(a1 + 32) _path];
  v5 = [v4 descriptorIdentifier];
  v6 = [v3 isEqual:v5];

  return v6;
}

- (BOOL)_stateLock_issueDescriptorUpdatedEventsForExtension:(id)extension preUpdate:(id)update postUpdate:(id)postUpdate error:(id *)error
{
  v57 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  updateCopy = update;
  postUpdateCopy = postUpdate;
  if ((BSEqualArrays() & 1) == 0 && [extensionCopy length])
  {
    errorCopy = error;
    v37 = objc_opt_new();
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    selfCopy = self;
    obj = [(NSDictionary *)self->_roleToRoleCoordinator keyEnumerator];
    v41 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v41)
    {
      v13 = *v47;
      v38 = *v47;
      v39 = postUpdateCopy;
      do
      {
        v14 = 0;
        do
        {
          if (*v47 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v46 + 1) + 8 * v14);
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __110__PBFPosterExtensionDataStore__stateLock_issueDescriptorUpdatedEventsForExtension_preUpdate_postUpdate_error___block_invoke;
          v45[3] = &unk_2782C6820;
          v45[4] = v15;
          v16 = [updateCopy bs_mapNoNulls:v45];
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __110__PBFPosterExtensionDataStore__stateLock_issueDescriptorUpdatedEventsForExtension_preUpdate_postUpdate_error___block_invoke_2;
          v44[3] = &unk_2782C6820;
          v44[4] = v15;
          v17 = [postUpdateCopy bs_mapNoNulls:v44];
          if (([v17 count] || (v18 = objc_msgSend(v16, "count")) != 0) && (v18 = BSEqualArrays(), (v18 & 1) == 0))
          {
            v20 = updateCopy;
            v21 = extensionCopy;
            v19 = [PBFPosterDataStoreEventBuilder descriptorsUpdatedForProvider:extensionCopy role:v15 from:v16 to:v17];
            v43 = 0;
            v22 = [v19 buildWithError:&v43];
            v23 = v43;
            v24 = PBFLogDataStore(v23);
            v25 = v24;
            if (v23 || !v22)
            {
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543874;
                v51 = v15;
                v52 = 2114;
                v53 = v21;
                v54 = 2114;
                v55 = v23;
                _os_log_error_impl(&dword_21B526000, v25, OS_LOG_TYPE_ERROR, "Error building PBFPosterDataStoreEvent for role %{public}@ extension %{public}@ reloadDescriptors: %{public}@", buf, 0x20u);
              }
            }

            else
            {
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v51 = v15;
                v52 = 2114;
                v53 = v21;
                _os_log_impl(&dword_21B526000, v25, OS_LOG_TYPE_DEFAULT, "Built PBFPosterDataStoreEvent for role %{public}@ extension %{public}@ reloadDescriptors", buf, 0x16u);
              }

              [v37 addObject:v22];
            }

            extensionCopy = v21;
            updateCopy = v20;
            v13 = v38;
            postUpdateCopy = v39;
          }

          else
          {
            v19 = PBFLogDataStore(v18);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v51 = v15;
              v52 = 2114;
              v53 = extensionCopy;
              _os_log_impl(&dword_21B526000, v19, OS_LOG_TYPE_DEFAULT, "Skipping building PBFPosterDataStoreEvent for role %{public}@ extension %{public}@ reloadDescriptors: no posters for role", buf, 0x16u);
            }
          }

          ++v14;
        }

        while (v41 != v14);
        v41 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
      }

      while (v41);
    }

    v26 = [v37 count];
    v27 = PBFLogDataStore(v26);
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v26)
    {
      if (v28)
      {
        *buf = 138543362;
        v51 = extensionCopy;
        _os_log_impl(&dword_21B526000, v27, OS_LOG_TYPE_DEFAULT, "Issuing PBFPosterDataStoreEvents for extension %{public}@ reloadDescriptors", buf, 0xCu);
      }

      v42 = 0;
      v29 = [(PBFPosterExtensionDataStore *)selfCopy _stateLock_processEvents:v37 context:0 error:&v42];
      v27 = v42;
      v30 = PBFLogDataStore(v27);
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      if (v29 && !v27)
      {
        if (v31)
        {
          *buf = 138543362;
          v51 = extensionCopy;
          _os_log_impl(&dword_21B526000, v30, OS_LOG_TYPE_DEFAULT, "Successfully issued PBFPosterDataStoreEvents for extension %{public}@ reloadDescriptors", buf, 0xCu);
        }

        v32 = 1;
        goto LABEL_40;
      }

      if (v31)
      {
        *buf = 138543618;
        v51 = extensionCopy;
        v52 = 2114;
        v53 = v27;
        _os_log_impl(&dword_21B526000, v30, OS_LOG_TYPE_DEFAULT, "Failed to process PBFPosterDataStoreEvents for extension %{public}@ reloadDescriptors: %{public}@", buf, 0x16u);
      }

      if (errorCopy)
      {
        v33 = v27;
        v32 = 0;
        *errorCopy = v27;
LABEL_40:

        goto LABEL_41;
      }
    }

    else if (v28)
    {
      *buf = 138543362;
      v51 = extensionCopy;
      _os_log_impl(&dword_21B526000, v27, OS_LOG_TYPE_DEFAULT, "Bailing PBFPosterDataStoreEvents for extension %{public}@ reloadDescriptors; no events generated", buf, 0xCu);
    }

    v32 = 0;
    goto LABEL_40;
  }

  v32 = 0;
LABEL_41:

  return v32;
}

id __110__PBFPosterExtensionDataStore__stateLock_issueDescriptorUpdatedEventsForExtension_preUpdate_postUpdate_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 role];
  LODWORD(a1) = [v4 isEqual:*(a1 + 32)];

  if (a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __110__PBFPosterExtensionDataStore__stateLock_issueDescriptorUpdatedEventsForExtension_preUpdate_postUpdate_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 role];
  LODWORD(a1) = [v4 isEqual:*(a1 + 32)];

  if (a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier:(id)identifier reason:(id)reason powerLogReason:(int64_t)logReason postEnqueueGalleryUpdateOptions:(unint64_t)options sessionInfo:(id)info completion:(id)completion
{
  v137[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  reasonCopy = reason;
  infoCopy = info;
  completionCopy = completion;
  if (![(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    v21 = identifierCopy;
    NSClassFromString(&cfstr_Nsstring.isa);
    if (!v21)
    {
      [PBFPosterExtensionDataStore _stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier:a2 reason:? powerLogReason:? postEnqueueGalleryUpdateOptions:? sessionInfo:? completion:?];
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PBFPosterExtensionDataStore _stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier:a2 reason:? powerLogReason:? postEnqueueGalleryUpdateOptions:? sessionInfo:? completion:?];
    }

    v22 = v21;
    v90 = v22;
    if (![(PBFPosterExtensionDataStore *)self _stateLock_hasBeenUnlockedSinceBoot])
    {
      v28 = MEMORY[0x277CCA9B8];
      v136 = @"providerIdentifier";
      v137[0] = v22;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v137 forKeys:&v136 count:1];
      v89 = [v28 pbf_dataStoreErrorWithCode:-2205 userInfo:v29];

      completionCopy[2](completionCopy, 0, v89);
      v20 = 0;
LABEL_63:

      goto LABEL_64;
    }

    v89 = self->_extensionProvider;
    extensionForIdentifier = [(PFPosterExtensionProvider *)v89 extensionForIdentifier];
    v88 = [extensionForIdentifier objectForKey:v22];

    if (v88)
    {
      posterExtensionInfoPlist = [v88 posterExtensionInfoPlist];
      pbf_supportsDynamicDescriptors = [posterExtensionInfoPlist pbf_supportsDynamicDescriptors];

      if (pbf_supportsDynamicDescriptors)
      {
        v87 = NSStringFromSelector(a2);
        v121 = 0;
        v86 = [(PFPosterExtensionProvider *)v89 acquireInstanceForExtensionWithIdentifier:v90 reason:v87 error:&v121];
        v27 = v121;
        if (v27)
        {
          if (completionCopy)
          {
            completionCopy[2](completionCopy, 0, v27);
          }

          v20 = 0;
        }

        else
        {
          v120 = 0;
          v85 = [v86 pr_assetUpdaterWithError:&v120];
          v35 = v120;
          v84 = v35;
          if (v35 || !v85)
          {
            v43 = PBFLogReloadDescriptors(v35);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              [PBFPosterExtensionDataStore _stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier:a2 reason:? powerLogReason:? postEnqueueGalleryUpdateOptions:? sessionInfo:? completion:?];
            }

            if (completionCopy)
            {
              completionCopy[2](completionCopy, 0, v84);
            }

            [(PFPosterExtensionProvider *)v89 relinquishExtensionInstanceWithIdentifier:v90 reason:v87];
            v20 = 0;
          }

          else
          {
            pr_reloadDescriptorOperations = [v86 pr_reloadDescriptorOperations];
            v36 = PBFLogReloadDescriptors(pr_reloadDescriptorOperations);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = v90;
              _os_log_impl(&dword_21B526000, v36, OS_LOG_TYPE_DEFAULT, "Preparing reloadDescriptors operation for bundle identifier %{public}@", buf, 0xCu);
            }

            v38 = PBFLogReloadDescriptors(v37);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = pr_reloadDescriptorOperations;
              _os_log_impl(&dword_21B526000, v38, OS_LOG_TYPE_DEFAULT, "Existing operations: %{public}@", buf, 0xCu);
            }

            v83 = [(PBFPosterExtensionDataStore *)self _stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier:v90];
            if (v83)
            {
              objc_initWeak(&location, self);
              if ((!infoCopy || (v39 = [infoCopy isEmpty], v39)) && (v116[0] = MEMORY[0x277D85DD0], v116[1] = 3221225472, v116[2] = __181__PBFPosterExtensionDataStore__stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier_reason_powerLogReason_postEnqueueGalleryUpdateOptions_sessionInfo_completion___block_invoke, v116[3] = &unk_2782C6848, v79 = v90, v117 = v79, v118 = 0, objc_msgSend(pr_reloadDescriptorOperations, "bs_firstObjectPassingTest:", v116), v20 = objc_claimAutoreleasedReturnValue(), v118, v117, v20))
              {
                v40 = PBFLogReloadDescriptors(v39);
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  identifier = [infoCopy identifier];
                  *buf = 138543618;
                  *&buf[4] = v79;
                  *&buf[12] = 2114;
                  *&buf[14] = identifier;
                  _os_log_impl(&dword_21B526000, v40, OS_LOG_TYPE_DEFAULT, "Found a matching operation for %{public}@ / %{public}@; adding completion", buf, 0x16u);
                }

                v91[0] = MEMORY[0x277D85DD0];
                v91[1] = 3221225472;
                v91[2] = __181__PBFPosterExtensionDataStore__stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier_reason_powerLogReason_postEnqueueGalleryUpdateOptions_sessionInfo_completion___block_invoke_883;
                v91[3] = &unk_2782C68E8;
                v93 = completionCopy;
                objc_copyWeak(&v94, &location);
                v92 = v79;
                [(PBFPosterExtensionReloadDescriptorsOperation *)v20 addCompletionObserver:v91];

                objc_destroyWeak(&v94);
                v42 = v93;
              }

              else
              {
                v49 = PBFLogReloadDescriptors(v39);
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  identifier2 = [infoCopy identifier];
                  *buf = 138543874;
                  *&buf[4] = v90;
                  *&buf[12] = 2114;
                  *&buf[14] = identifier2;
                  *&buf[22] = 2114;
                  v127 = pr_reloadDescriptorOperations;
                  _os_log_impl(&dword_21B526000, v49, OS_LOG_TYPE_DEFAULT, "Found no matching operation for %{public}@ / %{public}@ / %{public}@", buf, 0x20u);
                }

                extension = [v86 extension];
                posterExtensionBundleIdentifier = [extension posterExtensionBundleIdentifier];
                v74 = [@"PBFPosterExtensionReloadDescriptorsOperation reloadDescriptors for " stringByAppendingString:posterExtensionBundleIdentifier];

                v72 = objc_opt_new();
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x3032000000;
                v127 = __Block_byref_object_copy_;
                v128 = __Block_byref_object_dispose_;
                runtimeAssertionProvider = self->_runtimeAssertionProvider;
                v80 = [MEMORY[0x277CCACA8] stringWithFormat:@"reloadDescriptors for %@", v90];
                currentProcess = [MEMORY[0x277D47008] currentProcess];
                v129 = [(PBFRuntimeAssertionProviding *)runtimeAssertionProvider acquirePosterUpdateRuntimeAssertionForReason:v80 target:currentProcess];

                v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"extensionIdentifier:%@ sessionInfo:%@ assetUpdater: %@", v90, infoCopy, v85];;
                v55 = MEMORY[0x277D46DB8];
                v114[0] = MEMORY[0x277D85DD0];
                v114[1] = 3221225472;
                v114[2] = __181__PBFPosterExtensionDataStore__stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier_reason_powerLogReason_postEnqueueGalleryUpdateOptions_sessionInfo_completion___block_invoke_870;
                v114[3] = &unk_2782C59F0;
                v76 = v54;
                v115 = v76;
                [v55 pf_finishTaskInterruptableWithExplanation:@"Finish Reload Descriptors Operation" invalidationHandler:v114];
                v70 = v113 = 0;
                [v70 acquireWithError:&v113];
                v56 = v113;
                v57 = v90;
                v78 = v56;
                if (v56)
                {
                  v58 = PBFLogReloadDescriptors(v56);
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                  {
                    [PBFPosterExtensionDataStore _stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier:reason:powerLogReason:postEnqueueGalleryUpdateOptions:sessionInfo:completion:];
                  }

                  v57 = v90;
                }

                v59 = [(PBFPosterExtensionDataStore *)self _stateLock_knownPosterDescriptorsForExtensionBundleIdentifier:v57];
                v60 = v59;
                v61 = MEMORY[0x277CBEBF8];
                if (v59)
                {
                  v61 = v59;
                }

                v81 = v61;

                v20 = [[PBFPosterExtensionReloadDescriptorsOperation alloc] initWithUpdatingService:v85 extensionBundleIdentifier:v90 sessionInfo:infoCopy preRefreshPosterDescriptors:v81 runtimeAssertionProvider:self->_runtimeAssertionProvider timeout:logReason powerLogReason:90.0];
                v111[0] = 0;
                v111[1] = v111;
                v111[2] = 0x3042000000;
                v111[3] = __Block_byref_object_copy__871;
                v111[4] = __Block_byref_object_dispose__872;
                objc_initWeak(&v112, v20);
                aBlock[0] = MEMORY[0x277D85DD0];
                aBlock[1] = 3221225472;
                aBlock[2] = __181__PBFPosterExtensionDataStore__stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier_reason_powerLogReason_postEnqueueGalleryUpdateOptions_sessionInfo_completion___block_invoke_873;
                aBlock[3] = &unk_2782C6870;
                v69 = v72;
                v104 = v69;
                v109 = completionCopy;
                v110 = buf;
                v105 = v89;
                v62 = v90;
                v106 = v62;
                v107 = v87;
                v71 = v70;
                v108 = v71;
                v63 = _Block_copy(aBlock);
                v95[0] = MEMORY[0x277D85DD0];
                v95[1] = 3221225472;
                v95[2] = __181__PBFPosterExtensionDataStore__stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier_reason_powerLogReason_postEnqueueGalleryUpdateOptions_sessionInfo_completion___block_invoke_2;
                v95[3] = &unk_2782C68C0;
                objc_copyWeak(v102, &location);
                v73 = v63;
                v100 = v73;
                v96 = v83;
                v75 = v74;
                v97 = v75;
                v64 = v62;
                v98 = v64;
                v101 = v111;
                v65 = v86;
                v99 = v65;
                v102[1] = options;
                v102[2] = logReason;
                v66 = PBFLogReloadDescriptors([(PBFPosterExtensionReloadDescriptorsOperation *)v20 addCompletionObserver:v95]);
                if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                {
                  identifier3 = [infoCopy identifier];
                  *v122 = 138543618;
                  v123 = v64;
                  v124 = 2114;
                  v125 = identifier3;
                  _os_log_impl(&dword_21B526000, v66, OS_LOG_TYPE_DEFAULT, "Queuing operation for %{public}@ / %{public}@", v122, 0x16u);
                }

                [v65 pr_addReloadDescriptorOperation:v20];
                objc_destroyWeak(v102);

                _Block_object_dispose(v111, 8);
                objc_destroyWeak(&v112);

                _Block_object_dispose(buf, 8);
                v42 = v75;
              }

              objc_destroyWeak(&location);
            }

            else
            {
              v44 = MEMORY[0x277CCA9B8];
              v130 = @"providerIdentifier";
              v131 = v90;
              v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
              v46 = [v44 pbf_dataStoreErrorWithCode:-2217 userInfo:v45];

              if (completionCopy)
              {
                v47 = (completionCopy[2])(completionCopy, 0, v46);
              }

              v48 = PBFLogReloadDescriptors(v47);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                [PBFPosterExtensionDataStore _stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier:a2 reason:? powerLogReason:? postEnqueueGalleryUpdateOptions:? sessionInfo:? completion:?];
              }

              [(PFPosterExtensionProvider *)v89 relinquishExtensionInstanceWithIdentifier:v90 reason:v87];
              v20 = 0;
            }
          }
        }

        goto LABEL_61;
      }

      v32 = PBFLogReloadDescriptors(v26);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v90;
        _os_log_impl(&dword_21B526000, v32, OS_LOG_TYPE_DEFAULT, "Extension %{public}@ doesn't support dynamic descriptors.", buf, 0xCu);
      }

      if (!completionCopy)
      {
        v20 = 0;
LABEL_62:

        goto LABEL_63;
      }

      v33 = MEMORY[0x277CCA9B8];
      v132[0] = *MEMORY[0x277CCA470];
      v132[1] = @"providerIdentifier";
      v133[0] = @"does not support dynamic descriptors";
      v133[1] = v90;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:v132 count:2];
      v34 = [v33 pbf_dataStoreErrorWithCode:-2213 userInfo:v27];
      completionCopy[2](completionCopy, 0, v34);
    }

    else
    {
      v30 = MEMORY[0x277CCA9B8];
      v134 = @"providerIdentifier";
      v135 = v22;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
      v27 = [v30 pbf_dataStoreErrorWithCode:-2220 userInfo:v31];

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0, v27);
      }
    }

    v20 = 0;
LABEL_61:

    goto LABEL_62;
  }

  if (completionCopy)
  {
    v19 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    completionCopy[2](completionCopy, 0, v19);
  }

  v20 = 0;
LABEL_64:

  return v20;
}

uint64_t __181__PBFPosterExtensionDataStore__stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier_reason_powerLogReason_postEnqueueGalleryUpdateOptions_sessionInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 extensionBundleIdentifier];
    if ([v4 isEqual:*(a1 + 32)])
    {
      v5 = [*(a1 + 40) hasUniqueSessionInfo] ^ 1;
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

  return v5;
}

void __181__PBFPosterExtensionDataStore__stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier_reason_powerLogReason_postEnqueueGalleryUpdateOptions_sessionInfo_completion___block_invoke_870(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PBFLogReloadDescriptors(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __181__PBFPosterExtensionDataStore__stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier_reason_powerLogReason_postEnqueueGalleryUpdateOptions_sessionInfo_completion___block_invoke_870_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_DEFAULT, "Invalidated reloadDescriptors '%{public}@' finish task assertion", &v7, 0xCu);
  }
}

void __181__PBFPosterExtensionDataStore__stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier_reason_powerLogReason_postEnqueueGalleryUpdateOptions_sessionInfo_completion___block_invoke_873(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) signal])
  {
    v7 = *(a1 + 72);
    if (v7)
    {
      (*(v7 + 16))(v7, v10, v5);
    }

    [*(*(*(a1 + 80) + 8) + 40) invalidate];
    v8 = *(*(a1 + 80) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;

    [*(a1 + 40) relinquishExtensionInstanceWithIdentifier:*(a1 + 48) reason:*(a1 + 56)];
    [*(a1 + 64) invalidate];
  }

  objc_autoreleasePoolPop(v6);
}

void __181__PBFPosterExtensionDataStore__stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier_reason_powerLogReason_postEnqueueGalleryUpdateOptions_sessionInfo_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    v11 = *(a1 + 64);
    v12 = MEMORY[0x277CCA9B8];
    v52 = *MEMORY[0x277CCA470];
    v53[0] = @"Data store invalidated before operation could finish.";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
    v14 = [v12 pbf_generalErrorWithCode:3 userInfo:v13];
    (*(v11 + 16))(v11, 0, v14);

    goto LABEL_28;
  }

  if (v6)
  {
    v9 = [v6 domain];
    if ([v9 isEqualToString:PBFGeneralErrorDomain])
    {
      v10 = [v6 code] == 4;
    }

    else
    {
      v10 = 0;
    }

    v26 = [v6 domain];
    if ([v26 isEqualToString:PBFPosterExtensionDataStoreErrorDomain])
    {
      v27 = [v6 code] == -2204;
    }

    else
    {
      v27 = 0;
    }

    v29 = PBFLogReloadDescriptors(v28);
    v30 = v29;
    if (v10 || v27)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v49 = v5;
        v50 = 2114;
        v51 = v6;
        _os_log_impl(&dword_21B526000, v30, OS_LOG_TYPE_DEFAULT, "Cancelled %{public}@: %{public}@", buf, 0x16u);
      }

      if (!v5)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        __181__PBFPosterExtensionDataStore__stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier_reason_powerLogReason_postEnqueueGalleryUpdateOptions_sessionInfo_completion___block_invoke_2_cold_1();
      }

      [*(a1 + 32) updateLastRefreshDescriptorDateWithReason:*(a1 + 40)];
      if (!v5)
      {
        goto LABEL_27;
      }
    }

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __181__PBFPosterExtensionDataStore__stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier_reason_powerLogReason_postEnqueueGalleryUpdateOptions_sessionInfo_completion___block_invoke_881;
    v42[3] = &unk_2782C6310;
    v44 = *(a1 + 64);
    v43 = v6;
    [v5 invalidateAssertionsWithCompletion:v42];

    goto LABEL_28;
  }

  os_unfair_lock_lock(WeakRetained + 47);
  v15 = *(a1 + 48);
  v16 = objc_loadWeakRetained((*(*(a1 + 72) + 8) + 40));
  v17 = [v16 preRefreshPosterDescriptors];
  v18 = [v5 postRefreshPosterDescriptors];
  v47 = 0;
  v19 = [(os_unfair_lock_s *)v8 _stateLock_ingestReloadedDescriptorsForExtensionBundleIdentifier:v15 preReloadDescriptors:v17 postReloadDescriptors:v18 error:&v47];
  v20 = v47;

  os_unfair_lock_unlock(v8 + 47);
  [*(a1 + 32) updateLastRefreshDescriptorDateWithReason:*(a1 + 40)];
  v21 = *(a1 + 32);
  v22 = [*(a1 + 56) extension];
  v23 = [v22 persistentIdentifier];
  [v21 providerInfoSetObject:v23 forKey:@"PersistentIdentifier"];

  if (v20)
  {
    v25 = PBFLogReloadDescriptors(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      __181__PBFPosterExtensionDataStore__stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier_reason_powerLogReason_postEnqueueGalleryUpdateOptions_sessionInfo_completion___block_invoke_2_cold_2();
    }
  }

  else
  {
    if (!v19 || ([*&v8[56]._os_unfair_lock_opaque getFlag] & 1) != 0)
    {
      goto LABEL_25;
    }

    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ finished refresh and found new descriptors", *(a1 + 48)];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __181__PBFPosterExtensionDataStore__stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier_reason_powerLogReason_postEnqueueGalleryUpdateOptions_sessionInfo_completion___block_invoke_880;
    v45[3] = &unk_2782C6898;
    v45[4] = v8;
    v46 = *(a1 + 88);
    [(os_unfair_lock_s *)v8 pushPosterDescriptorsToProactiveForReason:v25 completion:v45];
  }

LABEL_25:
  if (!v5)
  {
LABEL_27:
    (*(*(a1 + 64) + 16))();
    goto LABEL_28;
  }

  v31 = *(a1 + 48);
  v41 = 0;
  v32 = [(os_unfair_lock_s *)v8 posterDescriptorsForExtensionBundleIdentifier:v31 error:&v41];
  v33 = v41;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __181__PBFPosterExtensionDataStore__stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier_reason_powerLogReason_postEnqueueGalleryUpdateOptions_sessionInfo_completion___block_invoke_2_882;
  v37[3] = &unk_2782C6180;
  v34 = *(a1 + 64);
  v39 = v33;
  v40 = v34;
  v38 = v32;
  v35 = v33;
  v36 = v32;
  [v5 invalidateAssertionsWithCompletion:v37];

LABEL_28:
}

id *__181__PBFPosterExtensionDataStore__stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier_reason_powerLogReason_postEnqueueGalleryUpdateOptions_sessionInfo_completion___block_invoke_880(id *result, uint64_t a2)
{
  if (!a2)
  {
    return [result[4] enqueueGalleryConfigurationUpdateWithOptions:result[5] powerLogReason:result[6] completion:0];
  }

  return result;
}

void __181__PBFPosterExtensionDataStore__stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier_reason_powerLogReason_postEnqueueGalleryUpdateOptions_sessionInfo_completion___block_invoke_883(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, v6);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v9 = *(a1 + 32);
    v13 = 0;
    v10 = [WeakRetained posterDescriptorsForExtensionBundleIdentifier:v9 error:&v13];
    v11 = v13;

    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, v10, v11);
    }
  }
}

- (BOOL)_stateLock_deletePosterDescriptorsForExtensionBundleIdentifier:(id)identifier waitForPushToProactive:(BOOL)proactive error:(id *)error
{
  proactiveCopy = proactive;
  v63[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  getFlag = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if (!getFlag)
  {
    v11 = PBFLogDataStore(getFlag);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = identifierCopy;
      *&buf[12] = 1024;
      *&buf[14] = proactiveCopy;
      _os_log_impl(&dword_21B526000, v11, OS_LOG_TYPE_DEFAULT, "deletePosterDescriptorsForExtensionBundleIdentifier:%{public}@ waitForPushToProactive:%{BOOL}u", buf, 0x12u);
    }

    v12 = objc_opt_new();
    v40 = objc_opt_new();
    supportedRoles = [objc_opt_class() supportedRoles];
    v13 = [(PBFPosterExtensionDataStore *)self _stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier:identifierCopy];
    v14 = v13;
    if (v13)
    {
      identifierCopy = [v13 staticDescriptorStoreCoordinatorsWithError:0];
      if ([identifierCopy count])
      {
        posterStaticDescriptorLatestVersionPaths = [v14 posterStaticDescriptorLatestVersionPaths];
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __123__PBFPosterExtensionDataStore__stateLock_deletePosterDescriptorsForExtensionBundleIdentifier_waitForPushToProactive_error___block_invoke;
        v51[3] = &unk_2782C6618;
        v52 = posterStaticDescriptorLatestVersionPaths;
        v53 = identifierCopy;
        v54 = v40;
        v55 = v12;
        v16 = posterStaticDescriptorLatestVersionPaths;
        [supportedRoles enumerateObjectsUsingBlock:v51];
      }

      v17 = [v14 dynamicDescriptorStoreCoordinatorsWithError:0];
      if ([v17 count])
      {
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __123__PBFPosterExtensionDataStore__stateLock_deletePosterDescriptorsForExtensionBundleIdentifier_waitForPushToProactive_error___block_invoke_3;
        v46[3] = &unk_2782C6618;
        v47 = v14;
        v48 = identifierCopy;
        v49 = v40;
        v50 = v12;
        [supportedRoles enumerateObjectsUsingBlock:v46];
      }

      if ([v12 count])
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v59 = __Block_byref_object_copy_;
        v60 = __Block_byref_object_dispose_;
        v61 = 0;
        obj = 0;
        [(PBFPosterExtensionDataStore *)self _stateLock_processEvents:v12 roles:v40 context:0 error:&obj];
        objc_storeStrong(&v61, obj);
        if (*(*&buf[8] + 40))
        {
          v19 = PBFLogDataStore(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [PBFPosterExtensionDataStore _stateLock_deletePosterDescriptorsForExtensionBundleIdentifier:waitForPushToProactive:error:];
          }
        }

        else
        {
          [v14 teardownAllStaticDescriptorStoreCoordinators];
          [v14 teardownAllDynamicDescriptors];
          [v14 removeLastRefreshDescriptorDate];
          [v14 deleteProviderInfo];
          v22 = [(NSMutableDictionary *)self->_stateLock_descriptorsForExtensionBundleIdentifier mutableCopy];
          v23 = v22;
          if (v22)
          {
            v24 = v22;
          }

          else
          {
            v24 = objc_opt_new();
          }

          v19 = v24;

          [v19 removeObjectForKey:identifierCopy];
          v25 = [(NSMutableDictionary *)self->_stateLock_staticDescriptorsForExtensionBundleIdentifier mutableCopy];
          v26 = v25;
          if (v25)
          {
            v27 = v25;
          }

          else
          {
            v27 = objc_opt_new();
          }

          v28 = v27;

          v29 = PBFLogDataStore([v28 removeObjectForKey:identifierCopy]);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *v56 = 138543362;
            v57 = identifierCopy;
            _os_log_impl(&dword_21B526000, v29, OS_LOG_TYPE_DEFAULT, "deletePosterDescriptorsForExtensionBundleIdentifier:%{public}@; did successfully remove descriptors", v56, 0xCu);
          }

          [(PBFPosterExtensionDataStore *)self _stateLock_updateGalleryWithSuggestedLayout:0 descriptorsByExtensionBundleIdentifier:v19 staticDescriptorsByExtensionBundleIdentifier:v28];
        }

        v30 = dispatch_group_create();
        v31 = v30;
        if (proactiveCopy)
        {
          dispatch_group_enter(v30);
        }

        v32 = [@"deleteDescriptors ran for " stringByAppendingString:identifierCopy];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __123__PBFPosterExtensionDataStore__stateLock_deletePosterDescriptorsForExtensionBundleIdentifier_waitForPushToProactive_error___block_invoke_890;
        v41[3] = &unk_2782C6938;
        v44 = proactiveCopy;
        v43 = buf;
        v33 = v31;
        v42 = v33;
        [(PBFPosterExtensionDataStore *)self _stateLock_pushPosterDescriptorsToProactiveForReason:v32 force:1 completion:v41];
        if (proactiveCopy)
        {
          v34 = dispatch_time(0, 120000000000);
          dispatch_group_wait(v33, v34);
        }

        v35 = *&buf[8];
        if (error)
        {
          v36 = *(*&buf[8] + 40);
          if (v36)
          {
            *error = v36;
            v35 = *&buf[8];
          }
        }

        v10 = *(v35 + 40) == 0;

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v20 = PBFLogDataStore(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterExtensionDataStore _stateLock_deletePosterDescriptorsForExtensionBundleIdentifier:waitForPushToProactive:error:];
      }

      if (!error)
      {
        v10 = 0;
LABEL_40:

        goto LABEL_41;
      }

      v21 = MEMORY[0x277CCA9B8];
      v62 = *MEMORY[0x277CCA470];
      identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"No extension store coordinator tracked for %@", identifierCopy];
      v63[0] = identifierCopy;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:&v62 count:1];
      [v21 pbf_generalErrorWithCode:1 userInfo:v17];
      *error = v10 = 0;
    }

    goto LABEL_40;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_41:

  return v10;
}

void __123__PBFPosterExtensionDataStore__stateLock_deletePosterDescriptorsForExtensionBundleIdentifier_waitForPushToProactive_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) allObjects];
  v5 = [v4 sortedArrayUsingSelector:sel_compareDescriptorIdentifiers_];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __123__PBFPosterExtensionDataStore__stateLock_deletePosterDescriptorsForExtensionBundleIdentifier_waitForPushToProactive_error___block_invoke_2;
  v10[3] = &unk_2782C6910;
  v6 = v3;
  v11 = v6;
  v7 = [v5 bs_mapNoNulls:v10];

  if ([v7 count])
  {
    v8 = [PBFPosterDataStoreEventBuilder staticDescriptorsUpdatedForProvider:*(a1 + 40) role:v6 from:v7 to:MEMORY[0x277CBEBF8]];
    v9 = [v8 buildWithError:0];

    if (v9)
    {
      [*(a1 + 48) addObject:v6];
      [*(a1 + 56) bs_safeAddObject:v9];
    }
  }
}

id __123__PBFPosterExtensionDataStore__stateLock_deletePosterDescriptorsForExtensionBundleIdentifier_waitForPushToProactive_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 role];
  LODWORD(a1) = [v4 isEqual:*(a1 + 32)];

  if (a1)
  {
    v5 = [objc_alloc(MEMORY[0x277D3ED80]) _initWithPath:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __123__PBFPosterExtensionDataStore__stateLock_deletePosterDescriptorsForExtensionBundleIdentifier_waitForPushToProactive_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dynamicPosterDescriptorLatestVersionPaths];
  v5 = [v4 allObjects];
  v6 = [v5 sortedArrayUsingSelector:sel_compareDescriptorIdentifiers_];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __123__PBFPosterExtensionDataStore__stateLock_deletePosterDescriptorsForExtensionBundleIdentifier_waitForPushToProactive_error___block_invoke_4;
  v11[3] = &unk_2782C6910;
  v7 = v3;
  v12 = v7;
  v8 = [v6 bs_mapNoNulls:v11];

  if ([v8 count])
  {
    v9 = [PBFPosterDataStoreEventBuilder descriptorsUpdatedForProvider:*(a1 + 40) role:v7 from:v8 to:MEMORY[0x277CBEBF8]];
    v10 = [v9 buildWithError:0];

    if (v10)
    {
      [*(a1 + 48) addObject:v7];
      [*(a1 + 56) addObject:v10];
    }
  }
}

id __123__PBFPosterExtensionDataStore__stateLock_deletePosterDescriptorsForExtensionBundleIdentifier_waitForPushToProactive_error___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 role];
  LODWORD(a1) = [v4 isEqual:*(a1 + 32)];

  if (a1)
  {
    v5 = [objc_alloc(MEMORY[0x277D3ED80]) _initWithPath:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __123__PBFPosterExtensionDataStore__stateLock_deletePosterDescriptorsForExtensionBundleIdentifier_waitForPushToProactive_error___block_invoke_890(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 48) == 1)
  {
    v6 = v5;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    dispatch_group_leave(*(a1 + 32));
    v5 = v6;
  }
}

- (void)_stateLock_pushPosterDescriptorsToProactiveForReason:(id)reason force:(BOOL)force completion:(id)completion
{
  forceCopy = force;
  v95[1] = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  completionCopy = completion;
  getFlag = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if (!getFlag)
  {
    if (!forceCopy)
    {
      getFlag2 = [(BSAtomicFlag *)self->_isPrewarmingFlag getFlag];
      stateLock_initialRoleCoordinatorSetupPerformed = self->_stateLock_initialRoleCoordinatorSetupPerformed;
      getFlag = [(BSAtomicFlag *)self->_extensionsCurrentlyUpdatingFlag getFlag];
      if (getFlag2)
      {
        v14 = MEMORY[0x277CCA9B8];
        v94 = *MEMORY[0x277CCA470];
        v95[0] = @"Prewarm is ongoing and force was not specified. At end of prewarm, a push to proactive will occur.";
        v15 = MEMORY[0x277CBEAC0];
        v16 = v95;
        v17 = &v94;
      }

      else if (stateLock_initialRoleCoordinatorSetupPerformed)
      {
        if (!getFlag)
        {
          goto LABEL_15;
        }

        v14 = MEMORY[0x277CCA9B8];
        v90 = *MEMORY[0x277CCA470];
        v91 = @"Extensions are currently being updated; will be called after extensions finish updating.";
        v15 = MEMORY[0x277CBEAC0];
        v16 = &v91;
        v17 = &v90;
      }

      else
      {
        v14 = MEMORY[0x277CCA9B8];
        v92 = *MEMORY[0x277CCA470];
        v93 = @"initial role coordinator setup has not been performed.";
        v15 = MEMORY[0x277CBEAC0];
        v16 = &v93;
        v17 = &v92;
      }

      v18 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
      v19 = [v14 pbf_generalErrorWithCode:7 userInfo:v18];

      if (v19)
      {
        if (completionCopy)
        {
          completionCopy[2](completionCopy, 0, v19);
        }

        goto LABEL_36;
      }
    }

LABEL_15:
    v56 = forceCopy;
    v57 = completionCopy;
    v20 = PBFLogGallery(getFlag);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v89 = reasonCopy;
      _os_log_impl(&dword_21B526000, v20, OS_LOG_TYPE_DEFAULT, "Data Store begin _pushPosterDescriptorsToProactiveForReason:'%{public}@'; begin", buf, 0xCu);
    }

    v58 = reasonCopy;

    v59 = objc_opt_new();
    v21 = objc_opt_new();
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __101__PBFPosterExtensionDataStore__stateLock_pushPosterDescriptorsToProactiveForReason_force_completion___block_invoke;
    v85[3] = &unk_2782C6470;
    v22 = v21;
    v86 = v22;
    [(PBFPosterExtensionDataStore *)self _stateLock_enumerateExtensionStoreCoordinators:v85];
    extensionForIdentifier = [(PFPosterExtensionProvider *)self->_extensionProvider extensionForIdentifier];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v55 = v22;
    allObjects = [v22 allObjects];
    v25 = [allObjects sortedArrayUsingSelector:sel_compare_];

    obj = v25;
    v26 = [v25 countByEnumeratingWithState:&v81 objects:v87 count:16];
    if (v26)
    {
      v27 = v26;
      v61 = extensionForIdentifier;
      v28 = *v82;
      v60 = *v82;
      selfCopy = self;
      do
      {
        v29 = 0;
        v63 = v27;
        do
        {
          if (*v82 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v81 + 1) + 8 * v29);
          v31 = [extensionForIdentifier objectForKey:v30];
          posterExtensionInfoPlist = [v31 posterExtensionInfoPlist];
          pbf_supportsGallery = [posterExtensionInfoPlist pbf_supportsGallery];

          if ((pbf_supportsGallery & 1) != 0 || ([MEMORY[0x277CBEBD0] standardUserDefaults], v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "stringArrayForKey:", @"ShowSamplePoster"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "containsObject:", v30), v35, v34, v36))
          {
            supportedRoles = [v31 supportedRoles];
            v38 = [supportedRoles bs_containsObjectPassingTest:&__block_literal_global_903];

            if (v38)
            {
              posterExtensionContainerBundleIdentifier = [v31 posterExtensionContainerBundleIdentifier];
              v40 = [(PBFPosterExtensionDataStore *)self _stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier:v30];
              v41 = [v40 providerInfoObjectForKey:@"kProactiveDynamicPosterDescriptorOrdering"];
              v67 = v40;
              v68 = [v40 providerInfoObjectForKey:@"kProactiveStaticPosterDescriptorOrdering"];
              v42 = [(NSMutableDictionary *)self->_stateLock_descriptorsForExtensionBundleIdentifier objectForKeyedSubscript:v30];
              strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
              v78[0] = MEMORY[0x277D85DD0];
              v78[1] = 3221225472;
              v78[2] = __101__PBFPosterExtensionDataStore__stateLock_pushPosterDescriptorsToProactiveForReason_force_completion___block_invoke_3;
              v78[3] = &unk_2782C6960;
              v78[4] = v30;
              v44 = posterExtensionContainerBundleIdentifier;
              v79 = v44;
              v45 = strongToStrongObjectsMapTable;
              v80 = v45;
              v65 = v42;
              v46 = [v42 bs_mapNoNulls:v78];
              v66 = v41;
              if (v41)
              {
                v75[0] = MEMORY[0x277D85DD0];
                v75[1] = 3221225472;
                v75[2] = __101__PBFPosterExtensionDataStore__stateLock_pushPosterDescriptorsToProactiveForReason_force_completion___block_invoke_908;
                v75[3] = &unk_2782C6988;
                v76 = v41;
                v77 = v45;
                v47 = [v46 sortedArrayUsingComparator:v75];

                v46 = v47;
              }

              v48 = [(NSMutableDictionary *)self->_stateLock_staticDescriptorsForExtensionBundleIdentifier objectForKeyedSubscript:v30];
              strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
              v72[0] = MEMORY[0x277D85DD0];
              v72[1] = 3221225472;
              v72[2] = __101__PBFPosterExtensionDataStore__stateLock_pushPosterDescriptorsToProactiveForReason_force_completion___block_invoke_2_910;
              v72[3] = &unk_2782C6960;
              v72[4] = v30;
              v50 = v44;
              v73 = v50;
              v51 = strongToStrongObjectsMapTable2;
              v74 = v51;
              v52 = [v48 bs_mapNoNulls:v72];
              if (v68)
              {
                v69[0] = MEMORY[0x277D85DD0];
                v69[1] = 3221225472;
                v69[2] = __101__PBFPosterExtensionDataStore__stateLock_pushPosterDescriptorsToProactiveForReason_force_completion___block_invoke_914;
                v69[3] = &unk_2782C6988;
                v70 = v68;
                v71 = v51;
                v53 = [v52 sortedArrayUsingComparator:v69];

                v52 = v53;
              }

              v54 = objc_opt_new();
              [v54 addObjectsFromArray:v52];
              [v54 addObjectsFromArray:v46];
              if ([v54 count])
              {
                [v59 setObject:v54 forKey:v30];
              }

              extensionForIdentifier = v61;
              self = selfCopy;
              v27 = v63;
              v28 = v60;
            }
          }

          ++v29;
        }

        while (v27 != v29);
        v27 = [obj countByEnumeratingWithState:&v81 objects:v87 count:16];
      }

      while (v27);
    }

    v11 = v59;
    completionCopy = v57;
    reasonCopy = v58;
    [(PBFGalleryController *)self->_galleryController pushUpdatedPosterDescriptors:v59 reason:v58 force:v56 completion:v57];

    goto LABEL_35;
  }

  if (completionCopy)
  {
    v11 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    completionCopy[2](completionCopy, 0, v11);
LABEL_35:
  }

LABEL_36:
}

void __101__PBFPosterExtensionDataStore__stateLock_pushPosterDescriptorsToProactiveForReason_force_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 extensionIdentifier];
  [v2 addObject:v3];
}

id __101__PBFPosterExtensionDataStore__stateLock_pushPosterDescriptorsToProactiveForReason_force_completion___block_invoke_3(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 role];
  if ([MEMORY[0x277D3EF30] proactiveGallerySupportedForRole:v4])
  {
    v5 = [MEMORY[0x277D3EDE8] loadAmbientConfigurationForPath:v3 error:0];
    if ([v5 galleryDisplayBehavior] == 1)
    {
      v6 = PBFLogGallery(1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v3;
        _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_DEFAULT, "Skipping descriptor when pushing to proactive, gallery display behavior is hidden: %@", &v17, 0xCu);
      }

      v7 = 0;
    }

    else
    {
      v8 = [v3 descriptorIdentifier];
      v9 = [v8 stringByAppendingPathExtension:@"DYNAMIC"];

      v10 = [MEMORY[0x277D3EDE8] loadProactiveGalleryOptions:v3 error:0];
      v11 = [v10 posterBoardRepresentation];

      v7 = [objc_alloc(MEMORY[0x277D3E988]) initWithIdentifier:v9 extensionBundleIdentifier:a1[4] containerBundleIdentifier:a1[5] galleryOptions:v11];
      v12 = a1[6];
      v13 = [v3 serverIdentity];
      v14 = [v13 posterUUID];
      v15 = [v14 UUIDString];
      [v12 setObject:v15 forKey:v7];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __101__PBFPosterExtensionDataStore__stateLock_pushPosterDescriptorsToProactiveForReason_force_completion___block_invoke_908(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = [v6 objectForKey:a2];
  v9 = [v5 indexOfObject:v8];

  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) objectForKey:v7];

  v12 = [v10 indexOfObject:v11];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
  v15 = [v13 compare:v14];

  return v15;
}

id __101__PBFPosterExtensionDataStore__stateLock_pushPosterDescriptorsToProactiveForReason_force_completion___block_invoke_2_910(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 role];
  if ([MEMORY[0x277D3EF30] proactiveGallerySupportedForRole:v4])
  {
    v5 = [MEMORY[0x277D3EDE8] loadAmbientConfigurationForPath:v3 error:0];
    if ([v5 galleryDisplayBehavior] == 1)
    {
      v6 = PBFLogGallery(1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v3;
        _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_DEFAULT, "Skipping static descriptor when pushing to proactive, gallery display behavior is hidden: %@", &v17, 0xCu);
      }

      v7 = 0;
    }

    else
    {
      v8 = [v3 descriptorIdentifier];
      v9 = [v8 stringByAppendingPathExtension:@"STATIC"];

      v10 = [MEMORY[0x277D3EDE8] loadProactiveGalleryOptions:v3 error:0];
      v11 = [v10 posterBoardRepresentation];

      v7 = [objc_alloc(MEMORY[0x277D3E988]) initWithIdentifier:v9 extensionBundleIdentifier:a1[4] containerBundleIdentifier:a1[5] galleryOptions:v11];
      v12 = a1[6];
      v13 = [v3 serverIdentity];
      v14 = [v13 posterUUID];
      v15 = [v14 UUIDString];
      [v12 setObject:v15 forKey:v7];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __101__PBFPosterExtensionDataStore__stateLock_pushPosterDescriptorsToProactiveForReason_force_completion___block_invoke_914(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = [v6 objectForKey:a2];
  v9 = [v5 indexOfObject:v8];

  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) objectForKey:v7];

  v12 = [v10 indexOfObject:v11];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
  v15 = [v13 compare:v14];

  return v15;
}

- (void)_stateLock_updateGalleryWithSuggestedLayout:(id)layout descriptorsByExtensionBundleIdentifier:(id)identifier staticDescriptorsByExtensionBundleIdentifier:(id)bundleIdentifier
{
  v64 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  getFlag = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if (getFlag)
  {
    goto LABEL_37;
  }

  v12 = PBFLogPosterContents(getFlag);
  v13 = os_signpost_id_generate(v12);

  v15 = PBFLogPosterContents(v14);
  v16 = v15;
  v56 = v13 - 1;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "updateGallery", "", buf, 2u);
  }

  runtimeAssertionProvider = self->_runtimeAssertionProvider;
  currentProcess = [MEMORY[0x277D47008] currentProcess];
  v57 = [(PBFRuntimeAssertionProviding *)runtimeAssertionProvider acquirePrewarmRuntimeAssertionForReason:@"updateGallery" target:currentProcess invalidationHandler:&__block_literal_global_919];

  v19 = objc_opt_new();
  if (!layoutCopy || self->_stateLock_suggestedLayout && ([layoutCopy isEqual:?] & 1) != 0)
  {
    v20 = 0;
    if (!identifierCopy)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v21 = [layoutCopy copy];
  stateLock_suggestedLayout = self->_stateLock_suggestedLayout;
  self->_stateLock_suggestedLayout = v21;

  v24 = PBFLogPosterContents(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = self->_stateLock_suggestedLayout;
    *buf = 138412290;
    v63 = v25;
    _os_log_impl(&dword_21B526000, v24, OS_LOG_TYPE_DEFAULT, "gallery updated with suggestedLayout=%@", buf, 0xCu);
  }

  v20 = 1;
  if (identifierCopy)
  {
LABEL_13:
    if (!-[NSMutableDictionary count](self->_stateLock_descriptorsForExtensionBundleIdentifier, "count") || ([identifierCopy isEqual:self->_stateLock_descriptorsForExtensionBundleIdentifier] & 1) == 0)
    {
      v26 = [identifierCopy mutableCopy];
      stateLock_descriptorsForExtensionBundleIdentifier = self->_stateLock_descriptorsForExtensionBundleIdentifier;
      self->_stateLock_descriptorsForExtensionBundleIdentifier = v26;

      v29 = PBFLogPosterContents(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = self->_stateLock_descriptorsForExtensionBundleIdentifier;
        *buf = 138412290;
        v63 = v30;
        _os_log_impl(&dword_21B526000, v29, OS_LOG_TYPE_DEFAULT, "gallery updated with dynamic descriptors=%@", buf, 0xCu);
      }

      v20 = 1;
    }
  }

LABEL_18:
  v31 = self->_stateLock_descriptorsForExtensionBundleIdentifier;
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __159__PBFPosterExtensionDataStore__stateLock_updateGalleryWithSuggestedLayout_descriptorsByExtensionBundleIdentifier_staticDescriptorsByExtensionBundleIdentifier___block_invoke_920;
  v60[3] = &unk_2782C69B0;
  v32 = v19;
  v61 = v32;
  [(NSMutableDictionary *)v31 enumerateKeysAndObjectsUsingBlock:v60];
  if (bundleIdentifierCopy && (!-[NSMutableDictionary count](self->_stateLock_staticDescriptorsForExtensionBundleIdentifier, "count") || ([bundleIdentifierCopy isEqual:self->_stateLock_staticDescriptorsForExtensionBundleIdentifier] & 1) == 0))
  {
    v33 = [bundleIdentifierCopy mutableCopy];
    stateLock_staticDescriptorsForExtensionBundleIdentifier = self->_stateLock_staticDescriptorsForExtensionBundleIdentifier;
    self->_stateLock_staticDescriptorsForExtensionBundleIdentifier = v33;

    v36 = PBFLogPosterContents(v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = self->_stateLock_descriptorsForExtensionBundleIdentifier;
      *buf = 138412290;
      v63 = v37;
      _os_log_impl(&dword_21B526000, v36, OS_LOG_TYPE_DEFAULT, "gallery updated with static descriptors=%@", buf, 0xCu);
    }

    v20 = 1;
  }

  v38 = self->_stateLock_staticDescriptorsForExtensionBundleIdentifier;
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __159__PBFPosterExtensionDataStore__stateLock_updateGalleryWithSuggestedLayout_descriptorsByExtensionBundleIdentifier_staticDescriptorsByExtensionBundleIdentifier___block_invoke_922;
  v58[3] = &unk_2782C69B0;
  v39 = v32;
  v59 = v39;
  [(NSMutableDictionary *)v38 enumerateKeysAndObjectsUsingBlock:v58];
  extensionForIdentifier = [(PFPosterExtensionProvider *)self->_extensionProvider extensionForIdentifier];
  v41 = extensionForIdentifier;
  if (!self->_stateLock_suggestedLayout)
  {
    v42 = 1;
    if (v20)
    {
      goto LABEL_26;
    }

LABEL_28:
    v43 = self->_stateLock_configuration != 0;
    goto LABEL_29;
  }

  extensionForIdentifier = [extensionForIdentifier count];
  v42 = extensionForIdentifier == 0;
  if ((v20 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_26:
  v43 = 0;
LABEL_29:
  if (!v42 && !v43)
  {
    v54 = v13;
    v55 = layoutCopy;
    v44 = PBFLogPosterContents(extensionForIdentifier);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B526000, v44, OS_LOG_TYPE_DEFAULT, "gallery update received; pushing out new gallery object", buf, 2u);
    }

    v45 = [(PRSPosterGalleryLayout *)self->_stateLock_suggestedLayout copy];
    v46 = [(NSMutableDictionary *)self->_stateLock_descriptorsForExtensionBundleIdentifier copy];
    v47 = [(NSMutableDictionary *)self->_stateLock_staticDescriptorsForExtensionBundleIdentifier copy];
    v48 = [[PBFGalleryConfiguration alloc] initWithSuggestedLayout:v45 dynamicDescriptorsByExtensionIdentifier:v46 staticDescriptorsByExtensionIdentifier:v47 extensionsByIdentifier:v41];
    stateLock_configuration = self->_stateLock_configuration;
    self->_stateLock_configuration = v48;
    v50 = v48;

    [(PBFGalleryConfiguration *)v50 setSnapshotProvider:self->_snapshotManager];
    [(PBFGalleryConfiguration *)v50 setComplicationSnapshotProvider:self->_complicationSnapshotService];
    extensionProvider = [(PBFPosterExtensionDataStore *)self extensionProvider];
    [(PBFGalleryConfiguration *)v50 setExtensionProvider:extensionProvider];

    [(PBFPosterExtensionDataStore *)self _notifyObserversDidUpdateGalleryConfiguration:v50];
    v13 = v54;
    layoutCopy = v55;
  }

  v52 = PBFLogPosterContents([v57 invalidate]);
  v53 = v52;
  if (v56 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v53, OS_SIGNPOST_INTERVAL_END, v13, "updateGallery", "", buf, 2u);
  }

LABEL_37:
}

void __159__PBFPosterExtensionDataStore__stateLock_updateGalleryWithSuggestedLayout_descriptorsByExtensionBundleIdentifier_staticDescriptorsByExtensionBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = PBFLogPrewarm(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __159__PBFPosterExtensionDataStore__stateLock_updateGalleryWithSuggestedLayout_descriptorsByExtensionBundleIdentifier_staticDescriptorsByExtensionBundleIdentifier___block_invoke_cold_1();
  }
}

- (void)_stateLock_pushPosterConfigurationsToProactiveWithCompletion:(id)completion
{
  completionCopy = completion;
  if (![(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    v6 = self->_stateLock_switcherConfiguration;
    configurations = [(PRSwitcherConfiguration *)v6 configurations];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __92__PBFPosterExtensionDataStore__stateLock_pushPosterConfigurationsToProactiveWithCompletion___block_invoke;
    v9[3] = &unk_2782C6338;
    v10 = configurations;
    v11 = v6;
    selfCopy = self;
    v13 = completionCopy;
    v5 = v6;
    v8 = configurations;
    PBFDispatchAsyncWithString(@"pushPosterConfigurationsToProactive", QOS_CLASS_UTILITY, v9);

    goto LABEL_5;
  }

  if (completionCopy)
  {
    v5 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v5);
LABEL_5:
  }
}

void __92__PBFPosterExtensionDataStore__stateLock_pushPosterConfigurationsToProactiveWithCompletion___block_invoke(uint64_t a1)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __92__PBFPosterExtensionDataStore__stateLock_pushPosterConfigurationsToProactiveWithCompletion___block_invoke_2;
  v9[3] = &unk_2782C6A00;
  v2 = *(a1 + 32);
  v10 = *(a1 + 40);
  v3 = [v2 bs_mapNoNulls:v9];
  if ([v3 count])
  {
    objc_initWeak(&location, *(a1 + 48));
    v4 = [MEMORY[0x277CEB530] sharedInstance];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __92__PBFPosterExtensionDataStore__stateLock_pushPosterConfigurationsToProactiveWithCompletion___block_invoke_5;
    v5[3] = &unk_2782C6A28;
    v6 = *(a1 + 56);
    objc_copyWeak(&v7, &location);
    [v4 posterBoardDidUpdateConfigurations:v3 completion:v5];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

id __92__PBFPosterExtensionDataStore__stateLock_pushPosterConfigurationsToProactiveWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _path];
  v5 = [v4 serverIdentity];
  v6 = [v5 provider];

  if (v6)
  {
    v7 = [*(a1 + 32) selectedConfiguration];
    v42 = [v7 isEqual:v3];

    v8 = [*(a1 + 32) activeConfiguration];
    v40 = [v8 isEqual:v3];

    v44 = [v3 loadSuggestionMetadataWithError:0];
    v9 = [v44 suggestedComplicationsByIdentifier];
    v10 = [v3 loadComplicationLayoutWithError:0];
    v11 = [v10 inlineComplication];
    v43 = v6;
    v39 = v11;
    if (v11)
    {
      v12 = v11;
      v13 = [v11 uniqueIdentifier];
      v14 = [v9 objectForKey:v13];
      v41 = ATXComplicationFromPRSWidget(v12, v14);
    }

    else
    {
      v41 = 0;
    }

    v16 = [v10 complications];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __92__PBFPosterExtensionDataStore__stateLock_pushPosterConfigurationsToProactiveWithCompletion___block_invoke_3;
    v48[3] = &unk_2782C69D8;
    v17 = v9;
    v49 = v17;
    v18 = [v16 bs_map:v48];

    v19 = [v10 sidebarComplications];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __92__PBFPosterExtensionDataStore__stateLock_pushPosterConfigurationsToProactiveWithCompletion___block_invoke_4;
    v46[3] = &unk_2782C69D8;
    v47 = v17;
    v38 = v17;
    v45 = [v19 bs_map:v46];

    v20 = [v3 loadFocusConfigurationWithError:0];
    v36 = [v20 activityUUID];

    v35 = [v3 loadTitleStyleConfigurationWithError:0];
    v21 = [v35 timeFontConfiguration];
    v22 = [v21 uniqueIdentifier];

    v23 = [v35 effectiveTitleColor];
    v24 = [v23 identifier];

    v25 = [v35 effectiveTimeNumberingSystem];
    [v3 _path];
    v26 = v37 = v10;
    v27 = [v26 serverIdentity];
    v28 = [v27 posterUUID];
    v29 = [v28 UUIDString];

    v30 = [v44 suggestedGalleryItem];
    v31 = objc_alloc(MEMORY[0x277CEB7A0]);
    if (v18)
    {
      v32 = v18;
    }

    else
    {
      v32 = MEMORY[0x277CBEBF8];
    }

    if (v45)
    {
      v33 = v45;
    }

    else
    {
      v33 = MEMORY[0x277CBEBF8];
    }

    v6 = v43;
    v15 = [v31 initWithExtensionBundleIdentifier:v43 active:v40 selected:v42 inlineComplication:v41 complications:v32 landscapeComplications:v33 modeUUID:v36 font:v22 color:v24 numberingSystem:v25 posterUUID:v29 galleryItem:v30];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id __92__PBFPosterExtensionDataStore__stateLock_pushPosterConfigurationsToProactiveWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 uniqueIdentifier];
  v5 = [v2 objectForKey:v4];
  v6 = ATXComplicationFromPRSWidget(v3, v5);

  return v6;
}

id __92__PBFPosterExtensionDataStore__stateLock_pushPosterConfigurationsToProactiveWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 uniqueIdentifier];
  v5 = [v2 objectForKey:v4];
  v6 = ATXComplicationFromPRSWidget(v3, v5);

  return v6;
}

void __92__PBFPosterExtensionDataStore__stateLock_pushPosterConfigurationsToProactiveWithCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PBFLogPosterContents(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "- [ATXFaceSuggestionClient posterBoardDidUpdateConfigurations:completion:] -- Error? %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained enqueueGalleryConfigurationUpdateWithOptions:10 powerLogReason:6 completion:0];
}

- (id)buildExtensionProvider
{
  v2 = objc_alloc_init(MEMORY[0x277D3EB80]);

  return v2;
}

- (void)_setupExtensionProvider
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Extension provider is nil!"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    v7 = 138544642;
    selfCopy = self;
    OUTLINED_FUNCTION_8();
    v9 = @"PBFPosterExtensionDataStore.m";
    v10 = 1024;
    v11 = 6985;
    v12 = v5;
    v13 = v2;
    OUTLINED_FUNCTION_11(&dword_21B526000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v7);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

uint64_t __54__PBFPosterExtensionDataStore__setupExtensionProvider__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEBD0];
  v3 = a2;
  v4 = [v2 pbf_ignoredExtensionIdentifiers];
  v5 = [v3 bundleIdentifier];

  LODWORD(v3) = [v4 containsObject:v5];
  return v3 ^ 1;
}

- (void)_setupExtensionEnvironment
{
  selfCopy = self;
  v63 = *MEMORY[0x277D85DE8];
  v3 = PBFLogRoleCoordinator(self);
  v4 = os_signpost_id_generate(v3);

  v6 = PBFLogRoleCoordinator(v5);
  v7 = v6;
  v8 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v4, "_setupExtensionEnvironment", "", buf, 2u);
  }

  extensionStoreCoordinatorContainerURL = [(PBFPosterExtensionDataStore *)selfCopy extensionStoreCoordinatorContainerURL];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  os_unfair_lock_lock(&selfCopy->_stateLock);
  stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier = selfCopy->_stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier;
  if (!stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier)
  {
    v43 = v4 - 1;
    v44 = v4;
    v12 = objc_opt_new();
    v13 = selfCopy->_stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier;
    v48 = selfCopy;
    selfCopy->_stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier = v12;

    v55 = 0;
    v42 = defaultManager;
    v14 = [defaultManager contentsOfDirectoryAtURL:extensionStoreCoordinatorContainerURL includingPropertiesForKeys:0 options:5 error:&v55];
    v41 = v55;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v14;
    v15 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
    if (!v15)
    {
      goto LABEL_22;
    }

    v16 = v15;
    v17 = *v52;
    v46 = *MEMORY[0x277CCA470];
    v47 = *v52;
    v45 = extensionStoreCoordinatorContainerURL;
    while (1)
    {
      v18 = 0;
      v49 = v16;
      do
      {
        if (*v52 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v51 + 1) + 8 * v18);
        filePathURL = [extensionStoreCoordinatorContainerURL filePathURL];
        lastPathComponent = [v19 lastPathComponent];
        v22 = [filePathURL URLByAppendingPathComponent:lastPathComponent];

        lastPathComponent2 = [v22 lastPathComponent];
        v24 = [[PBFPosterExtensionStoreCoordinator alloc] initWithContainerURL:v22 extensionIdentifier:lastPathComponent2];
        v25 = v24;
        if (v24)
        {
          setupEnvironmentIfNecessary = [(PBFPosterExtensionStoreCoordinator *)v24 setupEnvironmentIfNecessary];
          v27 = setupEnvironmentIfNecessary;
          if (setupEnvironmentIfNecessary)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v29 = MEMORY[0x277CCA9B8];
          v60 = v46;
          v61 = @"Unable to setup extension store coordinator";
          v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
          v27 = [v29 pbf_dataStoreErrorWithCode:-2219 userInfo:v30];

          if (v27)
          {
LABEL_12:
            v28 = PBFLogPosterContents(setupEnvironmentIfNecessary);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v57 = v22;
              v58 = 2114;
              v59 = v27;
              _os_log_error_impl(&dword_21B526000, v28, OS_LOG_TYPE_ERROR, "Error setting up extension file system environment at URL '%{public}@': %{public}@", buf, 0x16u);
            }

            goto LABEL_20;
          }
        }

        posterStaticDescriptorLatestVersionPaths = [(PBFPosterExtensionStoreCoordinator *)v25 posterStaticDescriptorLatestVersionPaths];
        allObjects = [posterStaticDescriptorLatestVersionPaths allObjects];
        v28 = [allObjects sortedArrayUsingSelector:sel_compareDescriptorIdentifiers_];

        dynamicPosterDescriptorLatestVersionPaths = [(PBFPosterExtensionStoreCoordinator *)v25 dynamicPosterDescriptorLatestVersionPaths];
        allObjects2 = [dynamicPosterDescriptorLatestVersionPaths allObjects];
        v35 = [allObjects2 sortedArrayUsingSelector:sel_compareDescriptorIdentifiers_];

        if ([v35 count])
        {
          [(NSMutableDictionary *)v48->_stateLock_descriptorsForExtensionBundleIdentifier setObject:v35 forKeyedSubscript:lastPathComponent2];
        }

        if ([v28 count])
        {
          [(NSMutableDictionary *)v48->_stateLock_staticDescriptorsForExtensionBundleIdentifier setObject:v28 forKeyedSubscript:lastPathComponent2];
        }

        [(NSMutableDictionary *)v48->_stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier setObject:v25 forKey:lastPathComponent2];
        os_unfair_lock_lock(&v48->_extensionProvidingLock);
        [(NSMutableDictionary *)v48->_extensionProvidingLock_extensionStoreCoordinatorForExtensionBundleIdentifier setObject:v25 forKey:lastPathComponent2];
        os_unfair_lock_unlock(&v48->_extensionProvidingLock);

        extensionStoreCoordinatorContainerURL = v45;
        v17 = v47;
        v16 = v49;
LABEL_20:

        ++v18;
      }

      while (v16 != v18);
      v16 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
      if (!v16)
      {
LABEL_22:

        selfCopy = v48;
        stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier = v48->_stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier;
        v8 = v43;
        v4 = v44;
        defaultManager = v42;
        break;
      }
    }
  }

  v36 = [(NSMutableDictionary *)stateLock_extensionStoreCoordinatorForExtensionBundleIdentifier mutableCopy];
  os_unfair_lock_unlock(&selfCopy->_stateLock);
  os_unfair_lock_lock(&selfCopy->_extensionProvidingLock);
  extensionProvidingLock_extensionStoreCoordinatorForExtensionBundleIdentifier = selfCopy->_extensionProvidingLock_extensionStoreCoordinatorForExtensionBundleIdentifier;
  selfCopy->_extensionProvidingLock_extensionStoreCoordinatorForExtensionBundleIdentifier = v36;

  os_unfair_lock_unlock(&selfCopy->_extensionProvidingLock);
  v39 = PBFLogRoleCoordinator(v38);
  v40 = v39;
  if (v8 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v40, OS_SIGNPOST_INTERVAL_END, v4, "_setupExtensionEnvironment", "", buf, 2u);
  }
}

- (void)_stateLock_setupRoleCoordinatorsIfNeeded
{
  v73 = *MEMORY[0x277D85DE8];
  getFlag = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if ((getFlag & 1) == 0)
  {
    selfCopy = self;
    v4 = PBFLogRoleCoordinator(getFlag);
    spid = os_signpost_id_generate(v4);

    v6 = PBFLogRoleCoordinator(v5);
    v7 = v6;
    v36 = spid - 1;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v7, OS_SIGNPOST_INTERVAL_BEGIN, spid, "setupRoleCoordinatorsIfNeeded", "", buf, 2u);
    }

    if (!selfCopy->_roleToRoleCoordinator)
    {
      stateLock_maximumPosterConfigurationCount = selfCopy->_stateLock_maximumPosterConfigurationCount;
      v46 = [(NSSet *)selfCopy->_stateLock_fromExtensions copy];
      v41 = objc_opt_new();
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      obj = [objc_opt_class() supportedRoles];
      v47 = [obj countByEnumeratingWithState:&v63 objects:v72 count:16];
      if (!v47)
      {
        goto LABEL_42;
      }

      v44 = *MEMORY[0x277D3EEF0];
      v45 = *v64;
      v42 = *MEMORY[0x277D3EE98];
      v38 = *MEMORY[0x277D3EEE0];
      v39 = *MEMORY[0x277D3EEE8];
      while (1)
      {
        v9 = 0;
        do
        {
          if (*v64 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v63 + 1) + 8 * v9);
          v11 = objc_opt_new();
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v12 = v46;
          v13 = [v12 countByEnumeratingWithState:&v59 objects:v71 count:16];
          if (v13)
          {
            v14 = *v60;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v60 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                v16 = *(*(&v59 + 1) + 8 * i);
                supportedRoles = [v16 supportedRoles];
                v18 = [supportedRoles containsObject:v10];

                if (v18)
                {
                  posterExtensionBundleIdentifier = [v16 posterExtensionBundleIdentifier];
                  [v11 addObject:posterExtensionBundleIdentifier];
                }
              }

              v13 = [v12 countByEnumeratingWithState:&v59 objects:v71 count:16];
            }

            while (v13);
          }

          if ([v10 isEqual:v44])
          {
            v20 = [[PBFLockScreenRoleCoordinator alloc] initWithStorage:selfCopy->_database modelCoordinatorProvider:selfCopy providers:v11];
LABEL_26:
            v21 = v20;
            goto LABEL_27;
          }

          if ([v10 isEqual:v42])
          {
            v20 = [[PBFAmbientRoleCoordinator alloc] initWithStorage:selfCopy->_database modelCoordinatorProvider:selfCopy providers:v11];
            goto LABEL_26;
          }

          if ([v10 isEqual:v39])
          {
            v20 = [[PBFIncomingCallRoleCoordinator alloc] initWithStorage:selfCopy->_database modelCoordinatorProvider:selfCopy providers:v11];
            goto LABEL_26;
          }

          v28 = [v10 isEqual:v38];
          if (v28)
          {
            v29 = PBFLogRoleCoordinator(v28);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_21B526000, v29, OS_LOG_TYPE_DEFAULT, "PRPosterRoleBackdrop does not necessitate a role coordinator.", buf, 2u);
            }
          }

          v21 = 0;
LABEL_27:
          [(PBFPosterRoleCoordinator *)v21 setDelegate:selfCopy, v36];
          *buf = 0;
          v54 = buf;
          v55 = 0x3032000000;
          v56 = __Block_byref_object_copy_;
          v57 = __Block_byref_object_dispose_;
          v58 = 0;
          database = selfCopy->_database;
          v50[0] = MEMORY[0x277D85DD0];
          v50[1] = 3221225472;
          v50[2] = __71__PBFPosterExtensionDataStore__stateLock_setupRoleCoordinatorsIfNeeded__block_invoke;
          v50[3] = &unk_2782C6A70;
          v52 = buf;
          v23 = v21;
          v51 = v23;
          v49 = 0;
          v24 = [(PBFPosterExtensionDataStoreSQLiteDatabase *)database performChanges:v50 error:&v49];
          v25 = v49;
          v26 = v25;
          if (v23 && (*(v54 + 5) | v25) == 0 && v24)
          {
            [(PBFPosterRoleCoordinator *)v23 setMaximumNumberOfPosters:stateLock_maximumPosterConfigurationCount];
            role = [(PBFPosterRoleCoordinator *)v23 role];
            [v41 setObject:v23 forKey:role];
          }

          else
          {
            role = PBFLogRoleCoordinator(v25);
            if (os_log_type_enabled(role, OS_LOG_TYPE_ERROR))
            {
              v30 = *(v54 + 5);
              if (!v30)
              {
                v30 = v26;
              }

              *v67 = 138543618;
              v68 = v10;
              v69 = 2114;
              v70 = v30;
              _os_log_error_impl(&dword_21B526000, role, OS_LOG_TYPE_ERROR, "Failed to setup role coordinator for role '%{public}@': %{public}@", v67, 0x16u);
            }
          }

          _Block_object_dispose(buf, 8);
          ++v9;
        }

        while (v9 != v47);
        v31 = [obj countByEnumeratingWithState:&v63 objects:v72 count:16];
        v47 = v31;
        if (!v31)
        {
LABEL_42:

          v32 = [v41 copy];
          roleToRoleCoordinator = selfCopy->_roleToRoleCoordinator;
          selfCopy->_roleToRoleCoordinator = v32;

          break;
        }
      }
    }

    v34 = PBFLogRoleCoordinator(v8);
    v35 = v34;
    if (v36 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v34))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v35, OS_SIGNPOST_INTERVAL_END, spid, "setupRoleCoordinatorsIfNeeded", "", buf, 2u);
    }
  }
}

BOOL __71__PBFPosterExtensionDataStore__stateLock_setupRoleCoordinatorsIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) setupRoleIfNecessaryWithStorage:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(*(a1 + 40) + 8) + 40) == 0;
}

- (BOOL)resetRole:(id)role error:(id *)error
{
  v29[2] = *MEMORY[0x277D85DE8];
  roleCopy = role;
  if (![(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    v8 = [(NSDictionary *)self->_roleToRoleCoordinator objectForKeyedSubscript:roleCopy];
    v9 = v8;
    if (!v8)
    {
      if (error)
      {
        v20 = MEMORY[0x277CCA9B8];
        v28[0] = *MEMORY[0x277CCA470];
        v28[1] = @"role";
        v21 = @"(null role)";
        if (roleCopy)
        {
          v21 = roleCopy;
        }

        v29[0] = @"RoleCoordinator not setup for role";
        v29[1] = v21;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
        *error = [v20 pbf_generalErrorWithCode:1 userInfo:v22];
      }

      v13 = PBFLogRoleCoordinator(v8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterExtensionDataStore resetRole:error:];
      }

      v7 = 0;
      goto LABEL_28;
    }

    v10 = PBFLogRoleCoordinator(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = roleCopy;
      _os_log_impl(&dword_21B526000, v10, OS_LOG_TYPE_DEFAULT, "Executing reset of role %{public}@", buf, 0xCu);
    }

    v11 = [PBFPosterDataStoreEventBuilder resetRole:roleCopy];
    v24 = 0;
    v12 = [v11 buildWithError:&v24];
    v13 = v24;

    if (v12)
    {
      os_unfair_lock_lock(&self->_stateLock);
      v25 = v12;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
      v16 = [(PBFPosterExtensionDataStore *)self _stateLock_processEvents:v15 context:0 error:error];

      os_unfair_lock_unlock(&self->_stateLock);
      v18 = PBFLogRoleCoordinator(v17);
      v19 = v18;
      if (v16)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v27 = roleCopy;
          _os_log_impl(&dword_21B526000, v19, OS_LOG_TYPE_DEFAULT, "Reset of role %{public}@; role coordinator finished with success", buf, 0xCu);
        }

        v7 = 1;
        goto LABEL_27;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterExtensionDataStore resetRole:error:];
      }
    }

    else
    {
      if (error)
      {
        v14 = v13;
        *error = v13;
      }

      v19 = PBFLogRoleCoordinator(v14);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterExtensionDataStore resetRole:error:];
      }
    }

    v7 = 0;
LABEL_27:

LABEL_28:
    goto LABEL_29;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    *error = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_29:

  return v7;
}

- (void)posterExtensionProvider:(id)provider updatedExtensionsFrom:(id)from to:(id)to
{
  toCopy = to;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    os_unfair_lock_lock(&self->_stateLock);
    [(PBFPosterExtensionDataStore *)self _stateLock_executeExtensionUpdate:toCopy];
    v7 = [(NSMutableArray *)self->_stateLock_updateExtensionCompletionBlocks copy];
    stateLock_updateExtensionCompletionBlocks = self->_stateLock_updateExtensionCompletionBlocks;
    self->_stateLock_updateExtensionCompletionBlocks = 0;

    os_unfair_lock_unlock(&self->_stateLock);
    if ([v7 count])
    {
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PBFPosterExtensionDataStore posterExtensionProvider:updatedExtensionsFrom:to:]"];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __80__PBFPosterExtensionDataStore_posterExtensionProvider_updatedExtensionsFrom_to___block_invoke;
      v10[3] = &unk_2782C5888;
      v11 = v7;
      PBFDispatchAsyncWithString(v9, QOS_CLASS_USER_INITIATED, v10);
    }
  }
}

void __80__PBFPosterExtensionDataStore_posterExtensionProvider_updatedExtensionsFrom_to___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)_stateLock_executeExtensionUpdate:(id)update
{
  v22 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if ([updateCopy count])
  {
    os_unfair_lock_assert_owner(&self->_stateLock);
    if ([(PBFPosterExtensionDataStore *)self _stateLock_hasBeenUnlockedSinceBoot])
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v6 = [standardUserDefaults stringForKey:@"stashedBuildVersionString"];
      v7 = [objc_alloc(MEMORY[0x277CF0BB0]) initWithString:v6];
      v8 = objc_alloc_init(MEMORY[0x277CF0BB0]);
      bOOLValue = [(NSNumber *)self->_stateLock_wasMigrationJustPerformed BOOLValue];
      if ((bOOLValue & 1) != 0 || (bOOLValue = [v7 isEqual:v8], (bOOLValue & 1) == 0))
      {
        v11 = PBFLogDataStore(bOOLValue);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          bOOLValue2 = [(NSNumber *)self->_stateLock_wasMigrationJustPerformed BOOLValue];
          v19[0] = 67109376;
          v19[1] = bOOLValue2;
          v20 = 1024;
          v21 = [v7 isEqual:v8] ^ 1;
          _os_log_impl(&dword_21B526000, v11, OS_LOG_TYPE_DEFAULT, "Overriding refresh strategy to PBFDescriptorRefreshStrategyRefreshAlways because %{BOOL}u or the stashed build version is mismatched: %{BOOL}u", v19, 0xEu);
        }

        stateLock_wasMigrationJustPerformed = self->_stateLock_wasMigrationJustPerformed;
        self->_stateLock_wasMigrationJustPerformed = 0;

        stateLock_initialRoleCoordinatorSetupPerformed = 3;
      }

      else
      {
        stateLock_initialRoleCoordinatorSetupPerformed = self->_stateLock_initialRoleCoordinatorSetupPerformed;
      }
    }

    else
    {
      stateLock_initialRoleCoordinatorSetupPerformed = 0;
    }

    [(PBFPosterExtensionDataStore *)self _stateLock_updateExtensions:updateCopy refreshDescriptors:stateLock_initialRoleCoordinatorSetupPerformed powerLogReason:4 galleryUpdateOptions:2 queuedUpOperations:0];
    if ([(PBFPosterExtensionDataStore *)self _stateLock_hasBeenUnlockedSinceBoot])
    {
      standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v15 = [standardUserDefaults2 stringForKey:@"stashedBuildVersionString"];
      v16 = [objc_alloc(MEMORY[0x277CF0BB0]) initWithString:v15];
      v17 = objc_alloc_init(MEMORY[0x277CF0BB0]);
      if (([v17 isEqual:v16] & 1) == 0)
      {
        stringRepresentation = [v17 stringRepresentation];
        [standardUserDefaults2 setObject:stringRepresentation forKey:@"stashedBuildVersionString"];
      }
    }
  }
}

- (BOOL)_forceExtensionUpdate:(id)update
{
  updateCopy = update;
  v5 = MEMORY[0x21CEF7340]("[PBFPosterExtensionDataStore _forceExtensionUpdate:]");
  if (v5)
  {
    os_unfair_lock_lock(&self->_stateLock);
    [(PBFPosterExtensionDataStore *)self _stateLock_updateExtensions:updateCopy refreshDescriptors:2 powerLogReason:4 galleryUpdateOptions:2 queuedUpOperations:0];
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return v5;
}

- (void)roleProcessor:(id)processor transactionFinished:(id)finished success:(BOOL)success results:(id)results error:(id)error
{
  successCopy = success;
  v79 = *MEMORY[0x277D85DE8];
  finishedCopy = finished;
  resultsCopy = results;
  errorCopy = error;
  os_unfair_lock_assert_owner(&self->_stateLock);
  shortIdentifier = [finishedCopy shortIdentifier];
  reason = [finishedCopy reason];
  selfCopy = self;
  getFlag = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if (!getFlag)
  {
    v58 = errorCopy;
    userInfo = [finishedCopy userInfo];
    v17 = [userInfo objectForKey:@"updateOptions"];
    if (v17)
    {
      userInfo2 = [finishedCopy userInfo];
      v19 = [userInfo2 objectForKey:@"updateOptions"];
      unsignedIntegerValue = [v19 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    context = [finishedCopy context];
    v20 = PBFLogDataStore(context);
    v21 = v20;
    if (successCopy)
    {
      v57 = finishedCopy;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v75 = shortIdentifier;
        _os_log_impl(&dword_21B526000, v21, OS_LOG_TYPE_DEFAULT, "(%{public}@} notifying roles of changes", buf, 0xCu);
      }

      v64 = objc_opt_new();
      v60 = objc_opt_new();
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      obj = [resultsCopy affectedRoles];
      v22 = [obj countByEnumeratingWithState:&v70 objects:v78 count:16];
      v66 = v22;
      if (v22)
      {
        v61 = *v71;
        v62 = resultsCopy;
        do
        {
          v23 = 0;
          do
          {
            if (*v71 != v61)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v70 + 1) + 8 * v23);
            v25 = PBFLogDataStore(v22);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v75 = shortIdentifier;
              v76 = 2114;
              v77 = v24;
              _os_log_impl(&dword_21B526000, v25, OS_LOG_TYPE_DEFAULT, "(%{public}@} notifying %{public}@ of changes", buf, 0x16u);
            }

            v26 = [(NSDictionary *)selfCopy->_roleToRoleCoordinator objectForKey:v24];
            collectionDiffsPerRole = [resultsCopy collectionDiffsPerRole];
            v28 = [collectionDiffsPerRole objectForKey:v24];

            newCollection = [v28 newCollection];
            if ((-[NSObject isInitialUpdate](context, "isInitialUpdate") & 1) != 0 || ([v28 isEqual] & 1) == 0)
            {
              orderedPosters = [newCollection orderedPosters];
              array = [orderedPosters array];
              [(__CFString *)v60 setObject:array forKeyedSubscript:v24];
            }

            isInitialUpdate = [context isInitialUpdate];
            if (isInitialUpdate)
            {
              isInitialUpdate = [objc_alloc(MEMORY[0x277D3ED38]) initWithCollection:0 newCollection:newCollection];
              v33 = isInitialUpdate;
            }

            else
            {
              v33 = 0;
            }

            v34 = PBFLogDataStore(isInitialUpdate);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v75 = shortIdentifier;
              v76 = 2114;
              v77 = v24;
              _os_log_impl(&dword_21B526000, v34, OS_LOG_TYPE_DEFAULT, "(%{public}@} Updating active path assertions for role %{public}@ ", buf, 0x16u);
            }

            if ([context isInitialUpdate])
            {
              v35 = v33;
            }

            else
            {
              v35 = v28;
            }

            v67 = v26;
            v36 = v26;
            v37 = context;
            [(PBFPosterExtensionDataStore *)selfCopy _stateLock_setupPathAssertionsAndUpdateActivePosterFromDiff:v35 roleCoordinator:v36 context:context];
            preCommitActivePosterConfigurationForRole = [resultsCopy preCommitActivePosterConfigurationForRole];
            v39 = [preCommitActivePosterConfigurationForRole objectForKey:v24];

            v40 = [(PBFPosterExtensionDataStore *)selfCopy activePosterConfigurationForRole:v24 assocPoster:0];
            v41 = PBFLogDataStore(v40);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v75 = shortIdentifier;
              v76 = 2114;
              v77 = v24;
              _os_log_impl(&dword_21B526000, v41, OS_LOG_TYPE_DEFAULT, "(%{public}@} Issuing update notifications for role %{public}@ ", buf, 0x16u);
            }

            if (v33)
            {
              v42 = v33;
            }

            else
            {
              v42 = v28;
            }

            [(PBFPosterExtensionDataStore *)selfCopy _stateLock_pushUpdateNotificationsForRole:v24 diff:v42 previouslyActiveConfiguration:v39 newActiveConfiguration:v40 options:unsignedIntegerValue reason:reason context:v37];
            [v64 bs_setSafeObject:v40 forKey:v24];
            v43 = BSEqualObjects();
            v44 = v43;
            v45 = PBFLogDataStore(v43);
            v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
            if (v44)
            {
              if (!v46)
              {
                goto LABEL_39;
              }

              *buf = 138543618;
              v75 = shortIdentifier;
              v76 = 2114;
              v77 = v24;
              v47 = v45;
              v48 = "(%{public}@} Aborting update of active configurations for %{public}@; no change needed";
            }

            else
            {
              if (!v46)
              {
                goto LABEL_39;
              }

              *buf = 138543618;
              v75 = shortIdentifier;
              v76 = 2114;
              v77 = v24;
              v47 = v45;
              v48 = "(%{public}@} Updating active configurations for %{public}@ ";
            }

            _os_log_impl(&dword_21B526000, v47, OS_LOG_TYPE_DEFAULT, v48, buf, 0x16u);
LABEL_39:

            ++v23;
            resultsCopy = v62;
            context = v37;
          }

          while (v66 != v23);
          v22 = [obj countByEnumeratingWithState:&v70 objects:v78 count:16];
          v66 = v22;
        }

        while (v22);
      }

      v21 = v64;
      if ([v64 count])
      {
        _stateLock_updatedSuggestionDescriptorPathsForPosterUUID = [(PBFPosterExtensionDataStore *)selfCopy _stateLock_updatedSuggestionDescriptorPathsForPosterUUID];
        v50 = PBFLogDataStore(_stateLock_updatedSuggestionDescriptorPathsForPosterUUID);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v75 = shortIdentifier;
          v76 = 2114;
          v77 = v64;
          _os_log_impl(&dword_21B526000, v50, OS_LOG_TYPE_DEFAULT, "(%{public}@} Pushing out active poster for roles update %{public}@", buf, 0x16u);
        }

        [(PBFPosterExtensionDataStore *)selfCopy _notifyObserversDidUpdateActivePosterForRoles:v64 suggestionDescriptors:_stateLock_updatedSuggestionDescriptorPathsForPosterUUID];
      }

      else
      {
        _stateLock_updatedSuggestionDescriptorPathsForPosterUUID = PBFLogDataStore(0);
        if (os_log_type_enabled(_stateLock_updatedSuggestionDescriptorPathsForPosterUUID, OS_LOG_TYPE_DEFAULT))
        {
          isInitialUpdate2 = [context isInitialUpdate];
          v52 = @"no changes";
          if (isInitialUpdate2)
          {
            v52 = @"isInitialUpdate";
          }

          *buf = 138543618;
          v75 = shortIdentifier;
          v76 = 2114;
          v77 = v52;
          _os_log_impl(&dword_21B526000, _stateLock_updatedSuggestionDescriptorPathsForPosterUUID, OS_LOG_TYPE_DEFAULT, "(%{public}@} *NOT* pushing out active poster for roles update; %{public}@", buf, 0x16u);
        }
      }

      finishedCopy = v57;

      v53 = [(__CFString *)v60 count];
      v54 = PBFLogDataStore(v53);
      v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT);
      if (v53)
      {
        if (v55)
        {
          *buf = 138543618;
          v75 = shortIdentifier;
          v76 = 2114;
          v77 = v60;
          _os_log_impl(&dword_21B526000, v54, OS_LOG_TYPE_DEFAULT, "(%{public}@} Pushing out updated poster collections for roles update %{public}@", buf, 0x16u);
        }

        v56 = v60;
        [(PBFPosterExtensionDataStore *)selfCopy _notifyObserversDidUpdatePosterCollectionsForRoles:v60];
        errorCopy = v58;
      }

      else
      {
        if (v55)
        {
          *buf = 138543362;
          v75 = shortIdentifier;
          _os_log_impl(&dword_21B526000, v54, OS_LOG_TYPE_DEFAULT, "(%{public}@} *NOT* pushing out updated poster collections for roles update; no updated poster collections", buf, 0xCu);
        }

        errorCopy = v58;
        v56 = v60;
      }
    }

    else
    {
      errorCopy = v58;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterExtensionDataStore _stateLock_executeDataStoreUpdateWithChanges:diffs:options:reason:context:error:];
      }
    }

    goto LABEL_60;
  }

  context = PBFLogDataStore(getFlag);
  if (os_log_type_enabled(context, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v75 = shortIdentifier;
    _os_log_impl(&dword_21B526000, context, OS_LOG_TYPE_DEFAULT, "(%{public}@} Data store invalidated. Role Processor is bailing.", buf, 0xCu);
  }

LABEL_60:
}

- (void)assertionManager:(id)manager identityIsNowMarkedAsInUse:(id)use
{
  v8 = *MEMORY[0x277D85DE8];
  useCopy = use;
  v5 = PBFLogDataStore(useCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = useCopy;
    _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_DEFAULT, "Path '%@', is now marked as inuse", &v6, 0xCu);
  }
}

- (void)assertionManager:(id)manager identityIsNowMarkedAsNOTInUse:(id)use
{
  v13 = *MEMORY[0x277D85DE8];
  useCopy = use;
  v6 = PBFLogDataStore(useCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = useCopy;
    _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_DEFAULT, "Identity '%@' is no longer marked in use; will remove.", buf, 0xCu);
  }

  v10 = 0;
  [(PBFPosterExtensionDataStore *)self _executeCleanupOfServerPosterIdentity:useCopy error:&v10];
  v7 = v10;
  v8 = PBFLogDataStore(v7);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PBFPosterExtensionDataStore assertionManager:identityIsNowMarkedAsNOTInUse:];
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = useCopy;
    _os_log_impl(&dword_21B526000, v9, OS_LOG_TYPE_DEFAULT, "Identity '%@' was cleaned up successfully", buf, 0xCu);
  }
}

- (BOOL)_executeCleanupOfServerPosterIdentity:(id)identity error:(id *)error
{
  v65 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  v7 = [(PBFPosterSnapshotManager *)self->_snapshotManager hasRequestsInFlightForIdentity:identityCopy];
  v8 = v7;
  v9 = PBFLogDataStore(v7);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (v10)
    {
      *buf = 138412290;
      v64 = identityCopy;
      _os_log_impl(&dword_21B526000, v9, OS_LOG_TYPE_DEFAULT, "Identity '%@' has *NO* snapshots in flight for clients; cleaning up now", buf, 0xCu);
    }

    posterUUID = [(__CFString *)identityCopy posterUUID];
    provider = [(__CFString *)identityCopy provider];
    knownExtensions = [(PBFPosterExtensionDataStore *)self knownExtensions];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __75__PBFPosterExtensionDataStore__executeCleanupOfServerPosterIdentity_error___block_invoke;
    v55[3] = &unk_2782C5EC0;
    v16 = provider;
    v56 = v16;
    v17 = [knownExtensions bs_containsObjectPassingTest:v55];

    if ((v17 & 1) == 0)
    {
      v30 = PBFLogDataStore(v18);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v64 = v16;
        _os_log_impl(&dword_21B526000, v30, OS_LOG_TYPE_DEFAULT, "Extension '%@' has been removed; will not delete underlying configurations.", buf, 0xCu);
      }

      if (!error)
      {
        v13 = 0;
LABEL_44:

        goto LABEL_45;
      }

      v31 = MEMORY[0x277CCA9B8];
      v59 = *MEMORY[0x277CCA470];
      v60 = @"Extension could not be found; we don't delete posters when their extensions aren't found; they may come back.";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      [v31 pbf_dataStoreErrorWithCode:-2220 userInfo:v20];
      *error = v13 = 0;
LABEL_43:

      goto LABEL_44;
    }

    v54 = 0;
    v19 = [(PBFPosterExtensionDataStore *)self pbf_posterExtensionStoreCoordinatorForProviderIdentifier:v16 error:&v54];
    v20 = v54;
    v21 = [v19 modelStoreCoordinatorForPosterUUID:posterUUID];
    v22 = v21;
    if (v19 && v21)
    {
      [MEMORY[0x277D46DB8] pf_finishTaskInterruptableWithExplanation:@"cleanup after poster" invalidationHandler:0];
      v45 = v53 = 0;
      [v45 acquireWithError:&v53];
      v23 = v53;
      v46 = v23;
      if (v23)
      {
        v24 = PBFLogDataStore(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [PBFPosterExtensionDataStore _executeCleanupOfServerPosterIdentity:error:];
        }
      }

      v52 = 0;
      v47 = v22;
      [v22 removeSupplement:-[__CFString supplement](identityCopy forVersion:"supplement") error:{-[__CFString version](identityCopy, "version"), &v52}];
      v25 = v52;
      v26 = PBFLogDataStore(v25);
      v27 = v26;
      if (v25)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [PBFPosterExtensionDataStore _executeCleanupOfServerPosterIdentity:error:];
        }
      }

      else
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v64 = identityCopy;
          _os_log_impl(&dword_21B526000, v27, OS_LOG_TYPE_DEFAULT, "Successfully cleaned up after path: %@", buf, 0xCu);
        }

        hasKnownVersions = [v47 hasKnownVersions];
        if (hasKnownVersions)
        {
          v25 = 0;
          v28 = v45;
LABEL_20:
          [v28 invalidate];
          if (error && v25)
          {
            v29 = v25;
            *error = v25;
          }

          v13 = v25 == 0;

          v22 = v47;
          goto LABEL_42;
        }

        v38 = PBFLogDataStore(hasKnownVersions);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v64 = posterUUID;
          _os_log_impl(&dword_21B526000, v38, OS_LOG_TYPE_DEFAULT, "Model store coordinator for posterUUID '%@' has no known versions; tearing down", buf, 0xCu);
        }

        v51 = 0;
        [v19 teardownConfigurationStoreCoordinatorForPosterUUID:posterUUID error:&v51];
        v27 = v51;
        v39 = PBFLogDataStore(v27);
        v40 = v39;
        if (!v27)
        {
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v64 = posterUUID;
            _os_log_impl(&dword_21B526000, v40, OS_LOG_TYPE_DEFAULT, "Performing backstop database cleanup for posterUUID '%@'", buf, 0xCu);
          }

          database = self->_database;
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __75__PBFPosterExtensionDataStore__executeCleanupOfServerPosterIdentity_error___block_invoke_969;
          v49[3] = &unk_2782C6A98;
          v50 = posterUUID;
          v48 = 0;
          [(PBFPosterExtensionDataStoreSQLiteDatabase *)database performChanges:v49 error:&v48];
          v42 = v48;
          v25 = v42;
          v28 = v45;
          if (v42)
          {
            v43 = PBFLogDataStore(v42);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              [PBFPosterExtensionDataStore _executeCleanupOfServerPosterIdentity:error:];
            }

            v44 = v25;
          }

          goto LABEL_19;
        }

        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [PBFPosterExtensionDataStore _executeCleanupOfServerPosterIdentity:error:];
        }

        v27 = v27;
        v25 = v27;
      }

      v28 = v45;
LABEL_19:

      goto LABEL_20;
    }

    if (error)
    {
      if (v20)
      {
        v32 = v20;
        v13 = 0;
        *error = v20;
LABEL_42:

        goto LABEL_43;
      }

      v34 = MEMORY[0x277CCA9B8];
      if (v16)
      {
        v35 = v16;
      }

      else
      {
        v35 = @"(null posterProvider)";
      }

      v57 = @"posterProvider";
      v58 = v35;
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      *error = [v34 pbf_dataStoreErrorWithCode:-2217 userInfo:v36];
    }

    v13 = 0;
    goto LABEL_42;
  }

  if (v10)
  {
    *buf = 138412290;
    v64 = identityCopy;
    _os_log_impl(&dword_21B526000, v9, OS_LOG_TYPE_DEFAULT, "Identity '%@' has snapshots in flight for clients; we will let them finish and cleanup later", buf, 0xCu);
  }

  if (error)
  {
    v11 = MEMORY[0x277CCA9B8];
    v61 = *MEMORY[0x277CCA470];
    v62 = @"snapshots are in progress for this poster.  Will be cleaned up next time datastore is initialized.";
    posterUUID = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    [v11 pbf_dataStoreErrorWithCode:-2212 userInfo:posterUUID];
    *error = v13 = 0;
LABEL_45:

    goto LABEL_46;
  }

  v13 = 0;
LABEL_46:

  return v13;
}

uint64_t __75__PBFPosterExtensionDataStore__executeCleanupOfServerPosterIdentity_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 posterExtensionBundleIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)roleCoordinatorWasReset:(id)reset processInitialStateSetupEvents:(id *)events
{
  extensionProvider = self->_extensionProvider;
  resetCopy = reset;
  knownPosterExtensions = [(PFPosterExtensionProvider *)extensionProvider knownPosterExtensions];
  os_unfair_lock_lock(&self->_extensionProvidingLock);
  objectEnumerator = [(NSMutableDictionary *)self->_extensionProvidingLock_extensionStoreCoordinatorForExtensionBundleIdentifier objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  os_unfair_lock_unlock(&self->_extensionProvidingLock);
  v10 = [objc_opt_class() buildInitialStateSetupEventsForRoleCoordinator:resetCopy extensionHandlers:knownPosterExtensions extensionStoreCoordinators:allObjects];

  v11 = v10;
  *events = v10;
}

- (id)buildPrewarmPlanWithIdentifier:(id)identifier refreshStrategy:(int64_t)strategy galleryUpdateOptions:(unint64_t)options powerLogReason:(int64_t)reason cleanupOldResources:(BOOL)resources prewarmDisplayContext:(id)context
{
  resourcesCopy = resources;
  identifierCopy = identifier;
  contextCopy = context;
  if (!contextCopy)
  {
    contextCopy = +[PBFGenericDisplayContext mainScreen];
  }

  v14 = MEMORY[0x277CBEB98];
  allKeys = [(NSDictionary *)self->_roleToRoleCoordinator allKeys];
  v16 = [v14 setWithArray:allKeys];

  v17 = objc_alloc_init(PBFMutablePosterExtensionDataStorePrewarmPlan);
  [(PBFPosterExtensionDataStorePrewarmPlan *)v17 setIdentifier:identifierCopy];
  v18 = self->_invalidationFlag;
  v34 = self->_snapshotManager;
  objc_initWeak(location, self);
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke;
  v58[3] = &unk_2782C6AE8;
  objc_copyWeak(v61, location);
  v19 = v18;
  v59 = v19;
  v61[1] = strategy;
  v61[2] = reason;
  v20 = identifierCopy;
  v60 = v20;
  [(PBFMutablePosterExtensionDataStorePrewarmPlan *)v17 setExecutionBlock:v58 forPhase:@"PBFPrewarmPhaseReloadDescriptors"];
  if ([v16 bs_containsObjectPassingTest:&__block_literal_global_978])
  {
    v31 = v16;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_4;
    v54[3] = &unk_2782C6B38;
    objc_copyWeak(&v57, location);
    v21 = v19;
    v55 = v21;
    v22 = v20;
    v56 = v22;
    [(PBFMutablePosterExtensionDataStorePrewarmPlan *)v17 setExecutionBlock:v54 forPhase:@"PBFPrewarmPhasePushToProactive"];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_982;
    v50[3] = &unk_2782C6AE8;
    objc_copyWeak(v53, location);
    v23 = v21;
    v51 = v23;
    v24 = v22;
    v52 = v24;
    v53[1] = options;
    v53[2] = reason;
    [(PBFMutablePosterExtensionDataStorePrewarmPlan *)v17 setExecutionBlock:v50 forPhase:@"PBFPrewarmPhaseAcquireNewGallery"];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_987;
    v43[3] = &unk_2782C6BD0;
    objc_copyWeak(v49, location);
    v25 = v23;
    v44 = v25;
    v26 = contextCopy;
    v49[1] = reason;
    v45 = v26;
    selfCopy = self;
    v27 = v24;
    v47 = v27;
    v28 = v34;
    v48 = v28;
    [(PBFMutablePosterExtensionDataStorePrewarmPlan *)v17 setExecutionBlock:v43 forPhase:@"PBFPrewarmPhaseSnapshotSwitcher"];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_3_1001;
    v36[3] = &unk_2782C6C48;
    objc_copyWeak(&v42, location);
    v37 = v25;
    v38 = v26;
    selfCopy2 = self;
    v40 = v27;
    v41 = v28;
    [(PBFMutablePosterExtensionDataStorePrewarmPlan *)v17 setExecutionBlock:v36 forPhase:@"PBFPrewarmPhaseSnapshotGallery"];

    objc_destroyWeak(&v42);
    objc_destroyWeak(v49);

    objc_destroyWeak(v53);
    objc_destroyWeak(&v57);
    v16 = v31;
  }

  if (resourcesCopy)
  {
    [(PBFMutablePosterExtensionDataStorePrewarmPlan *)v17 appendPrewarmPhase:@"PBFPrewarmPhaseFileSystemCleanup"];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_3_1009;
    v35[3] = &unk_2782C6C70;
    v35[4] = self;
    [(PBFMutablePosterExtensionDataStorePrewarmPlan *)v17 setExecutionBlock:v35 forPhase:@"PBFPrewarmPhaseFileSystemCleanup"];
  }

  v29 = [(PBFMutablePosterExtensionDataStorePrewarmPlan *)v17 copy];

  objc_destroyWeak(v61);
  objc_destroyWeak(location);

  return v29;
}

id __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v60[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && ![*(a1 + 32) getFlag])
  {
    os_unfair_lock_lock(WeakRetained + 47);
    v13 = MEMORY[0x277CBEB98];
    v14 = [*(WeakRetained + 5) knownPosterExtensions];
    v15 = [v13 setWithArray:v14];

    v16 = *(a1 + 56);
    v17 = *(a1 + 64);
    v51 = 0;
    v34 = v15;
    [WeakRetained _stateLock_updateExtensions:v15 refreshDescriptors:v16 powerLogReason:v17 galleryUpdateOptions:4 queuedUpOperations:&v51];
    v18 = v51;
    v35 = WeakRetained;
    os_unfair_lock_unlock(WeakRetained + 47);
    v19 = dispatch_group_create();
    dispatch_group_enter(v19);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = v18;
    v20 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
    v36 = v6;
    if (v20)
    {
      v21 = v20;
      v22 = *v48;
      do
      {
        v23 = 0;
        do
        {
          if (*v48 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v47 + 1) + 8 * v23);
          v25 = PBFLogPrewarm(v20);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = *(a1 + 40);
            [v24 extensionBundleIdentifier];
            v27 = v22;
            v28 = a1;
            v30 = v29 = v7;
            *buf = 138543874;
            v53 = v26;
            v6 = v36;
            v54 = 2114;
            v55 = v36;
            v56 = 2114;
            v57 = v30;
            _os_log_impl(&dword_21B526000, v25, OS_LOG_TYPE_DEFAULT, "(%{public}@) phase %{public}@ watching reload descriptor operation for bundle %{public}@", buf, 0x20u);

            v7 = v29;
            a1 = v28;
            v22 = v27;
          }

          dispatch_group_enter(v19);
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_974;
          v42[3] = &unk_2782C6AC0;
          v43 = v7;
          v44 = *(a1 + 40);
          v45 = v6;
          v46 = v19;
          [v24 addCompletionObserver:v42];

          ++v23;
        }

        while (v21 != v23);
        v20 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
        v21 = v20;
      }

      while (v20);
    }

    dispatch_group_leave(v19);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_975;
    aBlock[3] = &unk_2782C5888;
    v41 = obj;
    v11 = obj;
    v31 = _Block_copy(aBlock);
    v32 = [MEMORY[0x277D3EBA8] sharedWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_2;
    block[3] = &unk_2782C5888;
    v6 = v36;
    v39 = v7;
    dispatch_group_notify(v19, v32, block);

    v12 = _Block_copy(v31);
    v10 = v34;
    WeakRetained = v35;
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    v59 = @"phase";
    v60[0] = v6;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
    v11 = [v9 pbf_generalErrorWithCode:3 userInfo:v10];
    [v7 finishedWithError:v11];
    v12 = 0;
  }

  return v12;
}

void __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_974(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PBFLogPrewarm([*(a1 + 32) noteNonFatalError:v6]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = [v5 extensionBundleIdentifier];
      v13 = 138544130;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      v19 = 2114;
      v20 = v6;
      _os_log_error_impl(&dword_21B526000, v7, OS_LOG_TYPE_ERROR, "(%{public}@) phase %{public}@ reload descriptor operation for bundle %{public}@ failed with error: %{public}@", &v13, 0x2Au);
LABEL_6:
    }
  }

  else
  {
    v7 = PBFLogPrewarm(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v10 = [v5 extensionBundleIdentifier];
      v13 = 138543874;
      v14 = v11;
      v15 = 2114;
      v16 = v12;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@) phase %{public}@ reload descriptor operation for bundle %{public}@ succeeded", &v13, 0x20u);
      goto LABEL_6;
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

void __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_975(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * i);
        [v6 invalidateAssertionsWithCompletion:{0, v7}];
        [v6 cancel];
      }

      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

uint64_t __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_4(id *a1, void *a2, void *a3, void *a4)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && ![a1[4] getFlag])
  {
    os_unfair_lock_lock(WeakRetained + 47);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_5;
    v15[3] = &unk_2782C6B10;
    v16 = v8;
    v17 = a1[5];
    v18 = v7;
    v19 = v9;
    [(os_unfair_lock_s *)WeakRetained _stateLock_pushPosterDescriptorsToProactiveForReason:@"prewarm" force:1 completion:v15];
    os_unfair_lock_unlock(WeakRetained + 47);

    v12 = v16;
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v20 = @"phase";
    v21[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v13 = [v11 pbf_generalErrorWithCode:3 userInfo:v12];
    [v9 finishedWithError:v13];
  }

  return 0;
}

void __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_5(uint64_t a1, unsigned int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"DID_PUSH_DESCRIPTORS"];

  v9 = PBFLogPrewarm(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v16 = 138543874;
    v17 = v10;
    v18 = 2114;
    v19 = v11;
    v20 = 1024;
    v21 = v6;
    _os_log_impl(&dword_21B526000, v9, OS_LOG_TYPE_DEFAULT, "(%{public}@) phase %{public}@ did push descriptors? %{BOOL}u", &v16, 0x1Cu);
  }

  if (v5)
  {
    v13 = PBFLogPrewarm(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_5_cold_1();
    }

    v12 = [*(a1 + 56) noteNonFatalError:v5];
  }

  v14 = PBFLogPrewarm(v12);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 40);
    v16 = 138543618;
    v17 = v15;
    v18 = 1024;
    LODWORD(v19) = a2;
    _os_log_impl(&dword_21B526000, v14, OS_LOG_TYPE_DEFAULT, "(%{public}@) finished pushing descriptors to proactive; did update? %{BOOL}u", &v16, 0x12u);
  }

  [*(a1 + 56) finishedWithError:0];
}

uint64_t __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_982(uint64_t a1, void *a2, void *a3, void *a4)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && ![*(a1 + 32) getFlag])
  {
    v15 = [v8 objectForKeyedSubscript:@"DID_PUSH_DESCRIPTORS"];
    v16 = [v15 BOOLValue];

    v18 = PBFLogPrewarm(v17);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v19)
      {
        v20 = *(a1 + 40);
        *buf = 138543618;
        v31 = v20;
        v32 = 2114;
        v33 = v7;
        _os_log_impl(&dword_21B526000, v18, OS_LOG_TYPE_DEFAULT, "(%{public}@) phase %{public}@ asking for new gallery", buf, 0x16u);
      }

      v21 = WeakRetained[11];
      v22 = *(a1 + 56);
      v23 = *(a1 + 64);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_983;
      v25[3] = &unk_2782C6B60;
      v26 = *(a1 + 40);
      v27 = v7;
      v28 = v9;
      v29 = v8;
      [v21 enqueueGalleryConfigurationUpdateWithOptions:v22 powerLogReason:v23 completion:v25];
    }

    else
    {
      if (v19)
      {
        v24 = *(a1 + 40);
        *buf = 138543618;
        v31 = v24;
        v32 = 2114;
        v33 = v7;
        _os_log_impl(&dword_21B526000, v18, OS_LOG_TYPE_DEFAULT, "(%{public}@) phase %{public}@ bail asking for new gallery; no descriptors were pushed", buf, 0x16u);
      }

      [v9 finishedWithError:0];
    }
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v34 = @"phase";
    v35[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v13 = [v11 pbf_generalErrorWithCode:3 userInfo:v12];
    [v9 finishedWithError:v13];
  }

  return 0;
}

void __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_983(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = PBFLogPrewarm(v7);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_983_cold_1();
    }

    [*(a1 + 48) noteNonFatalError:v7];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      _os_log_impl(&dword_21B526000, v9, OS_LOG_TYPE_DEFAULT, "(%{public}@) phase %{public}@ ask for new gallery succeeded", &v13, 0x16u);
    }
  }

  v12 = [MEMORY[0x277CCABB0] numberWithBool:a4];
  [*(a1 + 56) setObject:v12 forKeyedSubscript:@"DID_UPDATE_GALLERY"];

  [*(a1 + 48) finishedWithError:0];
}

id __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_987(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v51[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (!WeakRetained || [*(a1 + 32) getFlag])
  {
    v9 = MEMORY[0x277CCA9B8];
    v50 = @"phase";
    v51[0] = v6;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    v11 = [v9 pbf_generalErrorWithCode:3 userInfo:v10];
    [v7 finishedWithError:v11];

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v10 = [MEMORY[0x277CCAC38] processInfo];
  if (([v10 isLowPowerModeEnabled] & 1) != 0 || objc_msgSend(v10, "thermalState") == 3)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA470];
    v48[0] = @"phase";
    v48[1] = v13;
    v49[0] = v6;
    v49[1] = @"low power mode / thermal state is critical; skipping phase";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
    v15 = [v12 pbf_generalErrorWithCode:9 userInfo:v14];
    [v7 noteNonFatalError:v15];

    [v7 finishedWithError:0];
    goto LABEL_7;
  }

  v18 = [WeakRetained[34] objectForKeyedSubscript:*MEMORY[0x277D3EEF0]];
  v19 = [v18 posterCollection];
  v20 = [v19 orderedPosters];
  v21 = [v20 array];

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_2_992;
  v40[3] = &unk_2782C6B88;
  v41 = *(a1 + 40);
  v22 = [v21 bs_mapNoNulls:v40];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_3_993;
  v39[3] = &__block_descriptor_40_e60___PBFPosterSnapshotRequest_16__0__PBFPosterSnapshotRequest_8l;
  v39[4] = *(a1 + 80);
  v23 = [v22 bs_map:v39];

  v24 = [MEMORY[0x277CBEB98] setWithArray:v23];
  v25 = [PBFPosterSnapshotRequest filterFulfilledSnapshotRequests:v24 modelCoordinatorProvider:*(a1 + 48)];
  v26 = [v25 allObjects];

  v28 = PBFLogPrewarm(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = *(a1 + 56);
    *buf = 138543874;
    v43 = v29;
    v44 = 2114;
    v45 = v6;
    v46 = 2114;
    v47 = v26;
    _os_log_impl(&dword_21B526000, v28, OS_LOG_TYPE_DEFAULT, "(%{public}@) phase %{public}@ prewarming switcher snapshots: %{public}@", buf, 0x20u);
  }

  v30 = *(a1 + 64);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_996;
  v37[3] = &unk_2782C59F0;
  v38 = v7;
  [v30 prewarmSnapshotsForRequests:v26 completion:v37];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_2_997;
  v33[3] = &unk_2782C6428;
  v34 = *(a1 + 64);
  v35 = v26;
  v36 = *(a1 + 56);
  v31 = v26;
  v32 = _Block_copy(v33);
  v16 = _Block_copy(v32);

LABEL_8:

  return v16;
}

PBFPosterSnapshotRequest *__156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_2_992(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PBFPosterSnapshotRequest alloc];
  v5 = +[PBFPosterSnapshotDefinition defaultConfigurationDefinitions];
  v6 = [(PBFPosterSnapshotRequest *)v4 initWithConfiguration:v3 definitions:v5 context:*(a1 + 32)];

  return v6;
}

id __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_3_993(uint64_t a1, void *a2)
{
  v3 = [a2 requestWithIntention:1];
  v4 = [v3 requestWithPowerLogReason:*(a1 + 32)];

  return v4;
}

void __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_996(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [*(a1 + 32) noteNonFatalError:v3];
    v3 = v4;
  }

  [*(a1 + 32) finishedWithError:v3];
}

void __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_2_997(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = [@"Prewarm cancelled - " stringByAppendingString:a1[6]];
  [v1 cancelRequestedSnapshotsForRequests:v2 reason:v3];
}

id __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_3_1001(uint64_t a1, void *a2, void *a3, void *a4)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (!WeakRetained || [*(a1 + 32) getFlag])
  {
    v11 = MEMORY[0x277CCA9B8];
    v40 = @"phase";
    v41[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v13 = [v11 pbf_generalErrorWithCode:3 userInfo:v12];
    [v9 finishedWithError:v13];

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v12 = [MEMORY[0x277CCAC38] processInfo];
  if (([v12 isLowPowerModeEnabled] & 1) != 0 || objc_msgSend(v12, "thermalState") == 3)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA470];
    v38[0] = @"phase";
    v38[1] = v15;
    v39[0] = v7;
    v39[1] = @"low power mode / thermal state is critical; skipping phase";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
    v17 = [v14 pbf_generalErrorWithCode:9 userInfo:v16];
    [v9 noteNonFatalError:v17];

    [v9 finishedWithError:0];
    goto LABEL_7;
  }

  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy_;
  v36[4] = __Block_byref_object_dispose_;
  v37 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_4_1002;
  v28[3] = &unk_2782C6BF8;
  v29 = v9;
  v35 = v36;
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v22 = *(a1 + 56);
  v30 = v20;
  v31 = v21;
  v32 = v22;
  v33 = v7;
  v34 = *(a1 + 64);
  [WeakRetained fetchCurrentGalleryConfiguration:v28];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_2_1008;
  aBlock[3] = &unk_2782C6C20;
  v25 = *(a1 + 64);
  v27 = v36;
  v26 = *(a1 + 56);
  v23 = _Block_copy(aBlock);
  v18 = _Block_copy(v23);

  _Block_object_dispose(v36, 8);
LABEL_8:

  return v18;
}

void __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_4_1002(uint64_t a1, void *a2)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v33 = v3;
    v5 = [v3 prewarmGallerySnapshotRequestsForDisplayContext:*(a1 + 40)];
    v6 = *(*(a1 + 80) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [MEMORY[0x277CBEB98] setWithArray:*(*(*(a1 + 80) + 8) + 40)];
    v9 = [PBFPosterSnapshotRequest filterFulfilledSnapshotRequests:v8 modelCoordinatorProvider:*(a1 + 48)];
    v10 = [v9 allObjects];
    v11 = *(*(a1 + 80) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v14 = PBFLogPrewarm(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 56);
      v16 = *(a1 + 64);
      v17 = [*(*(*(a1 + 80) + 8) + 40) count];
      *buf = 138543874;
      v42 = v15;
      v43 = 2114;
      v44 = v16;
      v45 = 2048;
      v46 = v17;
      _os_log_impl(&dword_21B526000, v14, OS_LOG_TYPE_DEFAULT, "(%{public}@) phase %{public}@ prewarming gallery snapshots: %lu", buf, 0x20u);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v18 = a1;
    v19 = *(*(*(a1 + 80) + 8) + 40);
    v20 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v37;
      do
      {
        v23 = 0;
        do
        {
          if (*v37 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v36 + 1) + 8 * v23);
          v25 = PBFLogPrewarm(v20);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = *(v18 + 56);
            *buf = 138543618;
            v42 = v26;
            v43 = 2114;
            v44 = v24;
            _os_log_impl(&dword_21B526000, v25, OS_LOG_TYPE_DEFAULT, "(%{public}@) snapshot request %{public}@", buf, 0x16u);
          }

          ++v23;
        }

        while (v21 != v23);
        v20 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
        v21 = v20;
      }

      while (v20);
    }

    if ([*(*(*(v18 + 80) + 8) + 40) count])
    {
      v27 = *(v18 + 72);
      v28 = *(*(*(v18 + 80) + 8) + 40);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_1006;
      v34[3] = &unk_2782C59F0;
      v35 = *(v18 + 32);
      [v27 prewarmSnapshotsForRequests:v28 completion:v34];
    }

    else
    {
      [*(v18 + 32) finishedWithError:0];
    }

    v4 = v33;
  }

  else
  {
    v29 = *(a1 + 32);
    v30 = MEMORY[0x277CCA9B8];
    v47 = *MEMORY[0x277CCA470];
    v48[0] = @"Gallery configuration is nil at this step during prewarm.";
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    v32 = [v30 pbf_generalErrorWithCode:1 userInfo:v31];
    [v29 noteNonFatalError:v32];

    [*(a1 + 32) finishedWithError:0];
  }
}

void __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_1006(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [*(a1 + 32) noteNonFatalError:v3];
    v3 = v4;
  }

  [*(a1 + 32) finishedWithError:v3];
}

void __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_2_1008(void *a1)
{
  v1 = *(*(a1[6] + 8) + 40);
  v2 = a1[4];
  v3 = [@"Prewarm cancelled - " stringByAppendingString:a1[5]];
  [v2 cancelRequestedSnapshotsForRequests:v1 reason:v3];
}

id __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_3_1009(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
  os_unfair_lock_lock((*(a1 + 32) + 188));
  v7 = [*(a1 + 32) _stateLock_extensionStoreCoordinators];
  os_unfair_lock_unlock((*(a1 + 32) + 188));
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_4_1013;
  v17[3] = &unk_2782C6428;
  v18 = v7;
  v8 = v6;
  v19 = v8;
  v20 = v5;
  v9 = v5;
  v10 = v7;
  PBFDispatchAsyncWithString(@"FSCleanup", QOS_CLASS_DEFAULT, v17);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_5_1014;
  v15[3] = &unk_2782C5888;
  v16 = v8;
  v11 = v8;
  v12 = _Block_copy(v15);
  v13 = _Block_copy(v12);

  return v13;
}

uint64_t __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_4_1013(id *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v10 + 1) + 8 * v6);
      [v7 reapEverythingExceptLatestVersion];
      v8 = [v7 ensureFileSystemIntegrity];
      if ([a1[5] getFlag])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return [a1[6] finishedWithError:0];
}

- (id)_buildSwitcherConfigurationWithContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock(&self->_stateLock);
  v5 = [(PBFPosterExtensionDataStore *)self _stateLock_buildSwitcherConfigurationWithContext:contextCopy outMutated:0];

  os_unfair_lock_unlock(&self->_stateLock);

  return v5;
}

- (void)initWithURL:(char *)a1 runtimeAssertionProvider:extensionProvider:observer:wasMigrationJustPerformed:applicationStateMonitor:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSURLClass]"];
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

- (void)initWithURL:(char *)a1 runtimeAssertionProvider:extensionProvider:observer:wasMigrationJustPerformed:applicationStateMonitor:error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:PFPosterExtensionProviderClass]"];
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

- (void)initWithURL:(char *)a1 runtimeAssertionProvider:extensionProvider:observer:wasMigrationJustPerformed:applicationStateMonitor:error:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object conformsToProtocol:@protocol(PBFRuntimeAssertionProviding)]"];
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

- (void)initWithURL:(char *)a1 runtimeAssertionProvider:extensionProvider:observer:wasMigrationJustPerformed:applicationStateMonitor:error:.cold.4(char *a1)
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

- (void)initWithURL:(char *)a1 runtimeAssertionProvider:extensionProvider:observer:wasMigrationJustPerformed:applicationStateMonitor:error:.cold.5(char *a1)
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

void __140__PBFPosterExtensionDataStore_executeUpdate_hostContext_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_completion___block_invoke_222_cold_1()
{
  OUTLINED_FUNCTION_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __140__PBFPosterExtensionDataStore_executeUpdate_hostContext_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_completion___block_invoke_225_cold_1()
{
  OUTLINED_FUNCTION_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __140__PBFPosterExtensionDataStore_executeUpdate_hostContext_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_completion___block_invoke_225_cold_2()
{
  OUTLINED_FUNCTION_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __140__PBFPosterExtensionDataStore_executeUpdate_hostContext_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_completion___block_invoke_225_cold_3()
{
  OUTLINED_FUNCTION_10(*MEMORY[0x277D85DE8]);
  v2 = 138543362;
  v3 = v0;
  _os_log_debug_impl(&dword_21B526000, v1, OS_LOG_TYPE_DEBUG, "(%{public}@) finished with no errors", &v2, 0xCu);
}

- (void)_stateLock_updatePosterConfigurationsFromHostForRole:(os_log_t)log error:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21B526000, log, OS_LOG_TYPE_ERROR, "updatePosterConfigurationsFromHostForRole: Skipping poster configuration with no provider", buf, 2u);
}

- (void)_stateLock_updatePosterConfigurationsFromHostForRole:(os_log_t)log error:.cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21B526000, log, OS_LOG_TYPE_ERROR, "updatePosterConfigurationsFromHostForRole: Skipping poster configuration with no descriptorIdentifier", buf, 2u);
}

- (void)_stateLock_updatePosterConfigurationsFromHostForRole:error:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)posterDescriptorsForExtensionBundleIdentifier:(char *)a1 error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
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

- (void)posterDescriptorsForExtensionBundleIdentifier:(char *)a1 error:.cold.2(char *a1)
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

- (void)staticPosterDescriptorsForExtensionBundleIdentifier:(char *)a1 error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
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

- (void)staticPosterDescriptorsForExtensionBundleIdentifier:(char *)a1 error:.cold.2(char *a1)
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

- (void)reloadPosterDescriptorsForExtensionBundleIdentifier:(char *)a1 sessionInfo:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
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

- (void)reloadPosterDescriptorsForExtensionBundleIdentifier:(char *)a1 sessionInfo:completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"completion"];
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

- (void)reloadPosterDescriptorsForExtensionBundleIdentifier:(char *)a1 sessionInfo:completion:.cold.3(char *a1)
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

- (void)deletePosterDescriptorsForExtensionBundleIdentifier:(char *)a1 error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
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

- (void)deletePosterDescriptorsForExtensionBundleIdentifier:(char *)a1 error:.cold.2(char *a1)
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

- (void)updateGallery:(char *)a1 completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:PRSPosterGalleryLayoutClass]"];
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

- (void)updateGallery:(char *)a1 completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"completion"];
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

- (void)updateGallery:(char *)a1 completion:.cold.3(char *a1)
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

- (void)refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:(char *)a1 extensionIdentifier:displayContexts:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
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

- (void)refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:(char *)a1 extensionIdentifier:displayContexts:completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
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

- (void)refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:(char *)a1 extensionIdentifier:displayContexts:completion:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"completion"];
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

- (void)fetchPosterSnapshotsWithClientRequest:(char *)a1 completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:PRSPosterSnapshotRequestClass]"];
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

- (void)fetchPosterSnapshotsWithClientRequest:(char *)a1 completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"completion"];
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

- (void)fetchPosterSnapshotsWithClientRequest:(char *)a1 completion:.cold.3(char *a1)
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

void __110__PBFPosterExtensionDataStore__stateLock_applyUpdatesAndIngestConfiguration_toPath_powerLogReason_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __110__PBFPosterExtensionDataStore__stateLock_applyUpdatesAndIngestConfiguration_toPath_powerLogReason_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_stateLock_convertPosterUpdatesToRoleCoordinatorChanges:(char *)a1 toPath:powerLogReason:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[[path identity] type] == PFServerPosterTypeConfiguration"];
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

- (void)_stateLock_convertPosterUpdatesToRoleCoordinatorChanges:(char *)a1 toPath:powerLogReason:completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSArrayClass]"];
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

- (void)_stateLock_convertPosterUpdatesToRoleCoordinatorChanges:(void *)a1 toPath:(char *)a2 powerLogReason:completion:.cold.3(void *a1, char *a2)
{
  v3 = [a1 stringWithFormat:@"Invalid condition not satisfying: %@", @"completion != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_3();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v12, v13);
  }

  v11 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_stateLock_convertPosterUpdatesToRoleCoordinatorChanges:(char *)a1 toPath:powerLogReason:completion:.cold.4(char *a1)
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

- (void)createPosterConfigurationForProviderIdentifier:(char *)a1 posterDescriptorIdentifier:role:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
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

- (void)createPosterConfigurationForProviderIdentifier:(char *)a1 posterDescriptorIdentifier:role:completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
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

- (void)createPosterConfigurationForProviderIdentifier:(char *)a1 posterDescriptorIdentifier:role:completion:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
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

- (void)createPosterConfigurationForProviderIdentifier:(char *)a1 posterDescriptorIdentifier:role:completion:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"roleDiffInspector != nil"];
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

- (void)createPosterConfigurationForProviderIdentifier:(char *)a1 posterDescriptorIdentifier:role:completion:.cold.5(char *a1)
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

- (void)createPosterConfigurationForProviderIdentifier:(char *)a1 posterDescriptorIdentifier:role:completion:.cold.6(char *a1)
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

- (void)createPosterConfigurationForProviderIdentifier:(char *)a1 posterDescriptorIdentifier:role:completion:.cold.7(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"completion"];
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

- (void)refreshPosterConfigurationMatchingUUID:(char *)a1 sessionInfo:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSUUIDClass]"];
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

- (void)refreshPosterConfigurationMatchingUUID:(char *)a1 sessionInfo:completion:.cold.2(char *a1)
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

- (void)activePosterForRole:assocPoster:error:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(&dword_21B526000, v0, OS_LOG_TYPE_FAULT, "Unable to query for active poster for role %@", v1, 0xCu);
}

- (void)duplicatePosterConfigurationMatchingUUID:(char *)a1 completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSUUIDClass]"];
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

- (void)duplicatePosterConfigurationMatchingUUID:(uint64_t)a1 completion:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PBFPosterExtensionDataStore.m" lineNumber:2816 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

- (void)duplicatePosterConfigurationMatchingUUID:(char *)a1 completion:.cold.3(char *a1)
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

- (void)exportPosterConfigurationMatchingUUID:(char *)a1 error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSUUIDClass]"];
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

- (void)exportPosterConfigurationMatchingUUID:(char *)a1 error:.cold.2(char *a1)
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

- (void)importPosterConfigurationFromArchiveData:(char *)a1 completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSDataClass]"];
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

- (void)importPosterConfigurationFromArchiveData:(char *)a1 completion:.cold.2(char *a1)
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

- (void)refreshSnapshotForPosterConfigurationMatchUUID:(char *)a1 completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSUUIDClass]"];
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

- (void)refreshSnapshotForPosterConfigurationMatchUUID:(char *)a1 completion:.cold.2(char *a1)
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

- (void)refreshSnapshotForPosterConfigurationMatchUUID:(char *)a1 completion:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"completion"];
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

- (void)ingestSnapshotCollection:(char *)a1 forPosterConfigurationUUID:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:PRSPosterSnapshotCollectionClass]"];
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

- (void)ingestSnapshotCollection:(char *)a1 forPosterConfigurationUUID:error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSUUIDClass]"];
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

- (void)ingestSnapshotCollection:(char *)a1 forPosterConfigurationUUID:error:.cold.3(char *a1)
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

- (void)ingestSnapshotCollection:(char *)a1 forPosterConfigurationUUID:error:.cold.4(char *a1)
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

- (void)_stateLock_prepareReloadConfigurationOperationForExtension:path:locationInUse:sessionInfo:powerLogReason:assetUpdater:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __155__PBFPosterExtensionDataStore__stateLock_prepareReloadConfigurationOperationForExtension_path_locationInUse_sessionInfo_powerLogReason_assetUpdater_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_ingestRefreshPosterConfiguration:(const char *)a1 completion:.cold.4(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)processIncomingPosterConfiguration:(char *)a1 completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:PRIncomingPosterConfigurationClass]"];
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

- (void)processIncomingPosterConfiguration:(char *)a1 completion:.cold.2(char *a1)
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

- (void)_stateLock_updateDataStoreForSwitcherConfiguration:(uint64_t)a3 options:reason:error:.cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromSelector(a1);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v9 = 138544642;
  v10 = v4;
  OUTLINED_FUNCTION_8();
  v11 = @"PBFPosterExtensionDataStore.m";
  v12 = 1024;
  v13 = 3905;
  v14 = v7;
  v15 = a3;
  OUTLINED_FUNCTION_11(&dword_21B526000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9);
}

- (void)_stateLock_updateDataStoreForSwitcherConfiguration:(uint64_t)a3 options:reason:error:.cold.2(const char *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromSelector(a1);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v9 = 138544642;
  v10 = v4;
  OUTLINED_FUNCTION_8();
  v11 = @"PBFPosterExtensionDataStore.m";
  v12 = 1024;
  v13 = 3927;
  v14 = v7;
  v15 = a3;
  OUTLINED_FUNCTION_11(&dword_21B526000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9);
}

- (void)_stateLock_executeDataStoreUpdateWithChanges:diffs:options:reason:context:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_stateLock_setupPathAssertionsAndUpdateActivePosterFromDiff:(char *)a1 roleCoordinator:context:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[inUsePosterPathIdentitiesForReason containsObject:[[inUseSwitcherConfiguration _path] serverIdentity]]"];
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

- (void)_stateLock_setupPathAssertionsAndUpdateActivePosterFromDiff:(char *)a1 roleCoordinator:context:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[inUseAssocPosterPathIdentitiesForReason containsObject:[[inUseHomeScreenConfiguration _path] serverIdentity]]"];
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

void __69__PBFPosterExtensionDataStore__stateLock_initialRoleCoordinatorSetup__block_invoke_2_cold_1(void *a1, void *a2)
{
  v8 = [a1 extensionIdentifier];
  [a2 count];
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_stateLock_updateExtensions:refreshDescriptors:powerLogReason:galleryUpdateOptions:queuedUpOperations:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_stateLock_updateExtensions:refreshDescriptors:powerLogReason:galleryUpdateOptions:queuedUpOperations:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_stateLock_updateExtensions:(char *)a1 refreshDescriptors:powerLogReason:galleryUpdateOptions:queuedUpOperations:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"we can't handle multiple concurrent global updates yet"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    v7 = 138544642;
    v8 = a1;
    OUTLINED_FUNCTION_8();
    v9 = @"PBFPosterExtensionDataStore.m";
    v10 = 1024;
    v11 = 5368;
    v12 = v5;
    v13 = v2;
    OUTLINED_FUNCTION_11(&dword_21B526000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v7);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_finishUpdateExtensionUpdateWithOptions:updateExtensionSession:pushToProactiveError:didUpdateProactiveDescriptors:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __145__PBFPosterExtensionDataStore__finishUpdateExtensionUpdateWithOptions_updateExtensionSession_pushToProactiveError_didUpdateProactiveDescriptors___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_stateLock_setupEnvironmentForExtension:wasUpdated:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_stateLock_hasBeenUnlockedSinceBoot
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL PBF_MKBDeviceUnlockedSinceBoot(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"PBFPosterExtensionDataStore.m" lineNumber:126 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier:(char *)a1 reason:powerLogReason:postEnqueueGalleryUpdateOptions:sessionInfo:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
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

- (void)_stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier:(const char *)a1 reason:powerLogReason:postEnqueueGalleryUpdateOptions:sessionInfo:completion:.cold.2(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier:reason:powerLogReason:postEnqueueGalleryUpdateOptions:sessionInfo:completion:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier:(const char *)a1 reason:powerLogReason:postEnqueueGalleryUpdateOptions:sessionInfo:completion:.cold.4(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier:(char *)a1 reason:powerLogReason:postEnqueueGalleryUpdateOptions:sessionInfo:completion:.cold.5(char *a1)
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

void __181__PBFPosterExtensionDataStore__stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier_reason_powerLogReason_postEnqueueGalleryUpdateOptions_sessionInfo_completion___block_invoke_870_cold_1()
{
  OUTLINED_FUNCTION_10(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __181__PBFPosterExtensionDataStore__stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier_reason_powerLogReason_postEnqueueGalleryUpdateOptions_sessionInfo_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __181__PBFPosterExtensionDataStore__stateLock_enqueueReloadDescriptorsOperationForExtensionBundleIdentifier_reason_powerLogReason_postEnqueueGalleryUpdateOptions_sessionInfo_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_stateLock_deletePosterDescriptorsForExtensionBundleIdentifier:waitForPushToProactive:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __159__PBFPosterExtensionDataStore__stateLock_updateGalleryWithSuggestedLayout_descriptorsByExtensionBundleIdentifier_staticDescriptorsByExtensionBundleIdentifier___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(&dword_21B526000, v0, OS_LOG_TYPE_FAULT, "update gallery prewarm runtime assertion was invalidated: %{public}@", v1, 0xCu);
}

- (void)resetRole:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)assertionManager:identityIsNowMarkedAsNOTInUse:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_executeCleanupOfServerPosterIdentity:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_executeCleanupOfServerPosterIdentity:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_executeCleanupOfServerPosterIdentity:error:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_executeCleanupOfServerPosterIdentity:error:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __156__PBFPosterExtensionDataStore_buildPrewarmPlanWithIdentifier_refreshStrategy_galleryUpdateOptions_powerLogReason_cleanupOldResources_prewarmDisplayContext___block_invoke_5_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end