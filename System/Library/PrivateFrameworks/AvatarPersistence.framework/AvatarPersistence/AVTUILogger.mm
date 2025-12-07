@interface AVTUILogger
- (AVTUILogger)init;
- (void)checkingAccountInfo:(id)info;
- (void)checkingIn:(id)in;
- (void)copyingStorageAside:(id)aside;
- (void)deletingRecords:(id)records;
- (void)deletingStickerRecentsForRemoteChanges:(id)changes;
- (void)duplicatingRecords:(id)records;
- (void)exportingRecords:(id)records;
- (void)fetchingRecords:(id)records;
- (void)importingRecords:(id)records;
- (void)logAVTViewCancelingRenderingAvatar:(id)avatar;
- (void)logAVTViewDidRenderAvatar:(id)avatar currentAvatar:(id)currentAvatar;
- (void)logAVTViewDidRenderCurrentAvatar:(id)avatar;
- (void)logAVTViewSetAvatar:(id)avatar;
- (void)logAccountInfo:(id)info status:(int64_t)status deviceToDeviceEncryption:(BOOL)encryption;
- (void)logAnalysisServiceCheckingIn:(id)in;
- (void)logAnalysisServiceDidNotProcessState:(id)state;
- (void)logAnalysisServiceDidRun;
- (void)logAnalysisServiceWillRun;
- (void)logAvatarPreloadBeginForIdentifier:(id)identifier;
- (void)logAvatarPreloadEnd;
- (void)logAvatarsDaemonClientChecksIn:(int)in;
- (void)logAvatarsDaemonClientConnectionInterrupted;
- (void)logAvatarsDaemonClientConnectionInvalidated;
- (void)logAvatarsDaemonReceivesIncomingConnection;
- (void)logAvatarsdExitingWithReason:(id)reason;
- (void)logBackendVersionMismatch:(id)mismatch actual:(id)actual;
- (void)logCancelTransition:(id)transition;
- (void)logCancelingPreLoadingTask:(id)task;
- (void)logCancellingCleanupBlock;
- (void)logCarouselAddsTransitionToCoordinator:(id)coordinator;
- (void)logCarouselCellStartUsingLiveView:(id)view associatedTransition:(id)transition;
- (void)logCarouselCellStopUsingLiveView:(id)view associatedTransition:(id)transition;
- (void)logCarouselChangesCenterItemTo:(id)to;
- (void)logCarouselChangingToMultiMode;
- (void)logCarouselChangingToSingleMode;
- (void)logCarouselDelegateDidFocusRecord:(id)record;
- (void)logCarouselDelegateDidUpdateRecord:(id)record;
- (void)logCarouselDelegateNearnessFactorDidChange:(double)change towardRecord:(BOOL)record editable:(BOOL)editable;
- (void)logCarouselDelegateWillEndFocusRecord:(id)record;
- (void)logCarouselEndsDraggingWithVelocity:(double)velocity willSwitchIndexPathInsteadOfScrollBack:(BOOL)back forHighVelocity:(BOOL)highVelocity;
- (void)logCarouselErrorGettingFrameForElementAtIndex:(unint64_t)index;
- (void)logCarouselSnapshotForIndex:(unint64_t)index size:(CGSize)size;
- (void)logCarouselStopsFocusingOnCenterItem:(id)item withCell:(id)cell;
- (void)logCarouselTransitionCenterItem:(id)item withCell:(id)cell;
- (void)logChangesRequireExport;
- (void)logChangesRequireThumbnailUpdate;
- (void)logCheckingIfMigrationNeeded;
- (void)logCleanupTimerComplete;
- (void)logCoalesceableEventOccured:(id)occured;
- (void)logCouldntFindRecordIdentifierForChangeType:(int64_t)type managedObjectID:(id)d;
- (void)logCreatingBackendDBAtPath:(id)path;
- (void)logCreatingBackendFolderAtPath:(id)path;
- (void)logCreatingImageStoreForPath:(id)path;
- (void)logCreatingStore:(id)store;
- (void)logCurrentHistoryTokenFileDoesntExist:(id)exist;
- (void)logDebug:(id)debug;
- (void)logDecrementingRemoteRendererTransactionCount:(int64_t)count;
- (void)logDeduplicateRecordWithIdentifier:(id)identifier toNewRecordWithIdentifier:(id)withIdentifier;
- (void)logDeletingImagesWithIdentifierPrefix:(id)prefix;
- (void)logDeletingRecordWithIdentifier:(id)identifier;
- (void)logDeletingStickerRecents;
- (void)logDidFinishEditingWithError:(id)error;
- (void)logDidFinishEditingWithSuccess;
- (void)logDidResetZoneWithSuccess:(BOOL)success error:(id)error;
- (void)logDiscoveredDuplicates:(id)duplicates count:(unint64_t)count;
- (void)logDispatchingRemoteChangeWithTransactionCount:(unint64_t)count handlersCount:(unint64_t)handlersCount;
- (void)logDonePreLoadingPreset:(id)preset task:(id)task;
- (void)logDonePreLoadingThumbnailForPreLoadingTask:(id)task;
- (void)logDroppingUnsupportedAvatarRecord:(id)record;
- (void)logDuplicatingRecordWithIdentifier:(id)identifier;
- (void)logErrorAddingPersistentStore:(id)store;
- (void)logErrorCopyingStorageAside:(id)aside;
- (void)logErrorCreatingBackendContent:(id)content;
- (void)logErrorDeletingMigratedContent:(id)content;
- (void)logErrorDeletingSomeThumbnail:(id)thumbnail;
- (void)logErrorDeletingThumbnailsForIdentifier:(id)identifier error:(id)error;
- (void)logErrorDuplicatingThumbnailsForIdentifier:(id)identifier error:(id)error;
- (void)logErrorFetchingChangeHistory:(id)history;
- (void)logErrorFetchingRecentStickers:(id)stickers;
- (void)logErrorFetchingRecords:(id)records;
- (void)logErrorGettingAccountInfo:(id)info;
- (void)logErrorGettingAvatarsDaemonClientProxy:(id)proxy;
- (void)logErrorGettingChangedRecordsContentForIdentifiers:(id)identifiers error:(id)error;
- (void)logErrorLoadingTemplates:(id)templates;
- (void)logErrorMergingCopiedAsideContent:(id)content;
- (void)logErrorMigratingBackupInclusionStatus:(id)status;
- (void)logErrorMitigatingDuplicates:(id)duplicates;
- (void)logErrorPinningContextToCurrentQueryGenerationToken:(id)token;
- (void)logErrorProcessingChangeTransactionsToUpdateThumbnails:(id)thumbnails;
- (void)logErrorReadingCurrentHistoryToken:(id)token;
- (void)logErrorRemovingStoreFolder:(id)folder;
- (void)logErrorSandboxInit:(char *)init;
- (void)logErrorSavingChangeToken:(id)token location:(id)location;
- (void)logErrorSavingRecentSticker:(id)sticker;
- (void)logErrorSettingUpStore:(id)store;
- (void)logErrorSettingUserDirSuffixForSandbox:(int)sandbox;
- (void)logErrorSnapshottingAVTView:(id)view;
- (void)logErrorStartingServer:(id)server;
- (void)logErrorTearingDownCoreDataStack:(id)stack;
- (void)logErrorUpdatingBackupInclusionStatus:(id)status;
- (void)logErrorUpdatingBodyCarouselVisibleCellAtIndexPath:(id)path;
- (void)logErrorUpdatingRecordsForMigration:(id)migration;
- (void)logErrorUpdatingVersion:(id)version;
- (void)logErrorWhileMigratingBackend:(id)backend;
- (void)logExportRequestResult:(BOOL)result error:(id)error;
- (void)logFailedToGenerateStickerInService:(id)service;
- (void)logFetchedOrphanedRecentSticker:(id)sticker;
- (void)logFetchedRecentStickerWithNoStickerConfiguration:(id)configuration;
- (void)logFetchedRecords:(unint64_t)records criteria:(int64_t)criteria;
- (void)logFileSystemError:(id)error;
- (void)logFoundExistingRecordDuringMigration;
- (void)logFoundExistingRecordDuringMigration:(id)migration;
- (void)logFoundRecordIdentifier:(id)identifier changeType:(int64_t)type managedObjectID:(id)d;
- (void)logGeneratingImageError:(id)error;
- (void)logGeneratingImageForRecord:(id)record scope:(id)scope type:(int64_t)type;
- (void)logGeneratingImageInServiceForRecord:(id)record;
- (void)logGenericSandboxError:(id)error error:(int)a4;
- (void)logImageRenderServiceConnectionError:(id)error;
- (void)logImageStoreBeginSavingImageForPath:(id)path;
- (void)logImageStoreCacheHitForItemDescription:(id)description sizeCost:(unint64_t)cost;
- (void)logImageStoreCacheMiss:(id)miss;
- (void)logImageStoreDoneInServiceForPath:(id)path;
- (void)logImageStoreDoneSavingImageForPath:(id)path;
- (void)logImageStoreFailedInServiceForPath:(id)path error:(id)error;
- (void)logImageStoreSavingError:(id)error code:(int64_t)code;
- (void)logImportRequestResult:(BOOL)result error:(id)error;
- (void)logInMemoryCacheEvictsResource:(id)resource;
- (void)logInMemoryCacheHitForResource:(id)resource;
- (void)logInMemoryCacheStorageForResource:(id)resource;
- (void)logIncrementingRemoteRendererTransactionCount:(int64_t)count;
- (void)logInspectingChangesForExportAfterToken:(id)token;
- (void)logLookingUpPreLoadedPreset:(id)preset task:(id)task;
- (void)logMaintenanceCompleted;
- (void)logMigratingSource:(id)source;
- (void)logMigrationXPCActivityFinished;
- (void)logMirroringRequestErrorWithCode:(int64_t)code description:(id)description;
- (void)logMissingResetSyncReasonKey;
- (void)logMissingTombstonedIdentifier;
- (void)logNilImageReturnedFromAVTAvatarRecordImageProvider;
- (void)logNilImageReturnedFromAVTUIStickerRenderer;
- (void)logNoAvatarPreset:(id)preset;
- (void)logNoProxyToAvatarsDaemon;
- (void)logNotImportingOnLaunchWithRemainingTime:(double)time;
- (void)logNotificationDoesntContainChangeHistoryToken;
- (void)logPaddleViewVideoPlayerFailed:(id)failed;
- (void)logParsingMetadataDefinitions;
- (void)logParsingMetadataDefinitionsError:(id)error;
- (void)logPerformTransition:(id)transition;
- (void)logPerformedRecentStickersMigration:(BOOL)migration;
- (void)logPersistentChangeNotOfInterest:(id)interest;
- (void)logPostingChangeNotificationForIdentifiers:(id)identifiers;
- (void)logPreLoadingNeededForIndex:(unint64_t)index section:(unint64_t)section;
- (void)logPreLoadingPreset:(id)preset task:(id)task;
- (void)logPushConnectionReceivedPublicToken:(id)token;
- (void)logPushConnectionReceivedToken:(id)token topic:(id)topic identifier:(id)identifier;
- (void)logPushNotificationReceivedForTopic:(id)topic payload:(id)payload;
- (void)logReadingBackendAtPath:(id)path;
- (void)logReadingError:(id)error;
- (void)logReceivedRemoteChange:(id)change;
- (void)logRecordsNotFoundInAnyStore:(id)store;
- (void)logRecordsNotFoundInPuppetStore:(id)store;
- (void)logRecordsNotFoundInRecordStore:(id)store;
- (void)logRenderingConfiguration:(id)configuration;
- (void)logRenderingModelColor:(id)color;
- (void)logRenderingModelPreset:(id)preset;
- (void)logRenderingRecord:(id)record size:(CGSize)size;
- (void)logRenderingStickerEnd:(id)end;
- (void)logRenderingStickerStart:(id)start forRecord:(id)record;
- (void)logRequestedAnimojiSticker:(id)sticker;
- (void)logRequestingPreLoadingTask:(id)task forIndex:(unint64_t)index section:(unint64_t)section;
- (void)logRequestingThumbnailForIndex:(unint64_t)index section:(id)section;
- (void)logResetSyncReason:(unint64_t)reason;
- (void)logRetrievingSnapshotInServiceForPath:(id)path;
- (void)logSavingBackend;
- (void)logSavingError:(id)error;
- (void)logSchedulingImport;
- (void)logSchedulingUpdateThumbnails;
- (void)logSetupHandlerCompletedForTransition:(id)transition state:(int64_t)state finished:(BOOL)finished;
- (void)logSetupSchedulingExport;
- (void)logSetupSchedulingImport;
- (void)logSetupSchedulingMigrationCheck;
- (void)logSetupUserDataImportCheck;
- (void)logSetupUserHasNoMemojiData;
- (void)logSetupUserImportAttempting:(int64_t)attempting;
- (void)logSetupUserImportFailedToRemoveFileWithError:(id)error;
- (void)logSetupUserImportFailedToUnarchiveDataAtPath:(id)path errorDescription:(id)description;
- (void)logSetupUserImportSaveError:(id)error;
- (void)logSingleModeCantSnapshotForLackOfWindow;
- (void)logSingleModeControllerStartUsingLiveView:(id)view;
- (void)logSingleModeControllerStopUsingLiveView:(id)view;
- (void)logSkippedFetchingRecordsWithReason:(id)reason;
- (void)logSnapshotReturnedImage:(id)image;
- (void)logStartObservingRemoteChangeNotificationFrom:(id)from;
- (void)logStartObservingResetSync;
- (void)logStartTransition:(id)transition state:(int64_t)state;
- (void)logStartingPreLoadingTask:(id)task;
- (void)logStartingServer;
- (void)logStickerGeneratorPoolDidntHaveAvailableGenerator:(int64_t)generator maxCount:(int64_t)count;
- (void)logStickerSchedulerAddedTask:(id)task taskCount:(int64_t)count;
- (void)logStickerSchedulerCancelledAllTasks;
- (void)logStickerSchedulerCancelledStickerSheetTasksForIdentifier:(id)identifier;
- (void)logStickerSchedulerCancelledTask:(id)task;
- (void)logStickerSchedulerStartedTask:(id)task forSchedulerRule:(id)rule;
- (void)logStickerViewSnapshotForBounds:(id)bounds offset:(CGPoint)offset;
- (void)logSyncEnabled;
- (void)logTearingDownCoreDataStack:(id)stack;
- (void)logThrottlingAVTView;
- (void)logTimedOutWaitingForSnapshotInService:(id)service;
- (void)logToLivePoseTransitionBegins:(id)begins;
- (void)logToLivePoseTransitionEnds:(id)ends;
- (void)logTooManyAvatars:(unint64_t)avatars limit:(unint64_t)limit;
- (void)logTrackerProcessingChanges:(id)changes count:(unint64_t)count from:(id)from;
- (void)logTransactionHasChangesButNoToken;
- (void)logTransition:(id)transition state:(unint64_t)state reachedStage:(unint64_t)stage;
- (void)logUnableToCreatePushConnection:(id)connection;
- (void)logUnableToReadRemoteRecord:(id)record isCritical:(BOOL)critical;
- (void)logUnthrottlingAVTView;
- (void)logUpdatingBackupExclusionStatus:(BOOL)status;
- (void)logUpdatingLiveAvatarWithConfiguration:(id)configuration;
- (void)logUpdatingThumbnails;
- (void)logUsageTrackingBigDifferencesClusterCount:(unint64_t)count;
- (void)logUsageTrackingRecordCount:(unint64_t)count;
- (void)logUsageTrackingSmallDifferencesClusterCount:(unint64_t)count;
- (void)logUserRequestedBackupXPCActivityFinished;
- (void)logWarningNoHOME;
- (void)logWillResetZone;
- (void)migratingPersistedContent:(id)content;
- (void)performingMigrationXPCActivity:(id)activity;
- (void)performingUserRequestedBackupActivity:(id)activity;
- (void)postingAvatarStoreChangeNotification:(id)notification;
- (void)processingDidResetSyncNotification:(id)notification;
- (void)processingRemoteChangeNotification:(id)notification;
- (void)processingWillResetSyncNotification:(id)notification;
- (void)restoringStorage:(id)storage;
- (void)runningMaintenance:(id)maintenance;
- (void)savingChangeTrackerToken:(id)token;
- (void)savingRecords:(id)records;
- (void)settingUpStore:(id)store;
- (void)updatingThumbnailsForRemoteChanges:(id)changes;
@end

@implementation AVTUILogger

- (AVTUILogger)init
{
  v10.receiver = self;
  v10.super_class = AVTUILogger;
  v2 = [(AVTUILogger *)&v10 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.avatar.AvatarUI", "General");
    generalLog = v2->_generalLog;
    v2->_generalLog = v3;

    v5 = os_log_create("com.apple.avatar.AvatarUI", "UserInteraction");
    interactionLog = v2->_interactionLog;
    v2->_interactionLog = v5;

    v7 = os_log_create("com.apple.avatar.AvatarUI", "Backend");
    backendLog = v2->_backendLog;
    v2->_backendLog = v7;
  }

  return v2;
}

- (void)logDebug:(id)debug
{
  debugCopy = debug;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logDebug:];
  }
}

- (void)logErrorLoadingTemplates:(id)templates
{
  templatesCopy = templates;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorLoadingTemplates:];
  }
}

- (void)logParsingMetadataDefinitions
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Parsing metadata definitions…", v3, 2u);
  }
}

- (void)logParsingMetadataDefinitionsError:(id)error
{
  errorCopy = error;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logParsingMetadataDefinitionsError:];
  }
}

- (void)logRenderingModelColor:(id)color
{
  v8 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = colorCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Rendering model color %@", &v6, 0xCu);
  }
}

- (void)logRenderingModelPreset:(id)preset
{
  v8 = *MEMORY[0x277D85DE8];
  presetCopy = preset;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = presetCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Rendering model preset %@", &v6, 0xCu);
  }
}

- (void)logRenderingConfiguration:(id)configuration
{
  v9 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = configurationCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Rendering configuration %@", &v7, 0xCu);
  }

  generalLog2 = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(generalLog2))
  {
    LOWORD(v7) = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, generalLog2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "RenderSnapshot", &unk_241967295, &v7, 2u);
  }
}

- (void)logRenderingRecord:(id)record size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v15 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    v10 = recordCopy;
    v11 = 2048;
    v12 = width;
    v13 = 2048;
    v14 = height;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Rendering record %@, at size %2.2fx%2.2f", &v9, 0x20u);
  }
}

- (void)logSnapshotReturnedImage:(id)image
{
  v9 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(generalLog))
  {
    LOWORD(v7) = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, generalLog, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RenderSnapshot", &unk_241967295, &v7, 2u);
  }

  generalLog2 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = imageCopy;
    _os_log_impl(&dword_241932000, generalLog2, OS_LOG_TYPE_DEFAULT, "Snapshot returned %@", &v7, 0xCu);
  }
}

- (void)logNoAvatarPreset:(id)preset
{
  v8 = *MEMORY[0x277D85DE8];
  presetCopy = preset;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = presetCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "No avatar preset for %@", &v6, 0xCu);
  }
}

- (void)logCreatingStore:(id)store
{
  v8 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = storeCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Creating AVTAvatarStore instance %@", &v6, 0xCu);
  }
}

- (void)logCreatingBackendDBAtPath:(id)path
{
  v8 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = pathCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Creating empty database at path %@", &v6, 0xCu);
  }
}

- (void)logCreatingBackendFolderAtPath:(id)path
{
  v8 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = pathCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Creating Folder at path %@", &v6, 0xCu);
  }
}

- (void)logErrorCreatingBackendContent:(id)content
{
  contentCopy = content;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorCreatingBackendContent:];
  }
}

- (void)logSavingBackend
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Saving backend…", v3, 2u);
  }
}

- (void)logDeletingRecordWithIdentifier:(id)identifier
{
  v8 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = identifierCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Deleting record with identifier %@", &v6, 0xCu);
  }
}

- (void)logDeletingImagesWithIdentifierPrefix:(id)prefix
{
  v8 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = prefixCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Deleting images with identifier prefix %@", &v6, 0xCu);
  }
}

- (void)logDuplicatingRecordWithIdentifier:(id)identifier
{
  v8 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = identifierCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Duplicating record with identifier %@", &v6, 0xCu);
  }
}

- (void)logReadingBackendAtPath:(id)path
{
  v8 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = pathCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Reading backend at %@…", &v6, 0xCu);
  }
}

- (void)logSavingError:(id)error
{
  errorCopy = error;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logSavingError:];
  }
}

- (void)logReadingError:(id)error
{
  errorCopy = error;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logReadingError:];
  }
}

- (void)logRecordsNotFoundInAnyStore:(id)store
{
  v8 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = storeCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Record not found in any store (%@)", &v6, 0xCu);
  }
}

- (void)logRecordsNotFoundInPuppetStore:(id)store
{
  v8 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = storeCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Puppet(s) not found (%@)", &v6, 0xCu);
  }
}

- (void)logRecordsNotFoundInRecordStore:(id)store
{
  v8 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = storeCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Avatar Record(s) not found (%@)", &v6, 0xCu);
  }
}

- (void)logErrorSavingRecentSticker:(id)sticker
{
  stickerCopy = sticker;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorSavingRecentSticker:];
  }
}

- (void)logErrorFetchingRecentStickers:(id)stickers
{
  stickersCopy = stickers;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorFetchingRecentStickers:];
  }
}

- (void)logFetchedOrphanedRecentSticker:(id)sticker
{
  stickerCopy = sticker;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logFetchedOrphanedRecentSticker:];
  }
}

- (void)logFetchedRecentStickerWithNoStickerConfiguration:(id)configuration
{
  configurationCopy = configuration;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logFetchedRecentStickerWithNoStickerConfiguration:];
  }
}

- (void)logPerformedRecentStickersMigration:(BOOL)migration
{
  migrationCopy = migration;
  v6 = *MEMORY[0x277D85DE8];
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67240192;
    v5[1] = migrationCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Performed sticker recents migration, found orphaned: %{public}d", v5, 8u);
  }
}

- (void)savingRecords:(id)records
{
  recordsCopy = records;
  v4 = _os_activity_create(&dword_241932000, "SavingRecords", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __29__AVTUILogger_savingRecords___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__AVTUILogger_savingRecords___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = recordsCopy;
  v11 = v6;
  v7 = v6;
  v8 = recordsCopy;
  os_activity_apply(v5, block);
}

void __29__AVTUILogger_savingRecords___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)deletingRecords:(id)records
{
  recordsCopy = records;
  v4 = _os_activity_create(&dword_241932000, "DeletingRecords", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __31__AVTUILogger_deletingRecords___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__AVTUILogger_deletingRecords___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = recordsCopy;
  v11 = v6;
  v7 = v6;
  v8 = recordsCopy;
  os_activity_apply(v5, block);
}

void __31__AVTUILogger_deletingRecords___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)fetchingRecords:(id)records
{
  recordsCopy = records;
  v4 = _os_activity_create(&dword_241932000, "FetchingRecords", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __31__AVTUILogger_fetchingRecords___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__AVTUILogger_fetchingRecords___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = recordsCopy;
  v11 = v6;
  v7 = v6;
  v8 = recordsCopy;
  os_activity_apply(v5, block);
}

void __31__AVTUILogger_fetchingRecords___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)duplicatingRecords:(id)records
{
  recordsCopy = records;
  v4 = _os_activity_create(&dword_241932000, "DuplicatingRecords", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __34__AVTUILogger_duplicatingRecords___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__AVTUILogger_duplicatingRecords___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = recordsCopy;
  v11 = v6;
  v7 = v6;
  v8 = recordsCopy;
  os_activity_apply(v5, block);
}

void __34__AVTUILogger_duplicatingRecords___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logFetchedRecords:(unint64_t)records criteria:(int64_t)criteria
{
  v11 = *MEMORY[0x277D85DE8];
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    recordsCopy = records;
    v9 = 2048;
    criteriaCopy = criteria;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Fetched %lu record(s), criteria: %ld", &v7, 0x16u);
  }
}

- (void)logSkippedFetchingRecordsWithReason:(id)reason
{
  v8 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = reasonCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Skipped fetching records: %@", &v6, 0xCu);
  }
}

- (void)logBackendVersionMismatch:(id)mismatch actual:(id)actual
{
  v13 = *MEMORY[0x277D85DE8];
  mismatchCopy = mismatch;
  actualCopy = actual;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = mismatchCopy;
    v11 = 2114;
    v12 = actualCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Detected a version mismatch, found %{public}@, current is %{public}@", &v9, 0x16u);
  }
}

- (void)logDroppingUnsupportedAvatarRecord:(id)record
{
  v8 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = recordCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Avatar record has a version lower than what AvatarKit supports, dropping. %@", &v6, 0xCu);
  }
}

- (void)logAvatarsdExitingWithReason:(id)reason
{
  v8 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = reasonCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Exiting avatarsd for reason: %@", &v6, 0xCu);
  }
}

- (void)logErrorUpdatingVersion:(id)version
{
  v8 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = versionCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Error updating version %@", &v6, 0xCu);
  }
}

- (void)logErrorWhileMigratingBackend:(id)backend
{
  v8 = *MEMORY[0x277D85DE8];
  backendCopy = backend;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = backendCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Error migrating backend %@", &v6, 0xCu);
  }
}

- (void)logDidFinishEditingWithSuccess
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Did finish editing avatar successfully", v3, 2u);
  }
}

- (void)logDidFinishEditingWithError:(id)error
{
  errorCopy = error;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logDidFinishEditingWithError:];
  }
}

- (void)logFileSystemError:(id)error
{
  errorCopy = error;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logFileSystemError:];
  }
}

- (void)logCreatingImageStoreForPath:(id)path
{
  v8 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = pathCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_INFO, "Creating image store at path %@", &v6, 0xCu);
  }
}

- (void)logImageStoreCacheMiss:(id)miss
{
  v8 = *MEMORY[0x277D85DE8];
  missCopy = miss;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = missCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_INFO, "Image Store Cache miss: %@", &v6, 0xCu);
  }
}

- (void)logImageStoreCacheHitForItemDescription:(id)description sizeCost:(unint64_t)cost
{
  v12 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = descriptionCopy;
    v10 = 2048;
    costCopy = cost;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_INFO, "Image Store Cache HIT for %@, size %lu", &v8, 0x16u);
  }
}

- (void)logImageStoreSavingError:(id)error code:(int64_t)code
{
  errorCopy = error;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_FAULT))
  {
    [AVTUILogger logImageStoreSavingError:code:];
  }
}

- (void)logImageStoreBeginSavingImageForPath:(id)path
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(generalLog))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, generalLog, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SavingImage", &unk_241967295, v4, 2u);
  }
}

- (void)logImageStoreDoneSavingImageForPath:(id)path
{
  pathCopy = path;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(generalLog))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, generalLog, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SavingImage", &unk_241967295, v7, 2u);
  }

  generalLog2 = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog2, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logImageStoreDoneSavingImageForPath:];
  }
}

- (void)logInMemoryCacheStorageForResource:(id)resource
{
  resourceCopy = resource;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logInMemoryCacheStorageForResource:];
  }
}

- (void)logInMemoryCacheHitForResource:(id)resource
{
  resourceCopy = resource;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logInMemoryCacheHitForResource:];
  }
}

- (void)logInMemoryCacheEvictsResource:(id)resource
{
  resourceCopy = resource;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logInMemoryCacheEvictsResource:];
  }
}

- (void)logGeneratingImageForRecord:(id)record scope:(id)scope type:(int64_t)type
{
  v17 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  scopeCopy = scope;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = recordCopy;
    v13 = 2112;
    v14 = scopeCopy;
    v15 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Generating image for record %@, with scope %@, type %ld", &v11, 0x20u);
  }
}

- (void)logGeneratingImageError:(id)error
{
  errorCopy = error;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logGeneratingImageError:];
  }
}

- (void)logErrorDeletingThumbnailsForIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorDeletingThumbnailsForIdentifier:error:];
  }
}

- (void)logErrorDeletingSomeThumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorDeletingSomeThumbnail:];
  }
}

- (void)logErrorDuplicatingThumbnailsForIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorDuplicatingThumbnailsForIdentifier:error:];
  }
}

- (void)logErrorFetchingRecords:(id)records
{
  recordsCopy = records;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorFetchingRecords:];
  }
}

- (void)logPreLoadingNeededForIndex:(unint64_t)index section:(unint64_t)section
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logPreLoadingNeededForIndex:section:];
  }
}

- (void)logRequestingPreLoadingTask:(id)task forIndex:(unint64_t)index section:(unint64_t)section
{
  v16 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412802;
    v11 = taskCopy;
    v12 = 2048;
    sectionCopy = section;
    v14 = 2048;
    indexCopy = index;
    _os_log_debug_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEBUG, "[PreLoading] %@ requested - %lu|%lu", &v10, 0x20u);
  }
}

- (void)logStartingPreLoadingTask:(id)task
{
  v8 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = taskCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_INFO, "[PreLoading] %@ starts", &v6, 0xCu);
  }
}

- (void)logCancelingPreLoadingTask:(id)task
{
  taskCopy = task;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logCancelingPreLoadingTask:];
  }
}

- (void)logLookingUpPreLoadedPreset:(id)preset task:(id)task
{
  presetCopy = preset;
  taskCopy = task;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logLookingUpPreLoadedPreset:task:];
  }
}

- (void)logPreLoadingPreset:(id)preset task:(id)task
{
  presetCopy = preset;
  taskCopy = task;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logPreLoadingPreset:task:];
  }

  generalLog2 = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(generalLog2))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, generalLog2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PreLoadingPreset", &unk_241967295, v10, 2u);
  }
}

- (void)logDonePreLoadingPreset:(id)preset task:(id)task
{
  v4 = [(AVTUILogger *)self generalLog:preset];
  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PreLoadingPreset", &unk_241967295, v5, 2u);
  }
}

- (void)logDonePreLoadingThumbnailForPreLoadingTask:(id)task
{
  taskCopy = task;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logDonePreLoadingThumbnailForPreLoadingTask:];
  }
}

- (void)logUpdatingLiveAvatarWithConfiguration:(id)configuration
{
  v8 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = configurationCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_INFO, "Updating live avatar with %@", &v6, 0xCu);
  }
}

- (void)logRequestingThumbnailForIndex:(unint64_t)index section:(id)section
{
  sectionCopy = section;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logRequestingThumbnailForIndex:section:];
  }
}

- (void)logThrottlingAVTView
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_INFO, "Throttling AVTView", v3, 2u);
  }
}

- (void)logUnthrottlingAVTView
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_INFO, "Unthrottling AVTView", v3, 2u);
  }
}

- (void)logErrorSnapshottingAVTView:(id)view
{
  viewCopy = view;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorSnapshottingAVTView:];
  }
}

- (void)logCarouselSnapshotForIndex:(unint64_t)index size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v14 = *MEMORY[0x277D85DE8];
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_INFO))
  {
    v8 = 134218496;
    indexCopy = index;
    v10 = 2048;
    v11 = width;
    v12 = 2048;
    v13 = height;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_INFO, "Carousel snapshot for record at index %lu, size %2.2fx%2.2f", &v8, 0x20u);
  }
}

- (void)logAvatarPreloadBeginForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logAvatarPreloadBeginForIdentifier:];
  }

  generalLog2 = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(generalLog2))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, generalLog2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AvatarPreLoad", &unk_241967295, v7, 2u);
  }
}

- (void)logAvatarPreloadEnd
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(generalLog))
  {
    *v3 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, generalLog, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AvatarPreLoad", &unk_241967295, v3, 2u);
  }
}

- (void)logSingleModeCantSnapshotForLackOfWindow
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logUsageTrackingRecordCount:(unint64_t)count
{
  v7 = *MEMORY[0x277D85DE8];
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    countCopy = count;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_INFO, "We have %ld memoji(s)", &v5, 0xCu);
  }
}

- (void)logUsageTrackingSmallDifferencesClusterCount:(unint64_t)count
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logUsageTrackingSmallDifferencesClusterCount:];
  }
}

- (void)logUsageTrackingBigDifferencesClusterCount:(unint64_t)count
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logUsageTrackingBigDifferencesClusterCount:];
  }
}

- (void)logStartingServer
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Starting up server…", v3, 2u);
  }
}

- (void)settingUpStore:(id)store
{
  storeCopy = store;
  v4 = _os_activity_create(&dword_241932000, "SettingUpStore", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __30__AVTUILogger_settingUpStore___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__AVTUILogger_settingUpStore___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = storeCopy;
  v11 = v6;
  v7 = v6;
  v8 = storeCopy;
  os_activity_apply(v5, block);
}

void __30__AVTUILogger_settingUpStore___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)exportingRecords:(id)records
{
  recordsCopy = records;
  v4 = _os_activity_create(&dword_241932000, "ExportingRecords", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __32__AVTUILogger_exportingRecords___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__AVTUILogger_exportingRecords___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = recordsCopy;
  v11 = v6;
  v7 = v6;
  v8 = recordsCopy;
  os_activity_apply(v5, block);
}

void __32__AVTUILogger_exportingRecords___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)importingRecords:(id)records
{
  recordsCopy = records;
  v4 = _os_activity_create(&dword_241932000, "ImportingRecords", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __32__AVTUILogger_importingRecords___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__AVTUILogger_importingRecords___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = recordsCopy;
  v11 = v6;
  v7 = v6;
  v8 = recordsCopy;
  os_activity_apply(v5, block);
}

void __32__AVTUILogger_importingRecords___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)performingMigrationXPCActivity:(id)activity
{
  activityCopy = activity;
  v4 = _os_activity_create(&dword_241932000, "XPCActivityPostInstallMigration", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__AVTUILogger_performingMigrationXPCActivity___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__AVTUILogger_performingMigrationXPCActivity___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = activityCopy;
  v11 = v6;
  v7 = v6;
  v8 = activityCopy;
  os_activity_apply(v5, block);
}

void __46__AVTUILogger_performingMigrationXPCActivity___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logMigrationXPCActivityFinished
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Finished running migration XPC activity!", v3, 2u);
  }
}

- (void)performingUserRequestedBackupActivity:(id)activity
{
  activityCopy = activity;
  v4 = _os_activity_create(&dword_241932000, "XPCActivityUserRequestedBackup", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__AVTUILogger_performingUserRequestedBackupActivity___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__AVTUILogger_performingUserRequestedBackupActivity___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = activityCopy;
  v11 = v6;
  v7 = v6;
  v8 = activityCopy;
  os_activity_apply(v5, block);
}

void __53__AVTUILogger_performingUserRequestedBackupActivity___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logUserRequestedBackupXPCActivityFinished
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Finished running User Requested Backup XPC activity!", v3, 2u);
  }
}

- (void)logSyncEnabled
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Sync is ENABLED", v3, 2u);
  }
}

- (void)logImportRequestResult:(BOOL)result error:(id)error
{
  errorCopy = error;
  backendLog = [(AVTUILogger *)self backendLog];
  v8 = backendLog;
  if (result)
  {
    if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_241932000, v8, OS_LOG_TYPE_DEFAULT, "CloudKit Import Request SUCCEEDED", v9, 2u);
    }
  }

  else if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logImportRequestResult:error:];
  }
}

- (void)logExportRequestResult:(BOOL)result error:(id)error
{
  errorCopy = error;
  backendLog = [(AVTUILogger *)self backendLog];
  v8 = backendLog;
  if (result)
  {
    if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_241932000, v8, OS_LOG_TYPE_DEFAULT, "CloudKit Export Request SUCCEEDED", v9, 2u);
    }
  }

  else if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logExportRequestResult:error:];
  }
}

- (void)logMirroringRequestErrorWithCode:(int64_t)code description:(id)description
{
  descriptionCopy = description;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logMirroringRequestErrorWithCode:description:];
  }
}

- (void)migratingPersistedContent:(id)content
{
  contentCopy = content;
  v4 = _os_activity_create(&dword_241932000, "Migration", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __41__AVTUILogger_migratingPersistedContent___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__AVTUILogger_migratingPersistedContent___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = contentCopy;
  v11 = v6;
  v7 = v6;
  v8 = contentCopy;
  os_activity_apply(v5, block);
}

void __41__AVTUILogger_migratingPersistedContent___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logMigratingSource:(id)source
{
  v8 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = sourceCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Migrating source %@", &v6, 0xCu);
  }
}

- (void)logErrorUpdatingRecordsForMigration:(id)migration
{
  migrationCopy = migration;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorUpdatingRecordsForMigration:];
  }
}

- (void)logFoundExistingRecordDuringMigration:(id)migration
{
  v8 = *MEMORY[0x277D85DE8];
  migrationCopy = migration;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = migrationCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Found existing record during migration with identifier %@", &v6, 0xCu);
  }
}

- (void)logErrorDeletingMigratedContent:(id)content
{
  contentCopy = content;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorDeletingMigratedContent:];
  }
}

- (void)logFoundExistingRecordDuringMigration
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Found an existing record with same identifier during migration!", v3, 2u);
  }
}

- (void)logErrorAddingPersistentStore:(id)store
{
  storeCopy = store;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorAddingPersistentStore:];
  }
}

- (void)logErrorStartingServer:(id)server
{
  serverCopy = server;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorStartingServer:];
  }
}

- (void)logErrorSettingUpStore:(id)store
{
  storeCopy = store;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorSettingUpStore:];
  }
}

- (void)logPushConnectionReceivedPublicToken:(id)token
{
  v8 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = tokenCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Received public token %@", &v6, 0xCu);
  }
}

- (void)logPushConnectionReceivedToken:(id)token topic:(id)topic identifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  topicCopy = topic;
  identifierCopy = identifier;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = tokenCopy;
    v14 = 2112;
    v15 = topicCopy;
    v16 = 2112;
    v17 = identifierCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Received per-topic push token %@ for topic %@ identifier %@", &v12, 0x20u);
  }
}

- (void)logPushNotificationReceivedForTopic:(id)topic payload:(id)payload
{
  v13 = *MEMORY[0x277D85DE8];
  topicCopy = topic;
  payloadCopy = payload;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = topicCopy;
    v11 = 2112;
    v12 = payloadCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Received Push Notification for topic: %@, payload: %@", &v9, 0x16u);
  }
}

- (void)logUnableToCreatePushConnection:(id)connection
{
  connectionCopy = connection;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logUnableToCreatePushConnection:];
  }
}

- (void)processingRemoteChangeNotification:(id)notification
{
  notificationCopy = notification;
  v4 = _os_activity_create(&dword_241932000, "ProcessingRemoteChanges", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__AVTUILogger_processingRemoteChangeNotification___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__AVTUILogger_processingRemoteChangeNotification___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = notificationCopy;
  v11 = v6;
  v7 = v6;
  v8 = notificationCopy;
  os_activity_apply(v5, block);
}

void __50__AVTUILogger_processingRemoteChangeNotification___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logStartObservingRemoteChangeNotificationFrom:(id)from
{
  v8 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = fromCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Start observing NSPersistentStoreRemoteChangeNotification from %@", &v6, 0xCu);
  }
}

- (void)logReceivedRemoteChange:(id)change
{
  v8 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = changeCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Received NSPersistentStoreRemoteChangeNotification: %@", &v6, 0xCu);
  }
}

- (void)logDispatchingRemoteChangeWithTransactionCount:(unint64_t)count handlersCount:(unint64_t)handlersCount
{
  v11 = *MEMORY[0x277D85DE8];
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    countCopy = count;
    v9 = 2048;
    handlersCountCopy = handlersCount;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Dispatching NSPersistentStoreRemoteChangeNotification with %lu transactions; %lu handlers listening", &v7, 0x16u);
  }
}

- (void)logErrorFetchingChangeHistory:(id)history
{
  historyCopy = history;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorFetchingChangeHistory:];
  }
}

- (void)logNotificationDoesntContainChangeHistoryToken
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "notification.userInfo doesn't contain a value for NSPersistentHistoryTokenKey", v3, 2u);
  }
}

- (void)logChangesRequireExport
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Changes require export!", v3, 2u);
  }
}

- (void)logChangesRequireThumbnailUpdate
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Changes require thumbnail update!", v3, 2u);
  }
}

- (void)logErrorPinningContextToCurrentQueryGenerationToken:(id)token
{
  tokenCopy = token;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorPinningContextToCurrentQueryGenerationToken:];
  }
}

- (void)logInspectingChangesForExportAfterToken:(id)token
{
  tokenCopy = token;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logInspectingChangesForExportAfterToken:];
  }
}

- (void)logUnableToReadRemoteRecord:(id)record isCritical:(BOOL)critical
{
  criticalCopy = critical;
  recordCopy = record;
  backendLog = [(AVTUILogger *)self backendLog];
  v8 = backendLog;
  if (criticalCopy)
  {
    if (os_log_type_enabled(backendLog, OS_LOG_TYPE_FAULT))
    {
      [AVTUILogger logUnableToReadRemoteRecord:isCritical:];
    }
  }

  else if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logUnableToReadRemoteRecord:isCritical:];
  }
}

- (void)savingChangeTrackerToken:(id)token
{
  tokenCopy = token;
  v4 = _os_activity_create(&dword_241932000, "SavingChangeTrackerToken", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__AVTUILogger_savingChangeTrackerToken___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__AVTUILogger_savingChangeTrackerToken___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = tokenCopy;
  v11 = v6;
  v7 = v6;
  v8 = tokenCopy;
  os_activity_apply(v5, block);
}

void __40__AVTUILogger_savingChangeTrackerToken___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logCurrentHistoryTokenFileDoesntExist:(id)exist
{
  v8 = *MEMORY[0x277D85DE8];
  existCopy = exist;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = existCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Current history token file doesn't exist at path %@", &v6, 0xCu);
  }
}

- (void)logErrorReadingCurrentHistoryToken:(id)token
{
  tokenCopy = token;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorReadingCurrentHistoryToken:];
  }
}

- (void)logTrackerProcessingChanges:(id)changes count:(unint64_t)count from:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  fromCopy = from;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = fromCopy;
    v13 = 2048;
    countCopy = count;
    v15 = 2112;
    v16 = changesCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Author %@ is processing %lu changes: %@", &v11, 0x20u);
  }
}

- (void)logTransactionHasChangesButNoToken
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logErrorSavingChangeToken:(id)token location:(id)location
{
  tokenCopy = token;
  locationCopy = location;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_FAULT))
  {
    [AVTUILogger logErrorSavingChangeToken:location:];
  }
}

- (void)logFoundRecordIdentifier:(id)identifier changeType:(int64_t)type managedObjectID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = identifierCopy;
    v13 = 2048;
    typeCopy = type;
    v15 = 2112;
    v16 = dCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Found record identifier %@ for change type %ld, managedObjectID %@", &v11, 0x20u);
  }
}

- (void)logCouldntFindRecordIdentifierForChangeType:(int64_t)type managedObjectID:(id)d
{
  v12 = *MEMORY[0x277D85DE8];
  dCopy = d;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    typeCopy = type;
    v10 = 2112;
    v11 = dCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Did NOT find record identifier for change type %ld, managedObjectID %@ - could be processing ancient history.", &v8, 0x16u);
  }
}

- (void)deletingStickerRecentsForRemoteChanges:(id)changes
{
  changesCopy = changes;
  v4 = _os_activity_create(&dword_241932000, "DeletingStickerRecentsForRemoteChanges", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__AVTUILogger_deletingStickerRecentsForRemoteChanges___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__AVTUILogger_deletingStickerRecentsForRemoteChanges___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = changesCopy;
  v11 = v6;
  v7 = v6;
  v8 = changesCopy;
  os_activity_apply(v5, block);
}

void __54__AVTUILogger_deletingStickerRecentsForRemoteChanges___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logDeletingStickerRecents
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Deleting sticker recents for sync", v3, 2u);
  }
}

- (void)updatingThumbnailsForRemoteChanges:(id)changes
{
  changesCopy = changes;
  v4 = _os_activity_create(&dword_241932000, "UpdatingThumbnailsForRemoteChanges", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__AVTUILogger_updatingThumbnailsForRemoteChanges___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__AVTUILogger_updatingThumbnailsForRemoteChanges___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = changesCopy;
  v11 = v6;
  v7 = v6;
  v8 = changesCopy;
  os_activity_apply(v5, block);
}

void __50__AVTUILogger_updatingThumbnailsForRemoteChanges___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logErrorProcessingChangeTransactionsToUpdateThumbnails:(id)thumbnails
{
  thumbnailsCopy = thumbnails;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorProcessingChangeTransactionsToUpdateThumbnails:];
  }
}

- (void)logCheckingIfMigrationNeeded
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Checking if migration needed…", v3, 2u);
  }
}

- (void)logUpdatingThumbnails
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Updating thumbnails if needed", v3, 2u);
  }
}

- (void)logSchedulingImport
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Scheduling import of records", v3, 2u);
  }
}

- (void)logSchedulingUpdateThumbnails
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Scheduling thumbnail update", v3, 2u);
  }
}

- (void)logWillResetZone
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "WILL RESET CLOUDKIT ZONE!", v3, 2u);
  }
}

- (void)logDidResetZoneWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v11 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = successCopy;
    v9 = 2112;
    v10 = errorCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Did reset CloudKit zone with success %d, error %@", v8, 0x12u);
  }
}

- (void)logTearingDownCoreDataStack:(id)stack
{
  v8 = *MEMORY[0x277D85DE8];
  stackCopy = stack;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = stackCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Will tear down CoreData stack for path %@", &v6, 0xCu);
  }
}

- (void)logErrorTearingDownCoreDataStack:(id)stack
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorTearingDownCoreDataStack:];
  }
}

- (void)logErrorRemovingStoreFolder:(id)folder
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorRemovingStoreFolder:];
  }
}

- (void)postingAvatarStoreChangeNotification:(id)notification
{
  notificationCopy = notification;
  v4 = _os_activity_create(&dword_241932000, "AVTAvatarStoreDidChangeNotification", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__AVTUILogger_postingAvatarStoreChangeNotification___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__AVTUILogger_postingAvatarStoreChangeNotification___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = notificationCopy;
  v11 = v6;
  v7 = v6;
  v8 = notificationCopy;
  os_activity_apply(v5, block);
}

void __52__AVTUILogger_postingAvatarStoreChangeNotification___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logPostingChangeNotificationForIdentifiers:(id)identifiers
{
  v12 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [identifiersCopy count];
    v7 = [identifiersCopy componentsJoinedByString:{@", "}];
    v8 = 134218242;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Posting change notification for %lu record id(s) %@", &v8, 0x16u);
  }
}

- (void)logNotImportingOnLaunchWithRemainingTime:(double)time
{
  v12 = *MEMORY[0x277D85DE8];
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = time % 3600;
    v6 = 134218496;
    v7 = (time / 3600.0);
    v8 = 2048;
    v9 = ((((34953 * v5) >> 16) >> 5) + (((v5 + ((-30583 * v5) >> 16)) & 0x8000) >> 15));
    v10 = 2048;
    v11 = (v5 - 60 * ((((34953 * v5) >> 16) >> 5) + (((v5 + ((-30583 * v5) >> 16)) & 0x8000) >> 15)));
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Not importing on launch, still remains %02luh %02lum %02lus", &v6, 0x20u);
  }
}

- (void)logErrorSettingUserDirSuffixForSandbox:(int)sandbox
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorSettingUserDirSuffixForSandbox:];
  }
}

- (void)logGenericSandboxError:(id)error error:(int)a4
{
  errorCopy = error;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logGenericSandboxError:error:];
  }
}

- (void)logErrorSandboxInit:(char *)init
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorSandboxInit:];
  }
}

- (void)logWarningNoHOME
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)processingWillResetSyncNotification:(id)notification
{
  notificationCopy = notification;
  v4 = _os_activity_create(&dword_241932000, "WillResetSync", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__AVTUILogger_processingWillResetSyncNotification___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__AVTUILogger_processingWillResetSyncNotification___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = notificationCopy;
  v11 = v6;
  v7 = v6;
  v8 = notificationCopy;
  os_activity_apply(v5, block);
}

void __51__AVTUILogger_processingWillResetSyncNotification___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)processingDidResetSyncNotification:(id)notification
{
  notificationCopy = notification;
  v4 = _os_activity_create(&dword_241932000, "DidResetSync", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__AVTUILogger_processingDidResetSyncNotification___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__AVTUILogger_processingDidResetSyncNotification___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = notificationCopy;
  v11 = v6;
  v7 = v6;
  v8 = notificationCopy;
  os_activity_apply(v5, block);
}

void __50__AVTUILogger_processingDidResetSyncNotification___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)copyingStorageAside:(id)aside
{
  asideCopy = aside;
  v4 = _os_activity_create(&dword_241932000, "CopyingStorageAside", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __35__AVTUILogger_copyingStorageAside___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__AVTUILogger_copyingStorageAside___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = asideCopy;
  v11 = v6;
  v7 = v6;
  v8 = asideCopy;
  os_activity_apply(v5, block);
}

void __35__AVTUILogger_copyingStorageAside___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)restoringStorage:(id)storage
{
  storageCopy = storage;
  v4 = _os_activity_create(&dword_241932000, "RestoringStorage", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __32__AVTUILogger_restoringStorage___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__AVTUILogger_restoringStorage___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = storageCopy;
  v11 = v6;
  v7 = v6;
  v8 = storageCopy;
  os_activity_apply(v5, block);
}

void __32__AVTUILogger_restoringStorage___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logStartObservingResetSync
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Starting to observe NSCloudKitMirroringDelegateWillResetSyncNotificationName / NSCloudKitMirroringDelegateDidResetSyncNotificationName…", v3, 2u);
  }
}

- (void)logMissingResetSyncReasonKey
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logMissingTombstonedIdentifier
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logPersistentChangeNotOfInterest:(id)interest
{
  v8 = *MEMORY[0x277D85DE8];
  interestCopy = interest;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = interestCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Got a change that didn't seem interesting: %@", &v6, 0xCu);
  }
}

- (void)logResetSyncReason:(unint64_t)reason
{
  v7 = *MEMORY[0x277D85DE8];
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    reasonCopy = reason;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Reset Sync reason: %lu", &v5, 0xCu);
  }
}

- (void)logErrorCopyingStorageAside:(id)aside
{
  asideCopy = aside;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorCopyingStorageAside:];
  }
}

- (void)logErrorMergingCopiedAsideContent:(id)content
{
  contentCopy = content;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorMergingCopiedAsideContent:];
  }
}

- (void)logSetupSchedulingMigrationCheck
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Setup - will check if migration is needed", v3, 2u);
  }
}

- (void)logSetupSchedulingImport
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Setup - scheduling import", v3, 2u);
  }
}

- (void)logSetupSchedulingExport
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Setup - scheduling export", v3, 2u);
  }
}

- (void)logCoalesceableEventOccured:(id)occured
{
  v8 = *MEMORY[0x277D85DE8];
  occuredCopy = occured;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = occuredCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Coalescable event occured: %{public}@", &v6, 0xCu);
  }
}

- (void)logErrorGettingChangedRecordsContentForIdentifiers:(id)identifiers error:(id)error
{
  identifiersCopy = identifiers;
  errorCopy = error;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorGettingChangedRecordsContentForIdentifiers:error:];
  }
}

- (void)logTooManyAvatars:(unint64_t)avatars limit:(unint64_t)limit
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logTooManyAvatars:limit:];
  }
}

- (void)checkingAccountInfo:(id)info
{
  infoCopy = info;
  v4 = _os_activity_create(&dword_241932000, "CheckingAccount", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __35__AVTUILogger_checkingAccountInfo___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__AVTUILogger_checkingAccountInfo___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = infoCopy;
  v11 = v6;
  v7 = v6;
  v8 = infoCopy;
  os_activity_apply(v5, block);
}

void __35__AVTUILogger_checkingAccountInfo___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logAccountInfo:(id)info status:(int64_t)status deviceToDeviceEncryption:(BOOL)encryption
{
  encryptionCopy = encryption;
  v15 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109634;
    v10[1] = encryptionCopy;
    v11 = 2048;
    statusCopy = status;
    v13 = 2112;
    v14 = infoCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Got account info! HSA2: %d, status: %ld, description: %@", v10, 0x1Cu);
  }
}

- (void)logErrorGettingAccountInfo:(id)info
{
  infoCopy = info;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorGettingAccountInfo:];
  }
}

- (void)logErrorMigratingBackupInclusionStatus:(id)status
{
  statusCopy = status;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorMigratingBackupInclusionStatus:];
  }
}

- (void)logErrorUpdatingBackupInclusionStatus:(id)status
{
  statusCopy = status;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorUpdatingBackupInclusionStatus:];
  }
}

- (void)logUpdatingBackupExclusionStatus:(BOOL)status
{
  statusCopy = status;
  backendLog = [(AVTUILogger *)self backendLog];
  v5 = os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT);
  if (statusCopy)
  {
    if (v5)
    {
      v9 = 0;
      v6 = "Will NOT include database in backup.";
      v7 = &v9;
LABEL_6:
      _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  else if (v5)
  {
    v8 = 0;
    v6 = "Will include database in backup.";
    v7 = &v8;
    goto LABEL_6;
  }
}

- (void)logAvatarsDaemonReceivesIncomingConnection
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_INFO, "Accepting incoming connection on side channel", v3, 2u);
  }
}

- (void)logAvatarsDaemonClientChecksIn:(int)in
{
  v6 = *MEMORY[0x277D85DE8];
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = in;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "CheckIn from client with pid %d", v5, 8u);
  }
}

- (void)logAvatarsDaemonClientConnectionInterrupted
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logAvatarsDaemonClientConnectionInvalidated
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Connection to avatarsd invalidated", v3, 2u);
  }
}

- (void)logErrorGettingAvatarsDaemonClientProxy:(id)proxy
{
  proxyCopy = proxy;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorGettingAvatarsDaemonClientProxy:];
  }
}

- (void)logNoProxyToAvatarsDaemon
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)checkingIn:(id)in
{
  inCopy = in;
  v4 = _os_activity_create(&dword_241932000, "CheckingIn", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __26__AVTUILogger_checkingIn___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__AVTUILogger_checkingIn___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = inCopy;
  v11 = v6;
  v7 = v6;
  v8 = inCopy;
  os_activity_apply(v5, block);
}

void __26__AVTUILogger_checkingIn___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)runningMaintenance:(id)maintenance
{
  maintenanceCopy = maintenance;
  v4 = _os_activity_create(&dword_241932000, "RunningStoreMaintenance", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __34__AVTUILogger_runningMaintenance___block_invoke;
  v12[3] = &unk_278CFA4E8;
  v13 = v4;
  v5 = v4;
  v6 = MEMORY[0x245CF3540](v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__AVTUILogger_runningMaintenance___block_invoke_2;
  block[3] = &unk_278CFB018;
  v10 = maintenanceCopy;
  v11 = v6;
  v7 = v6;
  v8 = maintenanceCopy;
  os_activity_apply(v5, block);
}

void __34__AVTUILogger_runningMaintenance___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

- (void)logErrorMitigatingDuplicates:(id)duplicates
{
  duplicatesCopy = duplicates;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logErrorMitigatingDuplicates:];
  }
}

- (void)logMaintenanceCompleted
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Store maintenance completed!", v3, 2u);
  }
}

- (void)logDiscoveredDuplicates:(id)duplicates count:(unint64_t)count
{
  v12 = *MEMORY[0x277D85DE8];
  duplicatesCopy = duplicates;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    countCopy = count;
    v10 = 2112;
    v11 = duplicatesCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Discovered %lu group(s) of duplicates: %@", &v8, 0x16u);
  }
}

- (void)logDeduplicateRecordWithIdentifier:(id)identifier toNewRecordWithIdentifier:(id)withIdentifier
{
  v13 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = identifierCopy;
    v11 = 2112;
    v12 = withIdentifierCopy;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Fixing duplicate with identifier %@ to have identifier %@", &v9, 0x16u);
  }
}

- (void)logStickerGeneratorPoolDidntHaveAvailableGenerator:(int64_t)generator maxCount:(int64_t)count
{
  v11 = *MEMORY[0x277D85DE8];
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_INFO))
  {
    v7 = 134218240;
    generatorCopy = generator;
    v9 = 2048;
    countCopy = count;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_INFO, "Sticker Generator Pool has to steal a generator in Use, %ld in use, %ld max", &v7, 0x16u);
  }
}

- (void)logPaddleViewVideoPlayerFailed:(id)failed
{
  v8 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = failedCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "PaddleView Video Player failed with error %@; restarting videos", &v6, 0xCu);
  }
}

- (void)logRenderingStickerStart:(id)start forRecord:(id)record
{
  v14 = *MEMORY[0x277D85DE8];
  startCopy = start;
  recordCopy = record;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = startCopy;
    v12 = 2112;
    v13 = recordCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Rendering sticker %@ for record %@", &v10, 0x16u);
  }

  generalLog2 = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(generalLog2))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, generalLog2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "RenderSticker", &unk_241967295, &v10, 2u);
  }
}

- (void)logRenderingStickerEnd:(id)end
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_signpost_enabled(generalLog))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, generalLog, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RenderSticker", &unk_241967295, v4, 2u);
  }
}

- (void)logStickerViewSnapshotForBounds:(id)bounds offset:(CGPoint)offset
{
  y = offset.y;
  v12 = *MEMORY[0x277D85DE8];
  boundsCopy = bounds;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = boundsCopy;
    v10 = 2048;
    v11 = y;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "StickerViewController preparing for snapshot for bounds %@ offset %f", &v8, 0x16u);
  }
}

- (void)logStickerSchedulerAddedTask:(id)task taskCount:(int64_t)count
{
  taskCopy = task;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logStickerSchedulerAddedTask:taskCount:];
  }
}

- (void)logStickerSchedulerStartedTask:(id)task forSchedulerRule:(id)rule
{
  taskCopy = task;
  ruleCopy = rule;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logStickerSchedulerStartedTask:forSchedulerRule:];
  }
}

- (void)logStickerSchedulerCancelledTask:(id)task
{
  taskCopy = task;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logStickerSchedulerCancelledTask:];
  }
}

- (void)logStickerSchedulerCancelledStickerSheetTasksForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logStickerSchedulerCancelledStickerSheetTasksForIdentifier:];
  }
}

- (void)logStickerSchedulerCancelledAllTasks
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logErrorUpdatingBodyCarouselVisibleCellAtIndexPath:(id)path
{
  pathCopy = path;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logErrorUpdatingBodyCarouselVisibleCellAtIndexPath:];
  }
}

- (void)logNilImageReturnedFromAVTUIStickerRenderer
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logNilImageReturnedFromAVTAvatarRecordImageProvider
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logAnalysisServiceCheckingIn:(id)in
{
  inCopy = in;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logAnalysisServiceCheckingIn:];
  }
}

- (void)logAnalysisServiceWillRun
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logAnalysisServiceDidRun
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logAnalysisServiceDidNotProcessState:(id)state
{
  stateCopy = state;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logAnalysisServiceDidNotProcessState:];
  }
}

- (void)logCarouselChangingToSingleMode
{
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "Carousel changing to single avatar mode", v3, 2u);
  }
}

- (void)logCarouselChangingToMultiMode
{
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "Carousel changing to multi avatar mode", v3, 2u);
  }
}

- (void)logCarouselChangesCenterItemTo:(id)to
{
  v8 = *MEMORY[0x277D85DE8];
  toCopy = to;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = toCopy;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "Carousel changes center item to:%@", &v6, 0xCu);
  }
}

- (void)logCarouselTransitionCenterItem:(id)item withCell:(id)cell
{
  v13 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  cellCopy = cell;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = itemCopy;
    v11 = 2112;
    v12 = cellCopy;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "Carousel transtioning center item:%@, center cell:%@", &v9, 0x16u);
  }
}

- (void)logCarouselStopsFocusingOnCenterItem:(id)item withCell:(id)cell
{
  v13 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  cellCopy = cell;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = itemCopy;
    v11 = 2112;
    v12 = cellCopy;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "Carousel stops focusing on center item:%@, center cell:%@", &v9, 0x16u);
  }
}

- (void)logSingleModeControllerStartUsingLiveView:(id)view
{
  v8 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = viewCopy;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "Single mode controller STARTS using liveView: %@", &v6, 0xCu);
  }
}

- (void)logSingleModeControllerStopUsingLiveView:(id)view
{
  v8 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = viewCopy;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "Single mode controller STOPS using liveView: %@", &v6, 0xCu);
  }
}

- (void)logCarouselCellStartUsingLiveView:(id)view associatedTransition:(id)transition
{
  v13 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  transitionCopy = transition;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = transitionCopy;
    v11 = 2112;
    v12 = viewCopy;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "[AVTTransition:%@] Carousel Cell STARTS using liveView, cell:%@", &v9, 0x16u);
  }
}

- (void)logCarouselCellStopUsingLiveView:(id)view associatedTransition:(id)transition
{
  v13 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  transitionCopy = transition;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = transitionCopy;
    v11 = 2112;
    v12 = viewCopy;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "[AVTTransition:%@] Carousel Cell STOPS using liveView, cell:%@", &v9, 0x16u);
  }
}

- (void)logCarouselAddsTransitionToCoordinator:(id)coordinator
{
  v8 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = coordinatorCopy;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "[AVTTransition:%@] -> Carousel adds transition to coordinator", &v6, 0xCu);
  }
}

- (void)logStartTransition:(id)transition state:(int64_t)state
{
  v12 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = transitionCopy;
    v10 = 2048;
    stateCopy = state;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "[AVTTransition:%@] -> starts, state: %ld", &v8, 0x16u);
  }
}

- (void)logSetupHandlerCompletedForTransition:(id)transition state:(int64_t)state finished:(BOOL)finished
{
  finishedCopy = finished;
  v17 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v10 = @"NO";
    v11 = 138412802;
    v12 = transitionCopy;
    if (finishedCopy)
    {
      v10 = @"YES";
    }

    v13 = 2048;
    stateCopy = state;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "[AVTTransition:%@] -> Setup done, state: %ld, finished %@", &v11, 0x20u);
  }
}

- (void)logPerformTransition:(id)transition
{
  v8 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = transitionCopy;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "[AVTTransition:%@] -> Perform", &v6, 0xCu);
  }
}

- (void)logCancelTransition:(id)transition
{
  v8 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = transitionCopy;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "[AVTTransition:%@] -> CANCEL!", &v6, 0xCu);
  }
}

- (void)logTransition:(id)transition state:(unint64_t)state reachedStage:(unint64_t)stage
{
  v16 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v10 = 138412802;
    v11 = transitionCopy;
    v12 = 2048;
    stageCopy = stage;
    v14 = 2048;
    stateCopy = state;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "[AVTTransition:%@] -> reached stage %lu, state: %lu", &v10, 0x20u);
  }
}

- (void)logToLivePoseTransitionBegins:(id)begins
{
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_signpost_enabled(interactionLog))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, interactionLog, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ToLive", &unk_241967295, v4, 2u);
  }
}

- (void)logToLivePoseTransitionEnds:(id)ends
{
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_signpost_enabled(interactionLog))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, interactionLog, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ToLive", &unk_241967295, v4, 2u);
  }
}

- (void)logAVTViewSetAvatar:(id)avatar
{
  v9 = *MEMORY[0x277D85DE8];
  avatarCopy = avatar;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = avatarCopy;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "[AVTView] Set avatar: %@", &v7, 0xCu);
  }

  interactionLog2 = [(AVTUILogger *)self interactionLog];
  if (os_signpost_enabled(interactionLog2))
  {
    LOWORD(v7) = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, interactionLog2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AVTViewSetAvatar", &unk_241967295, &v7, 2u);
  }
}

- (void)logAVTViewDidRenderAvatar:(id)avatar currentAvatar:(id)currentAvatar
{
  v17 = *MEMORY[0x277D85DE8];
  avatarCopy = avatar;
  currentAvatarCopy = currentAvatar;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v9 = [avatarCopy isEqual:currentAvatarCopy];
    v10 = @"NO";
    v11 = 138412802;
    v12 = avatarCopy;
    v13 = 2112;
    if (v9)
    {
      v10 = @"YES";
    }

    v14 = currentAvatarCopy;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "[AVTView] Did render avatar: %@, current avatar %@, match %@", &v11, 0x20u);
  }
}

- (void)logAVTViewDidRenderCurrentAvatar:(id)avatar
{
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_signpost_enabled(interactionLog))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, interactionLog, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AVTViewSetAvatar", &unk_241967295, v4, 2u);
  }
}

- (void)logAVTViewCancelingRenderingAvatar:(id)avatar
{
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_signpost_enabled(interactionLog))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_241932000, interactionLog, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AVTViewSetAvatar", &unk_241967295, v4, 2u);
  }
}

- (void)logCarouselErrorGettingFrameForElementAtIndex:(unint64_t)index
{
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_FAULT))
  {
    [AVTUILogger logCarouselErrorGettingFrameForElementAtIndex:];
  }
}

- (void)logCarouselDelegateDidFocusRecord:(id)record
{
  recordCopy = record;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logCarouselDelegateDidFocusRecord:];
  }
}

- (void)logCarouselDelegateWillEndFocusRecord:(id)record
{
  recordCopy = record;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logCarouselDelegateWillEndFocusRecord:];
  }
}

- (void)logCarouselDelegateNearnessFactorDidChange:(double)change towardRecord:(BOOL)record editable:(BOOL)editable
{
  editableCopy = editable;
  recordCopy = record;
  v15 = *MEMORY[0x277D85DE8];
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134218496;
    changeCopy = change;
    v11 = 1024;
    v12 = recordCopy;
    v13 = 1024;
    v14 = editableCopy;
    _os_log_debug_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_DEBUG, "[Delegate] Did Move (%2.2lf) Toward record %d, editable %d", &v9, 0x18u);
  }
}

- (void)logCarouselDelegateDidUpdateRecord:(id)record
{
  recordCopy = record;
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_DEBUG))
  {
    [AVTUILogger logCarouselDelegateDidUpdateRecord:];
  }
}

- (void)logCarouselEndsDraggingWithVelocity:(double)velocity willSwitchIndexPathInsteadOfScrollBack:(BOOL)back forHighVelocity:(BOOL)highVelocity
{
  highVelocityCopy = highVelocity;
  backCopy = back;
  v15 = *MEMORY[0x277D85DE8];
  interactionLog = [(AVTUILogger *)self interactionLog];
  if (os_log_type_enabled(interactionLog, OS_LOG_TYPE_INFO))
  {
    v9 = 134218496;
    velocityCopy = velocity;
    v11 = 1024;
    v12 = backCopy;
    v13 = 1024;
    v14 = highVelocityCopy;
    _os_log_impl(&dword_241932000, interactionLog, OS_LOG_TYPE_INFO, "Carousel ends dragging with velocity:%2.2lf, switch instead of scroll back: %d, switch for high velocity: %d", &v9, 0x18u);
  }
}

- (void)logSetupUserHasNoMemojiData
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_INFO, "Setup User has no Memoji data to import", v3, 2u);
  }
}

- (void)logSetupUserImportFailedToUnarchiveDataAtPath:(id)path errorDescription:(id)description
{
  pathCopy = path;
  descriptionCopy = description;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logSetupUserImportFailedToUnarchiveDataAtPath:errorDescription:];
  }
}

- (void)logSetupUserImportAttempting:(int64_t)attempting
{
  v7 = *MEMORY[0x277D85DE8];
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    attemptingCopy = attempting;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_INFO, "Setup User import attempting to save %ld records", &v5, 0xCu);
  }
}

- (void)logSetupUserImportSaveError:(id)error
{
  errorCopy = error;
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logSetupUserImportSaveError:];
  }
}

- (void)logSetupUserDataImportCheck
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, backendLog, OS_LOG_TYPE_DEFAULT, "Setup - checking for Setup User data to import", v3, 2u);
  }
}

- (void)logSetupUserImportFailedToRemoveFileWithError:(id)error
{
  backendLog = [(AVTUILogger *)self backendLog];
  if (os_log_type_enabled(backendLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logSetupUserImportFailedToRemoveFileWithError:];
  }
}

- (void)logRequestedAnimojiSticker:(id)sticker
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logRequestedAnimojiSticker:];
  }
}

- (void)logImageRenderServiceConnectionError:(id)error
{
  errorCopy = error;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_ERROR))
  {
    [AVTUILogger logImageRenderServiceConnectionError:];
  }
}

- (void)logGeneratingImageInServiceForRecord:(id)record
{
  v8 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = recordCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Generating image and writing to cache in service for record: %@", &v6, 0xCu);
  }
}

- (void)logImageStoreDoneInServiceForPath:(id)path
{
  v8 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = pathCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Image saved to cache by MemojiImageRenderService at path %@", &v6, 0xCu);
  }
}

- (void)logImageStoreFailedInServiceForPath:(id)path error:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  errorCopy = error;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = pathCopy;
    v11 = 2112;
    v12 = errorCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Image save failed in MemojiImageRenderService at path %@, with error: %@", &v9, 0x16u);
  }
}

- (void)logRetrievingSnapshotInServiceForPath:(id)path
{
  v8 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = pathCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Retrieving snapshot in service from cache at path %@", &v6, 0xCu);
  }
}

- (void)logTimedOutWaitingForSnapshotInService:(id)service
{
  v10 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218242;
    v7 = 0x4024000000000000;
    v8 = 2112;
    v9 = serviceCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Semaphore timed out at %f seconds waiting for snapshot to generate sticker %@", &v6, 0x16u);
  }
}

- (void)logFailedToGenerateStickerInService:(id)service
{
  v8 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = serviceCopy;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Failed to generate sticker in service %@", &v6, 0xCu);
  }
}

- (void)logIncrementingRemoteRendererTransactionCount:(int64_t)count
{
  v7 = *MEMORY[0x277D85DE8];
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    countCopy = count;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Incrementing remote renderer transaction count to  %li", &v5, 0xCu);
  }
}

- (void)logDecrementingRemoteRendererTransactionCount:(int64_t)count
{
  v7 = *MEMORY[0x277D85DE8];
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    countCopy = count;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Decrementing remote renderer transaction count to  %li", &v5, 0xCu);
  }
}

- (void)logCancellingCleanupBlock
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Cancelling cleanup block in remote render service", v3, 2u);
  }
}

- (void)logCleanupTimerComplete
{
  generalLog = [(AVTUILogger *)self generalLog];
  if (os_log_type_enabled(generalLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241932000, generalLog, OS_LOG_TYPE_DEFAULT, "Cleanup timer completed, clean exiting remote render service", v3, 2u);
  }
}

- (void)logErrorDeletingThumbnailsForIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)logErrorDuplicatingThumbnailsForIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)logUnableToReadRemoteRecord:isCritical:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)logErrorTearingDownCoreDataStack:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logErrorRemovingStoreFolder:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logGenericSandboxError:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)logErrorGettingChangedRecordsContentForIdentifiers:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)logCarouselErrorGettingFrameForElementAtIndex:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)logSetupUserImportFailedToUnarchiveDataAtPath:errorDescription:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)logSetupUserImportFailedToRemoveFileWithError:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logRequestedAnimojiSticker:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end