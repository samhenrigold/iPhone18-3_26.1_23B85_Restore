@interface HFItemManager
- (BOOL)_isUsingOnlyItemModules;
- (BOOL)_requiresNotificationsForCharacteristic:(id)characteristic;
- (BOOL)_shouldDisableOptionalDataDuringFastInitialUpdate;
- (BOOL)_shouldHideServiceItem:(id)item containedInServiceGroupItem:(id)groupItem;
- (BOOL)_shouldPerformUpdateOnMainThread;
- (BOOL)disableExternalUpdatesWithReason:(id)reason;
- (BOOL)endDisableExternalUpdatesWithReason:(id)reason;
- (BOOL)itemIsBeingDisplayed:(id)displayed;
- (HFItemManager)init;
- (HFItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (HFItemManagerDelegate)delegate;
- (NSSet)allDisplayedItems;
- (NSSet)allItems;
- (id)_allDisplayedItemsIncludingInternalItems;
- (id)_allItemsIncludingInternalItems;
- (id)_allSuppressedCharacteristics;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_cameraForCameraControl:(id)control;
- (id)_cameraForCameraStream:(id)stream;
- (id)_cameraForUserSettings:(id)settings;
- (id)_debug_itemDescriptions;
- (id)_debug_itemManagerDescription;
- (id)_debug_itemProviderDescriptions;
- (id)_dependentHomeKitObjectsOfClass:(Class)class inHomeKitObjects:(id)objects;
- (id)_directItemDependenciesForHomeKitObjects:(id)objects class:(Class)class;
- (id)_homeFuture;
- (id)_indexPathForItem:(id)item inDisplayedItemsArray:(id)array;
- (id)_internalItems;
- (id)_invalidationReasonsForAddedOrRemovedAccessory:(id)accessory;
- (id)_invalidationReasonsForAddedOrRemovedMediaSystem:(id)system;
- (id)_itemsFilteredToExisting:(id)existing;
- (id)_itemsOfClass:(Class)class inItems:(id)items allowTransformedItems:(BOOL)transformedItems;
- (id)_itemsToHideInSet:(id)set;
- (id)_itemsToUpdateForAccessorySettingChange:(id)change;
- (id)_itemsToUpdateForAccessorySettingChanges:(id)changes;
- (id)_itemsToUpdateForAllowAccessWhileLockedSettingChange;
- (id)_itemsToUpdateForCurrentHomeChange;
- (id)_itemsToUpdateForHomeKitKeyPaths:(id)paths forHomeKitObjectIdentifiers:(id)identifiers;
- (id)_itemsToUpdateForHomeKitSettingsChange:(id)change;
- (id)_itemsToUpdateForIncomingInvitation:(id)invitation;
- (id)_itemsToUpdateForLightProfiles:(id)profiles;
- (id)_itemsToUpdateForMediaObjectChange:(id)change;
- (id)_itemsToUpdateForMediaProfileContainer:(id)container;
- (id)_itemsToUpdateForMediaSessionChange:(id)change;
- (id)_itemsToUpdateForMediaSystemChange:(id)change;
- (id)_itemsToUpdateForModifiedAccessCodes:(id)codes;
- (id)_itemsToUpdateForModifiedAccessories:(id)accessories;
- (id)_itemsToUpdateForModifiedActionSets:(id)sets;
- (id)_itemsToUpdateForModifiedActions:(id)actions;
- (id)_itemsToUpdateForModifiedCameras:(id)cameras;
- (id)_itemsToUpdateForModifiedCharacteristics:(id)characteristics includeSuppressedCharacteristics:(BOOL)suppressedCharacteristics;
- (id)_itemsToUpdateForModifiedEvents:(id)events;
- (id)_itemsToUpdateForModifiedHomePersonManagerSettings:(id)settings;
- (id)_itemsToUpdateForModifiedMetadataForHomes:(id)homes;
- (id)_itemsToUpdateForModifiedMetadataForMediaDestinationController:(id)controller;
- (id)_itemsToUpdateForModifiedNetworkConfigurationProfiles:(id)profiles;
- (id)_itemsToUpdateForModifiedNetworkProtectionGroups:(id)groups;
- (id)_itemsToUpdateForModifiedPersonManagers:(id)managers;
- (id)_itemsToUpdateForModifiedPersons:(id)persons;
- (id)_itemsToUpdateForModifiedResidentDevices:(id)devices;
- (id)_itemsToUpdateForModifiedRooms:(id)rooms;
- (id)_itemsToUpdateForModifiedServiceGroups:(id)groups;
- (id)_itemsToUpdateForModifiedServiceTypes:(id)types;
- (id)_itemsToUpdateForModifiedServices:(id)services;
- (id)_itemsToUpdateForModifiedSharingDevices:(id)devices;
- (id)_itemsToUpdateForModifiedSignificantEvents:(id)events;
- (id)_itemsToUpdateForModifiedSoftwareUpdateControllers:(id)controllers;
- (id)_itemsToUpdateForModifiedSoftwareUpdates:(id)updates;
- (id)_itemsToUpdateForModifiedTriggers:(id)triggers;
- (id)_itemsToUpdateForModifiedUUIDs:(id)ds;
- (id)_itemsToUpdateForModifiedUsers:(id)users;
- (id)_itemsToUpdateForModifiedWalletKeyDeviceState:(id)state;
- (id)_itemsToUpdateForModifiedZones:(id)zones;
- (id)_itemsToUpdateForOutgoingInvitation:(id)invitation;
- (id)_itemsToUpdateForRemoteAccessChange;
- (id)_itemsToUpdateForSiriEndpointProfileObjectChange:(id)change;
- (id)_itemsToUpdateForSoftwareUpdateV2ChangeToAccessory:(id)accessory;
- (id)_itemsToUpdateForSoftwareUpdateV2ProgressChangeToAccessory:(id)accessory;
- (id)_itemsToUpdateForTelevisionProfiles:(id)profiles;
- (id)_itemsWithDependenciesPassingTest:(id)test forItems:(id)items;
- (id)_legacy_buildSectionsWithDisplayedItems:(id)items;
- (id)_performUpdateForChildItemsOfItem:(id)item withContext:(id)context isInternal:(BOOL)internal;
- (id)_performUpdateForItem:(id)item withContext:(id)context isInternal:(BOOL)internal isChild:(BOOL)child;
- (id)_processBatchUpdateForFutureWrappers:(id)wrappers removedItems:(id)items logger:(id)logger;
- (id)_reloadAllItemProvidersFromSenderSelector:(SEL)selector;
- (id)_reloadAndUpdateItemsForProviders:(id)providers updateItems:(id)items senderSelector:(SEL)selector;
- (id)_reloadItemProviders:(id)providers updateItems:(id)items shouldUpdateExistingItems:(BOOL)existingItems senderSelector:(SEL)selector readPolicy:(id)policy;
- (id)_reloadItemProviders:(id)providers updateItems:(id)items shouldUpdateExistingItems:(BOOL)existingItems senderSelector:(SEL)selector readPolicy:(id)policy fastInitialUpdatePromise:(id)promise;
- (id)_serviceGroupItemForServiceGroup:(id)group inItems:(id)items;
- (id)_serviceItemsToHideInSet:(id)set allServiceGroupItems:(id)items;
- (id)_sortedItems:(id)items forSectionIdentifier:(id)identifier;
- (id)_updateResultsForItems:(id)items context:(id)context;
- (id)_updateResultsForItems:(id)items removedItems:(id)removedItems context:(id)context allowDelaying:(BOOL)delaying;
- (id)applySnapshotForUpdatedExternalItems:(id)items removedItems:(id)removedItems logger:(id)logger;
- (id)attributedFooterTitleForSection:(unint64_t)section;
- (id)attributedTitleForSection:(unint64_t)section;
- (id)childItemsForItem:(id)item;
- (id)childItemsForItem:(id)item ofClass:(Class)class;
- (id)childItemsForItem:(id)item ofClass:(Class)class conformingToProtocol:(id)protocol;
- (id)diffableDataItemManagerDelegate;
- (id)displayedItemAtIndexPath:(id)path;
- (id)displayedItemsInSection:(unint64_t)section;
- (id)displayedItemsInSectionWithIdentifier:(id)identifier;
- (id)displayedSectionIdentifierForSectionIndex:(unint64_t)index;
- (id)footerTitleForSection:(unint64_t)section;
- (id)generateSnapshotInfo;
- (id)hf_stateDumpBuilderWithContext:(id)context;
- (id)indexPathForItem:(id)item;
- (id)itemSectionForSectionIndex:(unint64_t)index;
- (id)itemsToUpdateForMatterSnapshotChange;
- (id)matchingItemForHomeKitObject:(id)object;
- (id)moveItemFromIndexPath:(id)path toIndexPath:(id)indexPath;
- (id)performItemUpdateRequest:(id)request;
- (id)reloadAndUpdateAllItemsFromSenderSelector:(SEL)selector;
- (id)reloadAndUpdateItemsForProviders:(id)providers senderSelector:(SEL)selector;
- (id)titleForSection:(unint64_t)section;
- (id)updateResultsForItems:(id)items senderSelector:(SEL)selector;
- (unint64_t)_loadingStateForItem:(id)item;
- (unint64_t)_sectionForItem:(id)item assertOnNotFound:(BOOL)found;
- (unint64_t)numberOfSections;
- (unint64_t)sectionIndexForDisplayedSectionIdentifier:(id)identifier;
- (void)_applyReloadSnapshot:(id)snapshot withAnimation:(BOOL)animation;
- (void)_batchItemUpdateFutureWrappers:(id)wrappers removedItems:(id)items batchingIntervals:(id)intervals logger:(id)logger;
- (void)_debug_registerForStateDump;
- (void)_didFinishUpdateTransactionWithAffectedItems:(id)items;
- (void)_notifyDelegateOfChangesFromDiff:(id)diff logger:(id)logger;
- (void)_notifyDelegateOfItemOperations:(id)operations logger:(id)logger;
- (void)_notifyDelegateOfSectionOperations:(id)operations logger:(id)logger;
- (void)_prefetchResourcesIfNeededForItems:(id)items;
- (void)_registerForExternalUpdates;
- (void)_removeDelegateNotifications;
- (void)_setDisplayFilter:(id)filter recalculateVisibility:(BOOL)visibility;
- (void)_setupDelegateNotifications;
- (void)_unregisterForExternalUpdates;
- (void)_updateExternalUpdatesEnabled:(BOOL)enabled reloadItems:(BOOL)items;
- (void)_updateLoadingStateAndNotifyDelegateForItems:(id)items canFinishTransaction:(BOOL)transaction;
- (void)_updateOverallLoadingStateAndNotifyDelegate;
- (void)_updateRepresentationForExternalItemsWithUpdatedOrAddedItems:(id)items removedItems:(id)removedItems logger:(id)logger;
- (void)_updateRepresentationForInternalItemsWithUpdatedItems:(id)items;
- (void)_updateRepresentationWithCustomDiffableDataSourceForExternalItemsWithUpdatedOrAddedItems:(id)items removedItems:(id)removedItems logger:(id)logger;
- (void)accessory:(id)accessory didAddControlTarget:(id)target;
- (void)accessory:(id)accessory didAddProfile:(id)profile;
- (void)accessory:(id)accessory didAddSymptomsHandler:(id)handler;
- (void)accessory:(id)accessory didRemoveControlTarget:(id)target;
- (void)accessory:(id)accessory didRemoveProfile:(id)profile;
- (void)accessory:(id)accessory didUpdateApplicationDataForService:(id)service;
- (void)accessory:(id)accessory didUpdateAssociatedServiceTypeForService:(id)service;
- (void)accessory:(id)accessory didUpdateBundleID:(id)d;
- (void)accessory:(id)accessory didUpdateConfigurationStateForService:(id)service;
- (void)accessory:(id)accessory didUpdateConfiguredNameForService:(id)service;
- (void)accessory:(id)accessory didUpdateDefaultNameForService:(id)service;
- (void)accessory:(id)accessory didUpdateFirmwareUpdateAvailable:(BOOL)available;
- (void)accessory:(id)accessory didUpdateFirmwareVersion:(id)version;
- (void)accessory:(id)accessory didUpdateHH1EOLEnabled:(BOOL)enabled;
- (void)accessory:(id)accessory didUpdateHasAuthorizationDataForCharacteristic:(id)characteristic;
- (void)accessory:(id)accessory didUpdateLastKnownOperatingStateResponseForService:(id)service;
- (void)accessory:(id)accessory didUpdateLastKnownSleepDiscoveryModeForService:(id)service;
- (void)accessory:(id)accessory didUpdateLoggedInAccount:(id)account;
- (void)accessory:(id)accessory didUpdateNameForService:(id)service;
- (void)accessory:(id)accessory didUpdateServiceSubtypeForService:(id)service;
- (void)accessory:(id)accessory didUpdateSoftwareVersion:(id)version;
- (void)accessory:(id)accessory didUpdateStoreID:(id)d;
- (void)accessory:(id)accessory didUpdateSupportsWalletKey:(BOOL)key;
- (void)accessory:(id)accessory didUpdateUserNotifiedOfSoftwareUpdate:(BOOL)update;
- (void)accessory:(id)accessory service:(id)service didUpdateValueForCharacteristic:(id)characteristic;
- (void)accessoryDidRemoveSymptomsHandler:(id)handler;
- (void)accessoryDidUpdateAdditionalSetupRequired:(id)required;
- (void)accessoryDidUpdateApplicationData:(id)data;
- (void)accessoryDidUpdateAudioDestination:(id)destination;
- (void)accessoryDidUpdateAudioDestinationController:(id)controller;
- (void)accessoryDidUpdateCalibrationStatus:(id)status;
- (void)accessoryDidUpdateControllable:(id)controllable;
- (void)accessoryDidUpdateDiagnosticsTransferSupport:(id)support;
- (void)accessoryDidUpdateName:(id)name;
- (void)accessoryDidUpdatePendingConfigurationIdentifier:(id)identifier;
- (void)accessoryDidUpdatePreferredMediaUser:(id)user;
- (void)accessoryDidUpdateReachability:(id)reachability;
- (void)accessoryDidUpdateReachableTransports:(id)transports;
- (void)accessoryDidUpdateServices:(id)services;
- (void)accessoryDidUpdateTargetControlSupport:(id)support;
- (void)audioControl:(id)control didUpdateMuted:(BOOL)muted;
- (void)audioControl:(id)control didUpdateVolume:(float)volume;
- (void)beginFirstFullUpdateWithTimeoutFutureIfNeeded;
- (void)beginSuppressingUpdatesForCharacteristics:(id)characteristics withReason:(id)reason;
- (void)cameraSnapshotControl:(id)control didTakeSnapshot:(id)snapshot error:(id)error;
- (void)cameraSnapshotControlDidUpdateMostRecentSnapshot:(id)snapshot;
- (void)cameraStream:(id)stream didUpdateAudioStreamSettingWithError:(id)error;
- (void)cameraStreamControl:(id)control didStopStreamWithError:(id)error;
- (void)cameraStreamControlDidStartStream:(id)stream;
- (void)cameraStreamControlDidUpdateManagerState:(id)state;
- (void)cameraStreamControlDidUpdateStreamState:(id)state;
- (void)cameraUserSettingsDidUpdate:(id)update;
- (void)clipManager:(id)manager didRemoveSignificantEventsWithUUIDs:(id)ds;
- (void)clipManager:(id)manager didUpdateSignificantEvents:(id)events;
- (void)dealloc;
- (void)deregisterMatterDelegates;
- (void)didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)identifier settings:(id)settings;
- (void)didUpdateDemoModeStateForAccessory:(id)accessory;
- (void)endSuppressingUpdatesForCharacteristicsWithReason:(id)reason updateAffectedItems:(BOOL)items;
- (void)executionEnvironmentDidBecomeActive:(id)active;
- (void)executionEnvironmentDidEnterBackground:(id)background;
- (void)executionEnvironmentWillEnterForeground:(id)foreground;
- (void)executionEnvironmentWillResignActive:(id)active;
- (void)fixSessionDidChangeForAccessory:(id)accessory;
- (void)home:(id)home didAddAccessory:(id)accessory;
- (void)home:(id)home didAddAccessoryNetworkProtectionGroup:(id)group;
- (void)home:(id)home didAddActionSet:(id)set;
- (void)home:(id)home didAddMediaSystem:(id)system;
- (void)home:(id)home didAddResidentDevice:(id)device;
- (void)home:(id)home didAddRoom:(id)room;
- (void)home:(id)home didAddRoom:(id)room toZone:(id)zone;
- (void)home:(id)home didAddService:(id)service toServiceGroup:(id)group;
- (void)home:(id)home didAddServiceGroup:(id)group;
- (void)home:(id)home didAddTrigger:(id)trigger;
- (void)home:(id)home didAddUser:(id)user;
- (void)home:(id)home didAddZone:(id)zone;
- (void)home:(id)home didEncounterError:(id)error forAccessory:(id)accessory;
- (void)home:(id)home didExecuteActionSets:(id)sets failedActionSets:(id)actionSets;
- (void)home:(id)home didReadValuesForCharacteristics:(id)characteristics failedCharacteristics:(id)failedCharacteristics;
- (void)home:(id)home didRemoveAccessory:(id)accessory;
- (void)home:(id)home didRemoveAccessoryNetworkProtectionGroup:(id)group;
- (void)home:(id)home didRemoveActionSet:(id)set;
- (void)home:(id)home didRemoveMediaSystem:(id)system;
- (void)home:(id)home didRemoveResidentDevice:(id)device;
- (void)home:(id)home didRemoveRoom:(id)room;
- (void)home:(id)home didRemoveRoom:(id)room fromZone:(id)zone;
- (void)home:(id)home didRemoveService:(id)service fromServiceGroup:(id)group;
- (void)home:(id)home didRemoveServiceGroup:(id)group;
- (void)home:(id)home didRemoveTrigger:(id)trigger;
- (void)home:(id)home didRemoveUser:(id)user;
- (void)home:(id)home didRemoveZone:(id)zone;
- (void)home:(id)home didUnblockAccessory:(id)accessory;
- (void)home:(id)home didUpdateAccesoryInvitationsForUser:(id)user;
- (void)home:(id)home didUpdateAccessControlForUser:(id)user;
- (void)home:(id)home didUpdateAccessoryNetworkProtectionGroup:(id)group;
- (void)home:(id)home didUpdateActionsForActionSet:(id)set;
- (void)home:(id)home didUpdateApplicationDataForActionSet:(id)set;
- (void)home:(id)home didUpdateApplicationDataForRoom:(id)room;
- (void)home:(id)home didUpdateApplicationDataForServiceGroup:(id)group;
- (void)home:(id)home didUpdateAreBulletinNotificationsSupported:(BOOL)supported;
- (void)home:(id)home didUpdateAudioAnalysisClassifierOptions:(unint64_t)options;
- (void)home:(id)home didUpdateMediaSystem:(id)system;
- (void)home:(id)home didUpdateNameForActionSet:(id)set;
- (void)home:(id)home didUpdateNameForRoom:(id)room;
- (void)home:(id)home didUpdateNameForServiceGroup:(id)group;
- (void)home:(id)home didUpdateNameForTrigger:(id)trigger;
- (void)home:(id)home didUpdateNameForZone:(id)zone;
- (void)home:(id)home didUpdateOnboardAudioAnalysis:(BOOL)analysis;
- (void)home:(id)home didUpdatePersonManagerSettings:(id)settings;
- (void)home:(id)home didUpdateReprovisionStateForAccessory:(id)accessory;
- (void)home:(id)home didUpdateRoom:(id)room forAccessory:(id)accessory;
- (void)home:(id)home didUpdateSiriPhraseOptions:(unint64_t)options;
- (void)home:(id)home didUpdateSiriTriggerPhraseOptions:(unint64_t)options;
- (void)home:(id)home didUpdateStateForOutgoingInvitations:(id)invitations;
- (void)home:(id)home didUpdateTrigger:(id)trigger;
- (void)home:(id)home didWriteValuesForCharacteristics:(id)characteristics failedCharacteristics:(id)failedCharacteristics;
- (void)home:(id)home remoteAccessStateDidChange:(unint64_t)change;
- (void)home:(id)home willExecuteActionSets:(id)sets;
- (void)home:(id)home willReadValuesForCharacteristics:(id)characteristics;
- (void)home:(id)home willWriteValuesForCharacteristics:(id)characteristics;
- (void)homeDidAddWalletKey:(id)key;
- (void)homeDidRemoveWalletKey:(id)key;
- (void)homeDidUpdateAccessControlForCurrentUser:(id)user;
- (void)homeDidUpdateApplicationData:(id)data;
- (void)homeDidUpdateHomeEnergyManagerEnabled:(id)enabled;
- (void)homeDidUpdateHomeLocationStatus:(id)status;
- (void)homeDidUpdateName:(id)name;
- (void)homeDidUpdateNetworkRouterSupport:(id)support;
- (void)homeDidUpdateProtectionMode:(id)mode;
- (void)homeDidUpdateSoundCheck:(id)check;
- (void)homeDidUpdateToROAR:(id)r;
- (void)homeKitDispatcher:(id)dispatcher manager:(id)manager didChangeHome:(id)home;
- (void)homeManager:(id)manager didAddHome:(id)home;
- (void)homeManager:(id)manager didRemoveHome:(id)home;
- (void)homeManager:(id)manager didUpdateAccessAllowedWhenLocked:(BOOL)locked;
- (void)homeManager:(id)manager didUpdateHH2State:(BOOL)state;
- (void)homeManager:(id)manager didUpdateStateForIncomingInvitations:(id)invitations;
- (void)homeManager:(id)manager residentProvisioningStatusChanged:(unint64_t)changed;
- (void)homeManagerDidEndBatchNotifications:(id)notifications;
- (void)homeManagerDidFinishInitialDatabaseLoad:(id)load;
- (void)homeManagerDidFinishUnknownChange:(id)change;
- (void)homeManagerDidUpdateCurrentHome:(id)home;
- (void)homeManagerDidUpdateDataSyncState:(id)state;
- (void)homeManagerWillStartBatchNotifications:(id)notifications;
- (void)lightProfile:(id)profile didUpdateSettings:(id)settings;
- (void)mediaDestinationController:(id)controller didUpdateDestination:(id)destination;
- (void)mediaDestinationControllerDidUpdateAvailableDestinations:(id)destinations;
- (void)mediaObject:(id)object didUpdateMediaSession:(id)session;
- (void)mediaObject:(id)object didUpdateSettings:(id)settings;
- (void)mediaSession:(id)session didUpdatePlaybackState:(int64_t)state;
- (void)mediaSession:(id)session failedToUpdatePlaybackStateWithError:(id)error;
- (void)mediaSession:(id)session willUpdatePlaybackState:(int64_t)state;
- (void)mediaSessionDidUpdate:(id)update;
- (void)mediaSystem:(id)system didUpdateComponents:(id)components;
- (void)mediaSystem:(id)system didUpdateConfiguredName:(id)name;
- (void)mediaSystem:(id)system didUpdateName:(id)name;
- (void)personManager:(id)manager didRemoveFaceCropsWithUUIDs:(id)ds;
- (void)personManager:(id)manager didRemovePersonsWithUUIDs:(id)ds;
- (void)personManager:(id)manager didUpdatePersonFaceCrops:(id)crops;
- (void)personManager:(id)manager didUpdatePersons:(id)persons;
- (void)pinCodeManagerDidUpdate:(id)update pinCodes:(id)codes;
- (void)profileDidUpdateAccessViolation:(id)violation;
- (void)profileDidUpdateAllowedHosts:(id)hosts;
- (void)profileDidUpdateMediaSourceDisplayOrder:(id)order;
- (void)profileDidUpdateNetworkProtectionMode:(id)mode;
- (void)profileDidUpdateWiFiCredentialType:(id)type;
- (void)profileDidUpdateWiFiReconfigurationSupport:(id)support;
- (void)recalculateVisibilityAndSortAllItems;
- (void)reconfigureUIRepresentationForItems:(id)items withAnimation:(BOOL)animation;
- (void)registerMatterDelegates;
- (void)reloadUIRepresentationForItems:(id)items withAnimation:(BOOL)animation;
- (void)reloadUIRepresentationForSections:(id)sections withAnimation:(BOOL)animation;
- (void)reloadUIRepresentationWithAnimation:(BOOL)animation;
- (void)resetItemProvidersAndModules;
- (void)residentDevice:(id)device didUpdateCapabilities:(unint64_t)capabilities;
- (void)residentDevice:(id)device didUpdateEnabled:(BOOL)enabled;
- (void)residentDevice:(id)device didUpdateName:(id)name;
- (void)residentDevice:(id)device didUpdateStatus:(unint64_t)status;
- (void)restrictedGuestAllowedPeriodEnded:(id)ended;
- (void)restrictedGuestAllowedPeriodStarted:(id)started;
- (void)setDiffableDataSource:(id)source;
- (void)setHome:(id)home;
- (void)setItemModules:(id)modules;
- (void)setReadPolicy:(id)policy;
- (void)setSourceItem:(id)item;
- (void)setUpCustomDiffableDataSource;
- (void)settings:(id)settings didUpdateForIdentifier:(id)identifier keyPath:(id)path;
- (void)settings:(id)settings didWriteValueForSettings:(id)forSettings failedSettings:(id)failedSettings homeKitObjectIdentifiers:(id)identifiers;
- (void)settings:(id)settings willWriteValueForSettings:(id)forSettings;
- (void)settingsInvalidatedForNotificationCenter:(id)center;
- (void)siriEndpointProfile:(id)profile didUpdateAssistants:(id)assistants;
- (void)siriEndpointProfile:(id)profile didUpdateCurrentAssistant:(id)assistant;
- (void)siriEndpointProfile:(id)profile didUpdateManuallyDisabled:(BOOL)disabled;
- (void)siriEndpointProfile:(id)profile didUpdateMultifunctionButton:(int64_t)button;
- (void)siriEndpointProfile:(id)profile didUpdateNeedsOnboarding:(BOOL)onboarding;
- (void)siriEndpointProfile:(id)profile didUpdateSessionHubIdentifier:(id)identifier;
- (void)siriEndpointProfile:(id)profile didUpdateSessionState:(int64_t)state;
- (void)siriEndpointProfile:(id)profile didUpdateSiriEngineVersion:(id)version;
- (void)siriEndpointProfile:(id)profile didUpdateSupportsOnboarding:(BOOL)onboarding;
- (void)softwareUpdate:(id)update didUpdateDocumentation:(id)documentation;
- (void)softwareUpdate:(id)update didUpdateDocumentationAvailable:(BOOL)available;
- (void)softwareUpdate:(id)update didUpdateNeedsAttentionReasons:(unint64_t)reasons;
- (void)softwareUpdate:(id)update didUpdateState:(int64_t)state;
- (void)softwareUpdateController:(id)controller didUpdateAvailableUpdate:(id)update;
- (void)softwareUpdateV2DidUpdateForAccessory:(id)accessory;
- (void)softwareUpdateV2DidUpdateProgressForAccessory:(id)accessory;
- (void)symptomsHandler:(id)handler didUpdateSymptoms:(id)symptoms;
- (void)temperatureUnitObserver:(id)observer didChangeTemperatureUnit:(BOOL)unit;
- (void)updateSettingValue:(id)value forKeyPath:(id)path accessoryIdentifier:(id)identifier;
- (void)user:(id)user didUpdateAssistantAccessControl:(id)control forHome:(id)home;
- (void)user:(id)user didUpdateMediaContentProfileAccessControl:(id)control forHome:(id)home;
- (void)user:(id)user didUpdatePhotosPersonManagerSettings:(id)settings;
- (void)walletKeyDeviceStateUpdated:(id)updated inHome:(id)home;
@end

@implementation HFItemManager

- (void)registerMatterDelegates
{
  sub_20DD63C84();
  selfCopy = self;
  sub_20DD63C24();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844918, &qword_20DD96070);
  sub_20DA6776C();
  v4 = sub_20DD64D04();

  [(HFItemManager *)selfCopy setMatterSnapshotObserverCancelable:v4];
}

- (void)deregisterMatterDelegates
{
  selfCopy = self;
  HFItemManager.deregisterMatterDelegates()();
}

- (id)itemsToUpdateForMatterSnapshotChange
{
  selfCopy = self;
  sub_20DA6888C();

  sub_20DA65948();
  sub_20DA65994();
  v3 = sub_20DD651C4();

  return v3;
}

- (void)_debug_registerForStateDump
{
  v3 = +[_HFItemManagerDebugStateDumpController sharedInstance];
  [v3 registerItemManager:self];
}

- (id)_debug_itemProviderDescriptions
{
  itemProviders = [(HFItemManager *)self itemProviders];
  v3 = [itemProviders na_map:&__block_literal_global_8];

  return v3;
}

- (id)_debug_itemDescriptions
{
  v3 = objc_opt_new();
  if ([(HFItemManager *)self numberOfSections])
  {
    v4 = 0;
    do
    {
      v5 = [(HFItemManager *)self displayedItemsInSection:v4];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __53__HFItemManager_HFDebugging___debug_itemDescriptions__block_invoke;
      v7[3] = &unk_277DF3640;
      v9 = v4;
      v8 = v3;
      [v5 enumerateObjectsUsingBlock:v7];

      ++v4;
    }

    while (v4 < [(HFItemManager *)self numberOfSections]);
  }

  return v3;
}

void __53__HFItemManager_HFDebugging___debug_itemDescriptions__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = MEMORY[0x277CCABB0];
  v7 = *(a1 + 40);
  v8 = a2;
  v9 = [v6 numberWithUnsignedInteger:v7];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v12 = [v5 stringWithFormat:@"[%@, %@]", v9, v10];

  v11 = [v8 debugDescription];

  [*(a1 + 32) setObject:v11 forKeyedSubscript:v12];
}

- (id)hf_stateDumpBuilderWithContext:(id)context
{
  contextCopy = context;
  v5 = [HFStateDumpBuilder builderWithObject:self context:contextCopy];
  _debug_itemManagerDescription = [(HFItemManager *)self _debug_itemManagerDescription];
  [v5 setObject:_debug_itemManagerDescription forKeyedSubscript:@"itemManager"];

  detailLevel = [contextCopy detailLevel];
  if (detailLevel == 2)
  {
    _debug_itemProviderDescriptions = [(HFItemManager *)self _debug_itemProviderDescriptions];
    [v5 setObject:_debug_itemProviderDescriptions forKeyedSubscript:@"itemProviders"];

    _debug_itemDescriptions = [(HFItemManager *)self _debug_itemDescriptions];
    [v5 setObject:_debug_itemDescriptions forKeyedSubscript:@"items"];
  }

  return v5;
}

- (void)_setupDelegateNotifications
{
  v3 = +[HFExecutionEnvironment sharedInstance];
  [v3 addObserver:self];
}

- (void)_removeDelegateNotifications
{
  v3 = +[HFExecutionEnvironment sharedInstance];
  [v3 removeObserver:self];
}

- (void)executionEnvironmentWillEnterForeground:(id)foreground
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "executionEnvironmentWillEnterForeground", &v12, 2u);
  }

  firstFullUpdateWithTimeoutFuture = [(HFItemManager *)self firstFullUpdateWithTimeoutFuture];
  isFinished = [firstFullUpdateWithTimeoutFuture isFinished];

  if (isFinished)
  {
    allItems = [(HFItemManager *)self allItems];
    v9 = [(HFItemManager *)self updateResultsForItems:allItems senderSelector:a2];
  }

  else
  {
    allItems = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(allItems, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      identifier = [(HFItemManager *)self identifier];
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = identifier;
      _os_log_impl(&dword_20D9BF000, allItems, OS_LOG_TYPE_DEFAULT, "%@-%@ ignoring executionEnvironmentWillEnterForeground because first full update isn't done", &v12, 0x16u);
    }
  }
}

- (void)executionEnvironmentDidEnterBackground:(id)background
{
  v4 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "executionEnvironmentDidEnterBackground", v8, 2u);
  }

  firstFullUpdateWithTimeoutFuture = [(HFItemManager *)self firstFullUpdateWithTimeoutFuture];
  [firstFullUpdateWithTimeoutFuture finishWithNoResult];

  v6 = objc_msgSend_home(self);
  hf_characteristicValueManager = [v6 hf_characteristicValueManager];
  [hf_characteristicValueManager invalidateAllCachedErrors];
}

- (void)executionEnvironmentDidBecomeActive:(id)active
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "(%@) executionEnvironmentDidBecomeActive", &v12, 0xCu);
  }

  firstFullUpdateWithTimeoutFuture = [(HFItemManager *)self firstFullUpdateWithTimeoutFuture];
  isFinished = [firstFullUpdateWithTimeoutFuture isFinished];

  if (isFinished)
  {
    _itemsToUpdateWhenApplicationDidBecomeActive = [(HFItemManager *)self _itemsToUpdateWhenApplicationDidBecomeActive];
    v9 = [(HFItemManager *)self updateResultsForItems:_itemsToUpdateWhenApplicationDidBecomeActive senderSelector:a2];
  }

  else
  {
    _itemsToUpdateWhenApplicationDidBecomeActive = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(_itemsToUpdateWhenApplicationDidBecomeActive, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      identifier = [(HFItemManager *)self identifier];
      v12 = 138412546;
      selfCopy = v10;
      v14 = 2112;
      v15 = identifier;
      _os_log_impl(&dword_20D9BF000, _itemsToUpdateWhenApplicationDidBecomeActive, OS_LOG_TYPE_DEFAULT, "%@-%@ ignoring executionEnvironmentDidBecomeActive because first full update isn't done", &v12, 0x16u);
    }
  }
}

- (void)executionEnvironmentWillResignActive:(id)active
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "(%@) executionEnvironmentWillResignActive", &v8, 0xCu);
  }

  _itemsToUpdateForApplicationResignActive = [(HFItemManager *)self _itemsToUpdateForApplicationResignActive];
  v7 = [(HFItemManager *)self updateResultsForItems:_itemsToUpdateForApplicationResignActive senderSelector:a2];
}

- (id)_cameraForCameraControl:(id)control
{
  v35 = *MEMORY[0x277D85DE8];
  controlCopy = control;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = objc_msgSend_home(self);
  accessories = [v5 accessories];

  v7 = [accessories countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    v23 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(accessories);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        cameraProfiles = [v11 cameraProfiles];
        v13 = [cameraProfiles countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v26;
          v24 = v8;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v26 != v15)
              {
                objc_enumerationMutation(cameraProfiles);
              }

              v17 = *(*(&v25 + 1) + 8 * j);
              streamControl = [v17 streamControl];
              v19 = streamControl;
              if (streamControl == controlCopy)
              {

LABEL_20:
                v21 = v17;

                goto LABEL_21;
              }

              snapshotControl = [v17 snapshotControl];

              if (snapshotControl == controlCopy)
              {
                goto LABEL_20;
              }
            }

            v14 = [cameraProfiles countByEnumeratingWithState:&v25 objects:v33 count:16];
            v9 = v23;
            v8 = v24;
            if (v14)
            {
              continue;
            }

            break;
          }
        }
      }

      v8 = [accessories countByEnumeratingWithState:&v29 objects:v34 count:16];
      v21 = 0;
    }

    while (v8);
  }

  else
  {
    v21 = 0;
  }

LABEL_21:

  return v21;
}

- (id)_cameraForCameraStream:(id)stream
{
  v32 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = objc_msgSend_home(self);
  accessories = [v5 accessories];

  v21 = [accessories countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v7 = *v27;
    v20 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(accessories);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        cameraProfiles = [v9 cameraProfiles];
        v11 = [cameraProfiles countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(cameraProfiles);
              }

              v15 = *(*(&v22 + 1) + 8 * j);
              streamControl = [v15 streamControl];
              cameraStream = [streamControl cameraStream];

              if (cameraStream == streamCopy)
              {
                v18 = v15;

                goto LABEL_19;
              }
            }

            v12 = [cameraProfiles countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v7 = v20;
      }

      v18 = 0;
      v21 = [accessories countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v21);
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  return v18;
}

- (id)_cameraForUserSettings:(id)settings
{
  v32 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = objc_msgSend_home(self);
  accessories = [v5 accessories];

  v7 = [accessories countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    v21 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(accessories);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        cameraProfiles = [v11 cameraProfiles];
        v13 = [cameraProfiles countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v23;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v23 != v15)
              {
                objc_enumerationMutation(cameraProfiles);
              }

              v17 = *(*(&v22 + 1) + 8 * j);
              userSettings = [v17 userSettings];

              if (userSettings == settingsCopy)
              {
                v19 = v17;

                goto LABEL_19;
              }
            }

            v14 = [cameraProfiles countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v9 = v21;
      }

      v8 = [accessories countByEnumeratingWithState:&v26 objects:v31 count:16];
      v19 = 0;
    }

    while (v8);
  }

  else
  {
    v19 = 0;
  }

LABEL_19:

  return v19;
}

- (void)homeManagerWillStartBatchNotifications:(id)notifications
{
  batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  [batchedDelegateAdapterAllowingReads beginBatchWithReason:@"HFItemManagerBatchingDelegateReasonHomeManagerRequest"];

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  [batchedDelegateAdapterDisallowingReads beginBatchWithReason:@"HFItemManagerBatchingDelegateReasonHomeManagerRequest"];
}

- (void)homeManagerDidEndBatchNotifications:(id)notifications
{
  batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v6 = [batchedDelegateAdapterAllowingReads commitBatchWithReason:@"HFItemManagerBatchingDelegateReasonHomeManagerRequest" senderSelector:a2];

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [batchedDelegateAdapterDisallowingReads commitBatchWithReason:@"HFItemManagerBatchingDelegateReasonHomeManagerRequest" senderSelector:a2];
}

- (void)homeKitDispatcher:(id)dispatcher manager:(id)manager didChangeHome:(id)home
{
  managerCopy = manager;
  if (+[HFUtilities isInternalTest](HFUtilities, "isInternalTest") && ([managerCopy homes], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, !v9))
  {
    v11 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Skipping reload (for -homeKitDispatcher:manager:didChangeHome:) as this is an internal unit test -tearDown", v12, 2u);
    }
  }

  else
  {
    v10 = [(HFItemManager *)self reloadAndUpdateAllItemsFromSenderSelector:a2];
  }
}

- (void)homeManagerDidFinishInitialDatabaseLoad:(id)load
{
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = objc_msgSend_home(v5);
  [(HFItemManager *)self setHome:v4];
}

- (void)homeManagerDidFinishUnknownChange:(id)change
{
  changeCopy = change;
  if (+[HFUtilities isInternalTest](HFUtilities, "isInternalTest") && ([changeCopy homes], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, !v7))
  {
    v9 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Skipping reload (for -homeManagerDidFinishUnknownChange:) as this is an internal unit test -tearDown", v10, 2u);
    }
  }

  else
  {
    v8 = [(HFItemManager *)self reloadAndUpdateAllItemsFromSenderSelector:a2];
  }
}

- (void)homeManager:(id)manager didAddHome:(id)home
{
  v12[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] setWithObject:homeCopy];

  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v8];
  v12[0] = @"home";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v11 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:0 senderSelector:a2];
}

- (void)homeManager:(id)manager didRemoveHome:(id)home
{
  v17[1] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  homeCopy = home;
  if (+[HFUtilities isInternalTest](HFUtilities, "isInternalTest") && ([managerCopy homes], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, !v10))
  {
    batchedDelegateAdapterDisallowingReads = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(batchedDelegateAdapterDisallowingReads, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_20D9BF000, batchedDelegateAdapterDisallowingReads, OS_LOG_TYPE_DEFAULT, "Skipping reload (for -homeManager:didRemoveHome:) as this is an internal unit test -tearDown", v16, 2u);
    }
  }

  else
  {
    batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
    v12 = [MEMORY[0x277CBEB98] setWithObject:homeCopy];
    v13 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v12];
    v17[0] = @"home";
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v15 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v13 itemProviderInvalidationReasons:v14 modifiedHome:0 senderSelector:a2];
  }
}

- (void)homeManagerDidUpdateCurrentHome:(id)home
{
  homeCopy = home;
  if (+[HFUtilities isInternalTest](HFUtilities, "isInternalTest") && ([homeCopy homes], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, !v7))
  {
    v11 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Skipping reload (for -homeManagerDidUpdateCurrentHome:) as this is an internal unit test -tearDown", v12, 2u);
    }
  }

  else
  {
    batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
    _itemsToUpdateForCurrentHomeChange = [(HFItemManager *)self _itemsToUpdateForCurrentHomeChange];
    v10 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:_itemsToUpdateForCurrentHomeChange itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
  }
}

- (void)homeManager:(id)manager residentProvisioningStatusChanged:(unint64_t)changed
{
  v8 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads:manager];
  _itemsToUpdateForRemoteAccessChange = [(HFItemManager *)self _itemsToUpdateForRemoteAccessChange];
  v7 = [v8 requestUpdateForItems:_itemsToUpdateForRemoteAccessChange itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)homeManager:(id)manager didUpdateAccessAllowedWhenLocked:(BOOL)locked
{
  v8 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads:manager];
  _itemsToUpdateForAllowAccessWhileLockedSettingChange = [(HFItemManager *)self _itemsToUpdateForAllowAccessWhileLockedSettingChange];
  v7 = [v8 requestUpdateForItems:_itemsToUpdateForAllowAccessWhileLockedSettingChange itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)homeManagerDidUpdateDataSyncState:(id)state
{
  v15[1] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if ([stateCopy dataSyncState] == 1)
  {
    v6 = objc_msgSend_home(self);
    hf_characteristicValueManager = [v6 hf_characteristicValueManager];
    [hf_characteristicValueManager invalidateAllCachedErrors];

    batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
    v9 = MEMORY[0x277CBEB98];
    homes = [stateCopy homes];
    v11 = [v9 setWithArray:homes];
    v12 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v11];
    v15[0] = @"home";
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v14 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v12 itemProviderInvalidationReasons:v13 modifiedHome:0 senderSelector:a2];
  }
}

- (void)homeManager:(id)manager didUpdateHH2State:(BOOL)state
{
  stateCopy = state;
  v23 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v8 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v18 = "[HFItemManager(HomeKitDelegates) homeManager:didUpdateHH2State:]";
    v19 = 2112;
    v20 = managerCopy;
    v21 = 1024;
    v22 = stateCopy;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "(%s) homeManager = %@ | didUpdateHH2State = %{BOOL}d", buf, 0x1Cu);
  }

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = MEMORY[0x277CBEB98];
  homes = [managerCopy homes];
  v12 = [v10 setWithArray:homes];
  v13 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v12];
  v16 = @"home";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v15 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v13 itemProviderInvalidationReasons:v14 modifiedHome:0 senderSelector:a2];
}

- (void)homeDidUpdateName:(id)name
{
  v11[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:nameCopy];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v7];
  v11[0] = @"home";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v10 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:nameCopy senderSelector:a2];
}

- (void)home:(id)home didAddAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  hf_characteristicValueManager = [homeCopy hf_characteristicValueManager];
  [hf_characteristicValueManager invalidateCachedValuesForAccessory:accessoryCopy];

  batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:accessoryCopy];
  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v10];
  v12 = [(HFItemManager *)self _invalidationReasonsForAddedOrRemovedAccessory:accessoryCopy];

  v13 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didRemoveAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v9 = [MEMORY[0x277CBEB98] na_setWithSafeObject:accessoryCopy];
  v10 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v9];
  v11 = [(HFItemManager *)self _invalidationReasonsForAddedOrRemovedAccessory:accessoryCopy];

  v12 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v10 itemProviderInvalidationReasons:v11 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didAddUser:(id)user
{
  v14[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  userCopy = user;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:userCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedUsers:v10];
  v14[0] = @"user";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didRemoveUser:(id)user
{
  v14[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  userCopy = user;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:userCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedUsers:v10];
  v14[0] = @"user";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:homeCopy senderSelector:a2];
}

- (void)homeDidUpdateHomeLocationStatus:(id)status
{
  v11[1] = *MEMORY[0x277D85DE8];
  statusCopy = status;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] setWithObject:statusCopy];

  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v7];
  v11[0] = @"home";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v10 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:0 senderSelector:a2];
}

- (void)homeDidUpdateAccessControlForCurrentUser:(id)user
{
  v16[2] = *MEMORY[0x277D85DE8];
  userCopy = user;
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:userCopy];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v6];
  v8 = [v7 mutableCopy];

  v9 = MEMORY[0x277CBEB98];
  currentUser = [userCopy currentUser];
  v11 = [v9 na_setWithSafeObject:currentUser];
  v12 = [(HFItemManager *)self _itemsToUpdateForModifiedUsers:v11];
  [v8 unionSet:v12];

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v16[0] = @"home";
  v16[1] = @"user";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v15 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:v14 modifiedHome:userCopy senderSelector:a2];
}

- (void)home:(id)home didUpdateRoom:(id)room forAccessory:(id)accessory
{
  v20[2] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v10 = MEMORY[0x277CBEB98];
  accessoryCopy = accessory;
  v12 = [v10 na_setWithSafeObject:room];
  v13 = [(HFItemManager *)self _itemsToUpdateForModifiedRooms:v12];
  v14 = [v13 mutableCopy];

  v15 = [MEMORY[0x277CBEB98] na_setWithSafeObject:accessoryCopy];

  v16 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v15];
  [v14 unionSet:v16];

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v20[0] = @"room";
  v20[1] = @"accessory";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v19 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v14 itemProviderInvalidationReasons:v18 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didAddRoom:(id)room
{
  v14[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  roomCopy = room;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:roomCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedRooms:v10];
  v14[0] = @"room";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didRemoveRoom:(id)room
{
  v14[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  roomCopy = room;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:roomCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedRooms:v10];
  v14[0] = @"room";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didUpdateNameForRoom:(id)room
{
  v14[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  roomCopy = room;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:roomCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedRooms:v10];
  v14[0] = @"room";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didAddZone:(id)zone
{
  v14[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  zoneCopy = zone;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:zoneCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedZones:v10];
  v14[0] = @"zone";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didRemoveZone:(id)zone
{
  v14[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  zoneCopy = zone;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:zoneCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedZones:v10];
  v14[0] = @"zone";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didUpdateNameForZone:(id)zone
{
  v14[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  zoneCopy = zone;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:zoneCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedZones:v10];
  v14[0] = @"zone";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didAddRoom:(id)room toZone:(id)zone
{
  v20[2] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v10 = MEMORY[0x277CBEB98];
  zoneCopy = zone;
  v12 = [v10 na_setWithSafeObject:room];
  v13 = [(HFItemManager *)self _itemsToUpdateForModifiedRooms:v12];
  v14 = [v13 mutableCopy];

  v15 = [MEMORY[0x277CBEB98] na_setWithSafeObject:zoneCopy];

  v16 = [(HFItemManager *)self _itemsToUpdateForModifiedZones:v15];
  [v14 unionSet:v16];

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v20[0] = @"room";
  v20[1] = @"zone";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v19 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v14 itemProviderInvalidationReasons:v18 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didRemoveRoom:(id)room fromZone:(id)zone
{
  v20[2] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v10 = MEMORY[0x277CBEB98];
  zoneCopy = zone;
  v12 = [v10 na_setWithSafeObject:room];
  v13 = [(HFItemManager *)self _itemsToUpdateForModifiedRooms:v12];
  v14 = [v13 mutableCopy];

  v15 = [MEMORY[0x277CBEB98] na_setWithSafeObject:zoneCopy];

  v16 = [(HFItemManager *)self _itemsToUpdateForModifiedZones:v15];
  [v14 unionSet:v16];

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v20[0] = @"room";
  v20[1] = @"zone";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v19 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v14 itemProviderInvalidationReasons:v18 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didAddServiceGroup:(id)group
{
  v14[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  groupCopy = group;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:groupCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServiceGroups:v10];
  v14[0] = @"serviceGroup";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didRemoveServiceGroup:(id)group
{
  v14[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  groupCopy = group;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:groupCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServiceGroups:v10];
  v14[0] = @"serviceGroup";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didUpdateNameForServiceGroup:(id)group
{
  v14[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  groupCopy = group;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:groupCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServiceGroups:v10];
  v14[0] = @"serviceGroup";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didAddService:(id)service toServiceGroup:(id)group
{
  v20[2] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v10 = MEMORY[0x277CBEB98];
  groupCopy = group;
  v12 = [v10 na_setWithSafeObject:service];
  v13 = [(HFItemManager *)self _itemsToUpdateForModifiedServices:v12];
  v14 = [v13 mutableCopy];

  v15 = [MEMORY[0x277CBEB98] na_setWithSafeObject:groupCopy];

  v16 = [(HFItemManager *)self _itemsToUpdateForModifiedServiceGroups:v15];
  [v14 unionSet:v16];

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v20[0] = @"service";
  v20[1] = @"serviceGroup";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v19 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v14 itemProviderInvalidationReasons:v18 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didRemoveService:(id)service fromServiceGroup:(id)group
{
  v20[2] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v10 = MEMORY[0x277CBEB98];
  groupCopy = group;
  v12 = [v10 na_setWithSafeObject:service];
  v13 = [(HFItemManager *)self _itemsToUpdateForModifiedServices:v12];
  v14 = [v13 mutableCopy];

  v15 = [MEMORY[0x277CBEB98] na_setWithSafeObject:groupCopy];

  v16 = [(HFItemManager *)self _itemsToUpdateForModifiedServiceGroups:v15];
  [v14 unionSet:v16];

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v20[0] = @"service";
  v20[1] = @"serviceGroup";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v19 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v14 itemProviderInvalidationReasons:v18 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didUnblockAccessory:(id)accessory
{
  v15[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  accessoryCopy = accessory;
  hf_characteristicValueManager = [homeCopy hf_characteristicValueManager];
  [hf_characteristicValueManager invalidateCachedValuesForAccessory:accessoryCopy];

  batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v11 = [MEMORY[0x277CBEB98] na_setWithSafeObject:accessoryCopy];

  v12 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v11];
  v15[0] = @"accessory";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v14 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v12 itemProviderInvalidationReasons:v13 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didEncounterError:(id)error forAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  v9 = objc_msgSend_home(self);

  if (v9 == homeCopy)
  {
    batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
    v11 = [MEMORY[0x277CBEB98] na_setWithSafeObject:accessoryCopy];
    v12 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v11];
    v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v12 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:homeCopy senderSelector:a2];
  }
}

- (void)home:(id)home didAddActionSet:(id)set
{
  v14[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  setCopy = set;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:setCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedActionSets:v10];
  v14[0] = @"actionSet";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didRemoveActionSet:(id)set
{
  v16[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  setCopy = set;
  v9 = objc_msgSend_home(self);
  hf_characteristicValueManager = [v9 hf_characteristicValueManager];
  [hf_characteristicValueManager invalidateCachedErrorForExecutionOfActionSet:setCopy];

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v12 = [MEMORY[0x277CBEB98] na_setWithSafeObject:setCopy];

  v13 = [(HFItemManager *)self _itemsToUpdateForModifiedActionSets:v12];
  v16[0] = @"actionSet";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v15 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v13 itemProviderInvalidationReasons:v14 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didUpdateNameForActionSet:(id)set
{
  v14[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  setCopy = set;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:setCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedActionSets:v10];
  v14[0] = @"actionSet";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didUpdateActionsForActionSet:(id)set
{
  v16[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  setCopy = set;
  v9 = objc_msgSend_home(self);
  hf_characteristicValueManager = [v9 hf_characteristicValueManager];
  [hf_characteristicValueManager invalidateCachedErrorForExecutionOfActionSet:setCopy];

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v12 = [MEMORY[0x277CBEB98] na_setWithSafeObject:setCopy];

  v13 = [(HFItemManager *)self _itemsToUpdateForModifiedActionSets:v12];
  v16[0] = @"actionSet";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v15 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v13 itemProviderInvalidationReasons:v14 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didAddTrigger:(id)trigger
{
  v14[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  triggerCopy = trigger;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:triggerCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedTriggers:v10];
  v14[0] = @"trigger";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didRemoveTrigger:(id)trigger
{
  v14[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  triggerCopy = trigger;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:triggerCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedTriggers:v10];
  v14[0] = @"trigger";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didUpdateNameForTrigger:(id)trigger
{
  v14[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  triggerCopy = trigger;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:triggerCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedTriggers:v10];
  v14[0] = @"trigger";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didUpdateTrigger:(id)trigger
{
  v14[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  triggerCopy = trigger;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:triggerCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedTriggers:v10];
  v14[0] = @"trigger";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:homeCopy senderSelector:a2];
}

- (void)homeDidUpdateApplicationData:(id)data
{
  v11[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:dataCopy];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v7];
  v11[0] = @"home";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v10 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:dataCopy senderSelector:a2];
}

- (void)home:(id)home didUpdateApplicationDataForRoom:(id)room
{
  v14[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  roomCopy = room;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:roomCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedRooms:v10];
  v14[0] = @"room";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didUpdateApplicationDataForActionSet:(id)set
{
  v14[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  setCopy = set;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:setCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedActionSets:v10];
  v14[0] = @"actionSet";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didUpdateApplicationDataForServiceGroup:(id)group
{
  v14[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  groupCopy = group;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:groupCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServiceGroups:v10];
  v14[0] = @"serviceGroup";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didUpdateStateForOutgoingInvitations:(id)invitations
{
  v14[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  invitationsCopy = invitations;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] setWithArray:invitationsCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForOutgoingInvitation:v10];
  v14[0] = @"outgoinginvitations";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didUpdateAccesoryInvitationsForUser:(id)user
{
  v14[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  userCopy = user;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:userCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedUsers:v10];
  v14[0] = @"pendingAccessories";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:homeCopy senderSelector:a2];
}

- (void)homeManager:(id)manager didUpdateStateForIncomingInvitations:(id)invitations
{
  v12[1] = *MEMORY[0x277D85DE8];
  invitationsCopy = invitations;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] setWithArray:invitationsCopy];

  v9 = [(HFItemManager *)self _itemsToUpdateForIncomingInvitation:v8];
  v12[0] = @"incominginvitations";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v11 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:0 senderSelector:a2];
}

- (void)home:(id)home didUpdateAccessControlForUser:(id)user
{
  v34 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  userCopy = user;
  v9 = [MEMORY[0x277CBEB98] setWithObject:userCopy];
  v10 = [(HFItemManager *)self _itemsToUpdateForModifiedUsers:v9];

  currentUser = [homeCopy currentUser];
  v12 = [userCopy isEqual:currentUser];

  if (v12)
  {
    v13 = [MEMORY[0x277CBEB98] setWithObject:homeCopy];
    v14 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v13];
    v15 = [v10 setByAddingObjectsFromSet:v14];

    v10 = v15;
  }

  currentUser2 = [homeCopy currentUser];
  if (currentUser2 == userCopy)
  {
    v20 = [homeCopy homeAccessControlForUser:userCopy];
    isRemoteAccessAllowed = [v20 isRemoteAccessAllowed];

    if (isRemoteAccessAllowed)
    {
      goto LABEL_5;
    }

    currentUser2 = [userCopy announceUserSettings];
    if ([currentUser2 deviceNotificationMode] == 3)
    {
      v22 = HFLogForCategory(0x27uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
        v24 = MEMORY[0x277CCABB0];
        v25 = [homeCopy homeAccessControlForUser:userCopy];
        v26 = [v24 numberWithBool:{objc_msgSend(v25, "isRemoteAccessAllowed")}];
        *buf = 138412546;
        v31 = v23;
        v32 = 2112;
        v33 = v26;
        _os_log_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_DEFAULT, "Now Updating Announce notification setting to HMAnnounceDeviceNotificationModeAtHome -  currentNotificationMode = [%@] isRemoteAccessAllowed = [%@]", buf, 0x16u);
      }

      v27 = [objc_alloc(MEMORY[0x277CD1810]) initWithDeviceNotificationMode:2];
      currentUser3 = [homeCopy currentUser];
      [currentUser3 updateAnnounceUserSettings:v27 forHome:homeCopy completionHandler:&__block_literal_global_59];
    }
  }

LABEL_5:
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v29 = @"user";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v19 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v10 itemProviderInvalidationReasons:v18 modifiedHome:homeCopy senderSelector:a2];
}

void __70__HFItemManager_HomeKitDelegates__home_didUpdateAccessControlForUser___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Error updating Announce notification setting - [%@]", &v4, 0xCu);
    }
  }
}

- (void)home:(id)home didAddResidentDevice:(id)device
{
  v13[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:device];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedResidentDevices:v8];

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v13[0] = @"residentDevice";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v12 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v11 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didRemoveResidentDevice:(id)device
{
  v13[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:device];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedResidentDevices:v8];

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v13[0] = @"residentDevice";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v12 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v11 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home remoteAccessStateDidChange:(unint64_t)change
{
  homeCopy = home;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  _itemsToUpdateForRemoteAccessChange = [(HFItemManager *)self _itemsToUpdateForRemoteAccessChange];
  v8 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:_itemsToUpdateForRemoteAccessChange itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:homeCopy senderSelector:a2];
}

- (void)homeDidUpdateProtectionMode:(id)mode
{
  modeCopy = mode;
  batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v6 = [MEMORY[0x277CBEB98] setWithObject:modeCopy];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v6];
  v8 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:modeCopy senderSelector:a2];
}

- (void)homeDidUpdateNetworkRouterSupport:(id)support
{
  supportCopy = support;
  batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v6 = [MEMORY[0x277CBEB98] setWithObject:supportCopy];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v6];
  v8 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:supportCopy senderSelector:a2];
}

- (void)home:(id)home didAddAccessoryNetworkProtectionGroup:(id)group
{
  v12[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v8 = [MEMORY[0x277CBEB98] setWithObject:homeCopy];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v8];
  v12[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v11 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didRemoveAccessoryNetworkProtectionGroup:(id)group
{
  v12[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v8 = [MEMORY[0x277CBEB98] setWithObject:homeCopy];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v8];
  v12[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v11 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didUpdateAccessoryNetworkProtectionGroup:(id)group
{
  homeCopy = home;
  groupCopy = group;
  batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v9 = [MEMORY[0x277CBEB98] setWithObject:groupCopy];

  v10 = [(HFItemManager *)self _itemsToUpdateForModifiedNetworkProtectionGroups:v9];
  v11 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v10 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didUpdatePersonManagerSettings:(id)settings
{
  v6 = [MEMORY[0x277CBEB98] setWithObject:settings];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedHomePersonManagerSettings:v6];

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)homeDidAddWalletKey:(id)key
{
  v12[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  hf_fetchWalletKeyDeviceStateForCurrentDevice = [keyCopy hf_fetchWalletKeyDeviceStateForCurrentDevice];
  batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:keyCopy];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v8];
  v12[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v11 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:keyCopy senderSelector:a2];
}

- (void)homeDidRemoveWalletKey:(id)key
{
  v12[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  hf_fetchWalletKeyDeviceStateForCurrentDevice = [keyCopy hf_fetchWalletKeyDeviceStateForCurrentDevice];
  batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v8 = [MEMORY[0x277CBEB98] setWithObject:keyCopy];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v8];
  v12[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v11 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:keyCopy senderSelector:a2];
}

- (void)homeDidUpdateToROAR:(id)r
{
  v11[1] = *MEMORY[0x277D85DE8];
  rCopy = r;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:rCopy];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v7];
  v11[0] = @"home";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v10 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:rCopy senderSelector:a2];
}

- (void)homeDidUpdateSoundCheck:(id)check
{
  checkCopy = check;
  batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v6 = [MEMORY[0x277CBEB98] setWithObject:checkCopy];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v6];
  v8 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:checkCopy senderSelector:a2];
}

- (void)home:(id)home didUpdateAudioAnalysisClassifierOptions:(unint64_t)options
{
  homeCopy = home;
  batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v7 = [MEMORY[0x277CBEB98] setWithObject:homeCopy];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v7];
  v9 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didUpdateOnboardAudioAnalysis:(BOOL)analysis
{
  homeCopy = home;
  batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v7 = [MEMORY[0x277CBEB98] setWithObject:homeCopy];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v7];
  v9 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didUpdateAreBulletinNotificationsSupported:(BOOL)supported
{
  homeCopy = home;
  batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:homeCopy];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v7];
  v9 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didUpdateSiriTriggerPhraseOptions:(unint64_t)options
{
  v12[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v8 = [MEMORY[0x277CBEB98] setWithObject:homeCopy];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v8];
  v12[0] = @"home";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v11 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didUpdateSiriPhraseOptions:(unint64_t)options
{
  homeCopy = home;
  batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v7 = [MEMORY[0x277CBEB98] setWithObject:homeCopy];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v7];
  v9 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:homeCopy senderSelector:a2];
}

- (void)homeDidUpdateHomeEnergyManagerEnabled:(id)enabled
{
  v20 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  v6 = HFLogForCategory(0x24uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [enabledCopy name];
    *buf = 138412802;
    selfCopy = self;
    v16 = 2080;
    v17 = "[HFItemManager(HomeKitDelegates) homeDidUpdateHomeEnergyManagerEnabled:]";
    v18 = 2112;
    v19 = name;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "(%@ %s) HFItemManager Delegates ~~> Dispatching onto onto main. home name: %@", buf, 0x20u);
  }

  batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v9 = [MEMORY[0x277CBEB98] na_setWithSafeObject:enabledCopy];
  v10 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v9];
  v13 = @"homeEnergy";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v12 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v10 itemProviderInvalidationReasons:v11 modifiedHome:enabledCopy senderSelector:a2];
}

- (void)accessoryDidUpdateName:(id)name
{
  v12[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:nameCopy];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v7];
  v12[0] = @"accessory";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v10 = objc_msgSend_home(nameCopy);

  v11 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:v10 senderSelector:a2];
}

- (void)accessory:(id)accessory didUpdateNameForService:(id)service
{
  v15[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accessoryCopy = accessory;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:serviceCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServices:v10];
  v15[0] = @"service";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = objc_msgSend_home(accessoryCopy);

  v14 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v13 senderSelector:a2];
}

- (void)accessory:(id)accessory didUpdateAssociatedServiceTypeForService:(id)service
{
  v15[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accessoryCopy = accessory;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:serviceCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServices:v10];
  v15[0] = @"service";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = objc_msgSend_home(accessoryCopy);

  v14 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v13 senderSelector:a2];
}

- (void)accessory:(id)accessory didUpdateHH1EOLEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v25 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v8 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [accessoryCopy uniqueIdentifier];
    *buf = 136315906;
    v18 = "[HFItemManager(HomeKitDelegates) accessory:didUpdateHH1EOLEnabled:]";
    v19 = 2112;
    v20 = accessoryCopy;
    v21 = 2114;
    v22 = uniqueIdentifier;
    v23 = 1024;
    v24 = enabledCopy;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "(%s) accessory %@ (uniqueIdentifier: %{public}@) | hh1EOLEnabled = %{BOOL}d", buf, 0x26u);
  }

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v11 = [MEMORY[0x277CBEB98] na_setWithSafeObject:accessoryCopy];
  v12 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v11];
  v16 = @"accessory";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v14 = objc_msgSend_home(accessoryCopy);
  v15 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v12 itemProviderInvalidationReasons:v13 modifiedHome:v14 senderSelector:a2];
}

- (void)accessoryDidUpdateServices:(id)services
{
  v14[2] = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  v6 = objc_msgSend_home(servicesCopy);
  hf_characteristicValueManager = [v6 hf_characteristicValueManager];
  [hf_characteristicValueManager invalidateCachedValuesForAccessory:servicesCopy];

  batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v9 = [MEMORY[0x277CBEB98] na_setWithSafeObject:servicesCopy];
  v10 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v9];
  v14[0] = @"service";
  v14[1] = @"accessory";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v12 = objc_msgSend_home(servicesCopy);

  v13 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v10 itemProviderInvalidationReasons:v11 modifiedHome:v12 senderSelector:a2];
}

- (void)accessoryDidUpdateReachability:(id)reachability
{
  reachabilityCopy = reachability;
  v5 = objc_msgSend_home(reachabilityCopy);
  v6 = objc_msgSend_home(self);

  if (v5 == v6)
  {
    if (![reachabilityCopy hf_supportsSuspendedState] || (objc_msgSend(reachabilityCopy, "isReachable") & 1) == 0)
    {
      v7 = objc_msgSend_home(reachabilityCopy);
      hf_characteristicValueManager = [v7 hf_characteristicValueManager];
      [hf_characteristicValueManager invalidateCachedValuesForAccessory:reachabilityCopy];
    }

    batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
    v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:reachabilityCopy];
    v11 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v10];
    v12 = objc_msgSend_home(reachabilityCopy);
    v13 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v12 senderSelector:a2];
  }
}

- (void)accessoryDidUpdateReachableTransports:(id)transports
{
  transportsCopy = transports;
  v5 = objc_msgSend_home(transportsCopy);
  v6 = objc_msgSend_home(self);

  if (v5 == v6)
  {
    batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
    v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:transportsCopy];
    v9 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v8];
    v10 = objc_msgSend_home(transportsCopy);
    v11 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v10 senderSelector:a2];
  }
}

- (void)accessory:(id)accessory service:(id)service didUpdateValueForCharacteristic:(id)characteristic
{
  accessoryCopy = accessory;
  serviceCopy = service;
  characteristicCopy = characteristic;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__HFItemManager_HomeKitDelegates__accessory_service_didUpdateValueForCharacteristic___block_invoke;
  aBlock[3] = &unk_277DF7750;
  objc_copyWeak(v23, &location);
  v23[1] = a2;
  v12 = _Block_copy(aBlock);
  value = [characteristicCopy value];

  if (value)
  {
    v14 = objc_msgSend_home(accessoryCopy);
    hf_characteristicValueManager = [v14 hf_characteristicValueManager];
    [hf_characteristicValueManager invalidateCachedErrorForCharacteristic:characteristicCopy];
  }

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  hasUncommittedBatchingReasons = [batchedDelegateAdapterDisallowingReads hasUncommittedBatchingReasons];

  if (hasUncommittedBatchingReasons)
  {
    batchCoordinator = [MEMORY[0x277CBEB98] na_setWithSafeObject:characteristicCopy];
    v12[2](v12, batchCoordinator);
  }

  else
  {
    batchedDelegateAdapterDisallowingReads2 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
    batchCoordinator = [batchedDelegateAdapterDisallowingReads2 batchCoordinator];

    v20 = [MEMORY[0x277CBEB98] na_setWithSafeObject:characteristicCopy];
    v21 = objc_msgSend_home(accessoryCopy);
    [batchCoordinator batchedValuesDidUpdateForCharacteristics:v20 inHome:v21 sender:a2];
  }

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

void __85__HFItemManager_HomeKitDelegates__accessory_service_didUpdateValueForCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _itemsToUpdateForModifiedCharacteristics:v3];
  v6 = [v3 na_map:&__block_literal_global_10_1];
  if ([v6 count] != 1)
  {
    v7 = NSStringFromSelector(*(a1 + 40));
    NSLog(&cfstr_ExpectedExactl.isa, v7, v3);
  }

  v8 = [v6 anyObject];
  if (+[HFUtilities hasInternalDiagnostics])
  {
    v9 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 hf_prettyDescription];
      *buf = 138413058;
      v14 = WeakRetained;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v3;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Requesting %@ to update items %@ for characteristic updates %@ for home: %@", buf, 0x2Au);
    }
  }

  v11 = [WeakRetained batchedDelegateAdapterDisallowingReads];
  v12 = [v11 requestUpdateForItems:v5 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v8 senderSelector:*(a1 + 40)];
}

id __85__HFItemManager_HomeKitDelegates__accessory_service_didUpdateValueForCharacteristic___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_service(a2);
  v3 = objc_msgSend_home(v2);

  return v3;
}

- (void)accessoryDidUpdateApplicationData:(id)data
{
  v12[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:dataCopy];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v7];
  v12[0] = @"accessory";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v10 = objc_msgSend_home(dataCopy);

  v11 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:v10 senderSelector:a2];
}

- (void)accessoryDidUpdateCalibrationStatus:(id)status
{
  v12[1] = *MEMORY[0x277D85DE8];
  statusCopy = status;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:statusCopy];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v7];
  v12[0] = @"accessory";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v10 = objc_msgSend_home(statusCopy);

  v11 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:v10 senderSelector:a2];
}

- (void)accessory:(id)accessory didUpdateApplicationDataForService:(id)service
{
  v15[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accessoryCopy = accessory;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:serviceCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServices:v10];
  v15[0] = @"service";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = objc_msgSend_home(accessoryCopy);

  v14 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v13 senderSelector:a2];
}

- (void)accessoryDidUpdateAdditionalSetupRequired:(id)required
{
  v14[1] = *MEMORY[0x277D85DE8];
  requiredCopy = required;
  v6 = objc_msgSend_home(requiredCopy);
  hf_characteristicValueManager = [v6 hf_characteristicValueManager];
  [hf_characteristicValueManager invalidateCachedValuesForAccessory:requiredCopy];

  batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v9 = [MEMORY[0x277CBEB98] na_setWithSafeObject:requiredCopy];
  v10 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v9];
  v14[0] = @"accessory";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = objc_msgSend_home(requiredCopy);

  v13 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v10 itemProviderInvalidationReasons:v11 modifiedHome:v12 senderSelector:a2];
}

- (void)accessory:(id)accessory didUpdateHasAuthorizationDataForCharacteristic:(id)characteristic
{
  v17[1] = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  accessoryCopy = accessory;
  v9 = objc_msgSend_home(accessoryCopy);
  hf_characteristicValueManager = [v9 hf_characteristicValueManager];
  [hf_characteristicValueManager invalidateCachedValuesForAccessory:accessoryCopy];

  batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v12 = [MEMORY[0x277CBEB98] na_setWithSafeObject:characteristicCopy];

  v13 = [(HFItemManager *)self _itemsToUpdateForModifiedCharacteristics:v12];
  v17[0] = @"accessory";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v15 = objc_msgSend_home(accessoryCopy);

  v16 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v13 itemProviderInvalidationReasons:v14 modifiedHome:v15 senderSelector:a2];
}

- (void)accessory:(id)accessory didUpdateBundleID:(id)d
{
  v13[1] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:accessoryCopy];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v8];
  v13[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = objc_msgSend_home(accessoryCopy);

  v12 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
}

- (void)accessory:(id)accessory didUpdateStoreID:(id)d
{
  v13[1] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:accessoryCopy];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v8];
  v13[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = objc_msgSend_home(accessoryCopy);

  v12 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
}

- (void)accessory:(id)accessory didUpdateFirmwareUpdateAvailable:(BOOL)available
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = @"firmwareUpdate";
  v6 = MEMORY[0x277CBEA60];
  accessoryCopy = accessory;
  v8 = [v6 arrayWithObjects:&v14 count:1];
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads:v14];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:accessoryCopy];
  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v10];
  v12 = objc_msgSend_home(accessoryCopy);

  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v8 modifiedHome:v12 senderSelector:a2];
}

- (void)accessory:(id)accessory didUpdateFirmwareVersion:(id)version
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = @"firmwareUpdate";
  v6 = MEMORY[0x277CBEA60];
  accessoryCopy = accessory;
  v8 = [v6 arrayWithObjects:&v14 count:1];
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads:v14];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:accessoryCopy];
  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v10];
  v12 = objc_msgSend_home(accessoryCopy);

  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v8 modifiedHome:v12 senderSelector:a2];
}

- (void)accessory:(id)accessory didUpdateSoftwareVersion:(id)version
{
  v13[1] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:accessoryCopy];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v8];
  v13[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = objc_msgSend_home(accessoryCopy);

  v12 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
}

- (void)accessory:(id)accessory didUpdateLoggedInAccount:(id)account
{
  accountCopy = account;
  accessoryCopy = accessory;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  batchCoordinator = [batchedDelegateAdapterDisallowingReads batchCoordinator];

  v10 = objc_msgSend_home(accessoryCopy);
  [batchCoordinator batchedAccessory:accessoryCopy didUpdateLoggedInAccount:accountCopy inHome:v10 sender:a2];
}

- (void)accessory:(id)accessory didAddProfile:(id)profile
{
  v13[1] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:accessoryCopy];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v8];
  v13[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = objc_msgSend_home(accessoryCopy);

  v12 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
}

- (void)accessory:(id)accessory didRemoveProfile:(id)profile
{
  v13[1] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:accessoryCopy];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v8];
  v13[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = objc_msgSend_home(accessoryCopy);

  v12 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
}

- (void)accessoryDidUpdateControllable:(id)controllable
{
  controllableCopy = controllable;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  batchCoordinator = [batchedDelegateAdapterDisallowingReads batchCoordinator];

  v7 = objc_msgSend_home(controllableCopy);
  [batchCoordinator batchedDidUpdateControllableAccessory:controllableCopy inHome:v7 sender:a2];
}

- (void)accessory:(id)accessory didUpdateConfiguredNameForService:(id)service
{
  v15[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accessoryCopy = accessory;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:serviceCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServices:v10];
  v15[0] = @"service";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = objc_msgSend_home(accessoryCopy);

  v14 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v13 senderSelector:a2];
}

- (void)accessory:(id)accessory didUpdateDefaultNameForService:(id)service
{
  v15[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accessoryCopy = accessory;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:serviceCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServices:v10];
  v15[0] = @"service";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = objc_msgSend_home(accessoryCopy);

  v14 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v13 senderSelector:a2];
}

- (void)accessory:(id)accessory didUpdateServiceSubtypeForService:(id)service
{
  v15[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accessoryCopy = accessory;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:serviceCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServices:v10];
  v15[0] = @"service";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = objc_msgSend_home(accessoryCopy);

  v14 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v13 senderSelector:a2];
}

- (void)accessory:(id)accessory didUpdateConfigurationStateForService:(id)service
{
  v15[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accessoryCopy = accessory;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:serviceCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServices:v10];
  v15[0] = @"service";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = objc_msgSend_home(accessoryCopy);

  v14 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v13 senderSelector:a2];
}

- (void)accessory:(id)accessory didAddSymptomsHandler:(id)handler
{
  v13[1] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:accessoryCopy];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v8];
  v13[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = objc_msgSend_home(accessoryCopy);

  v12 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
}

- (void)accessoryDidRemoveSymptomsHandler:(id)handler
{
  v12[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:handlerCopy];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v7];
  v12[0] = @"accessory";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v10 = objc_msgSend_home(handlerCopy);

  v11 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:v10 senderSelector:a2];
}

- (void)accessoryDidUpdateTargetControlSupport:(id)support
{
  v12[1] = *MEMORY[0x277D85DE8];
  supportCopy = support;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:supportCopy];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v7];
  v12[0] = @"accessory";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v10 = objc_msgSend_home(supportCopy);

  v11 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:v10 senderSelector:a2];
}

- (void)accessory:(id)accessory didAddControlTarget:(id)target
{
  v13[1] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:accessoryCopy];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v8];
  v13[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = objc_msgSend_home(accessoryCopy);

  v12 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
}

- (void)accessory:(id)accessory didRemoveControlTarget:(id)target
{
  v13[1] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:accessoryCopy];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v8];
  v13[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = objc_msgSend_home(accessoryCopy);

  v12 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
}

- (void)home:(id)home didUpdateReprovisionStateForAccessory:(id)accessory
{
  v16[1] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v7 = objc_msgSend_home(accessoryCopy);
  v8 = objc_msgSend_home(self);
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
    v11 = [MEMORY[0x277CBEB98] na_setWithSafeObject:accessoryCopy];
    v12 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v11];
    v16[0] = @"accessory";
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v14 = objc_msgSend_home(accessoryCopy);
    v15 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v12 itemProviderInvalidationReasons:v13 modifiedHome:v14 senderSelector:a2];
  }
}

- (void)accessory:(id)accessory didUpdateLastKnownSleepDiscoveryModeForService:(id)service
{
  v15[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accessoryCopy = accessory;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:serviceCopy];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServices:v10];
  v15[0] = @"service";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = objc_msgSend_home(accessoryCopy);

  v14 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v13 senderSelector:a2];
}

- (void)accessoryDidUpdateAudioDestinationController:(id)controller
{
  v12[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:controllerCopy];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v7];
  v12[0] = @"accessory";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v10 = objc_msgSend_home(controllerCopy);

  v11 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:v10 senderSelector:a2];
}

- (void)accessoryDidUpdateAudioDestination:(id)destination
{
  v12[1] = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:destinationCopy];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v7];
  v12[0] = @"accessory";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v10 = objc_msgSend_home(destinationCopy);

  v11 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:v10 senderSelector:a2];
}

- (void)accessory:(id)accessory didUpdateLastKnownOperatingStateResponseForService:(id)service
{
  v13[1] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:accessoryCopy];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v8];
  v13[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = objc_msgSend_home(accessoryCopy);

  v12 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
}

- (void)accessoryDidUpdatePreferredMediaUser:(id)user
{
  v12[1] = *MEMORY[0x277D85DE8];
  userCopy = user;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:userCopy];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v7];
  v12[0] = @"accessory";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v10 = objc_msgSend_home(userCopy);

  v11 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:v10 senderSelector:a2];
}

- (void)accessory:(id)accessory didUpdateUserNotifiedOfSoftwareUpdate:(BOOL)update
{
  v13[1] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:accessoryCopy];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v8];
  v13[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = objc_msgSend_home(accessoryCopy);

  v12 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
}

- (void)accessory:(id)accessory didUpdateSupportsWalletKey:(BOOL)key
{
  accessoryCopy = accessory;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:accessoryCopy];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v7];
  v9 = objc_msgSend_home(accessoryCopy);

  v10 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)accessoryDidUpdatePendingConfigurationIdentifier:(id)identifier
{
  v12[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:identifierCopy];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v7];
  v12[0] = @"accessory";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v10 = objc_msgSend_home(identifierCopy);

  v11 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:v10 senderSelector:a2];
}

- (void)accessoryDidUpdateDiagnosticsTransferSupport:(id)support
{
  supportCopy = support;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:supportCopy];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v6];
  v8 = objc_msgSend_home(supportCopy);

  v9 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v8 senderSelector:a2];
}

- (void)residentDevice:(id)device didUpdateName:(id)name
{
  v13[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:deviceCopy];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedResidentDevices:v8];
  v13[0] = @"residentDevice";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = objc_msgSend_home(deviceCopy);

  v12 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
}

- (void)residentDevice:(id)device didUpdateCapabilities:(unint64_t)capabilities
{
  v13[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:deviceCopy];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedResidentDevices:v8];
  v13[0] = @"residentDevice";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = objc_msgSend_home(deviceCopy);

  v12 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
}

- (void)residentDevice:(id)device didUpdateEnabled:(BOOL)enabled
{
  v13[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:deviceCopy];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedResidentDevices:v8];
  v13[0] = @"residentDevice";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = objc_msgSend_home(deviceCopy);

  v12 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
}

- (void)residentDevice:(id)device didUpdateStatus:(unint64_t)status
{
  v13[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:deviceCopy];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedResidentDevices:v8];
  v13[0] = @"residentDevice";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = objc_msgSend_home(deviceCopy);

  v12 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
}

- (void)cameraSnapshotControl:(id)control didTakeSnapshot:(id)snapshot error:(id)error
{
  error = [(HFItemManager *)self _cameraForCameraControl:control, snapshot, error];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:error];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedCameras:v8];
  accessory = [error accessory];
  v11 = objc_msgSend_home(accessory);
  v12 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v11 senderSelector:a2];
}

- (void)cameraSnapshotControlDidUpdateMostRecentSnapshot:(id)snapshot
{
  v11 = [(HFItemManager *)self _cameraForCameraControl:snapshot];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v11];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedCameras:v6];
  accessory = [v11 accessory];
  v9 = objc_msgSend_home(accessory);
  v10 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)cameraStreamControlDidStartStream:(id)stream
{
  v11 = [(HFItemManager *)self _cameraForCameraControl:stream];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v11];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedCameras:v6];
  accessory = [v11 accessory];
  v9 = objc_msgSend_home(accessory);
  v10 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)cameraStreamControl:(id)control didStopStreamWithError:(id)error
{
  error = [(HFItemManager *)self _cameraForCameraControl:control, error];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:error];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedCameras:v7];
  accessory = [error accessory];
  v10 = objc_msgSend_home(accessory);
  v11 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v10 senderSelector:a2];
}

- (void)cameraStreamControlDidUpdateStreamState:(id)state
{
  v11 = [(HFItemManager *)self _cameraForCameraControl:state];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v11];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedCameras:v6];
  accessory = [v11 accessory];
  v9 = objc_msgSend_home(accessory);
  v10 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)cameraStreamControlDidUpdateManagerState:(id)state
{
  v11 = [(HFItemManager *)self _cameraForCameraControl:state];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v11];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedCameras:v6];
  accessory = [v11 accessory];
  v9 = objc_msgSend_home(accessory);
  v10 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)cameraStream:(id)stream didUpdateAudioStreamSettingWithError:(id)error
{
  error = [(HFItemManager *)self _cameraForCameraStream:stream, error];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:error];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedCameras:v7];
  accessory = [error accessory];
  v10 = objc_msgSend_home(accessory);
  v11 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v10 senderSelector:a2];
}

- (void)cameraUserSettingsDidUpdate:(id)update
{
  v11 = [(HFItemManager *)self _cameraForUserSettings:update];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v11];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedCameras:v6];
  accessory = [v11 accessory];
  v9 = objc_msgSend_home(accessory);
  v10 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)clipManager:(id)manager didUpdateSignificantEvents:(id)events
{
  eventsCopy = events;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedSignificantEvents:eventsCopy];

  v8 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)clipManager:(id)manager didRemoveSignificantEventsWithUUIDs:(id)ds
{
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedUUIDs:ds];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)softwareUpdateController:(id)controller didUpdateAvailableUpdate:(id)update
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CBEB98];
  updateCopy = update;
  v9 = [v7 na_setWithSafeObject:controller];
  v10 = [(HFItemManager *)self _itemsToUpdateForModifiedSoftwareUpdateControllers:v9];
  v11 = [v10 mutableCopy];

  v12 = [MEMORY[0x277CBEB98] na_setWithSafeObject:updateCopy];

  v13 = [(HFItemManager *)self _itemsToUpdateForModifiedSoftwareUpdates:v12];
  [v11 unionSet:v13];

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v17[0] = @"softwareUpdate";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v16 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v15 modifiedHome:0 senderSelector:a2];
}

- (void)softwareUpdate:(id)update didUpdateState:(int64_t)state
{
  v12[1] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:updateCopy];

  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedSoftwareUpdates:v8];
  v12[0] = @"softwareUpdate";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v11 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:0 senderSelector:a2];
}

- (void)softwareUpdate:(id)update didUpdateDocumentation:(id)documentation
{
  v12[1] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:updateCopy];

  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedSoftwareUpdates:v8];
  v12[0] = @"softwareUpdate";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v11 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:0 senderSelector:a2];
}

- (void)softwareUpdate:(id)update didUpdateDocumentationAvailable:(BOOL)available
{
  v12[1] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:updateCopy];

  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedSoftwareUpdates:v8];
  v12[0] = @"softwareUpdate";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v11 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:0 senderSelector:a2];
}

- (void)softwareUpdate:(id)update didUpdateNeedsAttentionReasons:(unint64_t)reasons
{
  v12[1] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:updateCopy];

  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedSoftwareUpdates:v8];
  v12[0] = @"softwareUpdate";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v11 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:0 senderSelector:a2];
}

- (void)softwareUpdateV2DidUpdateForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  batchCoordinator = [batchedDelegateAdapterDisallowingReads batchCoordinator];

  [batchCoordinator batchedSoftwareUpdateV2DidUpdateForAccessory:accessoryCopy sender:a2];
}

- (void)softwareUpdateV2DidUpdateProgressForAccessory:(id)accessory
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = [(HFItemManager *)self _itemsToUpdateForSoftwareUpdateV2ProgressChangeToAccessory:accessory];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v9[0] = @"softwareUpdate";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v8 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v5 itemProviderInvalidationReasons:v7 modifiedHome:0 senderSelector:a2];
}

- (void)user:(id)user didUpdateAssistantAccessControl:(id)control forHome:(id)home
{
  v15[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  userCopy = user;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v11 = [MEMORY[0x277CBEB98] na_setWithSafeObject:userCopy];

  v12 = [(HFItemManager *)self _itemsToUpdateForModifiedUsers:v11];
  v15[0] = @"user";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v14 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v12 itemProviderInvalidationReasons:v13 modifiedHome:homeCopy senderSelector:a2];
}

- (void)user:(id)user didUpdateMediaContentProfileAccessControl:(id)control forHome:(id)home
{
  v15[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  userCopy = user;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v11 = [MEMORY[0x277CBEB98] na_setWithSafeObject:userCopy];

  v12 = [(HFItemManager *)self _itemsToUpdateForModifiedUsers:v11];
  v15[0] = @"user";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v14 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v12 itemProviderInvalidationReasons:v13 modifiedHome:homeCopy senderSelector:a2];
}

- (void)user:(id)user didUpdatePhotosPersonManagerSettings:(id)settings
{
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CBEB98] setWithObject:{user, settings}];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedUsers:v6];

  batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v11[0] = @"user";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v10 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v7 itemProviderInvalidationReasons:v9 modifiedHome:0 senderSelector:a2];
}

- (void)restrictedGuestAllowedPeriodStarted:(id)started
{
  v21 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  v6 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    hf_prettyDescription = [startedCopy hf_prettyDescription];
    *buf = 138412802;
    selfCopy = self;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = hf_prettyDescription;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ Restricted Guest allowed period started for user: %@.", buf, 0x20u);
  }

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:startedCopy];
  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedUsers:v10];
  v14 = @"user";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:0 senderSelector:a2];
}

- (void)restrictedGuestAllowedPeriodEnded:(id)ended
{
  v21 = *MEMORY[0x277D85DE8];
  endedCopy = ended;
  v6 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    hf_prettyDescription = [endedCopy hf_prettyDescription];
    *buf = 138412802;
    selfCopy = self;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = hf_prettyDescription;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ Restricted Guest allowed period ended for user: %@.", buf, 0x20u);
  }

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:endedCopy];
  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedUsers:v10];
  v14 = @"user";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:0 senderSelector:a2];
}

- (void)settings:(id)settings willWriteValueForSettings:(id)forSettings
{
  forSettingsCopy = forSettings;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [(HFItemManager *)self _itemsToUpdateForAccessorySettingChanges:forSettingsCopy];

  v8 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)settings:(id)settings didWriteValueForSettings:(id)forSettings failedSettings:(id)failedSettings homeKitObjectIdentifiers:(id)identifiers
{
  forSettingsCopy = forSettings;
  failedSettingsCopy = failedSettings;
  identifiersCopy = identifiers;
  v12 = forSettingsCopy;
  if (!forSettingsCopy)
  {
    v12 = [MEMORY[0x277CBEB98] set];
  }

  v19 = v12;
  v13 = [v12 setByAddingObjectsFromSet:failedSettingsCopy];
  v14 = [v13 na_map:&__block_literal_global_17_4];
  v15 = [(HFItemManager *)self _itemsToUpdateForHomeKitKeyPaths:v14 forHomeKitObjectIdentifiers:identifiersCopy];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v17 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v15 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)symptomsHandler:(id)handler didUpdateSymptoms:(id)symptoms
{
  v15[2] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = objc_msgSend_home(self);
  v8 = [v7 hf_accessoryForSymptomsHandler:handlerCopy];

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];
  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v10];
  v15[0] = @"mediaSystem";
  v15[1] = @"accessory";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v13 = objc_msgSend_home(v8);
  v14 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v13 senderSelector:a2];
}

- (void)fixSessionDidChangeForAccessory:(id)accessory
{
  v14 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v6 = HFLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = accessoryCopy;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "HFItemManager accessory: %@", &v12, 0xCu);
  }

  v7 = [MEMORY[0x277CBEB98] setWithObject:accessoryCopy];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v7];

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = objc_msgSend_home(accessoryCopy);
  v11 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v10 senderSelector:a2];
}

- (void)profileDidUpdateNetworkProtectionMode:(id)mode
{
  modeCopy = mode;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:modeCopy];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedNetworkConfigurationProfiles:v6];
  accessory = [modeCopy accessory];

  v9 = objc_msgSend_home(accessory);
  v10 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)profileDidUpdateAllowedHosts:(id)hosts
{
  hostsCopy = hosts;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:hostsCopy];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedNetworkConfigurationProfiles:v6];
  accessory = [hostsCopy accessory];

  v9 = objc_msgSend_home(accessory);
  v10 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)profileDidUpdateAccessViolation:(id)violation
{
  violationCopy = violation;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:violationCopy];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedNetworkConfigurationProfiles:v6];
  accessory = [violationCopy accessory];

  v9 = objc_msgSend_home(accessory);
  v10 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)profileDidUpdateWiFiReconfigurationSupport:(id)support
{
  supportCopy = support;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:supportCopy];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedNetworkConfigurationProfiles:v6];
  accessory = [supportCopy accessory];

  v9 = objc_msgSend_home(accessory);
  v10 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)profileDidUpdateWiFiCredentialType:(id)type
{
  typeCopy = type;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:typeCopy];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedNetworkConfigurationProfiles:v6];
  accessory = [typeCopy accessory];

  v9 = objc_msgSend_home(accessory);
  v10 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)profileDidUpdateMediaSourceDisplayOrder:(id)order
{
  orderCopy = order;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:orderCopy];
  v7 = [(HFItemManager *)self _itemsToUpdateForTelevisionProfiles:v6];
  accessory = [orderCopy accessory];

  v9 = objc_msgSend_home(accessory);
  v10 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)mediaDestinationController:(id)controller didUpdateDestination:(id)destination
{
  controllerCopy = controller;
  batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v7 = [MEMORY[0x277CBEB98] setWithObject:controllerCopy];

  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForMediaDestinationController:v7];
  v9 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)mediaDestinationControllerDidUpdateAvailableDestinations:(id)destinations
{
  destinationsCopy = destinations;
  batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v6 = [MEMORY[0x277CBEB98] setWithObject:destinationsCopy];

  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForMediaDestinationController:v6];
  v8 = [batchedDelegateAdapterAllowingReads requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)lightProfile:(id)profile didUpdateSettings:(id)settings
{
  settingsCopy = settings;
  profileCopy = profile;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  batchCoordinator = [batchedDelegateAdapterDisallowingReads batchCoordinator];

  [batchCoordinator batchedLightProfileUpdate:profileCopy settings:settingsCopy sender:a2];
}

- (void)walletKeyDeviceStateUpdated:(id)updated inHome:(id)home
{
  homeCopy = home;
  updatedCopy = updated;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedWalletKeyDeviceState:updatedCopy];

  v10 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home willReadValuesForCharacteristics:(id)characteristics
{
  v5 = [(HFItemManager *)self _itemsToUpdateForModifiedCharacteristics:characteristics];
  [(HFItemManager *)self _updateLoadingStateAndNotifyDelegateForItems:v5 canFinishTransaction:1];
}

- (void)home:(id)home willWriteValuesForCharacteristics:(id)characteristics
{
  homeCopy = home;
  characteristicsCopy = characteristics;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedCharacteristics:characteristicsCopy];

  v10 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home willExecuteActionSets:(id)sets
{
  v5 = [(HFItemManager *)self _itemsToUpdateForModifiedActionSets:sets];
  [(HFItemManager *)self _updateLoadingStateAndNotifyDelegateForItems:v5 canFinishTransaction:1];
}

- (void)home:(id)home didReadValuesForCharacteristics:(id)characteristics failedCharacteristics:(id)failedCharacteristics
{
  homeCopy = home;
  characteristicsCopy = characteristics;
  failedCharacteristicsCopy = failedCharacteristics;
  if (!characteristicsCopy)
  {
    characteristicsCopy = [MEMORY[0x277CBEB98] set];
  }

  v11 = [characteristicsCopy setByAddingObjectsFromSet:failedCharacteristicsCopy];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  batchCoordinator = [batchedDelegateAdapterDisallowingReads batchCoordinator];

  [batchCoordinator batchedValuesDidUpdateForCharacteristics:v11 inHome:homeCopy sender:a2];
}

- (void)home:(id)home didWriteValuesForCharacteristics:(id)characteristics failedCharacteristics:(id)failedCharacteristics
{
  homeCopy = home;
  characteristicsCopy = characteristics;
  failedCharacteristicsCopy = failedCharacteristics;
  if (!characteristicsCopy)
  {
    characteristicsCopy = [MEMORY[0x277CBEB98] set];
  }

  v11 = [characteristicsCopy setByAddingObjectsFromSet:failedCharacteristicsCopy];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v13 = [(HFItemManager *)self _itemsToUpdateForModifiedCharacteristics:v11];
  v14 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v13 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didExecuteActionSets:(id)sets failedActionSets:(id)actionSets
{
  homeCopy = home;
  setsCopy = sets;
  actionSetsCopy = actionSets;
  if (!setsCopy)
  {
    setsCopy = [MEMORY[0x277CBEB98] set];
  }

  v11 = [setsCopy setByAddingObjectsFromSet:actionSetsCopy];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v13 = [(HFItemManager *)self _itemsToUpdateForModifiedActionSets:v11];
  v14 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v13 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:homeCopy senderSelector:a2];
}

- (void)mediaSession:(id)session willUpdatePlaybackState:(int64_t)state
{
  state = [(HFItemManager *)self _itemsToUpdateForMediaSessionChange:session, state];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:state itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)mediaSession:(id)session didUpdatePlaybackState:(int64_t)state
{
  state = [(HFItemManager *)self _itemsToUpdateForMediaSessionChange:session, state];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:state itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)mediaSession:(id)session failedToUpdatePlaybackStateWithError:(id)error
{
  error = [(HFItemManager *)self _itemsToUpdateForMediaSessionChange:session, error];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:error itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)mediaSessionDidUpdate:(id)update
{
  v7 = [(HFItemManager *)self _itemsToUpdateForMediaSessionChange:update];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)mediaObject:(id)object didUpdateMediaSession:(id)session
{
  sessionCopy = session;
  objectCopy = object;
  v9 = [(HFItemManager *)self _itemsToUpdateForMediaObjectChange:objectCopy];
  v10 = [(HFItemManager *)self _itemsToUpdateForMediaSessionChange:sessionCopy];

  v14 = [v9 setByAddingObjectsFromSet:v10];

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  hf_home = [objectCopy hf_home];

  v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v14 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:hf_home senderSelector:a2];
}

- (void)mediaObject:(id)object didUpdateSettings:(id)settings
{
  settingsCopy = settings;
  objectCopy = object;
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  batchCoordinator = [batchedDelegateAdapterDisallowingReads batchCoordinator];

  hf_home = [objectCopy hf_home];
  [batchCoordinator batchedMediaObjectDidUpdate:objectCopy settings:settingsCopy inHome:hf_home sender:a2];
}

- (void)settings:(id)settings didUpdateForIdentifier:(id)identifier keyPath:(id)path
{
  if (identifier)
  {
    v8 = MEMORY[0x277CBEB98];
    identifierCopy = identifier;
    v10 = [v8 setWithObject:path];
    v11 = [MEMORY[0x277CBEB98] setWithObject:identifierCopy];

    v14 = [(HFItemManager *)self _itemsToUpdateForHomeKitKeyPaths:v10 forHomeKitObjectIdentifiers:v11];

    batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
    v13 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v14 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
  }
}

- (void)didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)identifier settings:(id)settings
{
  identifierCopy = identifier;
  settingsCopy = settings;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  objc_initWeak(&location, self);
  firstFastUpdateFuture = [(HFItemManager *)self firstFastUpdateFuture];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__HFItemManager_HomeKitDelegates__didReceiveSettingsUpdatesForAccessoryWithIdentifier_settings___block_invoke;
  v13[3] = &unk_277DF77E0;
  objc_copyWeak(v16, &location);
  v10 = settingsCopy;
  v14 = v10;
  v11 = identifierCopy;
  v15 = v11;
  v16[1] = a2;
  v12 = [firstFastUpdateFuture addCompletionBlock:v13];

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __96__HFItemManager_HomeKitDelegates__didReceiveSettingsUpdatesForAccessoryWithIdentifier_settings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [*(a1 + 32) na_map:&__block_literal_global_20_2];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v9 = [WeakRetained itemProviders];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __96__HFItemManager_HomeKitDelegates__didReceiveSettingsUpdatesForAccessoryWithIdentifier_settings___block_invoke_3;
  v21[3] = &unk_277DF77B8;
  v10 = v8;
  v22 = v10;
  v24 = &v25;
  v23 = *(a1 + 32);
  [v9 na_each:v21];

  if (*(v26 + 24) == 1)
  {
    v11 = [MEMORY[0x277CBEB98] setWithArray:v10];
    v12 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
    v13 = [WeakRetained _itemsToUpdateForHomeKitKeyPaths:v11 forHomeKitObjectIdentifiers:v12];

    v14 = HFLogForCategory(0x28uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v15 = *(a1 + 40);
      *buf = 138413058;
      v30 = v15;
      v31 = 2112;
      v32 = v16;
      v33 = 2112;
      v34 = v10;
      v35 = 2112;
      v36 = v13;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "didReceiveSettingsUpdatesForAccessoryWithIdentifier = [%@] settings = [%@] keyPaths = [%@]. Now reloading items: %@", buf, 0x2Au);
    }

    if ([v13 count])
    {
      v17 = [WeakRetained batchedDelegateAdapterDisallowingReads];
      v18 = [v17 requestUpdateForItems:v13 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:*(a1 + 56)];
    }
  }

  else
  {
    v13 = HFLogForCategory(0x28uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      v19 = *(a1 + 40);
      *buf = 138412802;
      v30 = v19;
      v31 = 2112;
      v32 = v20;
      v33 = 2112;
      v34 = v10;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "didReceiveSettingsUpdatesForAccessoryWithIdentifier = [%@] settings = [%@] keyPaths = [%@]. Not reloading items since no new data", buf, 0x20u);
    }
  }

  _Block_object_dispose(&v25, 8);
}

void __96__HFItemManager_HomeKitDelegates__didReceiveSettingsUpdatesForAccessoryWithIdentifier_settings___block_invoke_3(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_2825307D0])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v5 && [v5 shouldUpdateForKeyPaths:a1[4]])
  {
    v7 = HFLogForCategory(0x28uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Calling HFHomeKitSettingItemProviderProtocol to check if a update is needed for [%@]", &v9, 0xCu);
    }

    *(*(a1[6] + 8) + 24) = [v3 updateSettings:a1[5]];
  }
}

- (void)updateSettingValue:(id)value forKeyPath:(id)path accessoryIdentifier:(id)identifier
{
  valueCopy = value;
  pathCopy = path;
  v11 = MEMORY[0x277CBEB98];
  identifierCopy = identifier;
  v13 = [v11 setWithObject:pathCopy];
  v14 = [MEMORY[0x277CBEB98] setWithObject:identifierCopy];

  v15 = [(HFItemManager *)self _itemsToUpdateForHomeKitKeyPaths:v13 forHomeKitObjectIdentifiers:v14];

  if ([v15 count])
  {
    itemProviders = [(HFItemManager *)self itemProviders];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __85__HFItemManager_HomeKitDelegates__updateSettingValue_forKeyPath_accessoryIdentifier___block_invoke;
    v22[3] = &unk_277DF7808;
    v17 = v15;
    v23 = v17;
    v24 = valueCopy;
    v25 = pathCopy;
    [itemProviders na_each:v22];

    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __85__HFItemManager_HomeKitDelegates__updateSettingValue_forKeyPath_accessoryIdentifier___block_invoke_2;
    v19[3] = &unk_277DF37C0;
    v19[4] = self;
    v20 = v17;
    v21 = a2;
    [mainThreadScheduler performBlock:v19];
  }
}

void __85__HFItemManager_HomeKitDelegates__updateSettingValue_forKeyPath_accessoryIdentifier___block_invoke(void *a1, void *a2)
{
  v5 = a2;
  if ([v5 conformsToProtocol:&unk_2825307D0])
  {
    v3 = [v5 items];
    v4 = [v3 intersectsSet:a1[4]];

    if (v4)
    {
      [v5 updateSettingValue:a1[5] forKeyPath:a1[6]];
    }
  }
}

void __85__HFItemManager_HomeKitDelegates__updateSettingValue_forKeyPath_accessoryIdentifier___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) batchedDelegateAdapterDisallowingReads];
  v2 = [v3 requestUpdateForItems:*(a1 + 40) itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:*(a1 + 48)];
}

- (void)home:(id)home didAddMediaSystem:(id)system
{
  homeCopy = home;
  systemCopy = system;
  v8 = [(HFItemManager *)self _itemsToUpdateForMediaSystemChange:systemCopy];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [(HFItemManager *)self _invalidationReasonsForAddedOrRemovedMediaSystem:systemCopy];

  v11 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:v10 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didRemoveMediaSystem:(id)system
{
  homeCopy = home;
  systemCopy = system;
  v8 = [(HFItemManager *)self _itemsToUpdateForMediaSystemChange:systemCopy];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [(HFItemManager *)self _invalidationReasonsForAddedOrRemovedMediaSystem:systemCopy];

  v11 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:v10 modifiedHome:homeCopy senderSelector:a2];
}

- (void)home:(id)home didUpdateMediaSystem:(id)system
{
  homeCopy = home;
  v7 = [(HFItemManager *)self _itemsToUpdateForMediaSystemChange:system];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v9 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:homeCopy senderSelector:a2];
}

- (void)mediaSystem:(id)system didUpdateComponents:(id)components
{
  systemCopy = system;
  v10 = [(HFItemManager *)self _itemsToUpdateForMediaSystemChange:systemCopy];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  hf_home = [systemCopy hf_home];

  v9 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v10 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:hf_home senderSelector:a2];
}

- (void)mediaSystem:(id)system didUpdateName:(id)name
{
  systemCopy = system;
  v10 = [(HFItemManager *)self _itemsToUpdateForMediaSystemChange:systemCopy];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  hf_home = [systemCopy hf_home];

  v9 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v10 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:hf_home senderSelector:a2];
}

- (void)mediaSystem:(id)system didUpdateConfiguredName:(id)name
{
  systemCopy = system;
  v10 = [(HFItemManager *)self _itemsToUpdateForMediaSystemChange:systemCopy];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  hf_home = [systemCopy hf_home];

  v9 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v10 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:hf_home senderSelector:a2];
}

- (void)audioControl:(id)control didUpdateVolume:(float)volume
{
  mediaSession = [control mediaSession];
  v9 = [(HFItemManager *)self _itemsToUpdateForMediaSessionChange:mediaSession];

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)audioControl:(id)control didUpdateMuted:(BOOL)muted
{
  mediaSession = [control mediaSession];
  v9 = [(HFItemManager *)self _itemsToUpdateForMediaSessionChange:mediaSession];

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)siriEndpointProfile:(id)profile didUpdateSessionState:(int64_t)state
{
  state = [(HFItemManager *)self _itemsToUpdateForSiriEndpointProfileObjectChange:profile, state];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:state itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)siriEndpointProfile:(id)profile didUpdateSessionHubIdentifier:(id)identifier
{
  identifier = [(HFItemManager *)self _itemsToUpdateForSiriEndpointProfileObjectChange:profile, identifier];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:identifier itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)siriEndpointProfile:(id)profile didUpdateSiriEngineVersion:(id)version
{
  version = [(HFItemManager *)self _itemsToUpdateForSiriEndpointProfileObjectChange:profile, version];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:version itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)siriEndpointProfile:(id)profile didUpdateNeedsOnboarding:(BOOL)onboarding
{
  onboarding = [(HFItemManager *)self _itemsToUpdateForSiriEndpointProfileObjectChange:profile, onboarding];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:onboarding itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)siriEndpointProfile:(id)profile didUpdateSupportsOnboarding:(BOOL)onboarding
{
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads:profile];
  v5 = [v6 requestUpdateForItems:0 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)siriEndpointProfile:(id)profile didUpdateManuallyDisabled:(BOOL)disabled
{
  disabled = [(HFItemManager *)self _itemsToUpdateForSiriEndpointProfileObjectChange:profile, disabled];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:disabled itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)siriEndpointProfile:(id)profile didUpdateMultifunctionButton:(int64_t)button
{
  button = [(HFItemManager *)self _itemsToUpdateForSiriEndpointProfileObjectChange:profile, button];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:button itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)siriEndpointProfile:(id)profile didUpdateCurrentAssistant:(id)assistant
{
  assistant = [(HFItemManager *)self _itemsToUpdateForSiriEndpointProfileObjectChange:profile, assistant];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:assistant itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)siriEndpointProfile:(id)profile didUpdateAssistants:(id)assistants
{
  assistants = [(HFItemManager *)self _itemsToUpdateForSiriEndpointProfileObjectChange:profile, assistants];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:assistants itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)personManager:(id)manager didUpdatePersons:(id)persons
{
  v10[1] = *MEMORY[0x277D85DE8];
  v6 = [(HFItemManager *)self _itemsToUpdateForModifiedPersons:persons];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10[0] = @"person";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v9 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v6 itemProviderInvalidationReasons:v8 modifiedHome:0 senderSelector:a2];
}

- (void)personManager:(id)manager didRemovePersonsWithUUIDs:(id)ds
{
  v10[1] = *MEMORY[0x277D85DE8];
  v6 = [(HFItemManager *)self _itemsToUpdateForModifiedUUIDs:ds];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10[0] = @"person";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v9 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v6 itemProviderInvalidationReasons:v8 modifiedHome:0 senderSelector:a2];
}

- (void)personManager:(id)manager didUpdatePersonFaceCrops:(id)crops
{
  cropsCopy = crops;
  v12 = [cropsCopy na_map:&__block_literal_global_32];
  v7 = [cropsCopy na_map:&__block_literal_global_34_0];

  v8 = [v12 setByAddingObjectsFromSet:v7];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedUUIDs:v8];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v11 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v9 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)personManager:(id)manager didRemoveFaceCropsWithUUIDs:(id)ds
{
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedUUIDs:ds];
  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)didUpdateDemoModeStateForAccessory:(id)accessory
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB98] na_setWithSafeObject:accessory];
  v6 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v5];
  v7 = [v6 mutableCopy];

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v11[0] = @"accessory";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v10 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v7 itemProviderInvalidationReasons:v9 modifiedHome:0 senderSelector:a2];
}

- (void)pinCodeManagerDidUpdate:(id)update pinCodes:(id)codes
{
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessCodes:codes];
  v7 = [v6 mutableCopy];

  batchedDelegateAdapterDisallowingReads = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v11[0] = @"user";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v10 = [batchedDelegateAdapterDisallowingReads requestUpdateForItems:v7 itemProviderInvalidationReasons:v9 modifiedHome:0 senderSelector:a2];
}

- (HFItemManager)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithDelegate_sourceItem_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFItemManager.m" lineNumber:200 description:{@"%s is unavailable; use %@ instead", "-[HFItemManager init]", v5}];

  return 0;
}

- (HFItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  delegateCopy = delegate;
  itemCopy = item;
  v52.receiver = self;
  v52.super_class = HFItemManager;
  v8 = [(HFItemManager *)&v52 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_sourceItem, item);
    itemModules = v9->_itemModules;
    v11 = MEMORY[0x277CBEBF8];
    v9->_itemModules = MEMORY[0x277CBEBF8];

    itemProviders = v9->_itemProviders;
    v9->_itemProviders = v11;

    identifier = v9->_identifier;
    v9->_identifier = @"--";

    v9->_diffableDataSourceDisabled = _os_feature_enabled_impl() ^ 1;
    v14 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:512 valueOptions:0];
    childItemsByParentItem = v9->_childItemsByParentItem;
    v9->_childItemsByParentItem = v14;

    v16 = objc_alloc_init(HFStandardReadPolicy);
    readPolicy = v9->_readPolicy;
    v9->_readPolicy = v16;

    v18 = [MEMORY[0x277CBEB58] set];
    disableUpdateReasons = v9->_disableUpdateReasons;
    v9->_disableUpdateReasons = v18;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    suppressedCharacteristicUpdatesByReason = v9->_suppressedCharacteristicUpdatesByReason;
    v9->_suppressedCharacteristicUpdatesByReason = dictionary;

    v22 = objc_alloc_init(MEMORY[0x277D2C900]);
    firstFastUpdateFuture = v9->_firstFastUpdateFuture;
    v9->_firstFastUpdateFuture = v22;

    v24 = objc_alloc_init(MEMORY[0x277D2C900]);
    firstFullUpdateFuture = v9->_firstFullUpdateFuture;
    v9->_firstFullUpdateFuture = v24;

    v26 = objc_alloc_init(MEMORY[0x277D2C900]);
    UIDiffableDataInitializationFuture = v9->_UIDiffableDataInitializationFuture;
    v9->_UIDiffableDataInitializationFuture = v26;

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    latestSnapshotGenerationFuture = v9->_latestSnapshotGenerationFuture;
    v9->_latestSnapshotGenerationFuture = futureWithNoResult;

    v30 = objc_alloc_init(MEMORY[0x277D2C900]);
    firstFullUpdateWithTimeoutFuture = v9->_firstFullUpdateWithTimeoutFuture;
    v9->_firstFullUpdateWithTimeoutFuture = v30;

    v9->_hasBegunFirstFullUpdateFutureTimeout = 0;
    v32 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v33 = dispatch_queue_create("com.apple.Home.DiffableDataSourceItemManager", v32);
    diffableDataSourceQueue = v9->_diffableDataSourceQueue;
    v9->_diffableDataSourceQueue = v33;

    v35 = [MEMORY[0x277D2C938] schedulerWithDispatchQueue:v9->_diffableDataSourceQueue];
    diffableDataSourceScheduler = v9->_diffableDataSourceScheduler;
    v9->_diffableDataSourceScheduler = v35;

    v37 = [HFItemManagerBatchedDelegateAdapter alloc];
    readPolicy = [(HFItemManager *)v9 readPolicy];
    v39 = [(HFItemManagerBatchedDelegateAdapter *)v37 initWithItemManager:v9 readPolicy:readPolicy];
    batchedDelegateAdapterAllowingReads = v9->_batchedDelegateAdapterAllowingReads;
    v9->_batchedDelegateAdapterAllowingReads = v39;

    v41 = [HFItemManagerBatchedDelegateAdapter alloc];
    v42 = [HFStaticReadPolicy policyWithDecision:0];
    v43 = [(HFItemManagerBatchedDelegateAdapter *)v41 initWithItemManager:v9 readPolicy:v42];
    batchedDelegateAdapterDisallowingReads = v9->_batchedDelegateAdapterDisallowingReads;
    v9->_batchedDelegateAdapterDisallowingReads = v43;

    [(HFItemManager *)v9 _updateExternalUpdatesEnabled:1 reloadItems:0];
    objc_initWeak(&location, v9);
    v46 = MEMORY[0x277D85DD0];
    v47 = 3221225472;
    v48 = __45__HFItemManager_initWithDelegate_sourceItem___block_invoke;
    v49 = &unk_277DF4460;
    objc_copyWeak(&v50, &location);
    dispatch_async(MEMORY[0x277D85CD0], &v46);
    [(HFItemManager *)v9 _debug_registerForStateDump:v46];
    objc_destroyWeak(&v50);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __45__HFItemManager_initWithDelegate_sourceItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _homeFuture];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__HFItemManager_initWithDelegate_sourceItem___block_invoke_2;
  v5[3] = &unk_277DFB7B0;
  objc_copyWeak(&v6, (a1 + 32));
  v4 = [v3 addSuccessBlock:v5];

  objc_destroyWeak(&v6);
}

void __45__HFItemManager_initWithDelegate_sourceItem___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHome:v3];
}

- (void)dealloc
{
  firstFastUpdateFuture = [(HFItemManager *)self firstFastUpdateFuture];
  isFinished = [firstFastUpdateFuture isFinished];

  if ((isFinished & 1) == 0)
  {
    firstFastUpdateFuture2 = [(HFItemManager *)self firstFastUpdateFuture];
    [firstFastUpdateFuture2 cancel];
  }

  firstFullUpdateWithTimeoutFuture = [(HFItemManager *)self firstFullUpdateWithTimeoutFuture];
  isFinished2 = [firstFullUpdateWithTimeoutFuture isFinished];

  if ((isFinished2 & 1) == 0)
  {
    firstFullUpdateWithTimeoutFuture2 = [(HFItemManager *)self firstFullUpdateWithTimeoutFuture];
    [firstFullUpdateWithTimeoutFuture2 cancel];
  }

  firstFullUpdateFuture = [(HFItemManager *)self firstFullUpdateFuture];
  isFinished3 = [firstFullUpdateFuture isFinished];

  if ((isFinished3 & 1) == 0)
  {
    firstFullUpdateFuture2 = [(HFItemManager *)self firstFullUpdateFuture];
    [firstFullUpdateFuture2 cancel];
  }

  [(HFItemManager *)self _removeDelegateNotifications];
  [(HFItemManager *)self deregisterMatterDelegates];
  v12.receiver = self;
  v12.super_class = HFItemManager;
  [(HFItemManager *)&v12 dealloc];
}

- (NSSet)allItems
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = objc_msgSend_home(self);
  if (v4)
  {
  }

  else if (![(HFItemManager *)self _shouldBuildItemProvidersAndModulesForNilHome])
  {
    goto LABEL_12;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  itemProviders = [(HFItemManager *)self itemProviders];
  v6 = [itemProviders countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(itemProviders);
        }

        items = [*(*(&v12 + 1) + 8 * i) items];
        [v3 unionSet:items];
      }

      v7 = [itemProviders countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

LABEL_12:

  return v3;
}

- (id)_internalItems
{
  v2 = MEMORY[0x277CBEB98];
  sourceItem = [(HFItemManager *)self sourceItem];
  v4 = [v2 na_setWithSafeObject:sourceItem];

  return v4;
}

- (id)_allItemsIncludingInternalItems
{
  allItems = [(HFItemManager *)self allItems];
  _internalItems = [(HFItemManager *)self _internalItems];
  v5 = [allItems setByAddingObjectsFromSet:_internalItems];

  return v5;
}

- (id)displayedItemsInSectionWithIdentifier:(id)identifier
{
  v4 = [(HFItemManager *)self sectionIndexForDisplayedSectionIdentifier:identifier];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v5 = [(HFItemManager *)self displayedItemsInSection:v4];
  }

  return v5;
}

- (id)childItemsForItem:(id)item
{
  itemCopy = item;
  childItemsByParentItem = [(HFItemManager *)self childItemsByParentItem];
  v6 = [childItemsByParentItem objectForKey:itemCopy];

  return v6;
}

- (id)childItemsForItem:(id)item ofClass:(Class)class
{
  v5 = [(HFItemManager *)self childItemsForItem:item];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__HFItemManager_childItemsForItem_ofClass___block_invoke;
  v8[3] = &__block_descriptor_40_e16_B16__0__HFItem_8lu32l8;
  v8[4] = class;
  v6 = [v5 na_filter:v8];

  return v6;
}

- (id)childItemsForItem:(id)item ofClass:(Class)class conformingToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v9 = [(HFItemManager *)self childItemsForItem:item];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__HFItemManager_childItemsForItem_ofClass_conformingToProtocol___block_invoke;
  v13[3] = &unk_277DFB7F8;
  v14 = protocolCopy;
  classCopy = class;
  v10 = protocolCopy;
  v11 = [v9 na_filter:v13];

  return v11;
}

uint64_t __64__HFItemManager_childItemsForItem_ofClass_conformingToProtocol___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = 0;
  }

  else if (*(a1 + 32))
  {
    v4 = [v3 conformsToProtocol:?];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)matchingItemForHomeKitObject:(id)object
{
  objectCopy = object;
  allDisplayedItems = [(HFItemManager *)self allDisplayedItems];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__HFItemManager_matchingItemForHomeKitObject___block_invoke;
  v9[3] = &unk_277DF4B70;
  v10 = objectCopy;
  v6 = objectCopy;
  v7 = [allDisplayedItems na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __46__HFItemManager_matchingItemForHomeKitObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_28252A8F8])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 homeKitObject];

  if (v5)
  {
    if ([v6 isEqual:*(a1 + 32)])
    {
      v7 = 1;
    }

    else
    {
      v8 = [v6 uniqueIdentifier];
      v9 = [*(a1 + 32) uniqueIdentifier];
      v7 = [v8 isEqual:v9];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)disableExternalUpdatesWithReason:(id)reason
{
  v26 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = HFLogForCategory(0x2CuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    disableUpdateReasons = [(HFItemManager *)self disableUpdateReasons];
    disableUpdateReasons2 = [(HFItemManager *)self disableUpdateReasons];
    v18 = 138413058;
    selfCopy3 = self;
    v20 = 2112;
    v21 = reasonCopy;
    v22 = 2048;
    v23 = disableUpdateReasons;
    v24 = 2112;
    v25 = disableUpdateReasons2;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@:(DU-D1) Adding reason (%@) to disable updates - all reasons BEFORE (%p): %@", &v18, 0x2Au);
  }

  disableUpdateReasons3 = [(HFItemManager *)self disableUpdateReasons];
  v9 = [disableUpdateReasons3 containsObject:reasonCopy];

  if (v9)
  {
    v10 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      selfCopy3 = self;
      v20 = 2112;
      v21 = reasonCopy;
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "%@:(DU-D1.1) Duplicate request to disable updates for reason %@", &v18, 0x16u);
    }

    v11 = 0;
  }

  else
  {
    disableUpdateReasons4 = [(HFItemManager *)self disableUpdateReasons];
    v13 = [disableUpdateReasons4 count];
    v11 = v13 == 0;

    if (!v13)
    {
      [(HFItemManager *)self _updateExternalUpdatesEnabled:0 reloadItems:1];
    }

    disableUpdateReasons5 = [(HFItemManager *)self disableUpdateReasons];
    [disableUpdateReasons5 addObject:reasonCopy];

    v10 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      disableUpdateReasons6 = [(HFItemManager *)self disableUpdateReasons];
      disableUpdateReasons7 = [(HFItemManager *)self disableUpdateReasons];
      v18 = 138412802;
      selfCopy3 = self;
      v20 = 2048;
      v21 = disableUpdateReasons6;
      v22 = 2112;
      v23 = disableUpdateReasons7;
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "%@:(DU-D2) Added reason to disable updates - all reasons AFTER (%p): %@", &v18, 0x20u);
    }
  }

  return v11;
}

- (BOOL)endDisableExternalUpdatesWithReason:(id)reason
{
  v29 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = HFLogForCategory(0x2CuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    disableUpdateReasons = [(HFItemManager *)self disableUpdateReasons];
    disableUpdateReasons2 = [(HFItemManager *)self disableUpdateReasons];
    v21 = 138413058;
    selfCopy3 = self;
    v23 = 2112;
    v24 = reasonCopy;
    v25 = 2048;
    v26 = disableUpdateReasons;
    v27 = 2112;
    v28 = disableUpdateReasons2;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@:(DU-R1) Removing reason (%@) to disable updates - all reasons BEFORE (%p): %@", &v21, 0x2Au);
  }

  disableUpdateReasons3 = [(HFItemManager *)self disableUpdateReasons];
  v9 = [disableUpdateReasons3 containsObject:reasonCopy];

  if ((v9 & 1) == 0)
  {
    v17 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      disableUpdateReasons4 = [(HFItemManager *)self disableUpdateReasons];
      disableUpdateReasons5 = [(HFItemManager *)self disableUpdateReasons];
      v21 = 138413058;
      selfCopy3 = self;
      v23 = 2112;
      v24 = reasonCopy;
      v25 = 2048;
      v26 = disableUpdateReasons4;
      v27 = 2112;
      v28 = disableUpdateReasons5;
      _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "%@:(DU-R1.1) Removing reason (%@) to disable updates NOT FOUND in all reasons BEFORE (%p): %@. Are multiple items being removed? Is a bridge being removed?", &v21, 0x2Au);
    }

    goto LABEL_11;
  }

  disableUpdateReasons6 = [(HFItemManager *)self disableUpdateReasons];
  [disableUpdateReasons6 removeObject:reasonCopy];

  v11 = HFLogForCategory(0x2CuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    disableUpdateReasons7 = [(HFItemManager *)self disableUpdateReasons];
    disableUpdateReasons8 = [(HFItemManager *)self disableUpdateReasons];
    v21 = 138412802;
    selfCopy3 = self;
    v23 = 2048;
    v24 = disableUpdateReasons7;
    v25 = 2112;
    v26 = disableUpdateReasons8;
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "%@:(DU-R2) Removed reason to disable updates - all reasons AFTER (%p): %@", &v21, 0x20u);
  }

  disableUpdateReasons9 = [(HFItemManager *)self disableUpdateReasons];
  v15 = [disableUpdateReasons9 count];

  if (v15)
  {
LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v16 = 1;
  [(HFItemManager *)self _updateExternalUpdatesEnabled:1 reloadItems:1];
LABEL_12:

  return v16;
}

- (void)beginSuppressingUpdatesForCharacteristics:(id)characteristics withReason:(id)reason
{
  v17 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  reasonCopy = reason;
  v8 = HFLogForCategory(0x2CuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    selfCopy = self;
    v13 = 2112;
    v14 = characteristicsCopy;
    v15 = 2112;
    v16 = reasonCopy;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Suppressing updates in %@ for characteristics %@ with reason %@", &v11, 0x20u);
  }

  suppressedCharacteristicUpdatesByReason = [(HFItemManager *)self suppressedCharacteristicUpdatesByReason];
  v10 = [suppressedCharacteristicUpdatesByReason na_objectForKey:reasonCopy withDefaultValue:&__block_literal_global_193];

  [v10 unionSet:characteristicsCopy];
}

- (void)endSuppressingUpdatesForCharacteristicsWithReason:(id)reason updateAffectedItems:(BOOL)items
{
  itemsCopy = items;
  v26 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  suppressedCharacteristicUpdatesByReason = [(HFItemManager *)self suppressedCharacteristicUpdatesByReason];
  v9 = [suppressedCharacteristicUpdatesByReason objectForKeyedSubscript:reasonCopy];

  if (!v9)
  {
    suppressedCharacteristicUpdatesByReason2 = [(HFItemManager *)self suppressedCharacteristicUpdatesByReason];
    allKeys = [suppressedCharacteristicUpdatesByReason2 allKeys];
    NSLog(&cfstr_RequestToEndSu.isa, self, reasonCopy, allKeys);
  }

  v12 = HFLogForCategory(0x2CuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v24 = 2112;
    v25 = reasonCopy;
    _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "End suppressing updates in %@ for characteristics with reason %@", buf, 0x16u);
  }

  suppressedCharacteristicUpdatesByReason3 = [(HFItemManager *)self suppressedCharacteristicUpdatesByReason];
  v14 = [suppressedCharacteristicUpdatesByReason3 objectForKeyedSubscript:reasonCopy];
  v15 = [v14 mutableCopy];

  suppressedCharacteristicUpdatesByReason4 = [(HFItemManager *)self suppressedCharacteristicUpdatesByReason];
  [suppressedCharacteristicUpdatesByReason4 removeObjectForKey:reasonCopy];

  if (itemsCopy)
  {
    _allSuppressedCharacteristics = [(HFItemManager *)self _allSuppressedCharacteristics];
    [v15 minusSet:_allSuppressedCharacteristics];

    if ([v15 count])
    {
      v18 = objc_opt_new();
      [v18 setSenderSelector:a2];
      v19 = [HFStaticReadPolicy policyWithDecision:0];
      [v18 setReadPolicy:v19];

      v20 = [(HFItemManager *)self _itemsToUpdateForModifiedCharacteristics:v15];
      v21 = [(HFItemManager *)self _updateResultsForItems:v20 context:v18];
    }
  }
}

- (void)setHome:(id)home
{
  homeCopy = home;
  if (self->_home != homeCopy)
  {
    v10 = homeCopy;
    objc_storeStrong(&self->_home, home);
    if (!v10)
    {
      lastUpdatedHome = self->_lastUpdatedHome;
      self->_lastUpdatedHome = 0;
    }

    delegate = [(HFItemManager *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(HFItemManager *)self delegate];
      [delegate2 itemManager:self didChangeHome:self->_home];
    }

    [(HFItemManager *)self resetItemProvidersAndModules];
    homeCopy = v10;
  }
}

- (void)setSourceItem:(id)item
{
  itemCopy = item;
  if (self->_sourceItem != itemCopy)
  {
    v9 = itemCopy;
    objc_storeStrong(&self->_sourceItem, item);
    delegate = [(HFItemManager *)self delegate];
    v7 = objc_opt_respondsToSelector();

    itemCopy = v9;
    if (v7)
    {
      delegate2 = [(HFItemManager *)self delegate];
      [delegate2 itemManager:self didChangeSourceItem:self->_sourceItem];

      itemCopy = v9;
    }
  }
}

- (void)setReadPolicy:(id)policy
{
  objc_storeStrong(&self->_readPolicy, policy);
  policyCopy = policy;
  batchedDelegateAdapterAllowingReads = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  [batchedDelegateAdapterAllowingReads setReadPolicy:policyCopy];
}

- (void)setItemModules:(id)modules
{
  modulesCopy = modules;
  if (![(NSArray *)self->_itemModules isEqualToArray:?])
  {
    objc_storeStrong(&self->_itemModules, modules);
    delegate = [(HFItemManager *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(HFItemManager *)self delegate];
      [delegate2 itemManager:self didUpdateItemModules:modulesCopy];
    }
  }
}

- (id)_buildItemProvidersForHome:(id)home
{
  itemModules = [(HFItemManager *)self itemModules];
  v6 = [itemModules count];

  if (!v6)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFItemManager.m" lineNumber:506 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFItemManager _buildItemProvidersForHome:]", objc_opt_class()}];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)_sortedItems:(id)items forSectionIdentifier:(id)identifier
{
  itemsCopy = items;
  v7 = [(HFItemManager *)self _comparatorForSectionIdentifier:identifier];
  v8 = [itemsCopy sortedArrayUsingComparator:v7];

  return v8;
}

- (void)_didFinishUpdateTransactionWithAffectedItems:(id)items
{
  itemsCopy = items;
  itemModules = [(HFItemManager *)self itemModules];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HFItemManager__didFinishUpdateTransactionWithAffectedItems___block_invoke;
  v7[3] = &unk_277DFB820;
  v8 = itemsCopy;
  v6 = itemsCopy;
  [itemModules na_each:v7];
}

- (BOOL)_shouldDisableOptionalDataDuringFastInitialUpdate
{
  if (+[HFExecutionEnvironment isHomeApp](HFExecutionEnvironment, "isHomeApp") || +[HFExecutionEnvironment isHomeControlService])
  {
    return 1;
  }

  return +[HFExecutionEnvironment isSpringBoard];
}

- (id)_homeFuture
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  homeFuture = [v2 homeFuture];

  return homeFuture;
}

- (BOOL)_requiresNotificationsForCharacteristic:(id)characteristic
{
  v17[2] = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  characteristicType = [characteristicCopy characteristicType];
  v5 = [characteristicType isEqualToString:*MEMORY[0x277CCF930]];

  if (v5 & 1) != 0 || ([characteristicCopy characteristicType], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", *MEMORY[0x277CCF928]), v6, (v7) || (objc_msgSend_service(characteristicCopy), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "serviceType"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", *MEMORY[0x277CD0DD0]), v9, v8, (v10))
  {
    v11 = 0;
  }

  else
  {
    v13 = *MEMORY[0x277CCF7D0];
    v17[0] = *MEMORY[0x277CCF780];
    v17[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    characteristicType2 = [characteristicCopy characteristicType];
    v16 = [v14 containsObject:characteristicType2];

    v11 = v16 ^ 1;
  }

  return v11;
}

- (void)_registerForExternalUpdates
{
  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  [v6 addHomeManagerObserver:self];
  [v6 addHomeObserver:self];
  [v6 addAccessoryObserver:self];
  [v6 addResidentDeviceObserver:self];
  [v6 addCameraObserver:self];
  [(HFItemManager *)self _setupDelegateNotifications];
  [(HFItemManager *)self registerMatterDelegates];
  v3 = +[HFTemperatureUnitCoordinator sharedCoordinator];
  [v3 registerObserver:self];

  v4 = +[HFUserNotificationCenter sharedInstance];
  [v4 addObserver:self];

  [v6 addMediaSessionObserver:self];
  [v6 addAudioControlObserver:self];
  [v6 addMediaObjectObserver:self];
  [v6 addHomeKitSettingsObserver:self];
  [v6 addNetworkConfigurationObserver:self];
  [v6 addSoftwareUpdateObserver:self];
  [v6 addSoftwareUpdateControllerObserver:self];
  [v6 addSymptomsHandlerObserver:self];
  [v6 addTelevisionObserver:self];
  [v6 addUserObserver:self];
  [v6 addMediaDestinationControllerObserver:self];
  [v6 addSiriEndpointProfileObserver:self];
  [v6 addSymptomFixSessionObserver:self];
  [v6 addHomePersonManagerObserver:self];
  [v6 addLightObserver:self];
  [v6 addWalletKeyDeviceStateObserver:self];
  itemModules = [(HFItemManager *)self itemModules];
  [itemModules na_each:&__block_literal_global_219_0];
}

- (void)_unregisterForExternalUpdates
{
  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  [v6 removeHomeManagerObserver:self];
  [v6 removeHomeObserver:self];
  [v6 removeAccessoryObserver:self];
  [v6 removeResidentDeviceObserver:self];
  [v6 removeCameraObserver:self];
  [(HFItemManager *)self _removeDelegateNotifications];
  [(HFItemManager *)self deregisterMatterDelegates];
  v3 = +[HFTemperatureUnitCoordinator sharedCoordinator];
  [v3 unregisterObserver:self];

  v4 = +[HFUserNotificationCenter sharedInstance];
  [v4 removeObserver:self];

  [v6 removeMediaSessionObserver:self];
  [v6 removeAudioControlObserver:self];
  [v6 removeMediaObjectObserver:self];
  [v6 removeHomeKitSettingsObserver:self];
  [v6 removeNetworkConfigurationObserver:self];
  [v6 removeSoftwareUpdateObserver:self];
  [v6 removeSoftwareUpdateControllerObserver:self];
  [v6 removeSymptomsHandlerObserver:self];
  [v6 removeTelevisionObserver:self];
  [v6 removeUserObserver:self];
  [v6 removeMediaDestinationControllerObserver:self];
  [v6 removeSiriEndpointProfileObserver:self];
  [v6 removeSymptomFixSessionObserver:self];
  [v6 removeHomePersonManagerObserver:self];
  [v6 removeLightObserver:self];
  [v6 removeWalletKeyDeviceStateObserver:self];
  itemModules = [(HFItemManager *)self itemModules];
  [itemModules na_each:&__block_literal_global_221];
}

- (id)performItemUpdateRequest:(id)request
{
  requestCopy = request;
  itemsProvidersToReload = [requestCopy itemsProvidersToReload];
  allObjects = [itemsProvidersToReload allObjects];
  itemsToUpdate = [requestCopy itemsToUpdate];
  senderSelector = [requestCopy senderSelector];

  v9 = [(HFItemManager *)self _reloadAndUpdateItemsForProviders:allObjects updateItems:itemsToUpdate senderSelector:senderSelector];

  return v9;
}

- (BOOL)itemIsBeingDisplayed:(id)displayed
{
  displayedCopy = displayed;
  allDisplayedItems = [(HFItemManager *)self allDisplayedItems];
  v6 = [allDisplayedItems containsObject:displayedCopy];

  return v6;
}

- (id)reloadAndUpdateAllItemsFromSenderSelector:(SEL)selector
{
  location[3] = *MEMORY[0x277D85DE8];
  if (-[HFItemManager hasRequestedFirstUpdate](self, "hasRequestedFirstUpdate") && (-[HFItemManager firstFastUpdateFuture](self, "firstFastUpdateFuture"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isFinished], v5, (v6 & 1) == 0))
  {
    v10 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = self;
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Request to reloadAndUpdateAllItems for %@, but we're still performing the fast initial update. Once that is done, we'll reload all items anyway, so ignoring this duplicate request", location, 0xCu);
    }

    firstFullUpdateFuture = [(HFItemManager *)self firstFullUpdateFuture];
  }

  else
  {
    objc_initWeak(location, self);
    _homeFuture = [(HFItemManager *)self _homeFuture];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__HFItemManager_reloadAndUpdateAllItemsFromSenderSelector___block_invoke;
    v14[3] = &unk_277DFB868;
    objc_copyWeak(v15, location);
    v15[1] = selector;
    v8 = [_homeFuture flatMap:v14];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__HFItemManager_reloadAndUpdateAllItemsFromSenderSelector___block_invoke_2;
    v12[3] = &unk_277DF5330;
    objc_copyWeak(&v13, location);
    firstFullUpdateFuture = [v8 recover:v12];
    objc_destroyWeak(&v13);

    objc_destroyWeak(v15);
    objc_destroyWeak(location);
  }

  return firstFullUpdateFuture;
}

id __59__HFItemManager_reloadAndUpdateAllItemsFromSenderSelector___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained lastUpdatedHome];
  v6 = [v3 isEqual:v5];

  if (v6)
  {
    v7 = objc_msgSend_home(WeakRetained);
    v8 = [v3 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      [WeakRetained setHome:v3];
    }
  }

  else
  {
    v9 = [WeakRetained lastUpdatedHome];

    if (v9)
    {
      [WeakRetained setHome:0];
      v10 = [MEMORY[0x277CBEB98] set];
      v11 = [MEMORY[0x277CBEB98] set];
      [WeakRetained _updateRepresentationForExternalItemsWithUpdatedOrAddedItems:v10 removedItems:v11 logger:0];
    }

    [WeakRetained setHome:v3];
    [WeakRetained setLastUpdatedHome:v3];
  }

  v12 = [WeakRetained _reloadAllItemProvidersFromSenderSelector:*(a1 + 40)];

  return v12;
}

id __59__HFItemManager_reloadAndUpdateAllItemsFromSenderSelector___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [MEMORY[0x277CBEB98] set];
  v3 = [MEMORY[0x277CBEB98] set];
  [WeakRetained _updateRepresentationForExternalItemsWithUpdatedOrAddedItems:v2 removedItems:v3 logger:0];

  [WeakRetained setHome:0];
  [WeakRetained setLastUpdatedHome:0];
  v4 = MEMORY[0x277D2C900];
  v5 = [MEMORY[0x277CBEB98] set];
  v6 = [v4 futureWithResult:v5];

  return v6;
}

- (id)_reloadAllItemProvidersFromSenderSelector:(SEL)selector
{
  v46 = *MEMORY[0x277D85DE8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__HFItemManager__reloadAllItemProvidersFromSenderSelector___block_invoke;
  aBlock[3] = &unk_277DF3D38;
  aBlock[4] = self;
  v33 = _Block_copy(aBlock);
  itemProviders = [(HFItemManager *)self itemProviders];
  v36 = [itemProviders na_filter:&__block_literal_global_226];

  v4 = objc_alloc_init(MEMORY[0x277D2C918]);
  future = [v4 future];
  firstFastUpdateFuture = [(HFItemManager *)self firstFastUpdateFuture];
  completionHandlerAdapter = [firstFastUpdateFuture completionHandlerAdapter];
  v8 = [future addCompletionBlock:completionHandlerAdapter];
  v34 = v4;

  _internalItems = [(HFItemManager *)self _internalItems];
  readPolicy = [(HFItemManager *)self readPolicy];
  v35 = [(HFItemManager *)self _reloadItemProviders:v36 updateItems:_internalItems shouldUpdateExistingItems:1 senderSelector:selector readPolicy:readPolicy fastInitialUpdatePromise:v4];

  firstFullUpdateFuture = [(HFItemManager *)self firstFullUpdateFuture];
  completionHandlerAdapter2 = [firstFullUpdateFuture completionHandlerAdapter];
  v13 = [v35 addCompletionBlock:completionHandlerAdapter2];

  [(HFItemManager *)self beginFirstFullUpdateWithTimeoutFutureIfNeeded];
  v14 = [v36 count];
  itemProviders2 = [(HFItemManager *)self itemProviders];
  LODWORD(v14) = v14 == [itemProviders2 count];

  if (v14)
  {
    v16 = v35;
    v17 = v35;
  }

  else
  {
    v18 = [MEMORY[0x277CBEB18] arrayWithObject:v35];
    itemProviders3 = [(HFItemManager *)self itemProviders];
    v20 = [itemProviders3 mutableCopy];

    [v20 removeObjectsInArray:v36];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v22)
    {
      v23 = *v40;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v40 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v44 = *(*(&v39 + 1) + 8 * i);
          v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
          v26 = [MEMORY[0x277CBEB98] set];
          v27 = [(HFItemManager *)self _reloadAndUpdateItemsForProviders:v25 updateItems:v26 senderSelector:selector];
          [v18 addObject:v27];
        }

        v22 = [v21 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v22);
    }

    v28 = MEMORY[0x277D2C900];
    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    v30 = [v28 combineAllFutures:v18 ignoringErrors:1 scheduler:mainThreadScheduler];
    v17 = [v30 flatMap:&__block_literal_global_231_1];

    v16 = v35;
  }

  v31 = v33;
  if (v33)
  {
    (*(v33 + 2))();
    v31 = v33;
  }

  return v17;
}

id __59__HFItemManager__reloadAllItemProvidersFromSenderSelector___block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 unionSet:{v9, v12}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v10;
}

- (id)reloadAndUpdateItemsForProviders:(id)providers senderSelector:(SEL)selector
{
  v6 = MEMORY[0x277CBEB98];
  providersCopy = providers;
  v8 = [v6 set];
  v9 = [(HFItemManager *)self _reloadAndUpdateItemsForProviders:providersCopy updateItems:v8 senderSelector:selector];

  return v9;
}

- (id)_reloadAndUpdateItemsForProviders:(id)providers updateItems:(id)items senderSelector:(SEL)selector
{
  itemsCopy = items;
  providersCopy = providers;
  readPolicy = [(HFItemManager *)self readPolicy];
  v11 = [(HFItemManager *)self _reloadItemProviders:providersCopy updateItems:itemsCopy shouldUpdateExistingItems:1 senderSelector:selector readPolicy:readPolicy];

  return v11;
}

- (id)_reloadItemProviders:(id)providers updateItems:(id)items shouldUpdateExistingItems:(BOOL)existingItems senderSelector:(SEL)selector readPolicy:(id)policy
{
  existingItemsCopy = existingItems;
  policyCopy = policy;
  itemsCopy = items;
  providersCopy = providers;
  v15 = objc_opt_new();
  v16 = [(HFItemManager *)self _reloadItemProviders:providersCopy updateItems:itemsCopy shouldUpdateExistingItems:existingItemsCopy senderSelector:selector readPolicy:policyCopy fastInitialUpdatePromise:v15];

  return v16;
}

- (id)_reloadItemProviders:(id)providers updateItems:(id)items shouldUpdateExistingItems:(BOOL)existingItems senderSelector:(SEL)selector readPolicy:(id)policy fastInitialUpdatePromise:(id)promise
{
  v68 = *MEMORY[0x277D85DE8];
  providersCopy = providers;
  itemsCopy = items;
  policyCopy = policy;
  promiseCopy = promise;
  v12 = objc_msgSend_home(self);
  if (v12)
  {
  }

  else if (![(HFItemManager *)self _shouldBuildItemProvidersAndModulesForNilHome])
  {
    NSLog(&cfstr_RequestToReloa.isa);
  }

  v13 = objc_msgSend_home(self);
  if (!v13 && ![(HFItemManager *)self _shouldBuildItemProvidersAndModulesForNilHome])
  {
    goto LABEL_28;
  }

  if (![providersCopy count])
  {
    v14 = [itemsCopy count];

    if (v14)
    {
      goto LABEL_10;
    }

LABEL_28:
    v35 = MEMORY[0x277D2C900];
    v36 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v34 = [v35 futureWithError:v36];

    goto LABEL_30;
  }

LABEL_10:
  if (+[HFUtilities isInternalTest](HFUtilities, "isInternalTest") && ([objc_opt_class() _canReloadDuringUnitTests] & 1) == 0)
  {
    v37 = MEMORY[0x277D2C900];
    v38 = [MEMORY[0x277CBEB98] set];
    v34 = [v37 futureWithResult:v38];
  }

  else
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = NSStringFromSelector(selector);
    v43 = [v15 stringWithFormat:@"[%@ %@]", self, v16];

    v17 = [[HFUpdateLogger alloc] initWithTimeout:v43 description:15.0];
    v18 = v17;
    if (v17)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      loggerActivity = [(HFUpdateLogger *)v17 loggerActivity];
      os_activity_scope_enter(loggerActivity, &state);

      v20 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = NSStringFromSelector(selector);
        *buf = 138412802;
        selfCopy2 = self;
        v64 = 2112;
        v65 = v21;
        v66 = 2112;
        v67 = providersCopy;
        _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "%@: Starting reload for sender: %@. Item providers: %@", buf, 0x20u);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v40 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = NSStringFromSelector(selector);
        *buf = 138412802;
        selfCopy2 = self;
        v64 = 2112;
        v65 = v41;
        v66 = 2112;
        v67 = providersCopy;
        _os_log_impl(&dword_20D9BF000, v40, OS_LOG_TYPE_DEFAULT, "%@: Starting reload for sender: %@. Item providers: %@", buf, 0x20u);
      }
    }

    array = [MEMORY[0x277CBEB18] array];
    v59 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    v23 = providersCopy;
    v24 = [v23 countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v24)
    {
      v25 = *v57;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v57 != v25)
          {
            objc_enumerationMutation(v23);
          }

          reloadItems = [*(*(&v56 + 1) + 8 * i) reloadItems];
          v28 = [reloadItems recover:&__block_literal_global_242_0];

          if (v28)
          {
            [array addObject:v28];
          }
        }

        v24 = [v23 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v24);
    }

    v29 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
    if ([array count])
    {
      v30 = MEMORY[0x277D2C900];
      mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
      v32 = [v30 combineAllFutures:array ignoringErrors:0 scheduler:mainThreadScheduler];

      v29 = v32;
    }

    objc_initWeak(buf, self);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_2;
    v49[3] = &unk_277DFB950;
    objc_copyWeak(v54, buf);
    v50 = itemsCopy;
    existingItemsCopy = existingItems;
    v33 = v18;
    v51 = v33;
    v54[1] = selector;
    v52 = promiseCopy;
    v53 = policyCopy;
    v34 = [v29 flatMap:v49];

    objc_destroyWeak(v54);
    objc_destroyWeak(buf);
  }

LABEL_30:

  return v34;
}

id __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke()
{
  v0 = MEMORY[0x277D2C900];
  v1 = [[HFItemProviderReloadResults alloc] initWithAddedItems:0 removedItems:0 existingItems:0];
  v2 = [v0 futureWithResult:v1];

  return v2;
}

id __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_2(uint64_t a1, void *a2)
{
  v88 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [MEMORY[0x277CBEB58] set];
  [v6 unionSet:*(a1 + 32)];
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v3;
  v7 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
  if (v7)
  {
    v8 = *v79;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v79 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v78 + 1) + 8 * i);
        v11 = [v10 addedItems];
        v12 = [v11 count];

        if (v12)
        {
          v13 = [v10 addedItems];
          [v4 unionSet:v13];
        }

        v14 = [v10 removedItems];
        v15 = [v14 count];

        if (v15)
        {
          v16 = [v10 removedItems];
          [v5 unionSet:v16];

          v17 = [v10 removedItems];
          [v6 minusSet:v17];
        }

        v18 = [v10 existingItems];
        v19 = [v18 count];

        if (v19 && *(a1 + 80) == 1)
        {
          v20 = [v10 existingItems];
          [v6 unionSet:v20];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
    }

    while (v7);
  }

  v60 = [v4 mutableCopy];
  v21 = [*(a1 + 32) na_filter:&__block_literal_global_245_0];
  [v60 unionSet:v21];

  v22 = MEMORY[0x277D2C900];
  v23 = [MEMORY[0x277CBEB98] set];
  v59 = [v22 futureWithResult:v23];

  v24 = [v4 mutableCopy];
  [v24 unionSet:v6];
  if ([WeakRetained _shouldPerformFastInitialUpdates] && objc_msgSend(v60, "count"))
  {
    v25 = *(a1 + 40);
    if (v25)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v26 = [v25 loggerActivity];
      os_activity_scope_enter(v26, &state);

      v27 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v85 = v60;
        _os_log_impl(&dword_20D9BF000, v27, OS_LOG_TYPE_DEFAULT, "Starting a fast initial update for items: %@", buf, 0xCu);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v57 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(state.opaque[0]) = 138412290;
        *(state.opaque + 4) = v60;
        _os_log_impl(&dword_20D9BF000, v57, OS_LOG_TYPE_DEFAULT, "Starting a fast initial update for items: %@", &state, 0xCu);
      }
    }

    if ([v5 count])
    {
      v28 = *(a1 + 40);
      if (v28)
      {
        state.opaque[0] = 0;
        state.opaque[1] = 0;
        v29 = [v28 loggerActivity];
        os_activity_scope_enter(v29, &state);

        v30 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v85 = v5;
          _os_log_impl(&dword_20D9BF000, v30, OS_LOG_TYPE_DEFAULT, "Processing removed items in this fast update: %@", buf, 0xCu);
        }

        os_activity_scope_leave(&state);
      }

      else
      {
        v58 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(state.opaque[0]) = 138412290;
          *(state.opaque + 4) = v5;
          _os_log_impl(&dword_20D9BF000, v58, OS_LOG_TYPE_DEFAULT, "Processing removed items in this fast update: %@", &state, 0xCu);
        }
      }
    }

    v31 = objc_opt_new();
    [v31 setSenderSelector:*(a1 + 72)];
    [v31 setLogger:*(a1 + 40)];
    v82[0] = HFItemUpdateOptionFastInitialUpdate;
    v82[1] = HFItemUpdateOptionDisableOptionalData;
    v83[0] = MEMORY[0x277CBEC38];
    v32 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(WeakRetained, "_shouldDisableOptionalDataDuringFastInitialUpdate")}];
    v83[1] = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:2];
    [v31 setUpdateOptions:v33];

    v34 = [HFStaticReadPolicy policyWithDecision:0];
    [v31 setReadPolicy:v34];

    v35 = [WeakRetained _updateResultsForItems:v60 removedItems:v5 context:v31 allowDelaying:1];

    v36 = 1;
    v59 = v35;
  }

  else
  {
    if ([v4 count])
    {
      v37 = *(a1 + 40);
      if (v37)
      {
        state.opaque[0] = 0;
        state.opaque[1] = 0;
        v38 = [v37 loggerActivity];
        os_activity_scope_enter(v38, &state);

        v39 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v85 = v4;
          _os_log_impl(&dword_20D9BF000, v39, OS_LOG_TYPE_DEFAULT, "Item providers asked to add items: %@", buf, 0xCu);
        }

        os_activity_scope_leave(&state);
      }

      else
      {
        v55 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(state.opaque[0]) = 138412290;
          *(state.opaque + 4) = v4;
          _os_log_impl(&dword_20D9BF000, v55, OS_LOG_TYPE_DEFAULT, "Item providers asked to add items: %@", &state, 0xCu);
        }
      }
    }

    if ([v5 count])
    {
      v40 = *(a1 + 40);
      if (v40)
      {
        state.opaque[0] = 0;
        state.opaque[1] = 0;
        v41 = [v40 loggerActivity];
        os_activity_scope_enter(v41, &state);

        v42 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v85 = v5;
          _os_log_impl(&dword_20D9BF000, v42, OS_LOG_TYPE_DEFAULT, "Item providers asked to remove items: %@", buf, 0xCu);
        }

        os_activity_scope_leave(&state);
      }

      else
      {
        v56 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(state.opaque[0]) = 138412290;
          *(state.opaque + 4) = v5;
          _os_log_impl(&dword_20D9BF000, v56, OS_LOG_TYPE_DEFAULT, "Item providers asked to remove items: %@", &state, 0xCu);
        }
      }
    }

    v43 = *(a1 + 48);
    v31 = [MEMORY[0x277CBEB98] set];
    [v43 finishWithResult:v31];
    v36 = 0;
  }

  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_248;
  v76[3] = &unk_277DFB8B0;
  objc_copyWeak(&v77, (a1 + 64));
  v44 = [v59 flatMap:v76];
  v45 = objc_alloc_init(MEMORY[0x277D2C900]);
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_3_252;
  v66[3] = &unk_277DFB928;
  objc_copyWeak(v73, (a1 + 64));
  v67 = *(a1 + 48);
  v74 = v36;
  v46 = v5;
  v75 = v36;
  v47 = *(a1 + 72);
  v68 = v46;
  v73[1] = v47;
  v69 = *(a1 + 40);
  v70 = *(a1 + 56);
  v71 = *(a1 + 32);
  v48 = v24;
  v72 = v48;
  v49 = [v44 flatMap:v66];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_9;
  v63[3] = &unk_277DF3180;
  v63[4] = WeakRetained;
  v64 = *(a1 + 40);
  v50 = v45;
  v65 = v50;
  v51 = [v49 addCompletionBlock:v63];
  v52 = v65;
  v53 = v50;

  objc_destroyWeak(v73);
  objc_destroyWeak(&v77);

  return v50;
}

BOOL __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = v2 == 0;

  return v3;
}

id __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_248(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained latestSnapshotGenerationFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_2_249;
  v9[3] = &unk_277DF2CE0;
  v10 = v3;
  v6 = v3;
  v7 = [v5 flatMap:v9];

  return v7;
}

id __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_3_252(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  [*(a1 + 32) finishWithResult:v3];

  if (*(a1 + 96))
  {
    v5 = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    v5 = *(a1 + 40);
  }

  v6 = v5;
  v7 = MEMORY[0x277D2C938];
  if (*(a1 + 97) == 1)
  {
    v8 = dispatch_get_global_queue(0, 0);
    v9 = [v7 schedulerWithDispatchQueue:v8];
  }

  else
  {
    v9 = [MEMORY[0x277D2C938] mainThreadScheduler];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_4;
  aBlock[3] = &unk_277DFB8D8;
  v31 = *(a1 + 88);
  v25 = *(a1 + 48);
  v26 = *(a1 + 56);
  v27 = *(a1 + 64);
  v28 = WeakRetained;
  v29 = *(a1 + 72);
  v10 = v6;
  v30 = v10;
  v11 = _Block_copy(aBlock);
  v12 = +[HFUtilities isInternalTest];
  v13 = MEMORY[0x277D2C900];
  if (v12)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_6;
    v22[3] = &unk_277DFB900;
    v14 = &v23;
    v23 = v11;
    v15 = v11;
    v16 = [v13 futureWithBlock:v22];
  }

  else
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_7;
    v20[3] = &unk_277DFB900;
    v14 = &v21;
    v21 = v11;
    v17 = v11;
    v16 = [v13 futureWithBlock:v20 scheduler:v9];
  }

  v18 = v16;

  return v18;
}

void __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_4(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  [v4 setSenderSelector:*(a1 + 80)];
  [v4 setLogger:*(a1 + 32)];
  [v4 setReadPolicy:*(a1 + 40)];
  if ([*(a1 + 48) count])
  {
    v11 = HFItemUpdateOptionFullUpdateIndicated;
    v12[0] = MEMORY[0x277CBEC38];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v4 setUpdateOptions:v5];
  }

  v6 = [*(a1 + 56) _updateResultsForItems:*(a1 + 64) removedItems:*(a1 + 72) context:v4 allowDelaying:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_5;
  v9[3] = &unk_277DF4FE8;
  v10 = v3;
  v7 = v3;
  v8 = [v6 addCompletionBlock:v9];
}

void __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_8;
  v7[3] = &unk_277DF2AD8;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 performBlock:v7];
}

void __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = a2;
  v7 = [v5 itemModules];
  [v7 na_each:&__block_literal_global_256];

  [*(a1 + 40) finish];
  [*(a1 + 48) finishWithResult:v8 error:v6];
}

- (void)_updateLoadingStateAndNotifyDelegateForItems:(id)items canFinishTransaction:(BOOL)transaction
{
  transactionCopy = transaction;
  v28 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  allDisplayedItems = [(HFItemManager *)self allDisplayedItems];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = itemsCopy;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v8)
  {

    goto LABEL_22;
  }

  v9 = v8;
  v21 = transactionCopy;
  v10 = 0;
  v11 = *v24;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v24 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v23 + 1) + 8 * i);
      v14 = [v13 _effectiveLoadingStateForSuggestedLoadingState:{-[HFItemManager _loadingStateForItem:](self, "_loadingStateForItem:", v13)}];
      if ([v13 loadingState] != v14)
      {
        [v13 setLoadingState:v14];
        _internalItems = [(HFItemManager *)self _internalItems];
        v16 = [_internalItems containsObject:v13];

        delegate = [(HFItemManager *)self delegate];
        if (v16)
        {
          v18 = objc_opt_respondsToSelector();

          if (v18)
          {
            delegate = [(HFItemManager *)self delegate];
            [delegate itemManager:self didUpdateResultsForSourceItem:v13];
            goto LABEL_14;
          }

LABEL_15:
          v10 = 1;
          continue;
        }

        if (objc_opt_respondsToSelector())
        {
          v19 = [allDisplayedItems containsObject:v13];

          if (!v19)
          {
            goto LABEL_15;
          }

          delegate = [(HFItemManager *)self indexPathForItem:v13];
          if (delegate)
          {
            delegate2 = [(HFItemManager *)self delegate];
            [delegate2 itemManager:self didUpdateResultsForItem:v13 atIndexPath:delegate];
          }
        }

LABEL_14:

        goto LABEL_15;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v9);

  if (v10)
  {
    [(HFItemManager *)self _updateOverallLoadingStateAndNotifyDelegate];
    if (v21)
    {
      [(HFItemManager *)self _didFinishUpdateTransactionWithAffectedItems:v7];
    }
  }

LABEL_22:
}

- (unint64_t)_loadingStateForItem:(id)item
{
  itemCopy = item;
  latestResults = [itemCopy latestResults];
  v6 = [latestResults objectForKeyedSubscript:@"dependentHomeKitObjects"];

  v7 = [(HFItemManager *)self _dependentHomeKitObjectsOfClass:objc_opt_class() inHomeKitObjects:v6];
  v8 = [(HFItemManager *)self _dependentHomeKitObjectsOfClass:objc_opt_class() inHomeKitObjects:v6];
  v9 = objc_msgSend_home(self);
  hf_characteristicValueManager = [v9 hf_characteristicValueManager];

  v11 = [hf_characteristicValueManager loadingStateForCharacteristics:v7 actionSets:v8];
  if ([itemCopy conformsToProtocol:&unk_282534210])
  {
    v12 = itemCopy;
    [v12 latestResults];
    v13 = v31 = v7;
    v14 = [v13 objectForKey:@"HFResultHomeKitSettingsVendorKey"];

    hf_settingsValueManager = [v14 hf_settingsValueManager];
    latestResults2 = [v12 latestResults];

    v17 = [latestResults2 objectForKeyedSubscript:@"HFAccessorySettingRepresentitiveObjectKey"];
    keyPath = [v17 keyPath];

    pendingWrites = [hf_settingsValueManager pendingWrites];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __38__HFItemManager__loadingStateForItem___block_invoke;
    v33[3] = &unk_277DF57B0;
    v34 = keyPath;
    v20 = keyPath;
    LODWORD(latestResults2) = [pendingWrites na_any:v33];

    if (latestResults2)
    {
      v11 |= 2uLL;
    }

    v7 = v31;
  }

  else
  {
    latestResults3 = [itemCopy latestResults];
    v22 = [latestResults3 objectForKey:@"HFMediaAccessoryItemSettingsKey"];

    if (v22)
    {
      v32 = v7;
      latestResults4 = [itemCopy latestResults];
      v24 = [latestResults4 objectForKey:@"HFResultHomeKitSettingsVendorKey"];

      hf_settingsValueManager2 = [v24 hf_settingsValueManager];
      latestResults5 = [itemCopy latestResults];
      v27 = [latestResults5 objectForKeyedSubscript:@"HFMediaAccessoryItemSettingsKey"];

      if (!v27 || ([hf_settingsValueManager2 pendingWrites], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "count"), v28, v29))
      {
        v11 |= 2uLL;
      }

      v7 = v32;
    }
  }

  return v11;
}

uint64_t __38__HFItemManager__loadingStateForItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 keyPath];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_updateOverallLoadingStateAndNotifyDelegate
{
  v18 = *MEMORY[0x277D85DE8];
  overallLoadingState = [(HFItemManager *)self overallLoadingState];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _allDisplayedItemsIncludingInternalItems = [(HFItemManager *)self _allDisplayedItemsIncludingInternalItems];
  v5 = [_allDisplayedItemsIncludingInternalItems countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(_allDisplayedItemsIncludingInternalItems);
        }

        v7 |= [*(*(&v13 + 1) + 8 * i) loadingState];
      }

      v6 = [_allDisplayedItemsIncludingInternalItems countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  [(HFItemManager *)self setOverallLoadingState:v7];
  if (v7 != overallLoadingState)
  {
    delegate = [(HFItemManager *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate2 = [(HFItemManager *)self delegate];
      [delegate2 itemManager:self didChangeOverallLoadingState:v7];
    }
  }
}

- (id)updateResultsForItems:(id)items senderSelector:(SEL)selector
{
  v13[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v7 = objc_opt_new();
  [v7 setSenderSelector:selector];
  readPolicy = [(HFItemManager *)self readPolicy];
  [v7 setReadPolicy:readPolicy];

  v12 = HFItemUpdateOptionFullUpdateIndicated;
  v13[0] = MEMORY[0x277CBEC38];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v7 setUpdateOptions:v9];

  v10 = [(HFItemManager *)self _updateResultsForItems:itemsCopy context:v7];

  return v10;
}

- (void)resetItemProvidersAndModules
{
  v3 = objc_msgSend_home(self, a2);
  if (v3)
  {

    goto LABEL_4;
  }

  if ([(HFItemManager *)self _shouldBuildItemProvidersAndModulesForNilHome])
  {
LABEL_4:
    v4 = objc_msgSend_home(self);
    v5 = [(HFItemManager *)self _buildItemModulesForHome:v4];
    [(HFItemManager *)self setItemModules:v5];

    disableUpdateReasons = [(HFItemManager *)self disableUpdateReasons];
    v7 = [disableUpdateReasons count];

    if (!v7)
    {
      itemModules = [(HFItemManager *)self itemModules];
      [itemModules na_each:&__block_literal_global_280];
    }

    v9 = MEMORY[0x277CBEB98];
    itemModules2 = [(HFItemManager *)self itemModules];
    v11 = [v9 setWithArray:itemModules2];
    v12 = [v11 na_flatMap:&__block_literal_global_283];
    [(HFItemManager *)self setModuleItemProviderSet:v12];

    v13 = objc_msgSend_home(self);

    if (v13)
    {
      v14 = objc_msgSend_home(self);
      v30 = [(HFItemManager *)self _buildItemProvidersForHome:v14];

      _buildItemProvidersWithoutHome = v30;
      if (v30)
      {
LABEL_9:
        v31 = _buildItemProvidersWithoutHome;
        v16 = [MEMORY[0x277CBEB98] setWithArray:_buildItemProvidersWithoutHome];
        [(HFItemManager *)self setSubclassItemProviderSet:v16];

        subclassItemProviderSet = [(HFItemManager *)self subclassItemProviderSet];
        v18 = [subclassItemProviderSet count];
        v19 = [v31 count];

        if (v18 != v19)
        {
          NSLog(&cfstr_DuplicateItemP.isa, self, v31);
        }

        moduleItemProviderSet = [(HFItemManager *)self moduleItemProviderSet];
        subclassItemProviderSet2 = [(HFItemManager *)self subclassItemProviderSet];
        v22 = [moduleItemProviderSet intersectsSet:subclassItemProviderSet2];

        if (v22)
        {
          moduleItemProviderSet2 = [(HFItemManager *)self moduleItemProviderSet];
          subclassItemProviderSet3 = [(HFItemManager *)self subclassItemProviderSet];
          NSLog(&cfstr_SubclassIsRetu.isa, self, moduleItemProviderSet2, subclassItemProviderSet3);
        }

        subclassItemProviderSet4 = [(HFItemManager *)self subclassItemProviderSet];
        moduleItemProviderSet3 = [(HFItemManager *)self moduleItemProviderSet];
        v27 = [subclassItemProviderSet4 setByAddingObjectsFromSet:moduleItemProviderSet3];
        allObjects = [v27 allObjects];
        [(HFItemManager *)self setItemProviders:allObjects];

        return;
      }
    }

    else
    {
      _buildItemProvidersWithoutHome = [(HFItemManager *)self _buildItemProvidersWithoutHome];
      if (_buildItemProvidersWithoutHome)
      {
        goto LABEL_9;
      }
    }

    NSLog(&cfstr_HfitemmanagerA.isa, self);
    _buildItemProvidersWithoutHome = MEMORY[0x277CBEBF8];
    goto LABEL_9;
  }

  v29 = MEMORY[0x277CBEBF8];
  [(HFItemManager *)self setItemModules:MEMORY[0x277CBEBF8]];

  [(HFItemManager *)self setItemProviders:v29];
}

- (id)_updateResultsForItems:(id)items context:(id)context
{
  v6 = MEMORY[0x277CBEB98];
  contextCopy = context;
  itemsCopy = items;
  v9 = [v6 set];
  v10 = [(HFItemManager *)self _updateResultsForItems:itemsCopy removedItems:v9 context:contextCopy allowDelaying:1];

  return v10;
}

- (id)_updateResultsForItems:(id)items removedItems:(id)removedItems context:(id)context allowDelaying:(BOOL)delaying
{
  delayingCopy = delaying;
  v153 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  removedItemsCopy = removedItems;
  contextCopy = context;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v114 = contextCopy;
  readPolicy = [contextCopy readPolicy];

  if (!readPolicy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFItemManager.m" lineNumber:1238 description:{@"Invalid parameter not satisfying: %@", @"context.readPolicy != nil"}];
  }

  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v14 = itemsCopy;
  v15 = [v14 countByEnumeratingWithState:&v140 objects:v152 count:16];
  if (v15)
  {
    v16 = *v141;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v141 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v140 + 1) + 8 * i);
        if ([v18 _debug_isChildItem])
        {
          NSLog(&cfstr_AttemptingToEx.isa, v18);
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v140 objects:v152 count:16];
    }

    while (v15);
  }

  v19 = objc_msgSend_home(self);
  if (v19)
  {
  }

  else if (![(HFItemManager *)self _shouldBuildItemProvidersAndModulesForNilHome])
  {
    v21 = MEMORY[0x277D2C900];
    v22 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    firstFullUpdateFuture = [v21 futureWithError:v22];

    goto LABEL_45;
  }

  if (![v14 count] && !objc_msgSend(removedItemsCopy, "count"))
  {
    v102 = MEMORY[0x277D2C900];
    v103 = [MEMORY[0x277CBEB98] set];
    firstFullUpdateFuture = [v102 futureWithResult:v103];

    goto LABEL_45;
  }

  if (![(HFItemManager *)self hasRequestedFirstUpdate])
  {
    goto LABEL_22;
  }

  firstFastUpdateFuture = [(HFItemManager *)self firstFastUpdateFuture];
  if ([firstFastUpdateFuture isFinished])
  {

LABEL_22:
    if (delayingCopy && [v14 count] && (-[HFItemManager delegate](self, "delegate"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_opt_respondsToSelector(), v27, (v28 & 1) != 0))
    {
      v29 = HFLogForCategory(0x35uLL);
      v30 = os_signpost_id_generate(v29);

      v31 = HFLogForCategory(0x35uLL);
      v32 = v31;
      if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        updateOptions = [v114 updateOptions];
        v34 = [updateOptions objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
        if ([v34 BOOLValue])
        {
          v35 = @"Initial";
        }

        else
        {
          v35 = @"Normal";
        }

        identifier = [(HFItemManager *)self identifier];
        v37 = objc_opt_class();
        v110 = v37;
        v38 = NSStringFromSelector([v114 senderSelector]);
        *buf = 138544130;
        selfCopy3 = v35;
        v146 = 2114;
        v147 = identifier;
        v148 = 2114;
        v149 = v37;
        v150 = 2114;
        v151 = v38;
        _os_signpost_emit_with_name_impl(&dword_20D9BF000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "HFFutureToUpdateItems", "%{public}@ Item Update Delayed %{public}@:%{public}@ for sender: %{public}@", buf, 0x2Au);
      }

      delegate = [(HFItemManager *)self delegate];
      updateOptions2 = [v114 updateOptions];
      v41 = [delegate itemManager:self futureToUpdateItems:v14 itemUpdateOptions:updateOptions2];

      v42 = objc_alloc_init(MEMORY[0x277D2C900]);
      v134[0] = MEMORY[0x277D85DD0];
      v134[1] = 3221225472;
      v134[2] = __75__HFItemManager__updateResultsForItems_removedItems_context_allowDelaying___block_invoke;
      v134[3] = &unk_277DFB998;
      v134[4] = self;
      v43 = v114;
      v135 = v43;
      v44 = v14;
      v136 = v44;
      v139 = v30;
      v45 = removedItemsCopy;
      v137 = v45;
      v46 = v42;
      v138 = v46;
      v47 = [v41 addFailureBlock:v134];
      v128[0] = MEMORY[0x277D85DD0];
      v128[1] = 3221225472;
      v128[2] = __75__HFItemManager__updateResultsForItems_removedItems_context_allowDelaying___block_invoke_2;
      v128[3] = &unk_277DFB9C0;
      v133 = v30;
      v128[4] = self;
      v129 = v44;
      v130 = v45;
      v131 = v43;
      v48 = v46;
      v132 = v48;
      v49 = [v41 addSuccessBlock:v128];
      v50 = v132;
      firstFullUpdateFuture = v48;
    }

    else
    {
      logger = [v114 logger];

      if (!logger)
      {
        v52 = [HFUpdateLogger alloc];
        v53 = MEMORY[0x277CCACA8];
        v54 = NSStringFromSelector([v114 senderSelector]);
        v55 = [v53 stringWithFormat:@"[%@ %@]", self, v54];
        v56 = [(HFUpdateLogger *)v52 initWithTimeout:v55 description:15.0];
        [v114 setLogger:v56];
      }

      logger2 = [v114 logger];
      v58 = logger2 == 0;

      if (v58)
      {
        v106 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
        {
          v107 = NSStringFromSelector([v114 senderSelector]);
          *buf = 138543618;
          selfCopy3 = self;
          v146 = 2114;
          v147 = v107;
          _os_log_impl(&dword_20D9BF000, v106, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting update for sender: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        state.opaque[0] = 0;
        state.opaque[1] = 0;
        logger3 = [v114 logger];
        loggerActivity = [logger3 loggerActivity];
        os_activity_scope_enter(loggerActivity, &state);

        v61 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v62 = NSStringFromSelector([v114 senderSelector]);
          *buf = 138543618;
          selfCopy3 = self;
          v146 = 2114;
          v147 = v62;
          _os_log_impl(&dword_20D9BF000, v61, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting update for sender: %{public}@", buf, 0x16u);
        }

        os_activity_scope_leave(&state);
      }

      v63 = HFLogForCategory(0x35uLL);
      spid = os_signpost_id_generate(v63);

      v64 = HFLogForCategory(0x35uLL);
      v65 = v64;
      if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
      {
        updateOptions3 = [v114 updateOptions];
        v67 = [updateOptions3 objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
        if ([v67 BOOLValue])
        {
          v68 = @"Initial";
        }

        else
        {
          v68 = @"Normal";
        }

        identifier2 = [(HFItemManager *)self identifier];
        v70 = objc_opt_class();
        v111 = v70;
        v71 = NSStringFromSelector([v114 senderSelector]);
        *buf = 138544130;
        selfCopy3 = v68;
        v146 = 2114;
        v147 = identifier2;
        v148 = 2114;
        v149 = v70;
        v150 = 2114;
        v151 = v71;
        _os_signpost_emit_with_name_impl(&dword_20D9BF000, v65, OS_SIGNPOST_INTERVAL_BEGIN, spid, "HFItemManagerUpdate", "%{public}@ Item Update Started %{public}@:%{public}@ for sender: %{public}@", buf, 0x2Au);
      }

      v108 = logger == 0;

      v72 = MEMORY[0x277CCACA8];
      v73 = NSStringFromSelector([v114 senderSelector]);
      v112 = [v72 stringWithFormat:@"%@_%@", @"itemManagerUpdate", v73];

      v74 = objc_msgSend_home(self);
      hf_characteristicValueManager = [v74 hf_characteristicValueManager];
      readPolicy2 = [v114 readPolicy];
      logger4 = [v114 logger];
      [hf_characteristicValueManager beginTransactionWithReason:v112 readPolicy:readPolicy2 logger:logger4];

      _internalItems = [(HFItemManager *)self _internalItems];
      v79 = [_internalItems na_setByIntersectingWithSet:v14];

      v80 = [v14 na_setByRemovingObjectsFromSet:v79];
      array = [MEMORY[0x277CBEB18] array];
      allObjects = [v80 allObjects];
      v125[0] = MEMORY[0x277D85DD0];
      v125[1] = 3221225472;
      v125[2] = __75__HFItemManager__updateResultsForItems_removedItems_context_allowDelaying___block_invoke_317;
      v125[3] = &unk_277DFB9E8;
      v125[4] = self;
      v83 = v114;
      v126 = v83;
      v84 = [allObjects na_map:v125];
      [array addObjectsFromArray:v84];

      allObjects2 = [v79 allObjects];
      v123[0] = MEMORY[0x277D85DD0];
      v123[1] = 3221225472;
      v123[2] = __75__HFItemManager__updateResultsForItems_removedItems_context_allowDelaying___block_invoke_2_320;
      v123[3] = &unk_277DFB9E8;
      v123[4] = self;
      v86 = v83;
      v124 = v86;
      v87 = [allObjects2 na_map:v123];
      [array addObjectsFromArray:v87];

      v88 = objc_alloc_init(MEMORY[0x277D2C900]);
      v89 = objc_msgSend_home(self);
      hf_characteristicValueManager2 = [v89 hf_characteristicValueManager];
      [hf_characteristicValueManager2 commitTransactionWithReason:v112];

      logger5 = [v86 logger];
      [(HFItemManager *)self _batchItemUpdateFutureWrappers:array removedItems:removedItemsCopy batchingIntervals:&unk_2825257F8 logger:logger5];

      v92 = MEMORY[0x277D2C900];
      v93 = [_HFItemUpdateFutureWrapper futuresFromWrappers:array];
      mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
      v95 = [v92 combineAllFutures:v93 ignoringErrors:1 scheduler:mainThreadScheduler];

      objc_initWeak(buf, self);
      v115[0] = MEMORY[0x277D85DD0];
      v115[1] = 3221225472;
      v115[2] = __75__HFItemManager__updateResultsForItems_removedItems_context_allowDelaying___block_invoke_329;
      v115[3] = &unk_277DFBA10;
      objc_copyWeak(v121, buf);
      v96 = v79;
      v116 = v96;
      v97 = v80;
      v117 = v97;
      v118 = removedItemsCopy;
      v121[1] = spid;
      v119 = v86;
      v122 = v108;
      v98 = v88;
      v120 = v98;
      v99 = [v95 addCompletionBlock:v115];
      v100 = v120;
      firstFullUpdateFuture = v98;

      objc_destroyWeak(v121);
      objc_destroyWeak(buf);
    }

    goto LABEL_45;
  }

  updateOptions4 = [v114 updateOptions];
  v25 = [updateOptions4 objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
  bOOLValue = [v25 BOOLValue];

  if (bOOLValue)
  {
    goto LABEL_22;
  }

  v104 = HFLogForCategory(0x2CuLL);
  if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy3 = self;
    v146 = 2112;
    v147 = v14;
    _os_log_impl(&dword_20D9BF000, v104, OS_LOG_TYPE_DEFAULT, "Request to updateResultsForItems for %@, but we're still performing the fast initial update. Once that is done, we'll reload all items anyway, so ignoring this duplicate request. itemsToUpdate: %@", buf, 0x16u);
  }

  firstFullUpdateFuture = [(HFItemManager *)self firstFullUpdateFuture];
LABEL_45:

  return firstFullUpdateFuture;
}

void __75__HFItemManager__updateResultsForItems_removedItems_context_allowDelaying___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2CuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) updateOptions];
    v7 = *(a1 + 48);
    *buf = 138412802;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Delegate for %@ has failed its future to update with options: %@ for items: %@; canceling update", buf, 0x20u);
  }

  v8 = HFLogForCategory(0x35uLL);
  v9 = v8;
  v10 = *(a1 + 72);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 138412290;
    v18 = v3;
    _os_signpost_emit_with_name_impl(&dword_20D9BF000, v9, OS_SIGNPOST_INTERVAL_END, v10, "HFFutureToUpdateItems", "Failed with error %@, canceling", buf, 0xCu);
  }

  v11 = *(a1 + 32);
  v12 = [MEMORY[0x277CBEB98] set];
  v13 = [v11 _updateResultsForItems:v12 removedItems:*(a1 + 56) context:*(a1 + 40) allowDelaying:0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__HFItemManager__updateResultsForItems_removedItems_context_allowDelaying___block_invoke_310;
  v15[3] = &unk_277DF4FE8;
  v16 = *(a1 + 64);
  v14 = [v13 addCompletionBlock:v15];
}

void __75__HFItemManager__updateResultsForItems_removedItems_context_allowDelaying___block_invoke_2(uint64_t a1)
{
  v2 = HFLogForCategory(0x35uLL);
  v3 = v2;
  v4 = *(a1 + 72);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_20D9BF000, v3, OS_SIGNPOST_INTERVAL_END, v4, "HFFutureToUpdateItems", "Starting update", buf, 2u);
  }

  v5 = [*(a1 + 32) _updateResultsForItems:*(a1 + 40) removedItems:*(a1 + 48) context:*(a1 + 56) allowDelaying:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__HFItemManager__updateResultsForItems_removedItems_context_allowDelaying___block_invoke_312;
  v7[3] = &unk_277DF4FE8;
  v8 = *(a1 + 64);
  v6 = [v5 addCompletionBlock:v7];
}

id __75__HFItemManager__updateResultsForItems_removedItems_context_allowDelaying___block_invoke_317(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 _performUpdateForItem:v4 withContext:v3 isInternal:0 isChild:0];
  v6 = [_HFItemUpdateFutureWrapper wrapperWithFuture:v5 item:v4 isInternal:0];

  return v6;
}

id __75__HFItemManager__updateResultsForItems_removedItems_context_allowDelaying___block_invoke_2_320(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 _performUpdateForItem:v4 withContext:v3 isInternal:1 isChild:0];
  v6 = [_HFItemUpdateFutureWrapper wrapperWithFuture:v5 item:v4 isInternal:1];

  return v6;
}

void __75__HFItemManager__updateResultsForItems_removedItems_context_allowDelaying___block_invoke_329(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [MEMORY[0x277CBEB58] set];
  [v3 unionSet:*(a1 + 32)];
  [v3 unionSet:*(a1 + 40)];
  [v3 unionSet:*(a1 + 48)];
  v4 = HFLogForCategory(0x35uLL);
  v5 = v4;
  v6 = *(a1 + 80);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v23 = [*(a1 + 56) updateOptions];
    v7 = [v23 objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
    if ([v7 BOOLValue])
    {
      v8 = @"Initial";
    }

    else
    {
      v8 = @"Normal";
    }

    v9 = [WeakRetained identifier];
    v10 = objc_opt_class();
    v11 = *(a1 + 56);
    v22 = v10;
    v12 = NSStringFromSelector([v11 senderSelector]);
    *buf = 138544130;
    *&buf[4] = v8;
    *&buf[12] = 2114;
    *&buf[14] = v9;
    v26 = 2114;
    v27 = v10;
    v28 = 2114;
    v29 = v12;
    _os_signpost_emit_with_name_impl(&dword_20D9BF000, v5, OS_SIGNPOST_INTERVAL_END, v6, "HFItemManagerUpdate", "%{public}@ Item Update Finished %{public}@:%{public}@ for sender: %{public}@", buf, 0x2Au);
  }

  v13 = [*(a1 + 56) logger];

  if (v13)
  {
    *buf = 0;
    *&buf[8] = 0;
    v14 = [*(a1 + 56) logger];
    v15 = [v14 loggerActivity];
    os_activity_scope_enter(v15, buf);

    v16 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "All batch item updates complete.", v24, 2u);
    }

    os_activity_scope_leave(buf);
  }

  else
  {
    v21 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_DEFAULT, "All batch item updates complete.", buf, 2u);
    }
  }

  [WeakRetained _didFinishUpdateTransactionWithAffectedItems:v3];
  if (*(a1 + 88) == 1)
  {
    v17 = [*(a1 + 56) logger];
    [v17 finish];
  }

  v18 = [WeakRetained delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = [WeakRetained delegate];
    [v20 itemManagerDidFinishUpdate:WeakRetained];
  }

  [*(a1 + 64) finishWithResult:v3];
}

- (id)_performUpdateForItem:(id)item withContext:(id)context isInternal:(BOOL)internal isChild:(BOOL)child
{
  childCopy = child;
  v53 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  contextCopy = context;
  latestResults = [itemCopy latestResults];
  _debug_owningItemManager = [itemCopy _debug_owningItemManager];

  _debug_owningItemManager2 = [itemCopy _debug_owningItemManager];
  if (_debug_owningItemManager2)
  {
    v15 = _debug_owningItemManager2;
    _debug_owningItemManager3 = [itemCopy _debug_owningItemManager];

    if (_debug_owningItemManager3 != self)
    {
      _debug_owningItemManager4 = [itemCopy _debug_owningItemManager];
      NSLog(&cfstr_RequestToUpdat.isa, self, _debug_owningItemManager4, itemCopy);
    }
  }

  [itemCopy set_debug_owningItemManager:self];
  [itemCopy set_debug_isChildItem:childCopy];
  updateOptions = [contextCopy updateOptions];
  v19 = [updateOptions mutableCopy];

  [v19 setObject:latestResults forKeyedSubscript:HFItemUpdateOptionPreviousResults];
  logger = [contextCopy logger];
  [v19 setObject:logger forKeyedSubscript:HFItemUpdateOptionLogger];

  v21 = [itemCopy updateWithOptions:v19];
  if (!v21)
  {
    NSLog(&cfstr_ProgrammerErro.isa, itemCopy);
    logger2 = [contextCopy logger];

    if (logger2)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      logger3 = [contextCopy logger];
      loggerActivity = [logger3 loggerActivity];
      os_activity_scope_enter(loggerActivity, &state);

      v25 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v51 = itemCopy;
        _os_log_impl(&dword_20D9BF000, v25, OS_LOG_TYPE_ERROR, "Programmer error: Items must always return a valid future from -updateWithOptions, but this item returned nil: %@", buf, 0xCu);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v38 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        LODWORD(state.opaque[0]) = 138412290;
        *(state.opaque + 4) = itemCopy;
        _os_log_impl(&dword_20D9BF000, v38, OS_LOG_TYPE_ERROR, "Programmer error: Items must always return a valid future from -updateWithOptions, but this item returned nil: %@", &state, 0xCu);
      }
    }

    v26 = MEMORY[0x277D2C900];
    v27 = [HFItemUpdateOutcome outcomeWithResults:MEMORY[0x277CBEC10]];
    v21 = [v26 futureWithResult:v27];
  }

  v28 = _debug_owningItemManager == self;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __70__HFItemManager__performUpdateForItem_withContext_isInternal_isChild___block_invoke;
  v43[3] = &unk_277DFBA60;
  v43[4] = self;
  v29 = itemCopy;
  v44 = v29;
  v30 = contextCopy;
  v45 = v30;
  internalCopy = internal;
  v31 = latestResults;
  v46 = v31;
  v48 = v28;
  v49 = childCopy;
  v32 = [v21 flatMap:v43];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __70__HFItemManager__performUpdateForItem_withContext_isInternal_isChild___block_invoke_353;
  v39[3] = &unk_277DF6380;
  v40 = v30;
  v41 = v29;
  v42 = v31;
  v33 = v31;
  v34 = v29;
  v35 = v30;
  v36 = [v32 recover:v39];

  return v36;
}

id __70__HFItemManager__performUpdateForItem_withContext_isInternal_isChild___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _performUpdateForChildItemsOfItem:*(a1 + 40) withContext:*(a1 + 48) isInternal:*(a1 + 64)];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__HFItemManager__performUpdateForItem_withContext_isInternal_isChild___block_invoke_2;
  v10[3] = &unk_277DFBA38;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = v3;
  v14 = *(a1 + 56);
  v15 = *(a1 + 48);
  v16 = *(a1 + 65);
  v7 = v3;
  v8 = [v4 flatMap:v10];

  return v8;
}

id __70__HFItemManager__performUpdateForItem_withContext_isInternal_isChild___block_invoke_2(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) loadingState];
  v5 = [*(a1 + 32) _effectiveLoadingStateForSuggestedLoadingState:{objc_msgSend(*(a1 + 40), "_loadingStateForItem:", *(a1 + 32))}];
  [*(a1 + 32) setLoadingState:v5];
  v6 = *(a1 + 48);
  if (v4 == v5)
  {
    v7 = [v3 BOOLValue];
  }

  else
  {
    v7 = 1;
  }

  if (![*(a1 + 48) outcomeType] || v7)
  {
    v8 = [*(a1 + 48) mutableCopy];
    if (v7)
    {
      v9 = 2;
    }

    else
    {
      v10 = [*(a1 + 48) results];
      v11 = [v10 isEqualToDictionary:*(a1 + 56)];

      if (v11)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }
    }

    [v8 setOutcomeType:v9];
  }

  else
  {
    v8 = v6;
  }

  v12 = [*(a1 + 40) _transformedUpdateOutcomeForItem:*(a1 + 32) proposedOutcome:v8];
  if (v8 != v12)
  {
    v13 = [*(a1 + 64) logger];

    if (v13)
    {
      v14 = [*(a1 + 64) logger];
      v15 = [v14 loggerActivity];
      os_activity_scope_enter(v15, &v44);

      v16 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = *(a1 + 32);
        v18 = *(a1 + 40);
        *buf = 138412546;
        v46 = v17;
        v47 = 2112;
        v48 = v18;
        _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEBUG, "Results for item %@ have been transformed by item manager %@", buf, 0x16u);
      }

      os_activity_scope_leave(&v44);
    }

    else
    {
      v37 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v38 = *(a1 + 32);
        v39 = *(a1 + 40);
        *buf = 138412546;
        v46 = v38;
        v47 = 2112;
        v48 = v39;
        _os_log_impl(&dword_20D9BF000, v37, OS_LOG_TYPE_DEBUG, "Results for item %@ have been transformed by item manager %@", buf, 0x16u);
      }
    }
  }

  v19 = [v12 results];
  [*(a1 + 32) setLatestResults:v19];

  if ([v12 outcomeType] == 2)
  {
    if (*(a1 + 72))
    {
      v20 = @"Updated";
    }

    else
    {
      v20 = @"Added";
    }

    v21 = v20;
    if (*(a1 + 73))
    {
      v22 = @"child item";
    }

    else
    {
      v22 = @"item";
    }

    v23 = v22;
    v24 = [*(a1 + 64) logger];

    if (v24)
    {
      v44.opaque[0] = 0;
      v44.opaque[1] = 0;
      v25 = [*(a1 + 64) logger];
      v26 = [v25 loggerActivity];
      os_activity_scope_enter(v26, &v44);

      v27 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 32);
        *buf = 138412802;
        v46 = v21;
        v47 = 2112;
        v48 = v23;
        v49 = 2112;
        v50 = v28;
        _os_log_impl(&dword_20D9BF000, v27, OS_LOG_TYPE_DEFAULT, "%@ %@: %@", buf, 0x20u);
      }

      os_activity_scope_leave(&v44);
    }

    else
    {
      v40 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = *(a1 + 32);
        *buf = 138412802;
        v46 = v21;
        v47 = 2112;
        v48 = v23;
        v49 = 2112;
        v50 = v41;
        _os_log_impl(&dword_20D9BF000, v40, OS_LOG_TYPE_DEFAULT, "%@ %@: %@", buf, 0x20u);
      }
    }

LABEL_30:
    goto LABEL_38;
  }

  v29 = [*(a1 + 64) logger];

  if (!v29)
  {
    v21 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v42 = *(a1 + 32);
      if (*(a1 + 73))
      {
        v43 = @"child item";
      }

      else
      {
        v43 = @"item";
      }

      *buf = 138412546;
      v46 = v43;
      v47 = 2112;
      v48 = v42;
      _os_log_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_DEFAULT, "Updated %@, but results did not change: %@", buf, 0x16u);
    }

    goto LABEL_30;
  }

  v44.opaque[0] = 0;
  v44.opaque[1] = 0;
  v30 = [*(a1 + 64) logger];
  v31 = [v30 loggerActivity];
  os_activity_scope_enter(v31, &v44);

  v32 = HFLogForCategory(0x2CuLL);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = *(a1 + 32);
    if (*(a1 + 73))
    {
      v34 = @"child item";
    }

    else
    {
      v34 = @"item";
    }

    *buf = 138412546;
    v46 = v34;
    v47 = 2112;
    v48 = v33;
    _os_log_impl(&dword_20D9BF000, v32, OS_LOG_TYPE_DEFAULT, "Updated %@, but results did not change: %@", buf, 0x16u);
  }

  os_activity_scope_leave(&v44);
LABEL_38:
  v35 = [MEMORY[0x277D2C900] futureWithResult:v12];

  return v35;
}

id __70__HFItemManager__performUpdateForItem_withContext_isInternal_isChild___block_invoke_353(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 na_isCancelledError] & 1) == 0)
  {
    v4 = [*(a1 + 32) logger];

    if (v4)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v5 = [*(a1 + 32) logger];
      v6 = [v5 loggerActivity];
      os_activity_scope_enter(v6, &state);

      v7 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 40);
        *buf = 138412546;
        v22 = v8;
        v23 = 2112;
        v24 = v3;
        _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_ERROR, "Update for item %@ failed with error %@. This is a programmer error, as item updates should never fail.", buf, 0x16u);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v18 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 40);
        *buf = 138412546;
        v22 = v19;
        v23 = 2112;
        v24 = v3;
        _os_log_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_ERROR, "Update for item %@ failed with error %@. This is a programmer error, as item updates should never fail.", buf, 0x16u);
      }
    }

    NSLog(&cfstr_UpdateForItemF.isa, *(a1 + 40), v3);
  }

  v9 = [*(a1 + 40) latestResults];
  if (v9)
  {
    v10 = v9;
    v11 = [*(a1 + 40) latestResults];
    v12 = [v11 isEqualToDictionary:*(a1 + 48)];

    if ((v12 & 1) == 0)
    {
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = [v13 latestResults];
      NSLog(&cfstr_AnItemSUpdateW.isa, v13, v14, v15);
    }
  }

  v16 = [MEMORY[0x277D2C900] futureWithError:v3];

  return v16;
}

- (id)_performUpdateForChildItemsOfItem:(id)item withContext:(id)context isInternal:(BOOL)internal
{
  itemCopy = item;
  contextCopy = context;
  latestResults = [itemCopy latestResults];
  v12 = [latestResults objectForKeyedSubscript:@"childItems"];

  childItemsByParentItem = [(HFItemManager *)self childItemsByParentItem];
  v14 = [childItemsByParentItem objectForKey:itemCopy];

  v15 = v12;
  v16 = v14;
  if (v15 == v16)
  {
    v17 = 0;
  }

  else if (v15)
  {
    v17 = [v15 isEqual:v16] ^ 1;
  }

  else
  {
    v17 = 1;
  }

  childItemsByParentItem2 = [(HFItemManager *)self childItemsByParentItem];
  [childItemsByParentItem2 setObject:v15 forKey:itemCopy];

  if ([v15 containsObject:itemCopy])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFItemManager.m" lineNumber:1490 description:{@"Detected a case where an item is vending itself as a child item. For the love of all that is holy, please don't do this. Item: <%@:%p>", objc_opt_class(), itemCopy}];
  }

  v19 = MEMORY[0x277D2C900];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:v17];
  v21 = [v19 futureWithResult:v20];

  if ([v15 count])
  {
    NSStringFromSelector([contextCopy senderSelector]);
    v22 = v38 = internal;
    itemCopy = [@"itemManagerUpdate" stringByAppendingFormat:@"-%@-ChildItems-%p", v22, itemCopy];

    v23 = objc_msgSend_home(self);
    [v23 hf_characteristicValueManager];
    v24 = v41 = v16;
    [HFStaticReadPolicy policyWithDecision:0];
    v26 = v25 = contextCopy;
    [v25 logger];
    v27 = v39 = v17;
    [v24 beginTransactionWithReason:itemCopy readPolicy:v26 logger:v27];

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __74__HFItemManager__performUpdateForChildItemsOfItem_withContext_isInternal___block_invoke;
    v44[3] = &unk_277DFBA88;
    v44[4] = self;
    v45 = v25;
    v46 = v38;
    v28 = [v15 na_map:v44];
    v29 = MEMORY[0x277D2C900];
    allObjects = [v28 allObjects];
    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    v32 = [v29 combineAllFutures:allObjects ignoringErrors:1 scheduler:mainThreadScheduler];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __74__HFItemManager__performUpdateForChildItemsOfItem_withContext_isInternal___block_invoke_2;
    v42[3] = &__block_descriptor_33_e27___NAFuture_16__0__NSArray_8l;
    v43 = v39;
    v33 = [v32 flatMap:v42];

    v34 = objc_msgSend_home(self);
    hf_characteristicValueManager = [v34 hf_characteristicValueManager];
    [hf_characteristicValueManager commitTransactionWithReason:itemCopy];

    contextCopy = v25;
    v16 = v41;

    v21 = v33;
  }

  return v21;
}

id __74__HFItemManager__performUpdateForChildItemsOfItem_withContext_isInternal___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = 1;
  }

  else
  {
    v2 = [a2 na_any:&__block_literal_global_369_0];
  }

  v3 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:v2];
  v5 = [v3 futureWithResult:v4];

  return v5;
}

BOOL __74__HFItemManager__performUpdateForChildItemsOfItem_withContext_isInternal___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 outcomeType] == 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateRepresentationForInternalItemsWithUpdatedItems:(id)items
{
  itemsCopy = items;
  _internalItems = [(HFItemManager *)self _internalItems];
  if ([_internalItems count] > 1)
  {

    goto LABEL_5;
  }

  v6 = [itemsCopy count];

  if (v6 >= 2)
  {
LABEL_5:
    _internalItems2 = [(HFItemManager *)self _internalItems];
    NSLog(&cfstr_ReceivedUnexpe.isa, _internalItems2);
  }

  if ([itemsCopy count])
  {
    anyObject = [itemsCopy anyObject];
    sourceItem = [(HFItemManager *)self sourceItem];

    if (anyObject != sourceItem)
    {
      sourceItem2 = [(HFItemManager *)self sourceItem];
      NSLog(&cfstr_UnknownSourceI.isa, anyObject, sourceItem2);
    }

    delegate = [(HFItemManager *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __71__HFItemManager__updateRepresentationForInternalItemsWithUpdatedItems___block_invoke;
      v17[3] = &unk_277DF3370;
      v17[4] = self;
      v18 = anyObject;
      [mainThreadScheduler performBlock:v17];
    }

    _itemForSorting = [(HFItemManager *)self _itemForSorting];
    if (_itemForSorting)
    {
      _internalItems3 = [(HFItemManager *)self _internalItems];
      v16 = [_internalItems3 containsObject:_itemForSorting];

      if ((v16 & 1) == 0)
      {
        NSLog(&cfstr_SortingItemIsN.isa, _itemForSorting);
      }

      if ([itemsCopy containsObject:_itemForSorting])
      {
        [(HFItemManager *)self recalculateVisibilityAndSortAllItems];
      }
    }
  }
}

void __71__HFItemManager__updateRepresentationForInternalItemsWithUpdatedItems___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 itemManager:*(a1 + 32) didUpdateResultsForSourceItem:*(a1 + 40)];
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  v5 = objc_opt_new();
  itemModules = [(HFItemManager *)self itemModules];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__HFItemManager__buildSectionsWithDisplayedItems___block_invoke;
  v13[3] = &unk_277DFBAF0;
  v7 = itemsCopy;
  v14 = v7;
  v8 = [itemModules na_flatMap:v13];
  [v5 addObjectsFromArray:v8];

  if (![(HFItemManager *)self _isUsingOnlyItemModules])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__HFItemManager__buildSectionsWithDisplayedItems___block_invoke_2;
    v12[3] = &unk_277DF4B70;
    v12[4] = self;
    v9 = [v7 na_filter:v12];
    v10 = [(HFItemManager *)self _legacy_buildSectionsWithDisplayedItems:v9];
    [v5 addObjectsFromArray:v10];
  }

  return v5;
}

uint64_t __50__HFItemManager__buildSectionsWithDisplayedItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) itemModules];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__HFItemManager__buildSectionsWithDisplayedItems___block_invoke_3;
  v8[3] = &unk_277DFBB18;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6 ^ 1u;
}

uint64_t __50__HFItemManager__buildSectionsWithDisplayedItems___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 allItems];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (id)_legacy_buildSectionsWithDisplayedItems:(id)items
{
  v35 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  [(HFItemManager *)self _willUpdateSections];
  currentSectionIdentifiersSnapshot = [(HFItemManager *)self currentSectionIdentifiersSnapshot];
  _numberOfSections = [currentSectionIdentifiersSnapshot count];
  if (!_numberOfSections)
  {
    _numberOfSections = [(HFItemManager *)self _numberOfSections];
  }

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:_numberOfSections];
  if (_numberOfSections)
  {
    for (i = 0; i != _numberOfSections; ++i)
    {
      if (currentSectionIdentifiersSnapshot)
      {
        [currentSectionIdentifiersSnapshot objectAtIndexedSubscript:i];
      }

      else
      {
        [(HFItemManager *)self _identifierForSection:i];
      }
      v9 = ;
      v10 = [(HFItemSection *)[HFMutableItemSection alloc] initWithIdentifier:v9];
      v11 = [(HFItemManager *)self _titleForSectionWithIdentifier:v9];
      [(HFItemSection *)v10 setHeaderTitle:v11];

      v12 = [(HFItemManager *)self _footerTitleForSectionWithIdentifier:v9];
      [(HFItemSection *)v10 setFooterTitle:v12];

      [v7 addObject:v10];
    }
  }

  v26 = currentSectionIdentifiersSnapshot;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = itemsCopy;
  v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v31;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v30 + 1) + 8 * j);
        v20 = [(HFItemManager *)self _sectionIdentifierForItem:v19];
        v21 = [dictionary na_objectForKey:v20 withDefaultValue:&__block_literal_global_385];
        [v21 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v16);
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __57__HFItemManager__legacy_buildSectionsWithDisplayedItems___block_invoke_2;
  v27[3] = &unk_277DFBB88;
  v22 = v25;
  v28 = v22;
  selfCopy = self;
  [dictionary enumerateKeysAndObjectsUsingBlock:v27];
  v23 = v22;

  return v22;
}

void __57__HFItemManager__legacy_buildSectionsWithDisplayedItems___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__HFItemManager__legacy_buildSectionsWithDisplayedItems___block_invoke_3;
  v11[3] = &unk_277DFBB60;
  v12 = v5;
  v7 = v5;
  v8 = a3;
  v9 = [v6 na_firstObjectPassingTest:v11];
  v10 = [*(a1 + 40) _sortedItems:v8 forSectionIdentifier:v7];

  [v9 setItems:v10];
}

uint64_t __57__HFItemManager__legacy_buildSectionsWithDisplayedItems___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_notifyDelegateOfChangesFromDiff:(id)diff logger:(id)logger
{
  diffCopy = diff;
  loggerCopy = logger;
  v7 = loggerCopy;
  if (!loggerCopy)
  {
    v7 = [[HFUpdateLogger alloc] initWithTimeout:@"HFItemManager diff update" description:1.0];
  }

  groupOperations = [diffCopy groupOperations];
  [(HFItemManager *)self _notifyDelegateOfSectionOperations:groupOperations logger:v7];

  itemOperations = [diffCopy itemOperations];
  [(HFItemManager *)self _notifyDelegateOfItemOperations:itemOperations logger:v7];

  if (!loggerCopy)
  {
    [(HFUpdateLogger *)v7 finish];
  }
}

- (void)_notifyDelegateOfSectionOperations:(id)operations logger:(id)logger
{
  v51 = *MEMORY[0x277D85DE8];
  operationsCopy = operations;
  loggerCopy = logger;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = [operationsCopy countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v44;
    v11 = &dword_20D9BF000;
    v42 = loggerCopy;
    do
    {
      v12 = 0;
      do
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(operationsCopy);
        }

        v13 = *(*(&v43 + 1) + 8 * v12);
        if (loggerCopy)
        {
          state.opaque[0] = 0;
          state.opaque[1] = 0;
          loggerActivity = [loggerCopy loggerActivity];
          os_activity_scope_enter(loggerActivity, &state);

          v15 = HFLogForCategory(0x2CuLL);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            operationDescription = [v13 operationDescription];
            *buf = 138412290;
            v48 = operationDescription;
            _os_log_impl(v11, v15, OS_LOG_TYPE_DEFAULT, "Issuing section update: %@", buf, 0xCu);
          }

          os_activity_scope_leave(&state);
        }

        else
        {
          v39 = HFLogForCategory(0x2CuLL);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            operationDescription2 = [v13 operationDescription];
            LODWORD(state.opaque[0]) = 138412290;
            *(state.opaque + 4) = operationDescription2;
            _os_log_impl(v11, v39, OS_LOG_TYPE_DEFAULT, "Issuing section update: %@", &state, 0xCu);
          }
        }

        type = [v13 type];
        if (type > 1)
        {
          if (type == 3)
          {
            delegate = [(HFItemManager *)self delegate];
            v29 = objc_opt_respondsToSelector();

            if ((v29 & 1) == 0)
            {
              goto LABEL_24;
            }

            delegate2 = [(HFItemManager *)self delegate];
            fromIndex = [v13 fromIndex];
            v31 = v9;
            v32 = v10;
            v33 = operationsCopy;
            v34 = v11;
            integerValue = [fromIndex integerValue];
            toIndex = [v13 toIndex];
            integerValue2 = [toIndex integerValue];
            v38 = integerValue;
            v11 = v34;
            operationsCopy = v33;
            v10 = v32;
            v9 = v31;
            loggerCopy = v42;
            [delegate2 itemManager:self didMoveSection:v38 toSection:integerValue2];

            goto LABEL_23;
          }

          if (type == 2)
          {
            delegate3 = [(HFItemManager *)self delegate];
            v25 = objc_opt_respondsToSelector();

            if (v25)
            {
              v26 = MEMORY[0x277CCAA78];
              fromIndex2 = [v13 fromIndex];
              delegate2 = [v26 indexSetWithIndex:{objc_msgSend(fromIndex2, "unsignedIntegerValue")}];

              delegate4 = [(HFItemManager *)self delegate];
              [delegate4 itemManager:self didRemoveSections:delegate2];
LABEL_19:

LABEL_23:
            }
          }
        }

        else
        {
          if (!type)
          {
            NSLog(&cfstr_SectionReloads.isa);
            goto LABEL_24;
          }

          if (type == 1)
          {
            delegate5 = [(HFItemManager *)self delegate];
            v19 = objc_opt_respondsToSelector();

            if (v19)
            {
              v20 = MEMORY[0x277CCAA78];
              toIndex2 = [v13 toIndex];
              delegate2 = [v20 indexSetWithIndex:{objc_msgSend(toIndex2, "unsignedIntegerValue")}];

              delegate4 = [(HFItemManager *)self delegate];
              [delegate4 itemManager:self didInsertSections:delegate2];
              goto LABEL_19;
            }
          }
        }

LABEL_24:
        ++v12;
      }

      while (v9 != v12);
      v41 = [operationsCopy countByEnumeratingWithState:&v43 objects:v50 count:16];
      v9 = v41;
    }

    while (v41);
  }
}

- (void)_notifyDelegateOfItemOperations:(id)operations logger:(id)logger
{
  v41 = *MEMORY[0x277D85DE8];
  operationsCopy = operations;
  loggerCopy = logger;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = [operationsCopy countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      v11 = 0;
      v32 = sel_itemManager_didRemoveItem_atIndexPath_;
      do
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(operationsCopy);
        }

        v12 = *(*(&v33 + 1) + 8 * v11);
        if (loggerCopy)
        {
          state.opaque[0] = 0;
          state.opaque[1] = 0;
          loggerActivity = [loggerCopy loggerActivity];
          os_activity_scope_enter(loggerActivity, &state);

          v14 = HFLogForCategory(0x2CuLL);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            operationDescription = [v12 operationDescription];
            *buf = 138412290;
            v38 = operationDescription;
            _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "Issuing item update: %@", buf, 0xCu);
          }

          os_activity_scope_leave(&state);
        }

        else
        {
          v29 = HFLogForCategory(0x2CuLL);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            operationDescription2 = [v12 operationDescription];
            LODWORD(state.opaque[0]) = 138412290;
            *(state.opaque + 4) = operationDescription2;
            _os_log_impl(&dword_20D9BF000, v29, OS_LOG_TYPE_DEFAULT, "Issuing item update: %@", &state, 0xCu);
          }
        }

        type = [v12 type];
        if (type > 1)
        {
          if (type == 3)
          {
            delegate = [(HFItemManager *)self delegate];
            v27 = objc_opt_respondsToSelector();

            if ((v27 & 1) == 0)
            {
              goto LABEL_24;
            }

            delegate2 = [(HFItemManager *)self delegate];
            item = [v12 item];
            fromIndexPath = [v12 fromIndexPath];
            toIndexPath = [v12 toIndexPath];
            [delegate2 itemManager:self didMoveItem:item fromIndexPath:fromIndexPath toIndexPath:toIndexPath];

            goto LABEL_23;
          }

          if (type == 2)
          {
            delegate3 = [(HFItemManager *)self delegate];
            v23 = objc_opt_respondsToSelector();

            if (v23)
            {
              delegate2 = [(HFItemManager *)self delegate];
              item = [v12 item];
              fromIndexPath = [v12 fromIndexPath];
              [delegate2 itemManager:self didRemoveItem:item atIndexPath:fromIndexPath];
              goto LABEL_23;
            }
          }
        }

        else
        {
          if (!type)
          {
            delegate4 = [(HFItemManager *)self delegate];
            v25 = objc_opt_respondsToSelector();

            if ((v25 & 1) == 0)
            {
              goto LABEL_24;
            }

            delegate2 = [(HFItemManager *)self delegate];
            item = [v12 item];
            fromIndexPath = [v12 toIndexPath];
            [delegate2 itemManager:self didUpdateResultsForItem:item atIndexPath:fromIndexPath];
            goto LABEL_23;
          }

          if (type == 1)
          {
            delegate5 = [(HFItemManager *)self delegate];
            v18 = objc_opt_respondsToSelector();

            if (v18)
            {
              delegate2 = [(HFItemManager *)self delegate];
              item = [v12 item];
              fromIndexPath = [v12 toIndexPath];
              [delegate2 itemManager:self didInsertItem:item atIndexPath:fromIndexPath];
LABEL_23:
            }
          }
        }

LABEL_24:
        ++v11;
      }

      while (v9 != v11);
      v31 = [operationsCopy countByEnumeratingWithState:&v33 objects:v40 count:16];
      v9 = v31;
    }

    while (v31);
  }
}

- (id)_itemsToHideInSet:(id)set
{
  setCopy = set;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [setCopy objectsPassingTest:&__block_literal_global_409];
  [v5 unionSet:v6];
  _displayFilter = [(HFItemManager *)self _displayFilter];

  if (_displayFilter)
  {
    _displayFilter2 = [(HFItemManager *)self _displayFilter];
    v9 = [setCopy na_filter:_displayFilter2];

    v10 = [setCopy na_setByRemovingObjectsFromSet:v9];
    [v5 unionSet:v10];
  }

  v11 = [(HFItemManager *)self _itemsOfClass:objc_opt_class() inItems:setCopy allowTransformedItems:1];
  v12 = objc_opt_class();
  allItems = [(HFItemManager *)self allItems];
  v14 = [(HFItemManager *)self _itemsOfClass:v12 inItems:allItems allowTransformedItems:1];

  if ([v11 count])
  {
    v15 = [(HFItemManager *)self _serviceItemsToHideInSet:v11 allServiceGroupItems:v14];
    if (v15)
    {
      [v5 unionSet:v15];
    }
  }

  v16 = objc_msgSend_home(self);
  hf_currentUserIsAdministrator = [v16 hf_currentUserIsAdministrator];

  if ((hf_currentUserIsAdministrator & 1) == 0)
  {
    v18 = [setCopy na_filter:&__block_literal_global_413_0];
    [v5 unionSet:v18];
  }

  v19 = objc_msgSend_home(self);
  hf_currentUserIsOwner = [v19 hf_currentUserIsOwner];

  if ((hf_currentUserIsOwner & 1) == 0)
  {
    v21 = [setCopy na_filter:&__block_literal_global_415_0];
    [v5 unionSet:v21];
  }

  itemModules = [(HFItemManager *)self itemModules];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __35__HFItemManager__itemsToHideInSet___block_invoke_4;
  v28[3] = &unk_277DFBBD0;
  v29 = setCopy;
  v23 = v5;
  v30 = v23;
  v24 = setCopy;
  [itemModules na_each:v28];

  v25 = v30;
  v26 = v23;

  return v23;
}

uint64_t __35__HFItemManager__itemsToHideInSet___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 latestResults];
  if (v3)
  {
    v4 = [v2 latestResults];
    v5 = [v4 objectForKeyedSubscript:@"hidden"];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t __35__HFItemManager__itemsToHideInSet___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"shouldHideForNonAdminUsers"];
  v4 = [v3 BOOLValue];

  return v4;
}

uint64_t __35__HFItemManager__itemsToHideInSet___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"shouldHideForNotOwner"];
  v4 = [v3 BOOLValue];

  return v4;
}

void __35__HFItemManager__itemsToHideInSet___block_invoke_4(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([v10 conformsToProtocol:&unk_2825BAF78])
  {
    v3 = v10;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 allItems];
    v7 = [v6 na_setByIntersectingWithSet:*(a1 + 32)];

    v8 = *(a1 + 40);
    v9 = [v5 _itemsToHideInSet:v7];
    [v8 unionSet:v9];
  }
}

- (id)_serviceItemsToHideInSet:(id)set allServiceGroupItems:(id)items
{
  v36 = *MEMORY[0x277D85DE8];
  setCopy = set;
  itemsCopy = items;
  v23 = [MEMORY[0x277CBEB58] set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = setCopy;
  v25 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v25)
  {
    v24 = *v31;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        objc_opt_class();
        homeKitObject = [v9 homeKitObject];
        if (objc_opt_isKindOfClass())
        {
          v11 = homeKitObject;
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;

        v13 = objc_msgSend_home(self);
        v14 = [v13 hf_serviceGroupsForService:v12];

        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v27;
          while (2)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v27 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = [(HFItemManager *)self _serviceGroupItemForServiceGroup:*(*(&v26 + 1) + 8 * j) inItems:itemsCopy];
              if (v20 && [(HFItemManager *)self _shouldHideServiceItem:v9 containedInServiceGroupItem:v20])
              {

                [v23 addObject:v9];
                goto LABEL_20;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:
      }

      v25 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v25);
  }

  return v23;
}

- (BOOL)_shouldHideServiceItem:(id)item containedInServiceGroupItem:(id)groupItem
{
  if (!groupItem)
  {
    return 0;
  }

  v5 = MEMORY[0x277CBEB98];
  groupItemCopy = groupItem;
  v7 = [v5 setWithObject:groupItemCopy];
  v8 = [(HFItemManager *)self _itemsToHideInSet:v7];
  LOBYTE(self) = [v8 containsObject:groupItemCopy];

  v9 = self ^ 1;
  return v9;
}

- (id)_allSuppressedCharacteristics
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  suppressedCharacteristicUpdatesByReason = [(HFItemManager *)self suppressedCharacteristicUpdatesByReason];
  allValues = [suppressedCharacteristicUpdatesByReason allValues];

  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [v3 unionSet:*(*(&v11 + 1) + 8 * i)];
      }

      v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)_setDisplayFilter:(id)filter recalculateVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  v6 = _Block_copy(filter);
  displayFilter = self->__displayFilter;
  self->__displayFilter = v6;

  if (visibilityCopy)
  {

    [(HFItemManager *)self recalculateVisibilityAndSortAllItems];
  }
}

- (void)beginFirstFullUpdateWithTimeoutFutureIfNeeded
{
  v25 = *MEMORY[0x277D85DE8];
  if (![(HFItemManager *)self hasBegunFirstFullUpdateFutureTimeout])
  {
    [(HFItemManager *)self setHasBegunFirstFullUpdateFutureTimeout:1];
    objc_initWeak(&location, self);
    firstFullUpdateFuture = [(HFItemManager *)self firstFullUpdateFuture];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __62__HFItemManager_beginFirstFullUpdateWithTimeoutFutureIfNeeded__block_invoke;
    v18[3] = &unk_277DFBBF8;
    objc_copyWeak(&v19, &location);
    v4 = [firstFullUpdateFuture addCompletionBlock:v18];

    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62__HFItemManager_beginFirstFullUpdateWithTimeoutFutureIfNeeded__block_invoke_2;
    v16[3] = &unk_277DF4460;
    objc_copyWeak(&v17, &location);
    v6 = [mainThreadScheduler afterDelay:v16 performBlock:15.0];

    v7 = HFLogForCategory(0x35uLL);
    v8 = os_signpost_id_generate(v7);

    v9 = HFLogForCategory(0x35uLL);
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v11 = objc_opt_class();
      identifier = [(HFItemManager *)self identifier];
      *buf = 138412546;
      v22 = v11;
      v23 = 2112;
      v24 = identifier;
      _os_signpost_emit_with_name_impl(&dword_20D9BF000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "HFItemManagerFutures", "%@-%@: firstFullUpdateWithTimeoutFuture", buf, 0x16u);
    }

    firstFullUpdateWithTimeoutFuture = [(HFItemManager *)self firstFullUpdateWithTimeoutFuture];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __62__HFItemManager_beginFirstFullUpdateWithTimeoutFutureIfNeeded__block_invoke_420;
    v15[3] = &__block_descriptor_40_e28_v24__0__NSNull_8__NSError_16l;
    v15[4] = v8;
    v14 = [firstFullUpdateWithTimeoutFuture addCompletionBlock:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __62__HFItemManager_beginFirstFullUpdateWithTimeoutFutureIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained firstFullUpdateWithTimeoutFuture];
  v2 = [v1 isFinished];

  if ((v2 & 1) == 0)
  {
    v3 = [WeakRetained firstFullUpdateWithTimeoutFuture];
    [v3 finishWithNoResult];
  }
}

void __62__HFItemManager_beginFirstFullUpdateWithTimeoutFutureIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained firstFullUpdateWithTimeoutFuture];
  v2 = [v1 isFinished];

  if ((v2 & 1) == 0)
  {
    v3 = [WeakRetained firstFullUpdateWithTimeoutFuture];
    [v3 cancel];
  }
}

void __62__HFItemManager_beginFirstFullUpdateWithTimeoutFutureIfNeeded__block_invoke_420(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x35uLL);
  v6 = v5;
  v7 = *(a1 + 32);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = "failed";
    if (!v4)
    {
      v8 = "success";
    }

    v9 = 138412546;
    v10 = v4;
    v11 = 2082;
    v12 = v8;
    _os_signpost_emit_with_name_impl(&dword_20D9BF000, v6, OS_SIGNPOST_INTERVAL_END, v7, "HFItemManagerFutures", "Finished with error: %@ (%{public}s)", &v9, 0x16u);
  }
}

- (BOOL)_isUsingOnlyItemModules
{
  subclassItemProviderSet = [(HFItemManager *)self subclassItemProviderSet];
  if ([subclassItemProviderSet count])
  {
    v4 = 0;
  }

  else
  {
    moduleItemProviderSet = [(HFItemManager *)self moduleItemProviderSet];
    v4 = moduleItemProviderSet != 0;
  }

  return v4;
}

- (id)_itemsOfClass:(Class)class inItems:(id)items allowTransformedItems:(BOOL)transformedItems
{
  v21 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v6 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = itemsCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          sourceHomeKitItem = [v12 sourceHomeKitItem];
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            continue;
          }
        }

        [v6 addObject:{v12, v16}];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)_serviceGroupItemForServiceGroup:(id)group inItems:(id)items
{
  v22 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  uniqueIdentifier = [group uniqueIdentifier];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(HFItemManager *)self _itemsOfClass:objc_opt_class() inItems:itemsCopy allowTransformedItems:1, 0];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        homeKitObject = [v12 homeKitObject];
        uniqueIdentifier2 = [homeKitObject uniqueIdentifier];
        v15 = [uniqueIdentifier2 isEqual:uniqueIdentifier];

        if (v15)
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (unint64_t)_sectionForItem:(id)item assertOnNotFound:(BOOL)found
{
  foundCopy = found;
  itemCopy = item;
  sections = [(HFItemManager *)self sections];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __50__HFItemManager__sectionForItem_assertOnNotFound___block_invoke;
  v16 = &unk_277DFBC40;
  v9 = itemCopy;
  v17 = v9;
  v10 = [sections indexOfObjectPassingTest:&v13];

  if (foundCopy && v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFItemManager.m" lineNumber:1898 description:{@"Could not find section for item: %@", v9, v13, v14, v15, v16}];
  }

  return v10;
}

uint64_t __50__HFItemManager__sectionForItem_assertOnNotFound___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 items];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (id)_itemsWithDependenciesPassingTest:(id)test forItems:(id)items
{
  testCopy = test;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__HFItemManager__itemsWithDependenciesPassingTest_forItems___block_invoke;
  v10[3] = &unk_277DFBC68;
  v10[4] = self;
  v11 = testCopy;
  v7 = testCopy;
  v8 = [items na_filter:v10];

  return v8;
}

BOOL __60__HFItemManager__itemsWithDependenciesPassingTest_forItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    v4 = 1;
  }

  else
  {
    v5 = [*(a1 + 32) childItemsForItem:v3];
    v6 = [*(a1 + 32) _itemsWithDependenciesPassingTest:*(a1 + 40) forItems:v5];
    v4 = [v6 count] != 0;
  }

  return v4;
}

- (id)_dependentHomeKitObjectsOfClass:(Class)class inHomeKitObjects:(id)objects
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__HFItemManager__dependentHomeKitObjectsOfClass_inHomeKitObjects___block_invoke;
  v6[3] = &__block_descriptor_40_e27_B16__0___HFHomeKitObject__8lu32l8;
  v6[4] = class;
  v4 = [objects na_filter:v6];

  return v4;
}

- (id)_itemsFilteredToExisting:(id)existing
{
  existingCopy = existing;
  _allItemsIncludingInternalItems = [(HFItemManager *)self _allItemsIncludingInternalItems];
  v6 = [existingCopy na_setByIntersectingWithSet:_allItemsIncludingInternalItems];

  return v6;
}

- (id)_directItemDependenciesForHomeKitObjects:(id)objects class:(Class)class
{
  objectsCopy = objects;
  v11 = MEMORY[0x277D85DD0];
  v12 = objectsCopy;
  classCopy = class;
  v7 = objectsCopy;
  v8 = [(HFItemManager *)self _allItemsIncludingInternalItems:v11];
  v9 = [(HFItemManager *)self _itemsWithDependenciesPassingTest:&v11 forItems:v8];

  return v9;
}

uint64_t __64__HFItemManager__directItemDependenciesForHomeKitObjects_class___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 latestResults];
  v5 = [v4 objectForKeyedSubscript:@"dependentHomeKitObjects"];
  v6 = [v5 intersectsSet:*(a1 + 32)];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v3 latestResults];
    v9 = [v8 objectForKeyedSubscript:@"dependentHomeKitClasses"];

    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      while (2)
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if ([*(a1 + 40) isSubclassOfClass:*(*(&v15 + 1) + 8 * v13)])
          {
            v7 = 1;
            goto LABEL_13;
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
LABEL_13:
  }

  return v7;
}

- (id)_itemsToUpdateForModifiedMetadataForHomes:(id)homes
{
  homesCopy = homes;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:homesCopy class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForModifiedActionSets:(id)sets
{
  setsCopy = sets;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:setsCopy class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  v7 = [setsCopy na_map:&__block_literal_global_436];

  na_setByFlattening = [v7 na_setByFlattening];

  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedActions:na_setByFlattening];
  [v6 unionSet:v9];

  return v6;
}

- (id)_itemsToUpdateForModifiedActions:(id)actions
{
  actionsCopy = actions;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:actionsCopy class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForModifiedServiceGroups:(id)groups
{
  groupsCopy = groups;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:groupsCopy class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  v7 = [groupsCopy na_map:&__block_literal_global_441];

  na_setByFlattening = [v7 na_setByFlattening];

  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedServices:na_setByFlattening];
  [v6 unionSet:v9];

  v10 = [na_setByFlattening na_map:&__block_literal_global_444];
  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v10];
  [v6 unionSet:v11];

  return v6;
}

id __56__HFItemManager__itemsToUpdateForModifiedServiceGroups___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 services];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)_itemsToUpdateForModifiedZones:(id)zones
{
  zonesCopy = zones;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:zonesCopy class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  v7 = [zonesCopy na_map:&__block_literal_global_448];

  na_setByFlattening = [v7 na_setByFlattening];

  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedRooms:na_setByFlattening];
  [v6 unionSet:v9];

  return v6;
}

id __48__HFItemManager__itemsToUpdateForModifiedZones___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 rooms];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)_itemsToUpdateForModifiedRooms:(id)rooms
{
  roomsCopy = rooms;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:roomsCopy class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  v7 = [roomsCopy na_map:&__block_literal_global_452];

  na_setByFlattening = [v7 na_setByFlattening];

  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:na_setByFlattening];
  [v6 unionSet:v9];

  return v6;
}

id __48__HFItemManager__itemsToUpdateForModifiedRooms___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 accessories];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)_itemsToUpdateForOutgoingInvitation:(id)invitation
{
  invitationCopy = invitation;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:invitationCopy class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForIncomingInvitation:(id)invitation
{
  invitationCopy = invitation;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:invitationCopy class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForModifiedUsers:(id)users
{
  usersCopy = users;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:usersCopy class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForModifiedTriggers:(id)triggers
{
  triggersCopy = triggers;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:triggersCopy class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  v7 = [triggersCopy na_map:&__block_literal_global_459];
  na_setByFlattening = [v7 na_setByFlattening];

  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedActionSets:na_setByFlattening];
  [v6 unionSet:v9];

  v10 = [triggersCopy na_map:&__block_literal_global_461];

  na_setByFlattening2 = [v10 na_setByFlattening];

  v12 = [(HFItemManager *)self _itemsToUpdateForModifiedEvents:na_setByFlattening2];
  [v6 unionSet:v12];

  return v6;
}

id __51__HFItemManager__itemsToUpdateForModifiedTriggers___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 actionSets];
  v4 = [v2 setWithArray:v3];

  return v4;
}

id __51__HFItemManager__itemsToUpdateForModifiedTriggers___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = MEMORY[0x277CBEB98];
    v4 = [v2 events];
    v5 = [v3 setWithArray:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_itemsToUpdateForModifiedEvents:(id)events
{
  eventsCopy = events;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:eventsCopy class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForModifiedAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:accessoriesCopy class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  v7 = [accessoriesCopy na_map:&__block_literal_global_467];

  na_setByFlattening = [v7 na_setByFlattening];

  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedServices:na_setByFlattening];
  [v6 unionSet:v9];

  return v6;
}

id __54__HFItemManager__itemsToUpdateForModifiedAccessories___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 services];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)_itemsToUpdateForModifiedServices:(id)services
{
  servicesCopy = services;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:servicesCopy class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  v7 = [servicesCopy na_map:&__block_literal_global_469];
  na_setByFlattening = [v7 na_setByFlattening];

  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedCharacteristics:na_setByFlattening];
  [v6 unionSet:v9];

  v10 = [servicesCopy na_map:&__block_literal_global_471_0];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServiceTypes:v10];
  [v6 unionSet:v11];

  return v6;
}

id __51__HFItemManager__itemsToUpdateForModifiedServices___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 characteristics];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)_itemsToUpdateForModifiedServiceTypes:(id)types
{
  v21 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v15 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  _allItemsIncludingInternalItems = [(HFItemManager *)self _allItemsIncludingInternalItems];
  v6 = [_allItemsIncludingInternalItems countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(_allItemsIncludingInternalItems);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        latestResults = [v10 latestResults];
        v12 = [latestResults objectForKeyedSubscript:@"dependentServiceTypes"];
        v13 = [v12 intersectsSet:typesCopy];

        if (v13)
        {
          [v15 addObject:v10];
        }
      }

      v7 = [_allItemsIncludingInternalItems countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v15;
}

- (id)_itemsToUpdateForModifiedCharacteristics:(id)characteristics includeSuppressedCharacteristics:(BOOL)suppressedCharacteristics
{
  v6 = [characteristics mutableCopy];
  if (!suppressedCharacteristics)
  {
    _allSuppressedCharacteristics = [(HFItemManager *)self _allSuppressedCharacteristics];
    [v6 minusSet:_allSuppressedCharacteristics];
  }

  v8 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v6 class:objc_opt_class()];
  v9 = [v8 mutableCopy];

  return v9;
}

- (id)_itemsToUpdateForModifiedResidentDevices:(id)devices
{
  devicesCopy = devices;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:devicesCopy class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForModifiedCameras:(id)cameras
{
  camerasCopy = cameras;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:camerasCopy class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForModifiedSignificantEvents:(id)events
{
  eventsCopy = events;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:eventsCopy class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForModifiedSharingDevices:(id)devices
{
  devicesCopy = devices;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:devicesCopy class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForRemoteAccessChange
{
  _allItemsIncludingInternalItems = [(HFItemManager *)self _allItemsIncludingInternalItems];
  v4 = [(HFItemManager *)self _itemsWithDependenciesPassingTest:&__block_literal_global_477 forItems:_allItemsIncludingInternalItems];

  return v4;
}

uint64_t __52__HFItemManager__itemsToUpdateForRemoteAccessChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"remoteAccessDependency"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)_itemsToUpdateForCurrentHomeChange
{
  _allItemsIncludingInternalItems = [(HFItemManager *)self _allItemsIncludingInternalItems];
  v4 = [(HFItemManager *)self _itemsWithDependenciesPassingTest:&__block_literal_global_479 forItems:_allItemsIncludingInternalItems];

  return v4;
}

uint64_t __51__HFItemManager__itemsToUpdateForCurrentHomeChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"currentHomeDependency"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)_itemsToUpdateForAllowAccessWhileLockedSettingChange
{
  _allItemsIncludingInternalItems = [(HFItemManager *)self _allItemsIncludingInternalItems];
  v3 = [_allItemsIncludingInternalItems na_filter:&__block_literal_global_481];

  return v3;
}

uint64_t __69__HFItemManager__itemsToUpdateForAllowAccessWhileLockedSettingChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"accessWhileLockedSettingDependency"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)_itemsToUpdateForMediaSessionChange:(id)change
{
  v39 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = [MEMORY[0x277CBEB98] na_setWithSafeObject:changeCopy];
  v6 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v5 class:objc_opt_class()];
  v7 = [v6 mutableCopy];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = objc_msgSend_home(self);
  hf_mediaAccessories = [v8 hf_mediaAccessories];

  v10 = [hf_mediaAccessories countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(hf_mediaAccessories);
        }

        v14 = *(*(&v33 + 1) + 8 * i);
        mediaProfile = [v14 mediaProfile];
        mediaSession = [mediaProfile mediaSession];

        if (mediaSession == changeCopy)
        {
          v17 = [MEMORY[0x277CBEB98] setWithObject:v14];
          v18 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v17];
          [v7 unionSet:v18];
        }
      }

      v11 = [hf_mediaAccessories countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v11);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = objc_msgSend_home(self, 0);
  mediaSystems = [v19 mediaSystems];

  v21 = [mediaSystems countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v30;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(mediaSystems);
        }

        v25 = *(*(&v29 + 1) + 8 * j);
        mediaSession2 = [v25 mediaSession];

        if (mediaSession2 == changeCopy)
        {
          v27 = [(HFItemManager *)self _itemsToUpdateForMediaSystemChange:v25];
          [v7 unionSet:v27];
        }
      }

      v22 = [mediaSystems countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v22);
  }

  return v7;
}

- (id)_itemsToUpdateForMediaObjectChange:(id)change
{
  v4 = [MEMORY[0x277CBEB98] na_setWithSafeObject:change];
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];

  v6 = [MEMORY[0x277CBEB98] set];
  v7 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v6 class:objc_opt_class()];
  v8 = [v5 setByAddingObjectsFromSet:v7];

  return v8;
}

- (id)_itemsToUpdateForSiriEndpointProfileObjectChange:(id)change
{
  v4 = [MEMORY[0x277CBEB98] na_setWithSafeObject:change];
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForHomeKitSettingsChange:(id)change
{
  v4 = [MEMORY[0x277CBEB98] na_setWithSafeObject:change];
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForAccessorySettingChanges:(id)changes
{
  changesCopy = changes;
  v5 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HFItemManager__itemsToUpdateForAccessorySettingChanges___block_invoke;
  v9[3] = &unk_277DFBD78;
  v6 = v5;
  v10 = v6;
  selfCopy = self;
  [changesCopy na_each:v9];

  v7 = v6;
  return v6;
}

void __58__HFItemManager__itemsToUpdateForAccessorySettingChanges___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _itemsToUpdateForAccessorySettingChange:a2];
  [v2 unionSet:v3];
}

- (id)_itemsToUpdateForAccessorySettingChange:(id)change
{
  v4 = [MEMORY[0x277CBEB98] na_setWithSafeObject:change];
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForModifiedSoftwareUpdateControllers:(id)controllers
{
  controllersCopy = controllers;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:controllersCopy class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForModifiedSoftwareUpdates:(id)updates
{
  updatesCopy = updates;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:updatesCopy class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForSoftwareUpdateV2ChangeToAccessory:(id)accessory
{
  v4 = [MEMORY[0x277CBEB98] na_setWithSafeObject:accessory];
  v5 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v4];
  v6 = [v5 na_filter:&__block_literal_global_492_0];

  return v6;
}

uint64_t __68__HFItemManager__itemsToUpdateForSoftwareUpdateV2ChangeToAccessory___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"hasSoftwareUpdateV2Dependency"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)_itemsToUpdateForSoftwareUpdateV2ProgressChangeToAccessory:(id)accessory
{
  v4 = [MEMORY[0x277CBEB98] na_setWithSafeObject:accessory];
  v5 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v4];
  v6 = [v5 na_filter:&__block_literal_global_494_0];

  return v6;
}

uint64_t __76__HFItemManager__itemsToUpdateForSoftwareUpdateV2ProgressChangeToAccessory___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"hasSoftwareUpdateProgressV2Dependency"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)_itemsToUpdateForModifiedNetworkConfigurationProfiles:(id)profiles
{
  profilesCopy = profiles;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:profilesCopy class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForModifiedNetworkProtectionGroups:(id)groups
{
  groupsCopy = groups;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:groupsCopy class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForTelevisionProfiles:(id)profiles
{
  profilesCopy = profiles;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:profilesCopy class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__HFItemManager__itemsToUpdateForTelevisionProfiles___block_invoke;
  v10[3] = &unk_277DFBDA0;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [profilesCopy na_each:v10];

  v8 = v7;
  return v7;
}

void __53__HFItemManager__itemsToUpdateForTelevisionProfiles___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = MEMORY[0x277CBEB98];
  v7 = [a2 accessory];
  v5 = [v4 na_setWithSafeObject:v7];
  v6 = [v3 _itemsToUpdateForModifiedAccessories:v5];
  [v2 unionSet:v6];
}

- (id)_itemsToUpdateForLightProfiles:(id)profiles
{
  profilesCopy = profiles;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:profilesCopy class:objc_opt_class()];

  v6 = [v5 mutableCopy];

  return v6;
}

- (id)_itemsToUpdateForModifiedWalletKeyDeviceState:(id)state
{
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  return v6;
}

- (id)_itemsToUpdateForModifiedAccessCodes:(id)codes
{
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  return v6;
}

- (id)_itemsToUpdateForModifiedMetadataForMediaDestinationController:(id)controller
{
  controllerCopy = controller;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:controllerCopy class:objc_opt_class()];

  v6 = [v5 na_filter:&__block_literal_global_504];

  return v6;
}

BOOL __80__HFItemManager__itemsToUpdateForModifiedMetadataForMediaDestinationController___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKey:@"mediaDestinationIdentifier"];
  v4 = v3 != 0;

  return v4;
}

- (id)_itemsToUpdateForModifiedPersonManagers:(id)managers
{
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  return v6;
}

- (id)_itemsToUpdateForModifiedHomePersonManagerSettings:(id)settings
{
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  return v6;
}

- (id)_itemsToUpdateForModifiedPersons:(id)persons
{
  personsCopy = persons;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:personsCopy class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  v7 = [personsCopy na_map:&__block_literal_global_510];

  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedUUIDs:v7];
  [v6 unionSet:v8];

  return v6;
}

- (id)_itemsToUpdateForModifiedUUIDs:(id)ds
{
  dsCopy = ds;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__HFItemManager__itemsToUpdateForModifiedUUIDs___block_invoke;
  v9[3] = &unk_277DF4B70;
  v10 = dsCopy;
  v5 = dsCopy;
  _allItemsIncludingInternalItems = [(HFItemManager *)self _allItemsIncludingInternalItems];
  v7 = [(HFItemManager *)self _itemsWithDependenciesPassingTest:v9 forItems:_allItemsIncludingInternalItems];

  return v7;
}

uint64_t __48__HFItemManager__itemsToUpdateForModifiedUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 latestResults];
  v4 = [v3 objectForKeyedSubscript:@"dependentHomeKitObjects"];

  v5 = [v4 na_map:&__block_literal_global_513];
  v6 = [*(a1 + 32) intersectsSet:v5];

  return v6;
}

id __48__HFItemManager__itemsToUpdateForModifiedUUIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v3 = v2;
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    v2 = [v5 hf_linkedAccessory];
  }

  v6 = [v2 conformsToProtocol:&unk_282541CB0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((v6 & 1) != 0 || (isKindOfClass) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = [v2 uniqueIdentifier];
  }

  else
  {
    NSLog(&cfstr_ObjectIsListed.isa, v2);
    v8 = 0;
  }

  return v8;
}

- (id)_invalidationReasonsForAddedOrRemovedAccessory:(id)accessory
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = @"accessory";
  v4 = MEMORY[0x277CBEA60];
  accessoryCopy = accessory;
  v6 = [v4 arrayWithObjects:&v13 count:1];
  room = [accessoryCopy room];

  v8 = objc_msgSend_home(self);
  roomForEntireHome = [v8 roomForEntireHome];
  v10 = [room isEqual:roomForEntireHome];

  if (v10)
  {
    v11 = [v6 arrayByAddingObject:@"room"];

    v6 = v11;
  }

  return v6;
}

- (id)_invalidationReasonsForAddedOrRemovedMediaSystem:(id)system
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = @"mediaSystem";
  v4 = MEMORY[0x277CBEA60];
  systemCopy = system;
  v6 = [v4 arrayWithObjects:&v13 count:1];
  hf_parentRoom = [systemCopy hf_parentRoom];

  v8 = objc_msgSend_home(self);
  roomForEntireHome = [v8 roomForEntireHome];
  v10 = [hf_parentRoom isEqual:roomForEntireHome];

  if (v10)
  {
    v11 = [v6 arrayByAddingObject:@"room"];

    v6 = v11;
  }

  return v6;
}

- (id)_itemsToUpdateForMediaSystemChange:(id)change
{
  changeCopy = change;
  accessories = [changeCopy accessories];
  v6 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:accessories];

  v7 = [MEMORY[0x277CBEB98] setWithObject:changeCopy];

  v8 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v7 class:objc_opt_class()];
  v9 = [v6 setByAddingObjectsFromSet:v8];

  return v9;
}

- (id)_itemsToUpdateForMediaProfileContainer:(id)container
{
  containerCopy = container;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HFItemManager *)self _itemsToUpdateForMediaSystemChange:containerCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      accessories = [containerCopy accessories];
      v7 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:accessories];

      goto LABEL_7;
    }

    NSLog(&cfstr_Mediaprofileco_1.isa, containerCopy);
    v5 = [MEMORY[0x277CBEB98] set];
  }

  v7 = v5;
LABEL_7:

  return v7;
}

- (id)_itemsToUpdateForHomeKitKeyPaths:(id)paths forHomeKitObjectIdentifiers:(id)identifiers
{
  pathsCopy = paths;
  identifiersCopy = identifiers;
  v13 = MEMORY[0x277D85DD0];
  v14 = identifiersCopy;
  v15 = pathsCopy;
  v8 = pathsCopy;
  v9 = identifiersCopy;
  v10 = [(HFItemManager *)self _allItemsIncludingInternalItems:v13];
  v11 = [(HFItemManager *)self _itemsWithDependenciesPassingTest:&v13 forItems:v10];

  return v11;
}

uint64_t __78__HFItemManager__itemsToUpdateForHomeKitKeyPaths_forHomeKitObjectIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 latestResults];
  v5 = [v4 objectForKeyedSubscript:@"HFResultSettingParentIdentifiersDependenciesKey"];
  v6 = [v5 intersectsSet:*(a1 + 32)];

  if (v6)
  {
    objc_opt_class();
    v7 = [v3 latestResults];
    v8 = [v7 objectForKeyedSubscript:@"HFResultSettingKeyPathsDependenciesKey"];
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = [*(a1 + 40) intersectsSet:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_allDisplayedItemsIncludingInternalItems
{
  allDisplayedItems = [(HFItemManager *)self allDisplayedItems];
  _internalItems = [(HFItemManager *)self _internalItems];
  v5 = [allDisplayedItems setByAddingObjectsFromSet:_internalItems];

  return v5;
}

- (id)_indexPathForItem:(id)item inDisplayedItemsArray:(id)array
{
  itemCopy = item;
  arrayCopy = array;
  if (arrayCopy && (v8 = -[HFItemManager _sectionForItem:](self, "_sectionForItem:", itemCopy), v9 = [arrayCopy indexOfObjectIdenticalTo:itemCopy], v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v10 = [MEMORY[0x277CCAA70] indexPathForItem:v9 inSection:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)temperatureUnitObserver:(id)observer didChangeTemperatureUnit:(BOOL)unit
{
  v6 = [(HFItemManager *)self _allItemsIncludingInternalItems:observer];
  v8 = [(HFItemManager *)self _itemsWithDependenciesPassingTest:&__block_literal_global_530 forItems:v6];

  v7 = [(HFItemManager *)self updateResultsForItems:v8 senderSelector:a2];
}

uint64_t __66__HFItemManager_temperatureUnitObserver_didChangeTemperatureUnit___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"tempreatureUnitDependency"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)settingsInvalidatedForNotificationCenter:(id)center
{
  _allItemsIncludingInternalItems = [(HFItemManager *)self _allItemsIncludingInternalItems];
  v7 = [_allItemsIncludingInternalItems na_filter:&__block_literal_global_532];

  v6 = [(HFItemManager *)self updateResultsForItems:v7 senderSelector:a2];
}

uint64_t __58__HFItemManager_settingsInvalidatedForNotificationCenter___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"userNotificationSettingsDependency"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)_debug_itemManagerDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  delegate = [(HFItemManager *)self delegate];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  delegate2 = [(HFItemManager *)self delegate];
  v10 = objc_msgSend_home(self);
  hf_prettyDescription = [v10 hf_prettyDescription];
  disableUpdateReasons = [(HFItemManager *)self disableUpdateReasons];
  v13 = [v3 stringWithFormat:@"<%@:%p> delegate: <%@:%p> home: %@ disableUpdateReasons: {%@}", v5, self, v8, delegate2, hf_prettyDescription, disableUpdateReasons];

  return v13;
}

- (unint64_t)numberOfSections
{
  diffableDataSource = [(HFItemManager *)self diffableDataSource];
  snapshot = [diffableDataSource snapshot];
  numberOfSections = [snapshot numberOfSections];

  return numberOfSections;
}

- (id)titleForSection:(unint64_t)section
{
  diffableDataSource = [(HFItemManager *)self diffableDataSource];
  snapshot = [diffableDataSource snapshot];
  sectionIdentifiers = [snapshot sectionIdentifiers];
  v7 = [sectionIdentifiers objectAtIndexedSubscript:section];
  headerTitle = [v7 headerTitle];

  return headerTitle;
}

- (id)attributedTitleForSection:(unint64_t)section
{
  diffableDataSource = [(HFItemManager *)self diffableDataSource];
  snapshot = [diffableDataSource snapshot];
  sectionIdentifiers = [snapshot sectionIdentifiers];
  v7 = [sectionIdentifiers objectAtIndexedSubscript:section];
  attributedHeaderTitle = [v7 attributedHeaderTitle];

  return attributedHeaderTitle;
}

- (id)footerTitleForSection:(unint64_t)section
{
  diffableDataSource = [(HFItemManager *)self diffableDataSource];
  snapshot = [diffableDataSource snapshot];
  sectionIdentifiers = [snapshot sectionIdentifiers];
  v7 = [sectionIdentifiers objectAtIndexedSubscript:section];
  footerTitle = [v7 footerTitle];

  return footerTitle;
}

- (id)attributedFooterTitleForSection:(unint64_t)section
{
  diffableDataSource = [(HFItemManager *)self diffableDataSource];
  snapshot = [diffableDataSource snapshot];
  sectionIdentifiers = [snapshot sectionIdentifiers];
  v7 = [sectionIdentifiers objectAtIndexedSubscript:section];
  attributedFooterTitle = [v7 attributedFooterTitle];

  return attributedFooterTitle;
}

- (id)displayedItemsInSection:(unint64_t)section
{
  diffableDataSource = [(HFItemManager *)self diffableDataSource];
  snapshot = [diffableDataSource snapshot];
  sectionIdentifiers = [snapshot sectionIdentifiers];
  v8 = [sectionIdentifiers count];

  if (v8 <= section)
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  else
  {
    diffableDataSource2 = [(HFItemManager *)self diffableDataSource];
    snapshot2 = [diffableDataSource2 snapshot];
    sectionIdentifiers2 = [snapshot2 sectionIdentifiers];
    v12 = [sectionIdentifiers2 objectAtIndexedSubscript:section];

    diffableDataSource3 = [(HFItemManager *)self diffableDataSource];
    snapshot3 = [diffableDataSource3 snapshot];
    v15 = [snapshot3 itemIdentifiersInSectionWithIdentifier:v12];
  }

  return v15;
}

- (id)displayedItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFItemManager.m" lineNumber:2524 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
  }

  diffableDataSource = [(HFItemManager *)self diffableDataSource];
  v7 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  return v7;
}

- (unint64_t)sectionIndexForDisplayedSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  diffableDataSource = [(HFItemManager *)self diffableDataSource];
  snapshot = [diffableDataSource snapshot];
  sectionIdentifiers = [snapshot sectionIdentifiers];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__HFItemManager_sectionIndexForDisplayedSectionIdentifier___block_invoke;
  v11[3] = &unk_277DFBC40;
  v12 = identifierCopy;
  v8 = identifierCopy;
  v9 = [sectionIdentifiers indexOfObjectPassingTest:v11];

  return v9;
}

uint64_t __59__HFItemManager_sectionIndexForDisplayedSectionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)displayedSectionIdentifierForSectionIndex:(unint64_t)index
{
  v24 = *MEMORY[0x277D85DE8];
  diffableDataSource = [(HFItemManager *)self diffableDataSource];
  snapshot = [diffableDataSource snapshot];
  sectionIdentifiers = [snapshot sectionIdentifiers];
  v8 = [sectionIdentifiers count];

  if (v8 <= index)
  {
    v14 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      diffableDataSource2 = [(HFItemManager *)self diffableDataSource];
      snapshot2 = [diffableDataSource2 snapshot];
      v18 = 136315650;
      v19 = "[HFItemManager displayedSectionIdentifierForSectionIndex:]";
      v20 = 2112;
      v21 = snapshot2;
      v22 = 2048;
      indexCopy = index;
      _os_log_error_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_ERROR, "(%s) self.diffableDataSource.snapshot = %@. sectionIndex = %lu", &v18, 0x20u);
    }

    identifier = 0;
  }

  else
  {
    diffableDataSource3 = [(HFItemManager *)self diffableDataSource];
    snapshot3 = [diffableDataSource3 snapshot];
    sectionIdentifiers2 = [snapshot3 sectionIdentifiers];
    v12 = [sectionIdentifiers2 objectAtIndexedSubscript:index];
    identifier = [v12 identifier];
  }

  return identifier;
}

- (id)indexPathForItem:(id)item
{
  itemCopy = item;
  diffableDataSource = [(HFItemManager *)self diffableDataSource];
  v6 = [diffableDataSource indexPathForItemIdentifier:itemCopy];

  return v6;
}

- (NSSet)allDisplayedItems
{
  v2 = MEMORY[0x277CBEB98];
  diffableDataSource = [(HFItemManager *)self diffableDataSource];
  snapshot = [diffableDataSource snapshot];
  itemIdentifiers = [snapshot itemIdentifiers];
  v6 = [v2 setWithArray:itemIdentifiers];

  return v6;
}

- (id)itemSectionForSectionIndex:(unint64_t)index
{
  diffableDataSource = [(HFItemManager *)self diffableDataSource];
  snapshot = [diffableDataSource snapshot];
  sectionIdentifiers = [snapshot sectionIdentifiers];
  v7 = [sectionIdentifiers objectAtIndexedSubscript:index];

  return v7;
}

- (void)setDiffableDataSource:(id)source
{
  sourceCopy = source;
  if (([(HFDiffableDataSource *)self->_diffableDataSource isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_diffableDataSource, source);
    uIDiffableDataInitializationFuture = [(HFItemManager *)self UIDiffableDataInitializationFuture];
    [uIDiffableDataInitializationFuture finishWithNoResult];
  }
}

- (void)setUpCustomDiffableDataSource
{
  diffableDataSource = [(HFItemManager *)self diffableDataSource];

  if (diffableDataSource)
  {
    return;
  }

  if (![(HFItemManager *)self useCustomDiffableDataSource])
  {
    delegate = [(HFItemManager *)self delegate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      delegate2 = [(HFItemManager *)self delegate];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        diffableDataSourceDisabled = 1;
        goto LABEL_8;
      }
    }

    diffableDataSourceDisabled = self->_diffableDataSourceDisabled;
LABEL_8:
    [(HFItemManager *)self setUseCustomDiffableDataSource:diffableDataSourceDisabled];
  }

  if ([(HFItemManager *)self useCustomDiffableDataSource])
  {
    v8 = objc_alloc_init(HFCustomDiffableDataSource);
    diffableDataSource = self->_diffableDataSource;
    self->_diffableDataSource = v8;
  }
}

- (void)recalculateVisibilityAndSortAllItems
{
  v4 = [MEMORY[0x277CBEB98] set];
  v3 = [MEMORY[0x277CBEB98] set];
  [(HFItemManager *)self _updateRepresentationForExternalItemsWithUpdatedOrAddedItems:v4 removedItems:v3 logger:0];
}

- (void)_batchItemUpdateFutureWrappers:(id)wrappers removedItems:(id)items batchingIntervals:(id)intervals logger:(id)logger
{
  v57 = *MEMORY[0x277D85DE8];
  wrappersCopy = wrappers;
  itemsCopy = items;
  intervalsCopy = intervals;
  loggerCopy = logger;
  if (![intervalsCopy count])
  {
    NSLog(&cfstr_NoBatchingInte.isa);
  }

  if ([intervalsCopy count] && (objc_msgSend(wrappersCopy, "count") || objc_msgSend(itemsCopy, "count")))
  {
    if (loggerCopy)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      loggerActivity = [loggerCopy loggerActivity];
      os_activity_scope_enter(loggerActivity, &state);

      v15 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [wrappersCopy count];
        v17 = [itemsCopy count];
        firstObject = [intervalsCopy firstObject];
        [firstObject floatValue];
        *buf = 67109632;
        *&buf[4] = v16;
        LOWORD(v54) = 1024;
        *(&v54 + 2) = v17;
        HIWORD(v54) = 2048;
        *&v55 = v19;
        _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "Requested batched update for %d items (+%d removed). Processing in: %.2f sec...", buf, 0x18u);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v34 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [wrappersCopy count];
        v36 = [itemsCopy count];
        firstObject2 = [intervalsCopy firstObject];
        [firstObject2 floatValue];
        *buf = 67109632;
        *&buf[4] = v35;
        LOWORD(v54) = 1024;
        *(&v54 + 2) = v36;
        HIWORD(v54) = 2048;
        *&v55 = v38;
        _os_log_impl(&dword_20D9BF000, v34, OS_LOG_TYPE_DEFAULT, "Requested batched update for %d items (+%d removed). Processing in: %.2f sec...", buf, 0x18u);
      }
    }

    objc_initWeak(&state, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __86__HFItemManager__batchItemUpdateFutureWrappers_removedItems_batchingIntervals_logger___block_invoke;
    aBlock[3] = &unk_277DFBDF0;
    objc_copyWeak(&v51, &state);
    v20 = wrappersCopy;
    v47 = v20;
    v48 = itemsCopy;
    v49 = loggerCopy;
    v21 = intervalsCopy;
    v50 = v21;
    v22 = _Block_copy(aBlock);
    [(HFItemManager *)self setUpCustomDiffableDataSource];
    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    *buf = 0;
    v54 = buf;
    v55 = 0x2020000000;
    v56 = 0;
    firstObject3 = [v21 firstObject];
    [firstObject3 doubleValue];
    v26 = v25;

    if (v26 >= 0.00000011920929)
    {
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __86__HFItemManager__batchItemUpdateFutureWrappers_removedItems_batchingIntervals_logger___block_invoke_2;
      v43[3] = &unk_277DFBE18;
      v45 = buf;
      v44 = v22;
      v27 = [mainThreadScheduler afterDelay:v43 performBlock:v26];
    }

    else
    {
      v54[24] = 1;
      v22[2](v22);
      v27 = 0;
    }

    v28 = MEMORY[0x277D2C900];
    v29 = [_HFItemUpdateFutureWrapper futuresFromWrappers:v20];
    v30 = [v28 combineAllFutures:v29 ignoringErrors:1 scheduler:mainThreadScheduler];

    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __86__HFItemManager__batchItemUpdateFutureWrappers_removedItems_batchingIntervals_logger___block_invoke_3;
    v39[3] = &unk_277DFBE40;
    v42 = buf;
    v31 = v27;
    v40 = v31;
    v32 = v22;
    v41 = v32;
    v33 = [v30 addCompletionBlock:v39];

    _Block_object_dispose(buf, 8);
    objc_destroyWeak(&v51);
    objc_destroyWeak(&state);
  }
}

void __86__HFItemManager__batchItemUpdateFutureWrappers_removedItems_batchingIntervals_logger___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained _processBatchUpdateForFutureWrappers:*(a1 + 32) removedItems:*(a1 + 40) logger:*(a1 + 48)];
  v3 = [*(a1 + 56) mutableCopy];
  if ([v3 count] >= 2)
  {
    [v3 removeObjectAtIndex:0];
  }

  v4 = [MEMORY[0x277CBEB98] set];
  [WeakRetained _batchItemUpdateFutureWrappers:v2 removedItems:v4 batchingIntervals:v3 logger:*(a1 + 48)];
}

uint64_t __86__HFItemManager__batchItemUpdateFutureWrappers_removedItems_batchingIntervals_logger___block_invoke_2(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t __86__HFItemManager__batchItemUpdateFutureWrappers_removedItems_batchingIntervals_logger___block_invoke_3(uint64_t result)
{
  v2 = *(*(result + 48) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    v3 = result;
    *(v2 + 24) = 1;
    [*(result + 32) cancel];
    v4 = *(*(v3 + 40) + 16);

    return v4();
  }

  return result;
}

- (id)_processBatchUpdateForFutureWrappers:(id)wrappers removedItems:(id)items logger:(id)logger
{
  v46 = *MEMORY[0x277D85DE8];
  wrappersCopy = wrappers;
  itemsCopy = items;
  loggerCopy = logger;
  v8 = [wrappersCopy mutableCopy];
  v9 = [MEMORY[0x277CBEB58] set];
  v10 = [MEMORY[0x277CBEB58] set];
  v37 = [MEMORY[0x277CBEB58] set];
  v36 = [MEMORY[0x277CBEB58] set];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = wrappersCopy;
  v12 = [v11 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v38 + 1) + 8 * i);
        future = [v16 future];
        isFinished = [future isFinished];

        if (isFinished)
        {
          v19 = [v16 isInternal] ? v9 : v10;
          item = [v16 item];
          [v19 addObject:item];

          [v8 removeObject:v16];
          outcome = [v16 outcome];
          outcomeType = [outcome outcomeType];

          if (outcomeType == 2)
          {
            if ([v16 isInternal])
            {
              v23 = v36;
            }

            else
            {
              v23 = v37;
            }

            item2 = [v16 item];
            [v23 addObject:item2];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v13);
  }

  if ([v9 count])
  {
    [(HFItemManager *)self _updateRepresentationForInternalItemsWithUpdatedItems:v36];
  }

  if ([v10 count] || objc_msgSend(itemsCopy, "count"))
  {
    [(HFItemManager *)self _updateRepresentationForExternalItemsWithUpdatedOrAddedItems:v37 removedItems:itemsCopy logger:loggerCopy];
  }

  if (loggerCopy)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    loggerActivity = [loggerCopy loggerActivity];
    os_activity_scope_enter(loggerActivity, &state);

    v26 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v9 count];
      v28 = [v10 count];
      *buf = 67109120;
      v43 = v28 + v27;
      _os_log_impl(&dword_20D9BF000, v26, OS_LOG_TYPE_DEFAULT, "Processed batch with %d finished items", buf, 8u);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    v30 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v9 count];
      v32 = [v10 count];
      LODWORD(state.opaque[0]) = 67109120;
      HIDWORD(state.opaque[0]) = v32 + v31;
      _os_log_impl(&dword_20D9BF000, v30, OS_LOG_TYPE_DEFAULT, "Processed batch with %d finished items", &state, 8u);
    }
  }

  return v8;
}

- (void)_updateExternalUpdatesEnabled:(BOOL)enabled reloadItems:(BOOL)items
{
  itemsCopy = items;
  enabledCopy = enabled;
  v20 = *MEMORY[0x277D85DE8];
  if (enabled && items)
  {
    uIDiffableDataInitializationFuture = [(HFItemManager *)self UIDiffableDataInitializationFuture];
    isFinished = [uIDiffableDataInitializationFuture isFinished];

    if ((isFinished & 1) == 0)
    {
      objc_initWeak(location, self);
      uIDiffableDataInitializationFuture2 = [(HFItemManager *)self UIDiffableDataInitializationFuture];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __59__HFItemManager__updateExternalUpdatesEnabled_reloadItems___block_invoke;
      v15[3] = &unk_277DFBE68;
      objc_copyWeak(&v16, location);
      v11 = [uIDiffableDataInitializationFuture2 addCompletionBlock:v15];

      objc_destroyWeak(&v16);
      objc_destroyWeak(location);
    }
  }

  v12 = HFLogForCategory(0x2CuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "Disabling";
    if (enabledCopy)
    {
      v13 = "Enabling";
    }

    *location = 138412546;
    *&location[4] = self;
    v18 = 2080;
    v19 = v13;
    _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "%@: %s updates", location, 0x16u);
  }

  if (enabledCopy)
  {
    [(HFItemManager *)self _registerForExternalUpdates];
    if (itemsCopy)
    {
      v14 = [(HFItemManager *)self reloadAndUpdateAllItemsFromSenderSelector:a2];
    }
  }

  else
  {
    [(HFItemManager *)self _unregisterForExternalUpdates];
  }
}

void __59__HFItemManager__updateExternalUpdatesEnabled_reloadItems___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained recalculateVisibilityAndSortAllItems];
}

- (void)_updateRepresentationForExternalItemsWithUpdatedOrAddedItems:(id)items removedItems:(id)removedItems logger:(id)logger
{
  itemsCopy = items;
  removedItemsCopy = removedItems;
  loggerCopy = logger;
  [(HFItemManager *)self setUpCustomDiffableDataSource];
  firstFastUpdateFuture = [(HFItemManager *)self firstFastUpdateFuture];
  isFinished = [firstFastUpdateFuture isFinished];

  if ((isFinished & 1) == 0)
  {
    [(HFItemManager *)self _prefetchResourcesIfNeededForItems:itemsCopy];
  }

  if ([(HFItemManager *)self useCustomDiffableDataSource])
  {
    [(HFItemManager *)self _updateRepresentationWithCustomDiffableDataSourceForExternalItemsWithUpdatedOrAddedItems:itemsCopy removedItems:removedItemsCopy logger:loggerCopy];
    v12 = MEMORY[0x277D2C900];
    v13 = MEMORY[0x277CBEB98];
    diffableDataSource = [(HFItemManager *)self diffableDataSource];
    snapshot = [diffableDataSource snapshot];
    itemIdentifiers = [snapshot itemIdentifiers];
    v17 = [v13 setWithArray:itemIdentifiers];
    v18 = [v12 futureWithResult:v17];
    [(HFItemManager *)self setLatestSnapshotGenerationFuture:v18];
  }

  else
  {
    diffableDataSource = [(HFItemManager *)self _updateRepresentationWithUIDiffableDataSourceForExternalItemsWithUpdatedOrAddedItems:itemsCopy removedItems:removedItemsCopy logger:loggerCopy];
    [(HFItemManager *)self setLatestSnapshotGenerationFuture:diffableDataSource];
  }
}

- (void)_updateRepresentationWithCustomDiffableDataSourceForExternalItemsWithUpdatedOrAddedItems:(id)items removedItems:(id)removedItems logger:(id)logger
{
  v54 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  loggerCopy = logger;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  allItems = [(HFItemManager *)self allItems];
  if ([allItems count])
  {
    v10 = [(HFItemManager *)self _itemsToHideInSet:allItems];
    v11 = [allItems na_setByRemovingObjectsFromSet:v10];

    allItems = v11;
  }

  sections = [(HFItemManager *)self sections];

  sections2 = [(HFItemManager *)self sections];
  v14 = [sections2 copy];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = [MEMORY[0x277CBEB98] set];
    v16 = [(HFItemManager *)self _buildSectionsWithDisplayedItems:v17];
  }

  v18 = [(HFItemManager *)self _buildSectionsWithDisplayedItems:allItems];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __126__HFItemManager__updateRepresentationWithCustomDiffableDataSourceForExternalItemsWithUpdatedOrAddedItems_removedItems_logger___block_invoke;
  v46[3] = &unk_277DFBE90;
  v38 = itemsCopy;
  v39 = v16;
  v47 = v38;
  v19 = [HFGroupedItemDiff diffFromGroups:v16 toGroups:v18 changeTest:v46];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __126__HFItemManager__updateRepresentationWithCustomDiffableDataSourceForExternalItemsWithUpdatedOrAddedItems_removedItems_logger___block_invoke_2;
  aBlock[3] = &unk_277DF3370;
  aBlock[4] = self;
  v20 = v18;
  v45 = v20;
  v21 = _Block_copy(aBlock);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __126__HFItemManager__updateRepresentationWithCustomDiffableDataSourceForExternalItemsWithUpdatedOrAddedItems_removedItems_logger___block_invoke_3;
  v41[3] = &unk_277DF32A8;
  v41[4] = self;
  v22 = v19;
  v42 = v22;
  v23 = loggerCopy;
  v43 = v23;
  v24 = _Block_copy(v41);
  allOperations = [v22 allOperations];
  v26 = [allOperations count];

  if (v26)
  {
    if (v23)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      loggerActivity = [v23 loggerActivity];
      os_activity_scope_enter(loggerActivity, &state);

      v28 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        selfCopy4 = self;
        v50 = 2112;
        v51 = v22;
        v52 = 1024;
        v53 = sections == 0;
        _os_log_impl(&dword_20D9BF000, v28, OS_LOG_TYPE_DEFAULT, "%@ processing item diff %@ (initial update: %d)", buf, 0x1Cu);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v36 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        selfCopy4 = self;
        v50 = 2112;
        v51 = v22;
        v52 = 1024;
        v53 = sections == 0;
        _os_log_impl(&dword_20D9BF000, v36, OS_LOG_TYPE_DEFAULT, "%@ processing item diff %@ (initial update: %d)", buf, 0x1Cu);
      }
    }

    v29 = [[HFItemManagerDelegateUpdateRequest alloc] initWithChanges:v22 isInitialUpdate:sections == 0 applyChangesBlock:v21 issueDelegateMessagesBlock:v24];
    delegate = [(HFItemManager *)self delegate];
    v31 = objc_opt_respondsToSelector();

    if (v31)
    {
      delegate2 = [(HFItemManager *)self delegate];
      [delegate2 itemManager:self performUpdateRequest:v29];

      if (![(HFItemManagerDelegateUpdateRequest *)v29 debug_wasPerformed])
      {
        delegate3 = [(HFItemManager *)self delegate];
        NSLog(&cfstr_TheHfitemmanag.isa, self, delegate3);
      }
    }

    else
    {
      [(HFItemManagerDelegateUpdateRequest *)v29 performWithOptions:0];
    }
  }

  else
  {
    if (v23)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      loggerActivity2 = [v23 loggerActivity];
      os_activity_scope_enter(loggerActivity2, &state);

      v35 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy4 = self;
        v50 = 1024;
        LODWORD(v51) = sections == 0;
        _os_log_impl(&dword_20D9BF000, v35, OS_LOG_TYPE_DEFAULT, "%@ processed item diff, but there are no changes (initial update: %d)", buf, 0x12u);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v37 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy4 = self;
        v50 = 1024;
        LODWORD(v51) = sections == 0;
        _os_log_impl(&dword_20D9BF000, v37, OS_LOG_TYPE_DEFAULT, "%@ processed item diff, but there are no changes (initial update: %d)", buf, 0x12u);
      }
    }

    v21[2](v21);
  }

  [(HFItemManager *)self _updateOverallLoadingStateAndNotifyDelegate];
}

void __126__HFItemManager__updateRepresentationWithCustomDiffableDataSourceForExternalItemsWithUpdatedOrAddedItems_removedItems_logger___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setSections:*(a1 + 40)];
  objc_opt_class();
  v2 = [*(a1 + 32) diffableDataSource];
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  [v4 setSections:*(a1 + 40)];
}

- (void)reloadUIRepresentationForItems:(id)items withAnimation:(BOOL)animation
{
  animationCopy = animation;
  itemsCopy = items;
  diffableDataSource = [(HFItemManager *)self diffableDataSource];
  snapshot = [diffableDataSource snapshot];

  [snapshot reloadItemsWithIdentifiers:itemsCopy];
  [(HFItemManager *)self _applyReloadSnapshot:snapshot withAnimation:animationCopy];
}

- (void)reconfigureUIRepresentationForItems:(id)items withAnimation:(BOOL)animation
{
  animationCopy = animation;
  itemsCopy = items;
  diffableDataSource = [(HFItemManager *)self diffableDataSource];
  snapshot = [diffableDataSource snapshot];

  [snapshot reconfigureItemsWithIdentifiers:itemsCopy];
  [(HFItemManager *)self _applyReloadSnapshot:snapshot withAnimation:animationCopy];
}

- (void)reloadUIRepresentationForSections:(id)sections withAnimation:(BOOL)animation
{
  animationCopy = animation;
  sectionsCopy = sections;
  diffableDataSource = [(HFItemManager *)self diffableDataSource];
  snapshot = [diffableDataSource snapshot];

  [snapshot reloadSectionsWithIdentifiers:sectionsCopy];
  [(HFItemManager *)self _applyReloadSnapshot:snapshot withAnimation:animationCopy];
}

- (void)reloadUIRepresentationWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  diffableDataSource = [(HFItemManager *)self diffableDataSource];
  snapshot = [diffableDataSource snapshot];

  [(HFItemManager *)self _applyReloadSnapshot:snapshot withAnimation:animationCopy];
}

- (HFItemManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)moveItemFromIndexPath:(id)path toIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  section = [pathCopy section];
  if (section == [indexPathCopy section])
  {
    v9 = [(HFItemManager *)self displayedItemAtIndexPath:pathCopy];
    v10 = [(HFItemManager *)self displayedItemAtIndexPath:indexPathCopy];
    section2 = [pathCopy section];
    diffableDataSource = [(HFItemManager *)self diffableDataSource];
    snapshot = [diffableDataSource snapshot];

    v14 = [pathCopy row];
    if (v14 < [indexPathCopy row])
    {
      [snapshot moveItemWithIdentifier:v9 afterItemWithIdentifier:v10];
    }

    v15 = [pathCopy row];
    if (v15 > [indexPathCopy row])
    {
      [snapshot moveItemWithIdentifier:v9 beforeItemWithIdentifier:v10];
    }

    v16 = MEMORY[0x277D2C900];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __71__HFItemManager_DiffableDataSource__moveItemFromIndexPath_toIndexPath___block_invoke;
    v20[3] = &unk_277DF2770;
    v21 = snapshot;
    v22 = section2;
    v17 = snapshot;
    futureWithNoResult = [v16 futureWithBlock:v20];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

void __71__HFItemManager_DiffableDataSource__moveItemFromIndexPath_toIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 sectionIdentifiers];
  v7 = [v5 objectAtIndexedSubscript:*(a1 + 40)];

  v6 = [*(a1 + 32) itemIdentifiersInSectionWithIdentifier:v7];
  [v4 finishWithResult:v6];
}

- (void)_applyReloadSnapshot:(id)snapshot withAnimation:(BOOL)animation
{
  animationCopy = animation;
  snapshotCopy = snapshot;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__HFItemManager_DiffableDataSource___applyReloadSnapshot_withAnimation___block_invoke;
  aBlock[3] = &unk_277DF3370;
  aBlock[4] = self;
  v7 = snapshotCopy;
  v14 = v7;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (animationCopy)
  {
    v8[2](v8);
  }

  else
  {
    v10 = MEMORY[0x277D75D18];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__HFItemManager_DiffableDataSource___applyReloadSnapshot_withAnimation___block_invoke_4;
    v11[3] = &unk_277DFF168;
    v12 = v8;
    [v10 performWithoutAnimation:v11];
  }
}

void __72__HFItemManager_DiffableDataSource___applyReloadSnapshot_withAnimation___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __72__HFItemManager_DiffableDataSource___applyReloadSnapshot_withAnimation___block_invoke_2;
  v3[3] = &unk_277DFA878;
  objc_copyWeak(&v5, &location);
  v4 = *(a1 + 40);
  [v2 applyWithBlock:v3];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

id __72__HFItemManager_DiffableDataSource___applyReloadSnapshot_withAnimation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_alloc_init(MEMORY[0x277D2C900]);
  v4 = [WeakRetained diffableDataSource];
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__HFItemManager_DiffableDataSource___applyReloadSnapshot_withAnimation___block_invoke_3;
  v8[3] = &unk_277DF3D38;
  v6 = v3;
  v9 = v6;
  [v4 applySnapshot:v5 animatingDifferences:1 completion:v8];

  return v6;
}

- (id)diffableDataItemManagerDelegate
{
  delegate = [(HFItemManager *)self delegate];
  v4 = [delegate conformsToProtocol:&unk_2825BB230];

  if (v4)
  {
    delegate2 = [(HFItemManager *)self delegate];
  }

  else
  {
    delegate2 = 0;
  }

  return delegate2;
}

- (id)applySnapshotForUpdatedExternalItems:(id)items removedItems:(id)removedItems logger:(id)logger
{
  v48 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  removedItemsCopy = removedItems;
  loggerCopy = logger;
  diffableDataSource = [(HFItemManager *)self diffableDataSource];

  if (diffableDataSource && ![(HFItemManager *)self isApplyingSnapshot])
  {
    v15 = HFLogForCategory(0x35uLL);
    v16 = os_signpost_id_generate(v15);

    v17 = HFLogForCategory(0x35uLL);
    v18 = v17;
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      identifier = [(HFItemManager *)self identifier];
      v20 = objc_opt_class();
      v21 = v20;
      clientDescription = [loggerCopy clientDescription];
      *buf = 138543874;
      v43 = identifier;
      v44 = 2114;
      v45 = v20;
      v46 = 2114;
      v47 = clientDescription;
      _os_signpost_emit_with_name_impl(&dword_20D9BF000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "HFItemManagerSnapshotApply", "%{public}@:%{public}@ | %{public}@", buf, 0x20u);
    }

    v23 = objc_alloc_init(MEMORY[0x277D2C900]);
    v24 = objc_alloc_init(MEMORY[0x277D2C900]);
    generateSnapshotInfo = [(HFItemManager *)self generateSnapshotInfo];
    baseSnapshot = [generateSnapshotInfo baseSnapshot];
    objc_initWeak(buf, self);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke;
    v33[3] = &unk_277E00C48;
    objc_copyWeak(v41, buf);
    v27 = baseSnapshot;
    v34 = v27;
    v35 = itemsCopy;
    v28 = generateSnapshotInfo;
    v36 = v28;
    v37 = removedItemsCopy;
    v41[1] = v16;
    v38 = loggerCopy;
    v29 = v23;
    v39 = v29;
    v30 = v24;
    v40 = v30;
    [(HFItemManager *)self applyWithBlock:v33];
    v31 = v40;
    v14 = v29;

    objc_destroyWeak(v41);
    objc_destroyWeak(buf);
  }

  else
  {
    v12 = MEMORY[0x277D2C900];
    v13 = objc_alloc_init(MEMORY[0x277CFB890]);
    v14 = [v12 futureWithResult:v13];
  }

  return v14;
}

id __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 11);
  v3 = [WeakRetained diffableDataSource];
  v4 = [v3 snapshot];
  v5 = [v4 numberOfItems];

  v6 = [MEMORY[0x277CBEB58] set];
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = [a1[4] itemIdentifiers];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke_2;
  v54[3] = &unk_277E00BA8;
  v54[4] = WeakRetained;
  v55 = a1[5];
  v9 = v6;
  v56 = v9;
  v10 = v7;
  v57 = v10;
  [v8 na_each:v54];

  v11 = [a1[6] sectionSnapshots];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke_3;
  v50[3] = &unk_277E00BD0;
  v50[4] = WeakRetained;
  v51 = a1[5];
  v12 = v9;
  v52 = v12;
  v13 = v10;
  v53 = v13;
  [v11 na_each:v50];

  v14 = [WeakRetained diffableDataItemManagerDelegate];
  [v14 diffableDataItemManager:WeakRetained willUpdateItems:v12 addItems:v13 removeItems:a1[7] isInitialLoad:v5 == 0];

  v15 = [v12 count] || objc_msgSend(v13, "count") || objc_msgSend(a1[7], "count") != 0;
  v16 = [WeakRetained diffableDataItemManagerDelegate];
  if ([v16 shouldPerformUpdateWithAnimationForDiffableDataItemManager:WeakRetained])
  {
    v17 = (v5 != 0) & v15;
  }

  else
  {
    v17 = 0;
  }

  [WeakRetained setIsApplyingSnapshot:1];
  v18 = objc_opt_new();
  v19 = objc_alloc_init(MEMORY[0x277D2C900]);
  [v18 addObject:v19];
  v20 = [WeakRetained diffableDataSource];
  v21 = a1[4];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke_5;
  v48[3] = &unk_277DF3D38;
  v22 = v19;
  v49 = v22;
  [v20 applySnapshot:v21 animatingDifferences:v17 completion:v48];

  v23 = [a1[6] sectionSnapshots];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke_6;
  v44[3] = &unk_277E00BF8;
  v24 = v18;
  v45 = v24;
  v46 = WeakRetained;
  v47 = v17;
  [v23 na_each:v44];

  v25 = [MEMORY[0x277D2C900] chainFutures:v24];
  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke_8;
  v35 = &unk_277E00C20;
  objc_copyWeak(v43, a1 + 11);
  v43[1] = a1[12];
  v36 = a1[8];
  v37 = a1[9];
  v38 = a1[4];
  v26 = v12;
  v39 = v26;
  v27 = v13;
  v40 = v27;
  v41 = a1[7];
  v42 = a1[10];
  v28 = [v25 addCompletionBlock:&v32];

  [WeakRetained setIsApplyingSnapshot:{0, v32, v33, v34, v35}];
  v29 = a1[10];
  v30 = v29;

  objc_destroyWeak(v43);
  return v29;
}

void __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) diffableDataSource];
  v4 = [v3 snapshot];
  v5 = [v4 itemIdentifiers];
  v6 = [v5 containsObject:v9];

  if (v6)
  {
    if (![*(a1 + 40) containsObject:v9])
    {
      goto LABEL_6;
    }

    v7 = v9;
    v8 = 48;
  }

  else
  {
    v7 = v9;
    v8 = 56;
  }

  [*(a1 + v8) addObject:v7];
LABEL_6:
}

void __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 items];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke_4;
  v10[3] = &unk_277E00BA8;
  v9 = *(a1 + 32);
  v5 = *(&v9 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  [v4 na_each:v10];
}

void __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke_4(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) diffableDataSource];
  v4 = [v3 snapshot];
  v5 = [v4 itemIdentifiers];
  v6 = [v5 containsObject:v9];

  if (v6)
  {
    if (![*(a1 + 40) containsObject:v9])
    {
      goto LABEL_6;
    }

    v7 = v9;
    v8 = 48;
  }

  else
  {
    v7 = v9;
    v8 = 56;
  }

  [*(a1 + v8) addObject:v7];
LABEL_6:
}

void __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277D2C900];
  v6 = a3;
  v7 = a2;
  v8 = objc_alloc_init(v5);
  [*(a1 + 32) addObject:v8];
  v9 = [*(a1 + 40) diffableDataSource];
  v10 = *(a1 + 48);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke_7;
  v12[3] = &unk_277DF3D38;
  v13 = v8;
  v11 = v8;
  [v9 applySnapshot:v6 toSection:v7 animatingDifferences:v10 completion:v12];
}

void __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke_8(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = HFLogForCategory(0x35uLL);
  v4 = v3;
  v5 = *(a1 + 96);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v6 = [WeakRetained identifier];
    v7 = objc_opt_class();
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 clientDescription];
    v12 = 138543874;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    v16 = 2114;
    v17 = v10;
    _os_signpost_emit_with_name_impl(&dword_20D9BF000, v4, OS_SIGNPOST_INTERVAL_END, v5, "HFItemManagerSnapshotApply", "%{public}@:%{public}@ | %{public}@", &v12, 0x20u);
  }

  [*(a1 + 40) finishWithResult:*(a1 + 48)];
  v11 = [WeakRetained diffableDataItemManagerDelegate];
  [v11 diffableDataItemManager:WeakRetained didUpdateItems:*(a1 + 56) addItems:*(a1 + 64) removeItems:*(a1 + 72)];

  [WeakRetained _updateOverallLoadingStateAndNotifyDelegate];
  [*(a1 + 80) finishWithNoResult];
}

- (id)generateSnapshotInfo
{
  v36 = *MEMORY[0x277D85DE8];
  allItems = [(HFItemManager *)self allItems];
  v27 = [(HFItemManager *)self _itemsToHideInSet:allItems];
  v4 = [allItems hmf_removedObjectsFromSet:?];

  v26 = v4;
  v5 = [(HFItemManager *)self _buildSectionsWithDisplayedItems:v4];
  v6 = objc_alloc_init(MEMORY[0x277CFB890]);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __57__HFItemManager_DiffableDataSource__generateSnapshotInfo__block_invoke;
  v32[3] = &unk_277E00C70;
  v7 = v6;
  v33 = v7;
  [v5 na_each:v32];
  v24 = v7;
  v8 = [[HFSnapshotInfo alloc] initWithSnapshot:v7];
  v25 = v5;
  v9 = [(HFItemManager *)self _generateParentChildMappingForSections:v5];
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(HFSnapshotInfo *)v8 setSectionSnapshots:v10];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v17 = [v11 objectForKeyedSubscript:v16];
        if ([v17 count])
        {
          items = [v16 items];
          firstObject = [items firstObject];

          if (firstObject)
          {
            v20 = objc_alloc_init(MEMORY[0x277D75070]);
            v34 = firstObject;
            v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
            [v20 appendItems:v21];

            [v20 appendItems:v17 intoParentItem:firstObject];
            sectionSnapshots = [(HFSnapshotInfo *)v8 sectionSnapshots];
            [sectionSnapshots setObject:v20 forKeyedSubscript:v16];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v13);
  }

  return v8;
}

void __57__HFItemManager_DiffableDataSource__generateSnapshotInfo__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v9 = a2;
  v4 = MEMORY[0x277CBEA60];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v9 count:1];
  [v3 appendSectionsWithIdentifiers:{v6, v9, v10}];

  v7 = *(a1 + 32);
  v8 = [v5 items];
  [v7 appendItemsWithIdentifiers:v8 intoSectionWithIdentifier:v5];
}

- (void)_prefetchResourcesIfNeededForItems:(id)items
{
  itemsCopy = items;
  allItems = [(HFItemManager *)self allItems];
  v10 = [allItems setByAddingObjectsFromSet:itemsCopy];

  if ([v10 count])
  {
    v6 = [(HFItemManager *)self _itemsToHideInSet:v10];
    v7 = [v10 hmf_removedObjectsFromSet:v6];

    diffableDataItemManagerDelegate = [(HFItemManager *)self diffableDataItemManagerDelegate];
    [diffableDataItemManagerDelegate diffableDataItemManager:self prefetchResourcesForItems:v7];

    v9 = v7;
  }

  else
  {
    v9 = v10;
  }
}

- (BOOL)_shouldPerformUpdateOnMainThread
{
  diffableDataSourceDisabled = [(HFItemManager *)self useCustomDiffableDataSource]|| [(HFItemManager *)self diffableDataSourceDisabled];
  mainThreadLoadGroup = [(HFItemManager *)self mainThreadLoadGroup];
  if (mainThreadLoadGroup)
  {
    mainThreadLoadGroup2 = [(HFItemManager *)self mainThreadLoadGroup];
    v6 = dispatch_group_wait(mainThreadLoadGroup2, 0) != 0;
  }

  else
  {
    v6 = 1;
  }

  return (diffableDataSourceDisabled | ([(HFItemManager *)self shouldPerformInitialLoadOnMainThread]&& v6)) & 1;
}

@end