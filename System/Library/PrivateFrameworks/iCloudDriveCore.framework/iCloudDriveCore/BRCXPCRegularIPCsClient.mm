@interface BRCXPCRegularIPCsClient
- (BOOL)_saveOrDeleteContainerMetadataRecordName:(id)name saveRecord:(BOOL)record error:(id *)error;
- (id)_loggedInUserPropertyValuesForKeys:(id)keys error:(id *)error;
- (id)_removeSandboxedAttributes:(id)attributes;
- (id)startDownloadFileObject:(id)object existingContents:(id)contents options:(unint64_t)options etagIfLoser:(id)loser reply:(id)reply;
- (id)uploadItemIdentifier:(id)identifier withContents:(id)contents baseVersion:(id)version basedOnOriginalVersion:(BOOL)originalVersion options:(unint64_t)options reply:(id)reply;
- (void)_createFileProvidingRequestOperationOfFileObject:(id)object existingContents:(id)contents localItem:(id)item etagIfLoser:(id)loser etagToDownload:(id)download progress:(id)progress options:(unint64_t)options reply:(id)self0;
- (void)_createSharingInfoForLocalItem:(id)item reply:(id)reply;
- (void)_doesAnyRecordExistInContainerMetadataRecordName:(id)name completionHandler:(id)handler;
- (void)_fetchLatestContentRevisionAndSharingStateForItemIdentifier:(id)identifier reply:(id)reply;
- (void)_getPublishedURLForLocalItem:(id)item forStreaming:(BOOL)streaming requestedTTL:(unint64_t)l reply:(id)reply;
- (void)_getiWorkNeedsShareMigrateForLocalItem:(id)item itemIdentifier:(id)identifier reply:(id)reply;
- (void)_getiWorkPublishingBadgingStatusForLocalItem:(id)item itemIdentifier:(id)identifier reply:(id)reply;
- (void)_getiWorkPublishingInfoForLocalItem:(id)item itemIdentifier:(id)identifier reply:(id)reply;
- (void)_handleAcceptingCKShareMetadata:(id)metadata reply:(id)reply;
- (void)_launchItemCountMismatchChecksForLocalItem:(id)item itemIdentifier:(id)identifier reply:(id)reply;
- (void)_queueOrCallCompletionBlock:(id)block;
- (void)_refreshLatestRevisionAndSharingStateForItemIdentifier:(id)identifier retryOnApplyFailure:(BOOL)failure reply:(id)reply;
- (void)_setiWorkPublishingInfoForLocalItem:(id)item itemIdentifier:(id)identifier publish:(BOOL)publish readonly:(BOOL)readonly reply:(id)reply;
- (void)_startOperation:(id)operation toCopyParticipantTokenWithLocalItem:(id)item reply:(id)reply;
- (void)_startOperation:(id)operation toCopySharingAccessTokenWithLocalItem:(id)item itemIdentifier:(id)identifier reply:(id)reply;
- (void)_startOperation:(id)operation toCopySharingInfoWithLocalItem:(id)item reply:(id)reply;
- (void)_startOperation:(id)operation toModifyRecordAccessWithLocalItem:(id)item allowAccess:(BOOL)access reply:(id)reply;
- (void)_startOperation:(id)operation toPrepFolderForSharingWithLocalItem:(id)item reply:(id)reply;
- (void)_startOperation:(id)operation toProcessSubitemsWithLocalItem:(id)item maxSubsharesFailures:(unint64_t)failures processType:(unint64_t)type reply:(id)reply;
- (void)_t_canReadFileAtURL:(id)l reply:(id)reply;
- (void)_t_createFileAtURL:(id)l reply:(id)reply;
- (void)_t_extractMetadataForAllContainersWithReply:(id)reply;
- (void)_t_getContainerMetadataForContainerID:(id)d reply:(id)reply;
- (void)_t_getEntitledContainerIDsForBundleID:(id)d reply:(id)reply;
- (void)_t_getEntitlementsForBundleID:(id)d reply:(id)reply;
- (void)_unboostFilePresenterForItemIdentifier:(id)identifier handledAppLibrarys:(id)librarys completionHandler:(id)handler;
- (void)_unregisterPrematurely;
- (void)_uploadItemIdentifier:(id)identifier locatedLocalItem:(id)item itemLocationError:(id)error withContents:(id)contents baseVersion:(id)version basedOnOriginalVersion:(BOOL)originalVersion options:(unint64_t)options parentProgress:(id)self0 reply:(id)self1;
- (void)accessItemIdentifier:(id)identifier dbAccessKind:(int64_t)kind synchronouslyIfPossible:(BOOL)possible LocalItemHandler:(id)handler ServerItemHandler:(id)itemHandler;
- (void)accountDidChangeWithCellularEnabled:(BOOL)enabled isUnlimitedUpdatesEnabled:(BOOL)updatesEnabled reply:(id)reply;
- (void)backupDatabaseWithURLWrapper:(id)wrapper reply:(id)reply;
- (void)boostFilePresenterForItemIdentifier:(id)identifier reply:(id)reply;
- (void)calculateSignatureForItemIdentifier:(id)identifier forURL:(id)l reply:(id)reply;
- (void)calculateSignatureForItemIdentifier:(id)identifier reply:(id)reply;
- (void)cancelTreeConsistencyCheckWithReply:(id)reply;
- (void)capabilityWhenTryingToReparentItemIdentifier:(id)identifier toNewParent:(id)parent reply:(id)reply;
- (void)checkIfItemIsShareableWithItemIdentifier:(id)identifier reply:(id)reply;
- (void)cloneLatestContentRevisionForItemIdentifier:(id)identifier reply:(id)reply;
- (void)computePurgeableSpaceForAllUrgenciesWithReply:(id)reply;
- (void)copyCollaborationIdentifierForFileObjectID:(id)d reply:(id)reply;
- (void)copyCurrentUserIdentifierWithReply:(id)reply;
- (void)copyCurrentUserNameAndDisplayHandleWithReply:(id)reply;
- (void)copyShareIDForItemIdentifier:(id)identifier reply:(id)reply;
- (void)corruptDatabase:(id)database;
- (void)createAccountWithACAccountID:(id)d dsid:(id)dsid reply:(id)reply;
- (void)createContainerWithID:(id)d ownerName:(id)name reply:(id)reply;
- (void)createItemBasedOnTemplate:(id)template fields:(unint64_t)fields contents:(id)contents options:(unint64_t)options additionalItemAttributes:(id)attributes completionHandler:(id)handler;
- (void)createSharingInfoForItemID:(id)d reply:(id)reply;
- (void)currentNotifRankWithReply:(id)reply;
- (void)deleteAllContentsOfContainerID:(id)d onClient:(BOOL)client onServer:(BOOL)server wait:(BOOL)wait reply:(id)reply;
- (void)deleteItemWithIdentifier:(id)identifier baseVersion:(id)version options:(unint64_t)options completionHandler:(id)handler;
- (void)didReceiveHandoffRequestForBundleID:(id)d reply:(id)reply;
- (void)dumpCoordinationInfoTo:(id)to reply:(id)reply;
- (void)dumpDatabaseTo:(id)to containerID:(id)d personaID:(id)iD includeAllItems:(BOOL)items verbose:(BOOL)verbose reply:(id)reply;
- (void)dumpFPFSMigrationStatusTo:(id)to personaID:(id)d includeNonMigratedItems:(BOOL)items reply:(id)reply;
- (void)enumerateItemsInFolder:(id)folder sortOrder:(unsigned __int8)order offset:(unint64_t)offset limit:(unint64_t)limit completion:(id)completion;
- (void)enumerateTrashItemsFromRank:(unint64_t)rank limit:(unint64_t)limit completion:(id)completion;
- (void)enumerateWorkingSetChangesFromChangeToken:(id)token limit:(unint64_t)limit completion:(id)completion;
- (void)evictOldDocumentsWithReply:(id)reply;
- (void)forceSyncContainerID:(id)d reply:(id)reply;
- (void)forceSyncWithBarrierContainerID:(id)d timeout:(unint64_t)timeout reply:(id)reply;
- (void)forceSyncZoneHealthWithBarrierWithTimeout:(unint64_t)timeout reply:(id)reply;
- (void)generateSmallItemThumbnailForFileObject:(id)object reply:(id)reply;
- (void)getApplicationDocumentUsageInfoForBundleID:(id)d withReply:(id)reply;
- (void)getApplicationStatus:(id)status;
- (void)getApplicationStatusForProcess:(id *)process reply:(id)reply;
- (void)getAttributeValues:(id)values forItemIdentifier:(id)identifier reply:(id)reply;
- (void)getAvailableBytesForUploadOverCellularWithReply:(id)reply;
- (void)getBGSystemTaskActivitiesDefaultConfig:(id)config;
- (void)getBookmarkDataForItemIdentifier:(id)identifier onlyAllowItemKnowByServer:(BOOL)server allowAccessByBundleID:(id)d documentID:(id)iD isDirectory:(BOOL)directory reply:(id)reply;
- (void)getCKRecordIDsForFPItems:(id)items reply:(id)reply;
- (void)getClientSaltingVerificationKeysAtItemIdentifier:(id)identifier reply:(id)reply;
- (void)getContainerForMangledID:(id)d personaID:(id)iD reply:(id)reply;
- (void)getContainerLastServerUpdateWithID:(id)d reply:(id)reply;
- (void)getContainerStatusWithID:(id)d reply:(id)reply;
- (void)getContainerURLForID:(id)d forProcess:(id *)process reply:(id)reply;
- (void)getContainerURLForID:(id)d recreateDocumentsIfNeeded:(BOOL)needed reply:(id)reply;
- (void)getContainersByID:(id)d;
- (void)getContainersNeedingUpload:(id)upload;
- (void)getCreatorNameComponentsForItemIdentifier:(id)identifier reply:(id)reply;
- (void)getDefaultAppContainerItemForContainerID:(id)d recreateDocumentsIfNeeded:(BOOL)needed reply:(id)reply;
- (void)getEnhancedDrivePrivacyStatusForContainer:(id)container onServer:(BOOL)server reply:(id)reply;
- (void)getItemUpdateSenderWithReceiver:(id)receiver reply:(id)reply;
- (void)getLastSyncDateWithReply:(id)reply;
- (void)getLocalizedLastSyncWithReply:(id)reply;
- (void)getLoggedInUserPropertyValuesForKeys:(id)keys reply:(id)reply;
- (void)getPathForRecordID:(id)d forContainer:(id)container reply:(id)reply;
- (void)getPublishedURLForItemIdentifier:(id)identifier forStreaming:(BOOL)streaming requestedTTL:(unint64_t)l reply:(id)reply;
- (void)getQueryItemForBRFileObjectID:(id)d reply:(id)reply;
- (void)getServerContentSignatureAtItemIdentifier:(id)identifier reply:(id)reply;
- (void)getServerSaltingKeysAtItemIdentifier:(id)identifier reply:(id)reply;
- (void)getShareOptionsOfItemIdentifier:(id)identifier reply:(id)reply;
- (void)getSyncState:(unint64_t)state reply:(id)reply;
- (void)getTotalApplicationDocumentUsageWithReply:(id)reply;
- (void)getiWorkNeedsShareMigrateForItemIdentifier:(id)identifier reply:(id)reply;
- (void)getiWorkPublishingBadgingStatusForItemIdentifier:(id)identifier reply:(id)reply;
- (void)getiWorkPublishingInfoForItemIdentifier:(id)identifier reply:(id)reply;
- (void)handleCloudKitShareMetadata:(id)metadata completionHandler:(id)handler;
- (void)hasOptimizeStorageWithReply:(id)reply;
- (void)healthStatusStringForContainer:(id)container reply:(id)reply;
- (void)iCloudDesktopSettingsChangedWithAttributes:(id)attributes reply:(id)reply;
- (void)iWorkForceSyncContainerID:(id)d ownedByMe:(BOOL)me reply:(id)reply;
- (void)invalidateAccountCacheWithReply:(id)reply;
- (void)jetsamCloudDocsAppsWithReply:(id)reply;
- (void)keepDataLocalOnSignOut:(BOOL)out reply:(id)reply;
- (void)launchItemCountMismatchChecksForItemIdentifier:(id)identifier reply:(id)reply;
- (void)launchSyncConsistencyChecksWithContainerIDs:(id)ds reply:(id)reply;
- (void)listNonLocalVersionsWithItemIdentifier:(id)identifier reply:(id)reply;
- (void)logoutAccountWithACAccountID:(id)d reply:(id)reply;
- (void)lookupCollectionGathererPacerMinFireInterval:(id)interval;
- (void)lookupExcludedExtensionsForLogoutWithReply:(id)reply;
- (void)lookupExcludedFilenamesForLogoutWithReply:(id)reply;
- (void)lookupMinFileSizeForThumbnailTransferWithReply:(id)reply;
- (void)modifyItem:(id)item baseVersion:(id)version changedFields:(unint64_t)fields contents:(id)contents options:(unint64_t)options additionalAttrs:(id)attrs completionHandler:(id)handler;
- (void)notifyReimportCompleted:(id)completed;
- (void)overrideUploadOnCellularConstraintsWithReply:(id)reply;
- (void)pauseSyncConsistencyWithReply:(id)reply;
- (void)performSelfCheck:(id)check reply:(id)reply;
- (void)presyncContainerWithID:(id)d reply:(id)reply;
- (void)printShareRequests:(id)requests personaID:(id)d isPending:(BOOL)pending asJSON:(BOOL)n reply:(id)reply;
- (void)printStatus:(id)status containerID:(id)d reply:(id)reply;
- (void)purgeAmount:(int64_t)amount withUrgency:(int)urgency reply:(id)reply;
- (void)queryEligibleAccountDescriptorsWithReply:(id)reply;
- (void)queryPathsForPersona:(id)persona reply:(id)reply;
- (void)queryTelemetryEnablementWithReply:(id)reply;
- (void)reclaimAmount:(int64_t)amount withUrgency:(int)urgency reply:(id)reply;
- (void)refreshSharingStateForItemIdentifier:(id)identifier reply:(id)reply;
- (void)registerInitialSyncBarrierForID:(id)d reply:(id)reply;
- (void)reimportItemIdentifier:(id)identifier reply:(id)reply;
- (void)removeFPFSDomain:(id)domain;
- (void)resetBudgets:(id)budgets reply:(id)reply;
- (void)resolveBookmarkDataToURL:(id)l reply:(id)reply;
- (void)resolveFileObjectIDsToContentRecordIDsForThumbnails:(id)thumbnails reply:(id)reply;
- (void)resumeSyncConsistencyWithReply:(id)reply;
- (void)setEnhancedDrivePrivacyEnabled:(BOOL)enabled forContainer:(id)container onServer:(BOOL)server onClient:(BOOL)client reply:(id)reply;
- (void)setEnhancedDrivePrivacySupported:(BOOL)supported forContainer:(id)container reply:(id)reply;
- (void)setMigrationStatus:(char)status forDSID:(id)d shouldUpdateAccount:(BOOL)account reply:(id)reply;
- (void)setStorageOpimizationEnabled:(BOOL)enabled reply:(id)reply;
- (void)setiWorkPublishingInfoForItemIdentifier:(id)identifier isForPublish:(BOOL)publish readonly:(BOOL)readonly reply:(id)reply;
- (void)setupInstanceWithDict:(id)dict reply:(id)reply;
- (void)simulateHealthIssueWithContainer:(id)container status:(id)status reply:(id)reply;
- (void)startOperation:(id)operation toAcceptShareLink:(id)link skipAcceptDialogs:(BOOL)dialogs reply:(id)reply;
- (void)startOperation:(id)operation toAutoAcceptShareLink:(id)link reply:(id)reply;
- (void)startOperation:(id)operation toCopyAvailableQuotaWithReply:(id)reply;
- (void)startOperation:(id)operation toCopyDocumentURLForRecordID:(id)d syncIfNeeded:(BOOL)needed reply:(id)reply;
- (void)startOperation:(id)operation toCopyParticipantTokenWithItemID:(id)d reply:(id)reply;
- (void)startOperation:(id)operation toCopyShareURLForShare:(id)share reply:(id)reply;
- (void)startOperation:(id)operation toCopySharingAccessTokenOfItemID:(id)d reply:(id)reply;
- (void)startOperation:(id)operation toCopySharingInfoWithItemID:(id)d reply:(id)reply;
- (void)startOperation:(id)operation toCopySharingWebAuthTokenForContainerID:(id)d reply:(id)reply;
- (void)startOperation:(id)operation toCopyShortTokenOfItemID:(id)d reply:(id)reply;
- (void)startOperation:(id)operation toLookupShareParticipants:(id)participants reply:(id)reply;
- (void)startOperation:(id)operation toModifyRecordAccessWithItemID:(id)d allowAccess:(BOOL)access reply:(id)reply;
- (void)startOperation:(id)operation toPrepFolderForSharingWithItemID:(id)d reply:(id)reply;
- (void)startOperation:(id)operation toProcessSubitemsWithItemID:(id)d maxSubsharesFailures:(unint64_t)failures processType:(unint64_t)type reply:(id)reply;
- (void)startOperation:(id)operation toSaveSharingInfo:(id)info reply:(id)reply;
- (void)startOperation:(id)operation toUnshareShare:(id)share forceDelete:(BOOL)delete reply:(id)reply;
- (void)startOperation:(id)operation toUploadAllFilesInContainer:(id)container reply:(id)reply;
- (void)startOperation:(id)operation toWaitForFPFSMigrationWithReply:(id)reply;
- (void)unboostFilePresenterForItemIdentifiers:(id)identifiers reply:(id)reply;
- (void)updateAccountDisplayName:(id)name reply:(id)reply;
- (void)updateContainerMetadataForID:(id)d;
- (void)userVerifiedTermsWithReply:(id)reply;
- (void)validateCloudDocsSupported:(BOOL)supported withReply:(id)reply;
- (void)validateConnectionDomainWithDomainIdentifier:(id)identifier databaseID:(id)d reply:(id)reply;
- (void)verifyAccountLoaded:(id)loaded;
- (void)waitForAccountToLoadWithReply:(id)reply;
- (void)waitForStabilizationWithReply:(id)reply;
- (void)waitUntilIdle:(id)idle timeout:(id)timeout reply:(id)reply;
- (void)zoneNameForContainer:(id)container reply:(id)reply;
@end

@implementation BRCXPCRegularIPCsClient

- (void)accessItemIdentifier:(id)identifier dbAccessKind:(int64_t)kind synchronouslyIfPossible:(BOOL)possible LocalItemHandler:(id)handler ServerItemHandler:(id)itemHandler
{
  v70 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  itemHandlerCopy = itemHandler;
  if ((handlerCopy != 0) != (itemHandlerCopy == 0))
  {
    [BRCXPCRegularIPCsClient(FPFSAdditions) accessItemIdentifier:dbAccessKind:synchronouslyIfPossible:LocalItemHandler:ServerItemHandler:];
  }

  v13 = *MEMORY[0x277CFAC68];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __135__BRCXPCRegularIPCsClient_FPFSAdditions__accessItemIdentifier_dbAccessKind_synchronouslyIfPossible_LocalItemHandler_ServerItemHandler___block_invoke;
  v61[3] = &unk_278503C18;
  v14 = handlerCopy;
  v62 = v14;
  v15 = itemHandlerCopy;
  v63 = v15;
  LODWORD(v13) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v13, v61);

  if (v13)
  {
    session = [(BRCXPCClient *)self session];
    personaIdentifier = [session personaIdentifier];
    if ([personaIdentifier isEqualToString:@"__defaultPersonaID__"])
    {
    }

    else
    {
      session2 = [(BRCXPCClient *)self session];
      personaIdentifier2 = [session2 personaIdentifier];

      if (personaIdentifier2)
      {
        v20 = 0;
        goto LABEL_11;
      }
    }

    if (accessItemIdentifier_dbAccessKind_synchronouslyIfPossible_LocalItemHandler_ServerItemHandler____personaOnceToken != -1)
    {
      [BRCXPCRegularIPCsClient(FPFSAdditions) accessItemIdentifier:dbAccessKind:synchronouslyIfPossible:LocalItemHandler:ServerItemHandler:];
    }

    personaIdentifier2 = accessItemIdentifier_dbAccessKind_synchronouslyIfPossible_LocalItemHandler_ServerItemHandler____personalPersona;
    v20 = 1;
LABEL_11:
    mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
    currentPersona = [mEMORY[0x277D77BF8] currentPersona];

    v60 = 0;
    userPersonaUniqueString = [currentPersona userPersonaUniqueString];
    v23 = userPersonaUniqueString;
    if (userPersonaUniqueString == personaIdentifier2 || ([userPersonaUniqueString isEqualToString:personaIdentifier2] & 1) != 0)
    {
      v24 = 0;
    }

    else
    {
      if (voucher_process_can_use_arbitrary_personas())
      {
        v59 = 0;
        v35 = [currentPersona copyCurrentPersonaContextWithError:&v59];
        v36 = v59;
        v37 = v60;
        v60 = v35;

        if (v36)
        {
          v38 = brc_bread_crumbs();
          v39 = brc_default_log();
          if (os_log_type_enabled(v39, 0x90u))
          {
            __br_notify_register_dispatch_block_invoke_cold_4();
          }
        }

        v24 = [currentPersona br_generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier2];

        if (!v24)
        {
          goto LABEL_14;
        }

        v40 = brc_bread_crumbs();
        v41 = brc_default_log();
        if (os_log_type_enabled(v41, 0x90u))
        {
          session3 = [(BRCXPCClient *)self session];
          personaIdentifier3 = [session3 personaIdentifier];
          v47 = session3;
          *buf = 138412802;
          v65 = personaIdentifier3;
          v66 = 2112;
          v67 = v24;
          v68 = 2112;
          v69 = v40;
          v44 = personaIdentifier3;
          _os_log_error_impl(&dword_223E7A000, v41, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
        }
      }

      else
      {
        if (!v20 || ([currentPersona isDataSeparatedPersona] & 1) != 0)
        {
          v45 = brc_bread_crumbs();
          v46 = brc_default_log();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            __br_notify_register_dispatch_block_invoke_cold_3();
          }

          v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
          goto LABEL_14;
        }

        v40 = brc_bread_crumbs();
        v41 = brc_default_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          __br_notify_register_dispatch_block_invoke_cold_2();
        }

        v24 = 0;
      }
    }

LABEL_14:
    if (kind == 1 && (+[BRCUserDefaults defaultsForMangledID:](BRCUserDefaults, "defaultsForMangledID:", 0), v25 = objc_claimAutoreleasedReturnValue(), v26 = [v25 allowReadOnlyDBInIPC], v25, v26))
    {
      session4 = [(BRCXPCClient *)self session];
      readOnlyWorkloop = [session4 readOnlyWorkloop];
      v29 = 1;
    }

    else
    {
      session4 = [(BRCXPCClient *)self session];
      readOnlyWorkloop = [session4 clientTruthWorkloop];
      v29 = 0;
    }

    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __135__BRCXPCRegularIPCsClient_FPFSAdditions__accessItemIdentifier_dbAccessKind_synchronouslyIfPossible_LocalItemHandler_ServerItemHandler___block_invoke_6;
    v54[3] = &unk_278503C40;
    v58 = v29;
    v54[4] = self;
    v55 = identifierCopy;
    v30 = v14;
    v56 = v30;
    v31 = v15;
    v57 = v31;
    v32 = MEMORY[0x22AA4A310](v54);
    v33 = v32;
    if (possible)
    {
      (*(v32 + 16))(v32);
    }

    else
    {
      tracker = self->super._tracker;
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __135__BRCXPCRegularIPCsClient_FPFSAdditions__accessItemIdentifier_dbAccessKind_synchronouslyIfPossible_LocalItemHandler_ServerItemHandler___block_invoke_2_8;
      v51[3] = &unk_278503C68;
      v52 = v30;
      v53 = v31;
      brc_task_tracker_async_with_logs(tracker, readOnlyWorkloop, v33, v51);
    }

    _BRRestorePersona();
  }
}

uint64_t __135__BRCXPCRegularIPCsClient_FPFSAdditions__accessItemIdentifier_dbAccessKind_synchronouslyIfPossible_LocalItemHandler_ServerItemHandler___block_invoke(uint64_t a1, void *a2)
{
  a2;
  v3 = *(a1 + 32);
  if (v3 || (v3 = *(a1 + 40)) != 0)
  {
    (*(v3 + 16))(v3, 0);
  }

  return MEMORY[0x2821F9730]();
}

void __135__BRCXPCRegularIPCsClient_FPFSAdditions__accessItemIdentifier_dbAccessKind_synchronouslyIfPossible_LocalItemHandler_ServerItemHandler___block_invoke_2()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = accessItemIdentifier_dbAccessKind_synchronouslyIfPossible_LocalItemHandler_ServerItemHandler____personalPersona;
  accessItemIdentifier_dbAccessKind_synchronouslyIfPossible_LocalItemHandler_ServerItemHandler____personalPersona = v0;
}

void __135__BRCXPCRegularIPCsClient_FPFSAdditions__accessItemIdentifier_dbAccessKind_synchronouslyIfPossible_LocalItemHandler_ServerItemHandler___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = [*(a1 + 32) session];
  v4 = v3;
  if (v2 == 1)
  {
    v5 = [v3 readOnlyDB];

    v6 = [*(a1 + 32) session];
    [v6 clientReadDatabaseFacade];
  }

  else
  {
    v5 = [v3 clientDB];

    v6 = [*(a1 + 32) session];
    [v6 clientReadWriteDatabaseFacade];
  }
  v7 = ;

  [v5 assertOnQueue];
  v8 = [*(a1 + 32) session];
  v9 = [v8 itemFetcher];
  v10 = [MEMORY[0x277CFAE50] fileObjectIDWithString:*(a1 + 40)];
  v11 = [v9 itemByFileObjectID:v10 dbFacade:v7];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:*(a1 + 40)];
  }

  v13 = *(a1 + 48);
  v19 = v12;
  if (v13)
  {
    (*(v13 + 16))(v13, v11);
  }

  else if (*(a1 + 56))
  {
    v14 = [v11 clientZone];
    v15 = [v11 itemID];
    v16 = [v14 serverItemByItemID:v15 dbFacade:v7];

    if (v16)
    {
      v17 = v19;
    }

    else
    {
      v18 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:*(a1 + 40)];

      v17 = v18;
    }

    v19 = v17;
    (*(*(a1 + 56) + 16))();
  }
}

void __135__BRCXPCRegularIPCsClient_FPFSAdditions__accessItemIdentifier_dbAccessKind_synchronouslyIfPossible_LocalItemHandler_ServerItemHandler___block_invoke_2_8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 || (v1 = *(a1 + 40)) != 0)
  {
    v2 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
    (*(v1 + 16))(v1, 0, v2);
  }
}

- (void)removeFPFSDomain:(id)domain
{
  v65 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  memset(v54, 0, sizeof(v54));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) removeFPFSDomain:]", 207, 0, v54);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v54[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy4 = v7;
    v57 = 2112;
    selfCopy = self;
    v59 = 2112;
    v60 = v9;
    v61 = 2080;
    v62 = "[BRCXPCRegularIPCsClient(FPFSAdditions) removeFPFSDomain:]";
    v63 = 2112;
    v64 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v10 = *MEMORY[0x277CFAC58];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __59__BRCXPCRegularIPCsClient_FPFSAdditions__removeFPFSDomain___block_invoke;
  v52[3] = &unk_2785014D0;
  v52[4] = self;
  v11 = domainCopy;
  v53 = v11;
  LODWORD(v10) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v10, v52);

  if (v10)
  {
    session = [(BRCXPCClient *)self session];
    personaIdentifier = [session personaIdentifier];

    if (!personaIdentifier)
    {
      mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
      personaIdentifier = [mEMORY[0x277D77BF8] br_currentPersonaID];
    }

    if ([(BRCXPCRegularIPCsClient *)personaIdentifier isEqualToString:@"__defaultPersonaID__"])
    {
      v15 = 0;
    }

    else
    {
      v15 = personaIdentifier;
    }

    v16 = v15;
    v17 = personaIdentifier;
    if (!v16)
    {
      if (removeFPFSDomain____personaOnceToken != -1)
      {
        [BRCXPCRegularIPCsClient(FPFSAdditions) removeFPFSDomain:];
      }

      v17 = removeFPFSDomain____personalPersona;
    }

    mEMORY[0x277D77BF8]2 = [MEMORY[0x277D77BF8] sharedManager];
    currentPersona = [mEMORY[0x277D77BF8]2 currentPersona];

    v51 = 0;
    userPersonaUniqueString = [currentPersona userPersonaUniqueString];
    v20 = userPersonaUniqueString;
    if (userPersonaUniqueString == v17 || ([(BRCXPCRegularIPCsClient *)userPersonaUniqueString isEqualToString:v17]& 1) != 0)
    {
      goto LABEL_15;
    }

    if (voucher_process_can_use_arbitrary_personas())
    {
      v50 = 0;
      v30 = [currentPersona copyCurrentPersonaContextWithError:&v50];
      v31 = v50;
      v32 = v51;
      v51 = v30;

      if (v31)
      {
        v33 = brc_bread_crumbs();
        v34 = brc_default_log();
        if (os_log_type_enabled(v34, 0x90u))
        {
          __br_notify_register_dispatch_block_invoke_cold_4();
        }
      }

      v43 = [currentPersona br_generateAndRestorePersonaContextWithPersonaUniqueString:v17];

      if (!v43)
      {
LABEL_15:
        v43 = 0;
LABEL_16:
        v49 = 0;
        v21 = [MEMORY[0x277CC64A8] br_getDomainForCurrentPersonaWithError:&v49];
        v22 = v49;
        if (v22)
        {
          v23 = brc_bread_crumbs();
          v24 = brc_default_log();
          if (os_log_type_enabled(v24, 0x90u))
          {
            [BRCXPCRegularIPCsClient(FPFSAdditions) removeFPFSDomain:];
          }

          v25 = brc_bread_crumbs();
          v26 = brc_default_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            selfCopy4 = self;
            v57 = 2112;
            selfCopy = v22;
            v59 = 2112;
            v60 = v25;
            _os_log_impl(&dword_223E7A000, v26, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
          }

          (*(v11 + 2))(v11, v22);
        }

        else if (v21)
        {
          v27 = brc_bread_crumbs();
          v28 = brc_default_log();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            selfCopy4 = v21;
            v57 = 2112;
            selfCopy = personaIdentifier;
            v59 = 2112;
            v60 = v27;
            _os_log_debug_impl(&dword_223E7A000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] removing FPFS domain %@ with adopted persona = %@%@", buf, 0x20u);
          }

          br_sharedProviderManager = [MEMORY[0x277CC64A8] br_sharedProviderManager];
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __59__BRCXPCRegularIPCsClient_FPFSAdditions__removeFPFSDomain___block_invoke_13;
          v45[3] = &unk_278501778;
          v46 = v21;
          selfCopy3 = self;
          v48 = v11;
          [br_sharedProviderManager br_removeDomain:v46 sync:0 completionHandler:v45];
        }

        else
        {
          v39 = brc_bread_crumbs();
          v40 = brc_default_log();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            [BRCXPCRegularIPCsClient(FPFSAdditions) removeFPFSDomain:];
          }

          v41 = brc_bread_crumbs();
          v42 = brc_default_log();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            selfCopy4 = self;
            v57 = 2112;
            selfCopy = 0;
            v59 = 2112;
            v60 = v41;
            _os_log_impl(&dword_223E7A000, v42, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
          }

          (*(v11 + 2))(v11, 0);
        }

        _BRRestorePersona();
        goto LABEL_45;
      }

      v35 = brc_bread_crumbs();
      v36 = brc_default_log();
      if (os_log_type_enabled(v36, 0x90u))
      {
        *buf = 138412802;
        selfCopy4 = personaIdentifier;
        v57 = 2112;
        selfCopy = v43;
        v59 = 2112;
        v60 = v35;
        _os_log_error_impl(&dword_223E7A000, v36, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }
    }

    else
    {
      if (v16 || ([currentPersona isDataSeparatedPersona] & 1) != 0)
      {
        v37 = brc_bread_crumbs();
        v38 = brc_default_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          __br_notify_register_dispatch_block_invoke_cold_3();
        }

        v43 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
        goto LABEL_16;
      }

      v35 = brc_bread_crumbs();
      v36 = brc_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_2();
      }

      v43 = 0;
    }

    goto LABEL_16;
  }

LABEL_45:
  __brc_leave_section(v54);
}

void __59__BRCXPCRegularIPCsClient_FPFSAdditions__removeFPFSDomain___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __59__BRCXPCRegularIPCsClient_FPFSAdditions__removeFPFSDomain___block_invoke_9()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = removeFPFSDomain____personalPersona;
  removeFPFSDomain____personalPersona = v0;
}

void __59__BRCXPCRegularIPCsClient_FPFSAdditions__removeFPFSDomain___block_invoke_13(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = [*(a1 + 32) identifier];
    v10 = 138412802;
    v11 = v9;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] Removed domain %@ with error %@%@", &v10, 0x20u);
  }

  if (!v3)
  {
    BRPostAccountTokenChangedNotification();
  }

  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 40);
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v10, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)getPathForRecordID:(id)d forContainer:(id)container reply:(id)reply
{
  v43 = *MEMORY[0x277D85DE8];
  dCopy = d;
  containerCopy = container;
  replyCopy = reply;
  memset(v32, 0, 24);
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) getPathForRecordID:forContainer:reply:]", 247, 0, v32);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v32[0];
    v14 = qos_class_self();
    v15 = BRCPrettyPrintEnumWithContext(v14, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy3 = v13;
    v35 = 2112;
    selfCopy = self;
    v37 = 2112;
    v38 = v15;
    v39 = 2080;
    v40 = "[BRCXPCRegularIPCsClient(FPFSAdditions) getPathForRecordID:forContainer:reply:]";
    v41 = 2112;
    v42 = v11;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v16 = *MEMORY[0x277CFAC58];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __80__BRCXPCRegularIPCsClient_FPFSAdditions__getPathForRecordID_forContainer_reply___block_invoke;
  v30[3] = &unk_2785014D0;
  v30[4] = self;
  v17 = replyCopy;
  v31 = v17;
  LODWORD(v16) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v16, v30);

  if (v16)
  {
    v32[3] = 0;
    v32[4] = 0;
    if (_br_parseUUIDString())
    {
      session = [(BRCXPCClient *)self session];
      clientTruthWorkloop = [session clientTruthWorkloop];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __80__BRCXPCRegularIPCsClient_FPFSAdditions__getPathForRecordID_forContainer_reply___block_invoke_17;
      v24[3] = &unk_278501638;
      v25 = session;
      v26 = containerCopy;
      selfCopy2 = self;
      v29 = v17;
      v28 = dCopy;
      v20 = session;
      dispatch_async(clientTruthWorkloop, v24);
    }

    else
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"RecordID" value:dCopy];
        *buf = 138413058;
        selfCopy3 = self;
        v35 = 2112;
        selfCopy = 0;
        v37 = 2112;
        v38 = v23;
        v39 = 2112;
        v40 = v21;
        _os_log_impl(&dword_223E7A000, v22, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
      }

      v20 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"RecordID" value:dCopy];
      (*(v17 + 2))(v17, 0, v20);
    }
  }

  __brc_leave_section(v32);
}

void __80__BRCXPCRegularIPCsClient_FPFSAdditions__getPathForRecordID_forContainer_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __80__BRCXPCRegularIPCsClient_FPFSAdditions__getPathForRecordID_forContainer_reply___block_invoke_17(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) appLibraryByID:*(a1 + 40)];
  v3 = [v2 defaultClientZone];

  if (v3)
  {
    v4 = [[BRCItemID alloc] initWithUUIDString:*(a1 + 56)];
    v5 = [v3 itemByItemID:v4];
    if (v5)
    {
      v6 = [MEMORY[0x277CC64A8] br_sharedProviderManager];
      v7 = [v5 fileObjectID];
      v8 = [v7 asString];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __80__BRCXPCRegularIPCsClient_FPFSAdditions__getPathForRecordID_forContainer_reply___block_invoke_19;
      v20[3] = &unk_278503C90;
      v20[4] = *(a1 + 48);
      v21 = *(a1 + 64);
      [v6 getUserVisibleURLForItemIdentifier:v8 completionHandler:v20];
    }

    else
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = *(a1 + 48);
        v17 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:*(a1 + 56)];
        *buf = 138413058;
        v23 = v16;
        v24 = 2112;
        v25 = 0;
        v26 = 2112;
        v27 = v17;
        v28 = 2112;
        v29 = v14;
        _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
      }

      v18 = *(a1 + 64);
      v19 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:*(a1 + 56)];
      (*(v18 + 16))(v18, 0, v19);
    }
  }

  else
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 48);
      v12 = [MEMORY[0x277CCA9B8] brc_errorClientZoneNotFound:*(a1 + 40)];
      *buf = 138413058;
      v23 = v11;
      v24 = 2112;
      v25 = 0;
      v26 = 2112;
      v27 = v12;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    v13 = *(a1 + 64);
    v4 = [MEMORY[0x277CCA9B8] brc_errorClientZoneNotFound:*(a1 + 40)];
    (*(v13 + 16))(v13, 0, v4);
  }
}

void __80__BRCXPCRegularIPCsClient_FPFSAdditions__getPathForRecordID_forContainer_reply___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v10 = [v5 path];
    v13 = 138413058;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v13, 0x2Au);
  }

  v11 = *(a1 + 40);
  v12 = [v5 path];
  (*(v11 + 16))(v11, v12, v6);
}

- (void)getQueryItemForBRFileObjectID:(id)d reply:(id)reply
{
  v40 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  memset(v29, 0, sizeof(v29));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) getQueryItemForBRFileObjectID:reply:]", 275, 0, v29);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v29[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v10;
    v32 = 2112;
    selfCopy = self;
    v34 = 2112;
    v35 = v12;
    v36 = 2080;
    v37 = "[BRCXPCRegularIPCsClient(FPFSAdditions) getQueryItemForBRFileObjectID:reply:]";
    v38 = 2112;
    v39 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v13 = *MEMORY[0x277CFAC68];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __78__BRCXPCRegularIPCsClient_FPFSAdditions__getQueryItemForBRFileObjectID_reply___block_invoke;
  v27[3] = &unk_2785014D0;
  v27[4] = self;
  v14 = replyCopy;
  v28 = v14;
  LODWORD(v13) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v13, v27);

  if (v13)
  {
    if ([dCopy isRootContainerItem])
    {
      v15 = [BRCNotification alloc];
      session = [(BRCXPCClient *)self session];
      v17 = [(BRCNotification *)v15 initRootContainerNotificationWithSessionContext:session];

      session2 = [(BRCXPCClient *)self session];
      fsUploader = [session2 fsUploader];
      v20 = [fsUploader quotaAvailableForOwner:*MEMORY[0x277CBBF28]];

      [(BRCXPCRegularIPCsClient *)v17 setAttribute:v20 forKey:*MEMORY[0x277CFB058]];
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        selfCopy2 = self;
        v32 = 2112;
        selfCopy = v17;
        v34 = 2112;
        v35 = 0;
        v36 = 2112;
        v37 = v21;
        _os_log_impl(&dword_223E7A000, v22, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
      }

      (*(v14 + 2))(v14, v17, 0);
    }

    else
    {
      session3 = [(BRCXPCClient *)self session];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __78__BRCXPCRegularIPCsClient_FPFSAdditions__getQueryItemForBRFileObjectID_reply___block_invoke_22;
      v24[3] = &unk_278503CB8;
      v24[4] = self;
      v25 = dCopy;
      v26 = v14;
      [session3 performSyncOnClientReadDatabaseWorkloop:v24];
    }
  }

  __brc_leave_section(v29);
}

void __78__BRCXPCRegularIPCsClient_FPFSAdditions__getQueryItemForBRFileObjectID_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __78__BRCXPCRegularIPCsClient_FPFSAdditions__getQueryItemForBRFileObjectID_reply___block_invoke_22(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 session];
  v6 = [v5 itemFetcher];
  v7 = [v6 itemByFileObjectID:*(a1 + 40) dbFacade:v4];

  if (v7 && ![v7 isDead])
  {
    v16 = [BRCNotification notificationFromItem:v7];
    if ([v7 isFSRoot])
    {
      v18 = MEMORY[0x277CFAE98];
      v19 = [v7 appLibrary];
      v20 = [v19 containerMetadata];
      v21 = [v18 containerItemForContainer:v20 withRepresentativeItem:v16];

      v16 = v21;
    }

    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(a1 + 32);
      v25 = 138413058;
      v26 = v24;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = 0;
      v31 = 2112;
      v32 = v22;
      _os_log_impl(&dword_223E7A000, v23, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v25, 0x2Au);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = MEMORY[0x277CCA9B8];
      v11 = *(a1 + 32);
      v12 = [*(a1 + 40) asString];
      v13 = [v10 brc_errorItemNotFound:v12];
      v25 = 138413058;
      v26 = v11;
      v27 = 2112;
      v28 = 0;
      v29 = 2112;
      v30 = v13;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v25, 0x2Au);
    }

    v14 = MEMORY[0x277CCA9B8];
    v15 = *(a1 + 48);
    v16 = [*(a1 + 40) asString];
    v17 = [v14 brc_errorItemNotFound:v16];
    (*(v15 + 16))(v15, 0, v17);
  }
}

- (void)getDefaultAppContainerItemForContainerID:(id)d recreateDocumentsIfNeeded:(BOOL)needed reply:(id)reply
{
  v51 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  memset(v40, 0, sizeof(v40));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) getDefaultAppContainerItemForContainerID:recreateDocumentsIfNeeded:reply:]", 305, 0, v40);
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v40[0];
    v13 = qos_class_self();
    v14 = BRCPrettyPrintEnumWithContext(v13, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy4 = v12;
    v43 = 2112;
    selfCopy = self;
    v45 = 2112;
    v46 = v14;
    v47 = 2080;
    v48 = "[BRCXPCRegularIPCsClient(FPFSAdditions) getDefaultAppContainerItemForContainerID:recreateDocumentsIfNeeded:reply:]";
    v49 = 2112;
    v50 = v10;
    _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v15 = *MEMORY[0x277CFAC68];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __115__BRCXPCRegularIPCsClient_FPFSAdditions__getDefaultAppContainerItemForContainerID_recreateDocumentsIfNeeded_reply___block_invoke;
  v38[3] = &unk_2785014D0;
  v38[4] = self;
  v16 = replyCopy;
  v39 = v16;
  LODWORD(v15) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v15, v38);

  if (v15)
  {
    if (!dCopy || (v17 = [objc_alloc(MEMORY[0x277CFAE60]) initWithAppLibraryName:dCopy]) == 0)
    {
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"containerID" value:0];
        *buf = 138413058;
        selfCopy4 = self;
        v43 = 2112;
        selfCopy = 0;
        v45 = 2112;
        v46 = v26;
        v47 = 2112;
        v48 = v24;
        _os_log_impl(&dword_223E7A000, v25, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
      }

      v17 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"containerID" value:0];
      (*(v16 + 2))(v16, 0, v17);
      goto LABEL_20;
    }

    v37 = 0;
    v18 = [(BRCXPCClient *)self _setupAppLibrary:v17 error:&v37];
    v19 = v18;
    if (v18)
    {
      containerMetadata = [v18 containerMetadata];
      isDocumentScopePublic = [containerMetadata isDocumentScopePublic];

      if (isDocumentScopePublic)
      {
        session = [(BRCXPCClient *)self session];
        clientTruthWorkloop = [session clientTruthWorkloop];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __115__BRCXPCRegularIPCsClient_FPFSAdditions__getDefaultAppContainerItemForContainerID_recreateDocumentsIfNeeded_reply___block_invoke_29;
        block[3] = &unk_278503CE0;
        neededCopy = needed;
        block[4] = self;
        v33 = v19;
        v34 = dCopy;
        v35 = v16;
        dispatch_async_and_wait(clientTruthWorkloop, block);

LABEL_19:
LABEL_20:

        goto LABEL_21;
      }

      v30 = brc_bread_crumbs();
      v31 = brc_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        selfCopy4 = self;
        v43 = 2112;
        selfCopy = 0;
        v45 = 2112;
        v46 = 0;
        v47 = 2112;
        v48 = v30;
        _os_log_impl(&dword_223E7A000, v31, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
      }

      v29 = 0;
    }

    else
    {
      v27 = brc_bread_crumbs();
      v28 = brc_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        selfCopy4 = self;
        v43 = 2112;
        selfCopy = 0;
        v45 = 2112;
        v46 = v37;
        v47 = 2112;
        v48 = v27;
        _os_log_impl(&dword_223E7A000, v28, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
      }

      v29 = v37;
    }

    (*(v16 + 2))(v16, 0, v29);
    goto LABEL_19;
  }

LABEL_21:
  __brc_leave_section(v40);
}

void __115__BRCXPCRegularIPCsClient_FPFSAdditions__getDefaultAppContainerItemForContainerID_recreateDocumentsIfNeeded_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __115__BRCXPCRegularIPCsClient_FPFSAdditions__getDefaultAppContainerItemForContainerID_recreateDocumentsIfNeeded_reply___block_invoke_29(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 32) session];
    v3 = [v2 clientDB];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __115__BRCXPCRegularIPCsClient_FPFSAdditions__getDefaultAppContainerItemForContainerID_recreateDocumentsIfNeeded_reply___block_invoke_2;
    v15[3] = &unk_2784FFA48;
    v16 = *(a1 + 40);
    [v3 performWithFlags:4 action:v15];
  }

  v4 = [*(a1 + 40) fetchDocumentsDirectoryItem];
  v5 = [BRCNotification notificationFromItem:v4];

  v6 = MEMORY[0x277CFAE98];
  v7 = [*(a1 + 40) containerMetadata];
  v8 = [v6 containerItemForContainer:v7 withRepresentativeItem:v5];

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 48);
    *buf = 138412802;
    v18 = v14;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] getDefaultAppContainerItemForContainerID(%@) = %@%@", buf, 0x20u);
  }

  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 32);
    *buf = 138413058;
    v18 = v13;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = 0;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
  }

  (*(*(a1 + 56) + 16))();
}

- (void)_queueOrCallCompletionBlock:(id)block
{
  blockCopy = block;
  session = [(BRCXPCClient *)self session];
  clientDB = [session clientDB];
  [clientDB scheduleFlushWithCheckpoint:1 whenFlushed:blockCopy];
}

- (void)createItemBasedOnTemplate:(id)template fields:(unint64_t)fields contents:(id)contents options:(unint64_t)options additionalItemAttributes:(id)attributes completionHandler:(id)handler
{
  v99 = *MEMORY[0x277D85DE8];
  templateCopy = template;
  contentsCopy = contents;
  attributesCopy = attributes;
  handlerCopy = handler;
  v91[0] = 0;
  v91[1] = v91;
  v91[2] = 0x3032000000;
  v91[3] = __Block_byref_object_copy__27;
  v91[4] = __Block_byref_object_dispose__27;
  v15 = (options & 1);
  v92 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = __135__BRCXPCRegularIPCsClient_FPFSAdditions__createItemBasedOnTemplate_fields_contents_options_additionalItemAttributes_completionHandler___block_invoke;
  v88[3] = &unk_278503D08;
  v90 = v91;
  v65 = handlerCopy;
  v89 = v65;
  v16 = MEMORY[0x22AA4A310](v88);
  memset(v87, 0, sizeof(v87));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) createItemBasedOnTemplate:fields:contents:options:additionalItemAttributes:completionHandler:]", 372, 0, v87);
  v17 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = templateCopy;
    v20 = v87[0];
    v21 = qos_class_self();
    v22 = BRCPrettyPrintEnumWithContext(v21, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy4 = v20;
    v95 = 2112;
    selfCopy = self;
    v97 = 2112;
    *v98 = v22;
    *&v98[8] = 2080;
    *&v98[10] = "[BRCXPCRegularIPCsClient(FPFSAdditions) createItemBasedOnTemplate:fields:contents:options:additionalItemAttributes:completionHandler:]";
    *&v98[18] = 2112;
    *&v98[20] = v17;
    _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);

    templateCopy = v19;
  }

  v23 = *MEMORY[0x277CFAC68];
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __135__BRCXPCRegularIPCsClient_FPFSAdditions__createItemBasedOnTemplate_fields_contents_options_additionalItemAttributes_completionHandler___block_invoke_43;
  v85[3] = &unk_2785014D0;
  v85[4] = self;
  v24 = v16;
  v86 = v24;
  v25 = _brc_ipc_check_entitlement_and_logged_status(self, 1, v23, v85);

  if (v25)
  {
    parentItemIdentifier = [(BRCXPCRegularIPCsClient *)templateCopy parentItemIdentifier];
    v27 = [parentItemIdentifier isEqualToString:*MEMORY[0x277CC6358]];

    if (v27)
    {
      parentItemIdentifier5 = 0;
    }

    else
    {
      v29 = MEMORY[0x277CFAE50];
      parentItemIdentifier2 = [(BRCXPCRegularIPCsClient *)templateCopy parentItemIdentifier];
      parentItemIdentifier5 = [v29 fileObjectIDWithString:parentItemIdentifier2];

      if (!parentItemIdentifier5)
      {
        v47 = brc_bread_crumbs();
        v48 = brc_default_log();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          parentItemIdentifier3 = [(BRCXPCRegularIPCsClient *)templateCopy parentItemIdentifier];
          *buf = 138412802;
          selfCopy4 = parentItemIdentifier3;
          v95 = 2112;
          selfCopy = templateCopy;
          v97 = 2112;
          *v98 = v47;
          _os_log_debug_impl(&dword_223E7A000, v48, OS_LOG_TYPE_DEBUG, "[DEBUG] Failed to get new parent identifier from %@, template %@%@", buf, 0x20u);
        }

        v49 = brc_bread_crumbs();
        v50 = brc_default_log();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v51 = MEMORY[0x277CCA9B8];
          parentItemIdentifier4 = [(BRCXPCRegularIPCsClient *)templateCopy parentItemIdentifier];
          v53 = [v51 brc_errorInvalidParameter:@"parentItemIdentifier" value:parentItemIdentifier4];
          *buf = 138413314;
          selfCopy4 = self;
          v95 = 2112;
          selfCopy = 0;
          v97 = 1024;
          *v98 = 0;
          *&v98[4] = 2112;
          *&v98[6] = v53;
          *&v98[14] = 2112;
          *&v98[16] = v49;
          _os_log_impl(&dword_223E7A000, v50, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %d, %@)%@", buf, 0x30u);
        }

        v54 = MEMORY[0x277CCA9B8];
        parentItemIdentifier5 = [(BRCXPCRegularIPCsClient *)templateCopy parentItemIdentifier];
        session = [v54 brc_errorInvalidParameter:@"parentItemIdentifier" value:parentItemIdentifier5];
        (*(v24 + 2))(v24, 0, 0, session);
        goto LABEL_35;
      }
    }

    session = [(BRCXPCClient *)self session];
    if (![parentItemIdentifier5 isRootContainerItem])
    {
      if (options)
      {
        buf[0] = 0;
        v38 = [BRCImportBookmark extractBookmarkDataFromTemplateItem:"extractBookmarkDataFromTemplateItem:isTrashBookmark:" isTrashBookmark:?];
        if ([v38 length])
        {
          v39 = [BRCImportBookmark alloc];
          v15 = [(BRCImportBookmark *)v39 initWithBookmarkData:v38 isTrashBookmark:buf[0] session:session];
          if (!v15)
          {
            v40 = brc_bread_crumbs();
            v41 = brc_default_log();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
            {
              [BRCXPCRegularIPCsClient(FPFSAdditions) createItemBasedOnTemplate:fields:contents:options:additionalItemAttributes:completionHandler:];
            }
          }

          mangledID = [(BRCImportBookmark *)v15 mangledID];
          if ([mangledID isShared])
          {
            v43 = [session getOrCreateSharedZones:mangledID];
          }

          else
          {
            v55 = [session getOrCreateAppLibraryAndPrivateZonesIfNecessary:mangledID];
          }
        }

        else
        {
          v15 = 0;
        }
      }

      clientReadWriteDatabaseFacade = [session clientReadWriteDatabaseFacade];
      workloop = [clientReadWriteDatabaseFacade workloop];
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __135__BRCXPCRegularIPCsClient_FPFSAdditions__createItemBasedOnTemplate_fields_contents_options_additionalItemAttributes_completionHandler___block_invoke_49;
      v68[3] = &unk_278503E40;
      v69 = contentsCopy;
      v79 = v63;
      optionsCopy = options;
      v70 = templateCopy;
      v78 = v91;
      v71 = session;
      v81 = v27;
      v72 = parentItemIdentifier5;
      selfCopy3 = self;
      v77 = v24;
      v74 = v15;
      v75 = clientReadWriteDatabaseFacade;
      v76 = attributesCopy;
      v58 = clientReadWriteDatabaseFacade;
      brc_errorExcludedFromSyncUnderRoot2 = v15;
      dispatch_async_and_wait(workloop, v68);

      goto LABEL_34;
    }

    contentType = [(BRCXPCRegularIPCsClient *)templateCopy contentType];
    if ([contentType br_isDirectoryType])
    {
      v32 = MEMORY[0x277CFAE60];
      filename = [(BRCXPCRegularIPCsClient *)templateCopy filename];
      LOBYTE(v32) = [v32 validateMangledIDString:filename strict:1];

      if (v32)
      {
        if (contentsCopy)
        {
          v60 = brc_bread_crumbs();
          v61 = brc_default_log();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
          {
            [BRCXPCRegularIPCsClient(FPFSAdditions) createItemBasedOnTemplate:fields:contents:options:additionalItemAttributes:completionHandler:];
          }
        }

        fsImporter = [session fsImporter];
        v35 = [fsImporter importAppLibraryRootFromTemplateItem:templateCopy];

        clientTruthWorkloop = [session clientTruthWorkloop];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __135__BRCXPCRegularIPCsClient_FPFSAdditions__createItemBasedOnTemplate_fields_contents_options_additionalItemAttributes_completionHandler___block_invoke_47;
        block[3] = &unk_2784FF5B8;
        block[4] = self;
        v83 = v35;
        v84 = v24;
        brc_errorExcludedFromSyncUnderRoot2 = v35;
        dispatch_async_and_wait(clientTruthWorkloop, block);

LABEL_34:
LABEL_35:

        goto LABEL_36;
      }
    }

    else
    {
    }

    v44 = brc_bread_crumbs();
    v45 = brc_default_log();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      brc_errorExcludedFromSyncUnderRoot = [MEMORY[0x277CCA9B8] brc_errorExcludedFromSyncUnderRoot];
      *buf = 138413314;
      selfCopy4 = self;
      v95 = 2112;
      selfCopy = 0;
      v97 = 1024;
      *v98 = 0;
      *&v98[4] = 2112;
      *&v98[6] = brc_errorExcludedFromSyncUnderRoot;
      *&v98[14] = 2112;
      *&v98[16] = v44;
      _os_log_impl(&dword_223E7A000, v45, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %d, %@)%@", buf, 0x30u);
    }

    brc_errorExcludedFromSyncUnderRoot2 = [MEMORY[0x277CCA9B8] brc_errorExcludedFromSyncUnderRoot];
    (*(v24 + 2))(v24, 0, 0, brc_errorExcludedFromSyncUnderRoot2);
    goto LABEL_34;
  }

LABEL_36:
  __brc_leave_section(v87);

  _Block_object_dispose(v91, 8);
}

void __135__BRCXPCRegularIPCsClient_FPFSAdditions__createItemBasedOnTemplate_fields_contents_options_additionalItemAttributes_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  if (v6)
  {
    if ([*(*(*(a1 + 40) + 8) + 40) BOOLValue] && !objc_msgSend(v6, "br_isCloudDocsErrorCode:", 82))
    {
      v7 = @"FPFSMigration";
      goto LABEL_8;
    }

    if (([v6 br_isCloudDocsErrorCode:14] & 1) != 0 || objc_msgSend(v6, "br_isPOSIXErrorCode:", 17))
    {
      v7 = @"SyncHealth";
LABEL_8:
      v8 = +[BRCAutoBugCaptureReporter sharedABCReporter];
      [v8 captureLogsForOperationType:v7 ofSubtype:@"ErrorCreatingItem" forError:v6];
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __135__BRCXPCRegularIPCsClient_FPFSAdditions__createItemBasedOnTemplate_fields_contents_options_additionalItemAttributes_completionHandler___block_invoke_43(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413314;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 1024;
    v12 = 0;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %d, %@)%@", &v7, 0x30u);
  }

  (*(*(a1 + 40) + 16))();
}

void __135__BRCXPCRegularIPCsClient_FPFSAdditions__createItemBasedOnTemplate_fields_contents_options_additionalItemAttributes_completionHandler___block_invoke_47(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __135__BRCXPCRegularIPCsClient_FPFSAdditions__createItemBasedOnTemplate_fields_contents_options_additionalItemAttributes_completionHandler___block_invoke_2;
  v3[3] = &unk_2784FF5B8;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _queueOrCallCompletionBlock:v3];
}

uint64_t __135__BRCXPCRegularIPCsClient_FPFSAdditions__createItemBasedOnTemplate_fields_contents_options_additionalItemAttributes_completionHandler___block_invoke_2(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = a1[4];
    v5 = a1[5];
    v7 = 138413314;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    v11 = 1024;
    v12 = 0;
    v13 = 2112;
    v14 = 0;
    v15 = 2112;
    v16 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %d, %@)%@", &v7, 0x30u);
  }

  return (*(a1[6] + 16))();
}

void __135__BRCXPCRegularIPCsClient_FPFSAdditions__createItemBasedOnTemplate_fields_contents_options_additionalItemAttributes_completionHandler___block_invoke_49(uint64_t a1)
{
  v86 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) url];
  memset(v77, 0, sizeof(v77));
  __brc_create_section(0, "[BRCXPCRegularIPCsClient(FPFSAdditions) createItemBasedOnTemplate:fields:contents:options:additionalItemAttributes:completionHandler:]_block_invoke", 443, 0, v77);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v63 = v77[0];
    v64 = *(a1 + 40);
    v65 = [v2 path];
    v66 = BRCPrettyPrintBitmap();
    v67 = BRCPrettyPrintBitmap();
    *buf = 134219266;
    v79 = v63;
    v80 = 2112;
    v81 = v64;
    v82 = 2112;
    *v83 = v65;
    *&v83[8] = 2112;
    *&v83[10] = v66;
    *&v83[18] = 2112;
    *&v83[20] = v67;
    v84 = 2112;
    v85 = v3;
    _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx creating item based on template %@ at '%@' fields:%@ options:%@%@", buf, 0x3Eu);
  }

  v5 = MEMORY[0x277CCABB0];
  if ([*(*(*(a1 + 104) + 8) + 40) BOOLValue])
  {
    v6 = [*(a1 + 48) fpfsMigrationState] == 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v5 numberWithInt:v6];
  v8 = *(*(a1 + 104) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(a1 + 48);
  if (*(a1 + 128))
  {
    v11 = [*(a1 + 72) mangledID];
    v12 = [v10 clientZoneByMangledID:v11];

    v13 = [*(a1 + 72) itemID];
    v14 = [v12 itemByItemID:v13];

    if (![v14 isDirectory] || (objc_msgSend(v14, "asDirectory"), (v15 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v16 = [*(a1 + 48) cloudDocsClientZone];
      v15 = [v16 fetchZoneRootItemWithFacade:*(a1 + 80)];
    }

    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      __135__BRCXPCRegularIPCsClient_FPFSAdditions__createItemBasedOnTemplate_fields_contents_options_additionalItemAttributes_completionHandler___block_invoke_49_cold_2();
    }

    goto LABEL_22;
  }

  v19 = [*(a1 + 48) itemFetcher];
  v20 = [v19 itemByFileObjectID:*(a1 + 56)];
  v15 = [v20 asDirectory];

  if (v15 && ![v15 isDead])
  {
LABEL_22:
    v35 = [v2 startAccessingSecurityScopedResource];
    v76 = 0;
    v36 = [*(a1 + 48) fsImporter];
    v37 = *(a1 + 40);
    v38 = *(a1 + 112);
    v39 = *(a1 + 120);
    v40 = *(a1 + 88);
    v41 = *(a1 + 72);
    v75 = 0;
    v33 = [v36 importNewItemAtURL:v2 parentItem:v15 templateItem:v37 fields:v38 options:v39 additionalItemAttributes:v40 importBookmark:v41 stillPendingFields:&v76 error:&v75];
    v42 = v75;

    if (v35)
    {
      [v2 stopAccessingSecurityScopedResource];
    }

    if (v33)
    {
      v43 = [[BRCNotification alloc] initWithLocalItem:v33 itemDiffs:0];
      if ([v33 isZoneRoot])
      {
        v44 = [v33 appLibrary];
        v45 = [v44 containerMetadata];

        v46 = [MEMORY[0x277CFAE98] containerItemForContainer:v45 withRepresentativeItem:v43];

        v43 = v46;
      }

      v47 = *(a1 + 64);
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __135__BRCXPCRegularIPCsClient_FPFSAdditions__createItemBasedOnTemplate_fields_contents_options_additionalItemAttributes_completionHandler___block_invoke_56;
      v71[3] = &unk_278501940;
      v71[4] = v47;
      v48 = v43;
      v72 = v48;
      v74 = v76;
      v73 = *(a1 + 96);
      [v47 _queueOrCallCompletionBlock:v71];
    }

    else
    {
      v49 = brc_bread_crumbs();
      v50 = brc_default_log();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v51 = *(a1 + 64);
        *buf = 138413314;
        v79 = v51;
        v80 = 2112;
        v81 = 0;
        v82 = 1024;
        *v83 = 0;
        *&v83[4] = 2112;
        *&v83[6] = v42;
        *&v83[14] = 2112;
        *&v83[16] = v49;
        _os_log_impl(&dword_223E7A000, v50, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %d, %@)%@", buf, 0x30u);
      }

      (*(*(a1 + 96) + 16))();
    }

    goto LABEL_36;
  }

  if (([v15 isDead] & 1) != 0 || (objc_msgSend(*(a1 + 48), "recentsEnumerator"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "hasDeletedFileObjectID:", *(a1 + 56)), v21, v22))
  {
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      __135__BRCXPCRegularIPCsClient_FPFSAdditions__createItemBasedOnTemplate_fields_contents_options_additionalItemAttributes_completionHandler___block_invoke_49_cold_1((a1 + 56));
    }

    v25 = brc_bread_crumbs();
    v26 = brc_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = MEMORY[0x277CCA9B8];
      v28 = *(a1 + 64);
      v29 = [*(a1 + 56) asString];
      v30 = [v27 brc_errorParentItemRemotelyDeleted:v29];
      *buf = 138413314;
      v79 = v28;
      v80 = 2112;
      v81 = 0;
      v82 = 1024;
      *v83 = 0;
      *&v83[4] = 2112;
      *&v83[6] = v30;
      *&v83[14] = 2112;
      *&v83[16] = v25;
      _os_log_impl(&dword_223E7A000, v26, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %d, %@)%@", buf, 0x30u);
    }

    v31 = *(a1 + 96);
    v32 = MEMORY[0x277CCA9B8];
    v33 = [*(a1 + 56) asString];
    v34 = [v32 brc_errorParentItemRemotelyDeleted:v33];
    (*(v31 + 16))(v31, 0, 0, v34);
  }

  else
  {
    v52 = brc_bread_crumbs();
    v53 = brc_default_log();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      v68 = *(a1 + 56);
      v69 = @"Parent marked as dead";
      v70 = *(a1 + 40);
      if (!v15)
      {
        v69 = @"No such item";
      }

      *buf = 138413314;
      v79 = v68;
      v80 = 2112;
      v81 = v15;
      v82 = 2112;
      *v83 = v69;
      *&v83[8] = 2112;
      *&v83[10] = v70;
      *&v83[18] = 2112;
      *&v83[20] = v52;
      _os_log_debug_impl(&dword_223E7A000, v53, OS_LOG_TYPE_DEBUG, "[DEBUG] Failed to get parent item with item identifier %@. parentItem: %@. error: %@. template %@%@", buf, 0x34u);
    }

    v54 = brc_bread_crumbs();
    v55 = brc_default_log();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      v56 = *(a1 + 64);
      v57 = MEMORY[0x277CCA9B8];
      v58 = [*(a1 + 40) parentItemIdentifier];
      v59 = [v57 brc_errorItemNotFound:v58];
      *buf = 138413314;
      v79 = v56;
      v80 = 2112;
      v81 = 0;
      v82 = 1024;
      *v83 = 0;
      *&v83[4] = 2112;
      *&v83[6] = v59;
      *&v83[14] = 2112;
      *&v83[16] = v54;
      _os_log_impl(&dword_223E7A000, v55, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %d, %@)%@", buf, 0x30u);
    }

    v60 = *(a1 + 96);
    v61 = MEMORY[0x277CCA9B8];
    v33 = [*(a1 + 40) parentItemIdentifier];
    v62 = [v61 brc_errorItemNotFound:v33];
    (*(v60 + 16))(v60, 0, 0, v62);
  }

  v42 = 0;
LABEL_36:

  __brc_leave_section(v77);
}

uint64_t __135__BRCXPCRegularIPCsClient_FPFSAdditions__createItemBasedOnTemplate_fields_contents_options_additionalItemAttributes_completionHandler___block_invoke_56(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[7];
    v8 = 138413314;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %lu, %@)%@", &v8, 0x34u);
  }

  return (*(a1[6] + 16))();
}

- (void)listNonLocalVersionsWithItemIdentifier:(id)identifier reply:(id)reply
{
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  memset(v23, 0, sizeof(v23));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) listNonLocalVersionsWithItemIdentifier:reply:]", 517, 0, v23);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v23[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    v25 = v10;
    v26 = 2112;
    selfCopy = self;
    v28 = 2112;
    v29 = v12;
    v30 = 2080;
    v31 = "[BRCXPCRegularIPCsClient(FPFSAdditions) listNonLocalVersionsWithItemIdentifier:reply:]";
    v32 = 2112;
    v33 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v13 = *MEMORY[0x277CFAC68];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __87__BRCXPCRegularIPCsClient_FPFSAdditions__listNonLocalVersionsWithItemIdentifier_reply___block_invoke;
  v21[3] = &unk_2785014D0;
  v21[4] = self;
  v14 = replyCopy;
  v22 = v14;
  LODWORD(v13) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v13, v21);

  if (v13)
  {
    session = [(BRCXPCClient *)self session];
    clientTruthWorkloop = [session clientTruthWorkloop];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __87__BRCXPCRegularIPCsClient_FPFSAdditions__listNonLocalVersionsWithItemIdentifier_reply___block_invoke_57;
    v17[3] = &unk_2784FF5B8;
    v18 = identifierCopy;
    selfCopy2 = self;
    v20 = v14;
    dispatch_async_and_wait(clientTruthWorkloop, v17);
  }

  __brc_leave_section(v23);
}

void __87__BRCXPCRegularIPCsClient_FPFSAdditions__listNonLocalVersionsWithItemIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __87__BRCXPCRegularIPCsClient_FPFSAdditions__listNonLocalVersionsWithItemIdentifier_reply___block_invoke_57(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CFAE50] fileObjectIDWithString:*(a1 + 32)];
  v3 = [*(a1 + 40) session];
  v4 = [v3 itemFetcher];
  v5 = [v4 itemByFileObjectID:v2];

  if (!v5)
  {
    goto LABEL_9;
  }

  if ([v5 isDocument])
  {
    v6 = [BRCListNonLocalVersionsOperation alloc];
    v7 = [v5 asDocument];
    v8 = [*(a1 + 40) session];
    v9 = [(BRCListNonLocalVersionsOperation *)v6 initWithDocumentItem:v7 sessionContext:v8];

    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __87__BRCXPCRegularIPCsClient_FPFSAdditions__listNonLocalVersionsWithItemIdentifier_reply___block_invoke_59;
    v19 = &unk_278503E68;
    v10 = *(a1 + 48);
    v20 = *(a1 + 40);
    v21 = v10;
    [(_BRCOperation *)v9 setFinishBlock:&v16];
    [*(a1 + 40) addOperation:{v9, v16, v17, v18, v19, v20}];

    goto LABEL_8;
  }

  if (([v5 isDocument] & 1) == 0)
  {
LABEL_9:
    __87__BRCXPCRegularIPCsClient_FPFSAdditions__listNonLocalVersionsWithItemIdentifier_reply___block_invoke_57_cold_1();
  }

  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 40);
    v14 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:*(a1 + 32)];
    *buf = 138413058;
    v23 = v13;
    v24 = 2112;
    v25 = 0;
    v26 = 2112;
    v27 = v14;
    v28 = 2112;
    v29 = v11;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
  }

  v15 = *(a1 + 48);
  v9 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:*(a1 + 32)];
  (*(v15 + 16))(v15, 0, v9);
LABEL_8:
}

void __87__BRCXPCRegularIPCsClient_FPFSAdditions__listNonLocalVersionsWithItemIdentifier_reply___block_invoke_59(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v10 = [v6 brc_wrappedError];
    v13 = 138413058;
    v14 = v9;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v13, 0x2Au);
  }

  v11 = *(a1 + 40);
  v12 = [v6 brc_wrappedError];
  (*(v11 + 16))(v11, v5, v12);
}

- (void)_createFileProvidingRequestOperationOfFileObject:(id)object existingContents:(id)contents localItem:(id)item etagIfLoser:(id)loser etagToDownload:(id)download progress:(id)progress options:(unint64_t)options reply:(id)self0
{
  v176 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  contentsCopy = contents;
  itemCopy = item;
  loserCopy = loser;
  downloadCopy = download;
  progressCopy = progress;
  replyCopy = reply;
  v20 = brc_bread_crumbs();
  v21 = brc_default_log();
  v150 = downloadCopy;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    BRCPrettyPrintBitmap();
    v80 = v79 = loserCopy;
    v81 = [contentsCopy url];
    *buf = 138413570;
    selfCopy6 = itemCopy;
    v170 = 2112;
    *v171 = v150;
    *&v171[8] = 2112;
    *&v171[10] = v79;
    *&v171[18] = 2112;
    *&v171[20] = v80;
    v172 = 2112;
    v173 = v81;
    v174 = 2112;
    v175 = v20;
    _os_log_debug_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] Creating a file providing request operation for: li = %@, etag = %@, etagIfLoser = %@, options = %@, existingContents = %@%@", buf, 0x3Eu);

    loserCopy = v79;
    downloadCopy = v150;
  }

  if (!itemCopy)
  {
    v52 = brc_bread_crumbs();
    v53 = brc_default_log();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy6 = objectCopy;
      v170 = 2112;
      *v171 = v52;
      _os_log_impl(&dword_223E7A000, v53, OS_LOG_TYPE_DEFAULT, "[WARNING] We have no item to download for %@. Returning to FP that the item isn't found%@", buf, 0x16u);
    }

    v54 = brc_bread_crumbs();
    v55 = brc_default_log();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      v56 = loserCopy;
      v57 = MEMORY[0x277CCA9B8];
      asString = [(BRCXPCRegularIPCsClient *)objectCopy asString];
      v59 = [v57 fileProviderErrorForNonExistentItemWithIdentifier:asString];
      *buf = 138413058;
      selfCopy6 = self;
      v170 = 2112;
      *v171 = 0;
      *&v171[8] = 2112;
      *&v171[10] = v59;
      *&v171[18] = 2112;
      *&v171[20] = v54;
      _os_log_impl(&dword_223E7A000, v55, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);

      loserCopy = v56;
    }

    v60 = MEMORY[0x277CCA9B8];
    asString2 = [(BRCXPCRegularIPCsClient *)objectCopy asString];
    v61 = [v60 fileProviderErrorForNonExistentItemWithIdentifier:asString2];
    v46 = replyCopy;
    (*(replyCopy + 2))(replyCopy, 0, v61);

    goto LABEL_80;
  }

  if (!(loserCopy | downloadCopy))
  {
    if (![(BRCXPCRegularIPCsClient *)itemCopy isDocument])
    {
      goto LABEL_72;
    }

    if (-[BRCXPCRegularIPCsClient syncUpState](itemCopy, "syncUpState") == 7 && (-[BRCXPCRegularIPCsClient asDocument](itemCopy, "asDocument"), v62 = objc_claimAutoreleasedReturnValue(), v63 = [v62 hasFileIDForUpload], v62, (v63 & 1) == 0))
    {
      v95 = brc_bread_crumbs();
      v96 = brc_default_log();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
      {
        [BRCXPCRegularIPCsClient(FPFSAdditions) _createFileProvidingRequestOperationOfFileObject:existingContents:localItem:etagIfLoser:etagToDownload:progress:options:reply:];
      }

      v68 = brc_bread_crumbs();
      v69 = brc_default_log();
      if (!os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        goto LABEL_55;
      }
    }

    else
    {
      asDocument = [(BRCXPCRegularIPCsClient *)itemCopy asDocument];
      isDocumentBeingCopiedToNewZone = [asDocument isDocumentBeingCopiedToNewZone];

      if (!isDocumentBeingCopiedToNewZone)
      {
        asDocument2 = [(BRCXPCRegularIPCsClient *)itemCopy asDocument];
        localDiffs = [asDocument2 localDiffs];

        if ((localDiffs & 0x400000000000000) != 0)
        {
          v111 = brc_bread_crumbs();
          v112 = brc_default_log();
          if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            selfCopy6 = objectCopy;
            v170 = 2112;
            *v171 = v111;
            _os_log_impl(&dword_223E7A000, v112, OS_LOG_TYPE_DEFAULT, "[WARNING] Item %@ is undergoing zone reset so returning back with busy error%@", buf, 0x16u);
          }

          v113 = brc_bread_crumbs();
          v114 = brc_default_log();
          if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
          {
            [MEMORY[0x277CCA9B8] brc_errorItemBusy];
            v116 = v115 = loserCopy;
            *buf = 138413058;
            selfCopy6 = self;
            v170 = 2112;
            *v171 = 0;
            *&v171[8] = 2112;
            *&v171[10] = v116;
            *&v171[18] = 2112;
            *&v171[20] = v113;
            _os_log_impl(&dword_223E7A000, v114, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);

            loserCopy = v115;
          }

          asString2 = [MEMORY[0x277CCA9B8] brc_errorItemBusy];
          v46 = replyCopy;
          (*(replyCopy + 2))(replyCopy, 0, asString2);
          goto LABEL_80;
        }

        asDocument3 = [(BRCXPCRegularIPCsClient *)itemCopy asDocument];
        currentVersion = [asDocument3 currentVersion];
        ckInfo = [currentVersion ckInfo];
        if (ckInfo)
        {

          goto LABEL_72;
        }

        [(BRCXPCRegularIPCsClient *)itemCopy asDocument];
        v118 = v117 = loserCopy;
        isKnownByServer = [v118 isKnownByServer];

        loserCopy = v117;
        if (!isKnownByServer)
        {
          goto LABEL_72;
        }

        v120 = brc_bread_crumbs();
        v121 = brc_default_log();
        if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
        {
          [BRCXPCRegularIPCsClient(FPFSAdditions) _createFileProvidingRequestOperationOfFileObject:existingContents:localItem:etagIfLoser:etagToDownload:progress:options:reply:];
        }

        v68 = brc_bread_crumbs();
        v69 = brc_default_log();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          brc_errorItemBusy = [MEMORY[0x277CCA9B8] brc_errorItemBusy];
          *buf = 138413058;
          selfCopy6 = self;
          v170 = 2112;
          *v171 = 0;
          *&v171[8] = 2112;
          *&v171[10] = brc_errorItemBusy;
          *&v171[18] = 2112;
          *&v171[20] = v68;
          _os_log_impl(&dword_223E7A000, v69, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);

          loserCopy = v117;
        }

LABEL_55:

        asString2 = [MEMORY[0x277CCA9B8] brc_errorItemBusy];
LABEL_79:
        v46 = replyCopy;
        (*(replyCopy + 2))(replyCopy, 0, asString2);
LABEL_80:
        v42 = progressCopy;
        goto LABEL_81;
      }

      v66 = brc_bread_crumbs();
      v67 = brc_default_log();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy6 = objectCopy;
        v170 = 2112;
        *v171 = v66;
        _os_log_impl(&dword_223E7A000, v67, OS_LOG_TYPE_DEFAULT, "[WARNING] Item %@ is undergoing CZM so returning back with busy error%@", buf, 0x16u);
      }

      v68 = brc_bread_crumbs();
      v69 = brc_default_log();
      if (!os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        goto LABEL_55;
      }
    }

    [MEMORY[0x277CCA9B8] brc_errorItemBusy];
    v98 = v97 = loserCopy;
    *buf = 138413058;
    selfCopy6 = self;
    v170 = 2112;
    *v171 = 0;
    *&v171[8] = 2112;
    *&v171[10] = v98;
    *&v171[18] = 2112;
    *&v171[20] = v68;
    _os_log_impl(&dword_223E7A000, v69, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);

    loserCopy = v97;
    goto LABEL_55;
  }

  if (!downloadCopy)
  {
LABEL_72:
    v123 = brc_bread_crumbs();
    v124 = brc_default_log();
    if (os_log_type_enabled(v124, 0x90u))
    {
      [BRCXPCRegularIPCsClient(FPFSAdditions) _createFileProvidingRequestOperationOfFileObject:existingContents:localItem:etagIfLoser:etagToDownload:progress:options:reply:];
    }

    v125 = MEMORY[0x277CCA9B8];
    asString3 = [(BRCXPCRegularIPCsClient *)objectCopy asString];
    asString2 = [v125 brc_errorNoEtagAvailableForDownloadOfItemWithIdentifier:asString3];

    clientZone = [(BRCXPCRegularIPCsClient *)itemCopy clientZone];
    LODWORD(asString3) = [clientZone isPrivateZone];

    if (asString3)
    {
      v128 = +[BRCAutoBugCaptureReporter sharedABCReporter];
      [v128 captureLogsForOperationType:@"SyncHealth" ofSubtype:@"ErrorFetchItemContent" forError:asString2];

      session = [(BRCXPCClient *)self session];
      tapToRadarManager = [session tapToRadarManager];
      [MEMORY[0x277CCACA8] stringWithFormat:@"Got a nil etag for %@. Can't tell which is the latest version to download", itemCopy];
      v132 = v131 = loserCopy;
      [tapToRadarManager requestTapToRadarWithTitle:@"[fetch content: Got a nil etag on private zone]" description:v132 keywords:MEMORY[0x277CBEBF8] attachments:MEMORY[0x277CBEBF8] sendFullLog:1 displayReason:@"Can't tell which is the latest version to download" triggerRootCause:asString2 additionalDevices:0];

      loserCopy = v131;
    }

    v133 = brc_bread_crumbs();
    v134 = brc_default_log();
    if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      selfCopy6 = self;
      v170 = 2112;
      *v171 = 0;
      *&v171[8] = 2112;
      *&v171[10] = asString2;
      *&v171[18] = 2112;
      *&v171[20] = v133;
      _os_log_impl(&dword_223E7A000, v134, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    goto LABEL_79;
  }

  v146 = contentsCopy;
  session2 = [(BRCXPCClient *)self session];
  asString2 = [session2 fsDownloader];

  v24 = BRCConvertDownloadOptionsToInternal(options);
  v145 = [BRCFSDownloaderUtil downloadKindWithEtagIfLoser:loserCopy options:v24];
  v25 = [BRCUserDefaults defaultsForMangledID:0];
  v26 = v25;
  v144 = loserCopy;
  if ((options & 8) != 0 || ([v25 fastThrottleOnlyForSpeculativeDownloads] & 1) == 0)
  {
    [asString2 nextAllowedScheduleForItem:itemCopy withDownloadKind:v145];
    brc_current_date_nsec();
    brc_interval_from_nsec();
    v28 = v27;
    [v26 fastThrottleMinimalTimeInterval];
    if (v28 > v29)
    {
      v51 = v26;
      v70 = brc_bread_crumbs();
      v71 = brc_default_log();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        selfCopy6 = *&v28;
        v170 = 2112;
        *v171 = v70;
        _os_log_impl(&dword_223E7A000, v71, OS_LOG_TYPE_DEFAULT, "[WARNING] Downloads are throttled for the next %f seconds. Returning fast error%@", buf, 0x16u);
      }

      v72 = MEMORY[0x277CCA9B8];
      v73 = *MEMORY[0x277CFABD0];
      v166 = *MEMORY[0x277CC6318];
      v74 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v28];
      v167 = v74;
      v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v167 forKeys:&v166 count:1];
      v76 = [v72 errorWithDomain:v73 code:159 userInfo:v75];

      v50 = v76;
      v77 = brc_bread_crumbs();
      v78 = brc_default_log();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        selfCopy6 = self;
        v170 = 2112;
        *v171 = 0;
        *&v171[8] = 2112;
        *&v171[10] = v50;
        *&v171[18] = 2112;
        *&v171[20] = v77;
        _os_log_impl(&dword_223E7A000, v78, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
      }

      v46 = replyCopy;
      (*(replyCopy + 2))(replyCopy, 0, v50);
      v42 = progressCopy;
      goto LABEL_39;
    }
  }

  asDocument4 = [(BRCXPCRegularIPCsClient *)itemCopy asDocument];
  v143 = [asString2 generateContentStageFileNameForItem:asDocument4 etag:v150];

  if ((v24 & 4) == 0)
  {
    [asString2 addPendingOperationProgress:progressCopy withStageFileName:v143];
  }

  v141 = v24;
  if ([(BRCXPCRegularIPCsClient *)itemCopy isPackage])
  {
    session3 = [(BRCXPCClient *)self session];
    stageRegistry = [session3 stageRegistry];
    [stageRegistry unlinkPackageAuxiliaryContentsForStageID:v143];
  }

  v140 = v26;
  if (!loserCopy)
  {
    isPackage = [(BRCXPCRegularIPCsClient *)itemCopy isPackage];
    if (contentsCopy)
    {
      if (isPackage)
      {
        v88 = [contentsCopy url];

        if (v88)
        {
          v89 = [contentsCopy url];
          startAccessingSecurityScopedResource = [(BRCXPCRegularIPCsClient *)v89 startAccessingSecurityScopedResource];
          session4 = [(BRCXPCClient *)self session];
          stageRegistry2 = [session4 stageRegistry];
          v165 = 0;
          v137 = [stageRegistry2 clonePackageExistingContentFromSourceURL:v89 stageID:v143 error:&v165];
          v92 = v165;

          v93 = brc_bread_crumbs();
          v94 = brc_default_log();
          if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138413058;
            selfCopy6 = v89;
            v170 = 1024;
            *v171 = v137;
            *&v171[4] = 2112;
            *&v171[6] = v92;
            *&v171[14] = 2112;
            *&v171[16] = v93;
            _os_log_debug_impl(&dword_223E7A000, v94, OS_LOG_TYPE_DEBUG, "[DEBUG] Cloned existing content from %@ - %d, %@%@", buf, 0x26u);
          }

          if (startAccessingSecurityScopedResource)
          {
            [(BRCXPCRegularIPCsClient *)v89 stopAccessingSecurityScopedResource];
          }

          loserCopy = v144;
        }
      }
    }
  }

  v142 = objectCopy;
  if (![(BRCXPCRegularIPCsClient *)itemCopy isDocument]|| ([(BRCXPCRegularIPCsClient *)itemCopy isFinderBookmark]& 1) != 0)
  {
    v33 = loserCopy;
LABEL_17:
    v34 = 0;
    goto LABEL_18;
  }

  isPackage2 = [(BRCXPCRegularIPCsClient *)itemCopy isPackage];
  v34 = 0;
  if (!contentsCopy)
  {
    v33 = loserCopy;
    goto LABEL_18;
  }

  v33 = loserCopy;
  if ((isPackage2 & 1) == 0)
  {
    appLibrary = [(BRCXPCRegularIPCsClient *)itemCopy appLibrary];
    mangledID = [appLibrary mangledID];
    v102 = [BRCUserDefaults defaultsForMangledID:mangledID];
    session5 = [(BRCXPCClient *)self session];
    accountFacade = [session5 accountFacade];
    v105 = [v102 shouldPrimeMMCSCacheBeforeDownloadWithAccountFacade:accountFacade];

    if (v105)
    {
      v106 = brc_bread_crumbs();
      v107 = brc_default_log();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
      {
        [BRCXPCRegularIPCsClient(FPFSAdditions) _createFileProvidingRequestOperationOfFileObject:itemCopy existingContents:? localItem:? etagIfLoser:? etagToDownload:? progress:? options:? reply:?];
      }

      v108 = [BRCPrimeMMCSCacheOperation alloc];
      asDocument5 = [(BRCXPCRegularIPCsClient *)itemCopy asDocument];
      session6 = [(BRCXPCClient *)self session];
      v34 = [(BRCPrimeMMCSCacheOperation *)v108 initWithExistingContentsURL:v146 item:asDocument5 sessionContext:session6];

      [(BRCXPCClient *)self addOperation:v34];
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_18:
  v138 = v34;
  v135 = [[BRCNotification alloc] initWithLocalItem:itemCopy itemDiffs:0];
  liveStageFilename = [(BRCXPCRegularIPCsClient *)itemCopy liveStageFilename];
  v35 = [BRCFileProvidingRequestOperation alloc];
  asDocument6 = [(BRCXPCRegularIPCsClient *)itemCopy asDocument];
  session7 = [(BRCXPCClient *)self session];
  session8 = [(BRCXPCClient *)self session];
  downloadTrackers = [session8 downloadTrackers];
  v40 = [(BRCFileProvidingRequestOperation *)v35 initWithDocumentItem:asDocument6 client:self sessionContext:session7 downloadTrackersManager:downloadTrackers etagIfLoser:v33 stageFileName:v143 options:v141];

  v41 = [MEMORY[0x277CCABB0] numberWithInt:v145];
  v42 = progressCopy;
  [progressCopy setUserInfoObject:v41 forKey:@"BRProgressDownloadKindKey"];

  session9 = [(BRCXPCClient *)self session];
  stageRegistry3 = [session9 stageRegistry];
  [stageRegistry3 markDownloadActiveForStageID:v143];

  v45 = v40;
  v151[0] = MEMORY[0x277D85DD0];
  v151[1] = 3221225472;
  v151[2] = __168__BRCXPCRegularIPCsClient_FPFSAdditions___createFileProvidingRequestOperationOfFileObject_existingContents_localItem_etagIfLoser_etagToDownload_progress_options_reply___block_invoke;
  v151[3] = &unk_278503EE0;
  v151[4] = self;
  v152 = v143;
  v46 = replyCopy;
  v161 = replyCopy;
  v153 = v142;
  v154 = v33;
  v164 = v145;
  v155 = asString2;
  v156 = v135;
  optionsCopy = options;
  v157 = v150;
  v163 = v141;
  v158 = progressCopy;
  v159 = liveStageFilename;
  v160 = itemCopy;
  v47 = liveStageFilename;
  v48 = v135;
  v49 = v143;
  [v45 addCompletionCallback:v151];
  v50 = v138;
  if (v138)
  {
    [v45 addDependency:v138];
  }

  [(BRCXPCClient *)self addOperation:v45];

  contentsCopy = v146;
  v51 = v140;
  objectCopy = v142;
LABEL_39:

  loserCopy = v144;
LABEL_81:
}

uint64_t __168__BRCXPCRegularIPCsClient_FPFSAdditions___createFileProvidingRequestOperationOfFileObject_existingContents_localItem_etagIfLoser_etagToDownload_progress_options_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) session];
  v5 = [v4 clientReadWriteDatabaseFacade];

  v6 = [v5 workloop];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __168__BRCXPCRegularIPCsClient_FPFSAdditions___createFileProvidingRequestOperationOfFileObject_existingContents_localItem_etagIfLoser_etagToDownload_progress_options_reply___block_invoke_2;
  v22[3] = &unk_278503EB8;
  v7 = *(a1 + 40);
  v22[4] = *(a1 + 32);
  v23 = v7;
  v8 = *(a1 + 112);
  v24 = *(a1 + 48);
  v25 = v5;
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v33 = *(a1 + 136);
  v11 = *(a1 + 72);
  v31 = *(a1 + 120);
  v12 = *(a1 + 80);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v26 = v14;
  v27 = v13;
  v28 = v3;
  v15 = *(a1 + 88);
  v32 = *(a1 + 128);
  v16 = *(a1 + 96);
  *&v17 = *(a1 + 104);
  *(&v17 + 1) = v8;
  *&v18 = v15;
  *(&v18 + 1) = v16;
  v29 = v18;
  v30 = v17;
  v19 = v3;
  v20 = v5;
  dispatch_async(v6, v22);

  return 1;
}

void __168__BRCXPCRegularIPCsClient_FPFSAdditions___createFileProvidingRequestOperationOfFileObject_existingContents_localItem_etagIfLoser_etagToDownload_progress_options_reply___block_invoke_2(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __168__BRCXPCRegularIPCsClient_FPFSAdditions___createFileProvidingRequestOperationOfFileObject_existingContents_localItem_etagIfLoser_etagToDownload_progress_options_reply___block_invoke_3;
  v47[3] = &unk_278503E90;
  v2 = *(a1 + 40);
  v47[4] = *(a1 + 32);
  v48 = v2;
  v49 = *(a1 + 128);
  v3 = MEMORY[0x22AA4A310](v47);
  v4 = [*(a1 + 32) session];
  v5 = [v4 itemFetcher];
  v6 = [v5 itemByFileObjectID:*(a1 + 48) dbFacade:*(a1 + 56)];

  if (*(a1 + 64))
  {
    v7 = *(a1 + 72);
    v8 = [v6 asDocument];
    [v7 updateLoserNotificationOfItem:v8 etag:*(a1 + 64) downloadKind:*(a1 + 152) notification:*(a1 + 80)];
  }

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v41 = *(a1 + 40);
    v42 = BRCPrettyPrintBitmap();
    *buf = 138412802;
    v51 = v41;
    v52 = 2112;
    v53 = v42;
    v54 = 2112;
    v55 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] Cleanup download job and progress for %@ - options %@%@", buf, 0x20u);
  }

  v11 = *(a1 + 72);
  v12 = [v6 asDocument];
  [v11 cancelAndCleanupItemDownload:v12 kind:*(a1 + 152) etag:*(a1 + 88)];

  [*(a1 + 72) removePendingOperationProgressWithStageFileName:*(a1 + 40)];
  v13 = *(a1 + 96);
  if (!v13)
  {
    v19 = [*(a1 + 32) session];
    v20 = [v19 stageRegistry];
    v21 = [v20 downloadStageURLWithStageID:*(a1 + 40)];

    v22 = *(a1 + 144);
    v23 = [*(a1 + 32) session];
    v24 = v23;
    if ((v22 & 4) != 0)
    {
      v29 = [v23 stageRegistry];
      v30 = *(a1 + 112);
      v46 = 0;
      v18 = [v29 createStageURLForThumbnailFromLiveStageFilename:v30 error:&v46];
      v31 = v46;

      if (v31)
      {
        v32 = brc_bread_crumbs();
        v33 = brc_default_log();
        if (os_log_type_enabled(v33, 0x90u))
        {
          v44 = *(a1 + 120);
          *buf = 138412802;
          v51 = v44;
          v52 = 2112;
          v53 = v31;
          v54 = 2112;
          v55 = v32;
          _os_log_error_impl(&dword_223E7A000, v33, 0x90u, "[ERROR] Unable to create temp file for thumbnail creation stage url for item %@ with error %@%@", buf, 0x20u);
        }

        (v3)[2](v3, 0, v31);
        goto LABEL_27;
      }
    }

    else
    {
      v25 = [v23 downloadStagePathForCurrentPersona];

      v26 = [v25 stringByAppendingPathComponent:*(a1 + 40)];
      v27 = MEMORY[0x277CBEBC0];
      v28 = [v26 br_realpath];
      v18 = [v27 fileURLWithPath:v28 isDirectory:0];
    }

    if (v18)
    {
      v34 = [MEMORY[0x277CCAA00] defaultManager];
      v45 = 0;
      v35 = [v34 br_forceMoveItemAtURL:v21 toURL:v18 error:&v45];
      v31 = v45;

      if ((v35 & 1) == 0)
      {
        v36 = brc_bread_crumbs();
        v37 = brc_default_log();
        if (os_log_type_enabled(v37, 0x90u))
        {
          *buf = 138413058;
          v51 = v21;
          v52 = 2112;
          v53 = v18;
          v54 = 2112;
          v55 = v31;
          v56 = 2112;
          v57 = v36;
          _os_log_error_impl(&dword_223E7A000, v37, 0x90u, "[ERROR] Unable to move %@ to group container %@ with error %@%@", buf, 0x2Au);
        }

        v38 = [MEMORY[0x277CCA9B8] brc_genericDownloadErrorWithUnderlyingError:v31];
        (v3)[2](v3, 0, v38);
LABEL_26:

LABEL_27:
        goto LABEL_28;
      }
    }

    else
    {
      v31 = 0;
    }

    v39 = brc_bread_crumbs();
    v40 = brc_default_log();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      v43 = [*(a1 + 48) asString];
      *buf = 138412802;
      v51 = v18;
      v52 = 2112;
      v53 = v43;
      v54 = 2112;
      v55 = v39;
      _os_log_debug_impl(&dword_223E7A000, v40, OS_LOG_TYPE_DEBUG, "[DEBUG] Returning %@ to ICDFileProviderExtension for item %@%@", buf, 0x20u);
    }

    v38 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    [v38 setObject:v18 forKeyedSubscript:@"url"];
    [v38 setObject:*(a1 + 80) forKeyedSubscript:@"item"];
    (v3)[2](v3, v38, 0);
    goto LABEL_26;
  }

  if ([v13 br_isCloudDocsErrorCode:115])
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __168__BRCXPCRegularIPCsClient_FPFSAdditions___createFileProvidingRequestOperationOfFileObject_existingContents_localItem_etagIfLoser_etagToDownload_progress_options_reply___block_invoke_2_cold_1((a1 + 48));
    }

    v16 = *(a1 + 72);
    v17 = [v6 asDocument];
    v18 = [v16 getDownloadEtagForItem:v17 etagIfLoser:*(a1 + 64)];

    [*(a1 + 32) _createFileProvidingRequestOperationOfFileObject:*(a1 + 48) existingContents:0 localItem:v6 etagIfLoser:*(a1 + 64) etagToDownload:v18 progress:*(a1 + 104) options:*(a1 + 136) reply:*(a1 + 128)];
  }

  else
  {
    v18 = [*(a1 + 96) brc_wrappedError];
    (v3)[2](v3, 0, v18);
  }

LABEL_28:
}

void __168__BRCXPCRegularIPCsClient_FPFSAdditions___createFileProvidingRequestOperationOfFileObject_existingContents_localItem_etagIfLoser_etagToDownload_progress_options_reply___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) session];
  v8 = [v7 stageRegistry];
  [v8 cleanupStagedDownloadWithID:*(a1 + 40)];

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v12 = 138413058;
    v13 = v11;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v12, 0x2Au);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)generateSmallItemThumbnailForFileObject:(id)object reply:(id)reply
{
  replyCopy = reply;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__BRCXPCRegularIPCsClient_FPFSAdditions__generateSmallItemThumbnailForFileObject_reply___block_invoke;
  v9[3] = &unk_278503F30;
  v9[4] = self;
  v10 = replyCopy;
  v7 = replyCopy;
  v8 = [(BRCXPCRegularIPCsClient *)self startDownloadFileObject:object existingContents:0 options:2 etagIfLoser:0 reply:v9];
}

void __88__BRCXPCRegularIPCsClient_FPFSAdditions__generateSmallItemThumbnailForFileObject_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 138413314;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = 0;
      *&buf[22] = 2112;
      v30 = 0;
      *v31 = 2112;
      *&v31[2] = v6;
      *&v31[10] = 2112;
      *&v31[12] = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", buf, 0x34u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v30 = __Block_byref_object_copy__27;
    *v31 = __Block_byref_object_dispose__27;
    *&v31[8] = [v5 objectForKeyedSubscript:@"url"];
    v10 = [*(*&buf[8] + 40) lastPathComponent];
    v23 = [v10 brc_stringByDeletingPathExtension];

    v11 = [*(a1 + 32) session];
    v12 = [v11 stageRegistry];
    v13 = [v12 createURLForThumbnailUploadWithStageID:v23];

    v14 = [*(*&buf[8] + 40) startAccessingSecurityScopedResource];
    v15 = +[BRCThumbnailGenerationManager defaultManager];
    v16 = *(*&buf[8] + 40);
    v17 = [*(a1 + 32) session];
    v18 = [v17 syncContextProvider];
    v19 = [v18 defaultSyncContext];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __88__BRCXPCRegularIPCsClient_FPFSAdditions__generateSmallItemThumbnailForFileObject_reply___block_invoke_94;
    v24[3] = &unk_278503F08;
    v28 = v14;
    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    v27 = buf;
    v24[4] = v20;
    v26 = v21;
    v22 = v13;
    v25 = v22;
    [v15 addOutOfBandThumbnailGenerationJobAtURL:v16 targetURL:v22 syncContext:v19 completionHandler:v24];

    _Block_object_dispose(buf, 8);
  }
}

void __88__BRCXPCRegularIPCsClient_FPFSAdditions__generateSmallItemThumbnailForFileObject_reply___block_invoke_94(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 64) == 1)
  {
    [*(*(*(a1 + 56) + 8) + 40) stopAccessingSecurityScopedResource];
  }

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = *(*(*(a1 + 56) + 8) + 40);
  v31 = 0;
  v9 = [v7 removeItemAtURL:v8 error:&v31];
  v10 = v31;

  if ((v9 & 1) == 0 && ([v10 br_isCocoaErrorCode:4] & 1) == 0)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v28 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412802;
      v34 = v28;
      v35 = 2112;
      v36 = v10;
      v37 = 2112;
      v38 = v11;
      _os_log_fault_impl(&dword_223E7A000, v12, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Unable to remove thumbnail temporary file: %@ error %@%@", buf, 0x20u);
    }
  }

  if (v6)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      *buf = 138413314;
      v34 = v15;
      v35 = 2112;
      v36 = 0;
      v37 = 2112;
      v38 = 0;
      v39 = 2112;
      v40 = v6;
      v41 = 2112;
      v42 = v13;
      _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", buf, 0x34u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v16 = MEMORY[0x277CBEBC0];
    v17 = [MEMORY[0x277CCACA8] brc_groupDownloadStagePath];
    v32[0] = v17;
    v18 = [v5 lastPathComponent];
    v32[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    v20 = [v16 fileURLWithPathComponents:v19];

    v21 = [MEMORY[0x277CCAA00] defaultManager];
    v30 = 0;
    LOBYTE(v19) = [v21 br_forceMoveItemAtURL:v5 toURL:v20 error:&v30];
    v22 = v30;

    if ((v19 & 1) == 0)
    {
      v23 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, 0x90u))
      {
        v29 = *(a1 + 40);
        *buf = 138413058;
        v34 = v29;
        v35 = 2112;
        v36 = v20;
        v37 = 2112;
        v38 = v22;
        v39 = 2112;
        v40 = v23;
        _os_log_error_impl(&dword_223E7A000, v24, 0x90u, "[ERROR] Unable to move thumbnail file %@ to %@ with error %@%@", buf, 0x2Au);
      }

      v20 = 0;
    }

    v25 = brc_bread_crumbs();
    v26 = brc_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = *(a1 + 32);
      *buf = 138413314;
      v34 = v27;
      v35 = 2112;
      v36 = v20;
      v37 = 2112;
      v38 = 0;
      v39 = 2112;
      v40 = v22;
      v41 = 2112;
      v42 = v25;
      _os_log_impl(&dword_223E7A000, v26, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", buf, 0x34u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (id)startDownloadFileObject:(id)object existingContents:(id)contents options:(unint64_t)options etagIfLoser:(id)loser reply:(id)reply
{
  v58 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  contentsCopy = contents;
  loserCopy = loser;
  replyCopy = reply;
  memset(v47, 0, sizeof(v47));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) startDownloadFileObject:existingContents:options:etagIfLoser:reply:]", 806, 0, v47);
  v16 = brc_bread_crumbs();
  v17 = brc_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v36 = replyCopy;
    v18 = loserCopy;
    v19 = contentsCopy;
    v20 = objectCopy;
    optionsCopy = options;
    v22 = v47[0];
    v23 = qos_class_self();
    v24 = BRCPrettyPrintEnumWithContext(v23, &brc_qos_entries, 0);
    *buf = 134219010;
    v49 = v22;
    v50 = 2112;
    selfCopy = self;
    v52 = 2112;
    v53 = v24;
    v54 = 2080;
    v55 = "[BRCXPCRegularIPCsClient(FPFSAdditions) startDownloadFileObject:existingContents:options:etagIfLoser:reply:]";
    v56 = 2112;
    v57 = v16;
    _os_log_impl(&dword_223E7A000, v17, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);

    options = optionsCopy;
    objectCopy = v20;
    contentsCopy = v19;
    loserCopy = v18;
    replyCopy = v36;
  }

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __109__BRCXPCRegularIPCsClient_FPFSAdditions__startDownloadFileObject_existingContents_options_etagIfLoser_reply___block_invoke;
  v45[3] = &unk_2785014D0;
  v45[4] = self;
  v25 = replyCopy;
  v46 = v25;
  v26 = _brc_ipc_check_applibrary_proxy(self, 1, v45);

  if (v26)
  {
    v27 = [[BRCProgress alloc] initWithIgnorePublish:1];
    [(BRCProgress *)v27 setUserInfoObject:loserCopy forKey:@"BRProgressEtagIfLoserKey"];
    session = [(BRCXPCClient *)self session];
    clientReadWriteDatabaseFacade = [session clientReadWriteDatabaseFacade];

    workloop = [clientReadWriteDatabaseFacade workloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __109__BRCXPCRegularIPCsClient_FPFSAdditions__startDownloadFileObject_existingContents_options_etagIfLoser_reply___block_invoke_100;
    block[3] = &unk_278503FD0;
    block[4] = self;
    optionsCopy2 = options;
    v38 = objectCopy;
    v39 = clientReadWriteDatabaseFacade;
    v43 = v25;
    v40 = loserCopy;
    v31 = v27;
    v41 = v31;
    v42 = contentsCopy;
    v32 = clientReadWriteDatabaseFacade;
    dispatch_async(workloop, block);

    v33 = v42;
    v34 = v31;
  }

  else
  {
    v34 = 0;
  }

  __brc_leave_section(v47);

  return v34;
}

void __109__BRCXPCRegularIPCsClient_FPFSAdditions__startDownloadFileObject_existingContents_options_etagIfLoser_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __109__BRCXPCRegularIPCsClient_FPFSAdditions__startDownloadFileObject_existingContents_options_etagIfLoser_reply___block_invoke_100(uint64_t a1)
{
  v85 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) session];
  v3 = *(a1 + 88);
  v4 = [v2 itemFetcher];
  v5 = [v4 itemByFileObjectID:*(a1 + 40) dbFacade:*(a1 + 48)];

  if ([v5 isDocument])
  {
    if ([v5 isShareAcceptationFault])
    {
      v6 = v3 & 0xFFFFFFFFFFFFFFF7;
    }

    else
    {
      v6 = v3;
    }

    if ((v6 & 2) != 0)
    {
      v7 = [v5 asDocument];
      v8 = [v7 currentVersion];
      v9 = [v8 isSmallAndMostRecentClientsGenerateThumbnails];

      if ((v9 & 1) == 0)
      {
        v10 = brc_bread_crumbs();
        v11 = brc_default_log();
        if (os_log_type_enabled(v11, 0x90u))
        {
          __109__BRCXPCRegularIPCsClient_FPFSAdditions__startDownloadFileObject_existingContents_options_etagIfLoser_reply___block_invoke_100_cold_1();
        }

        v12 = brc_bread_crumbs();
        v13 = brc_default_log();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
        v15 = *MEMORY[0x277CFABD0];
        if (v14)
        {
          v16 = *(a1 + 32);
          v17 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:15 description:@"Download for thumbnail only should be small file"];
          *buf = 138413058;
          v78 = v16;
          v79 = 2112;
          v80 = 0;
          v81 = 2112;
          v82 = v17;
          v83 = 2112;
          v84 = v12;
          _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
        }

        v18 = *(a1 + 80);
        v19 = [MEMORY[0x277CCA9B8] br_errorWithDomain:v15 code:15 description:@"Download for thumbnail only should be small file"];
        (*(v18 + 16))(v18, 0, v19);
      }
    }

    if ([v5 isShareAcceptationFault])
    {
      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        __109__BRCXPCRegularIPCsClient_FPFSAdditions__startDownloadFileObject_existingContents_options_etagIfLoser_reply___block_invoke_100_cold_2((a1 + 40));
      }

      v22 = [v5 clientZone];
      v23 = [v22 asSharedClientZone];

      v24 = [v5 itemID];
      v25 = [v23 shareAcceptOperationForItemID:v24];

      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __109__BRCXPCRegularIPCsClient_FPFSAdditions__startDownloadFileObject_existingContents_options_etagIfLoser_reply___block_invoke_104;
      v64[3] = &unk_278503F80;
      v65 = *(a1 + 40);
      v26 = v23;
      v66 = v26;
      v27 = v5;
      v28 = *(a1 + 32);
      v67 = v27;
      v68 = v28;
      v73 = *(a1 + 80);
      v69 = v2;
      v70 = *(a1 + 48);
      v71 = *(a1 + 56);
      v72 = *(a1 + 64);
      v74 = v6;
      v29 = MEMORY[0x22AA4A310](v64);
      v30 = v29;
      if (v25)
      {
        v31 = brc_bread_crumbs();
        v32 = brc_default_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v78 = v27;
          v79 = 2112;
          v80 = v25;
          v81 = 2112;
          v82 = v31;
          _os_log_debug_impl(&dword_223E7A000, v32, OS_LOG_TYPE_DEBUG, "[DEBUG] Blocking download of %@ on accept op %@%@", buf, 0x20u);
        }

        objc_initWeak(buf, v25);
        v33 = [v25 completionBlock];
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __109__BRCXPCRegularIPCsClient_FPFSAdditions__startDownloadFileObject_existingContents_options_etagIfLoser_reply___block_invoke_107;
        v58[3] = &unk_278503FA8;
        v34 = v33;
        v60 = v34;
        objc_copyWeak(&v63, buf);
        v35 = *(a1 + 40);
        v58[4] = *(a1 + 32);
        v59 = v35;
        v61 = *(a1 + 80);
        v62 = v30;
        [v25 setCompletionBlock:v58];

        objc_destroyWeak(&v63);
        objc_destroyWeak(buf);
      }

      else
      {
        (*(v29 + 16))(v29);
      }

      goto LABEL_34;
    }

    if (([v5 needsUpload] & 1) != 0 || objc_msgSend(v5, "needsSyncUp"))
    {
      v45 = [v5 asDocument];
      if ([v45 hasFileIDForUpload])
      {
        v46 = *(a1 + 56) == 0;

        if (v46)
        {
          v47 = [v2 stageRegistry];
          v48 = [v5 asDocument];
          v57 = 0;
          v49 = [v47 createStageURLFromLiveURLForItem:v48 options:v6 error:&v57];
          v26 = v57;

          v50 = brc_bread_crumbs();
          v51 = brc_default_log();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v52 = [v49 path];
            *buf = 138412802;
            v78 = v52;
            v79 = 2112;
            v80 = v5;
            v81 = 2112;
            v82 = v50;
            _os_log_impl(&dword_223E7A000, v51, OS_LOG_TYPE_DEFAULT, "[WARNING] Created stage url %@ from live url for download of %@%@", buf, 0x20u);
          }

          if (v49)
          {
            v75[0] = @"url";
            v75[1] = @"item";
            v76[0] = v49;
            v53 = [[BRCNotification alloc] initWithLocalItem:v5 itemDiffs:0];
            v76[1] = v53;
            v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:2];

            (*(*(a1 + 80) + 16))();
          }

          else
          {
            (*(*(a1 + 80) + 16))();
          }

          goto LABEL_34;
        }
      }

      else
      {
      }
    }

    v55 = [v2 fsDownloader];
    v56 = [v5 asDocument];
    v26 = [v55 getDownloadEtagForItem:v56 etagIfLoser:*(a1 + 56)];

    [*(a1 + 32) _createFileProvidingRequestOperationOfFileObject:*(a1 + 40) existingContents:*(a1 + 72) localItem:v5 etagIfLoser:*(a1 + 56) etagToDownload:v26 progress:*(a1 + 64) options:v6 reply:*(a1 + 80)];
    goto LABEL_34;
  }

  v36 = brc_bread_crumbs();
  v37 = brc_default_log();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v38 = MEMORY[0x277CCA9B8];
    v39 = *(a1 + 32);
    v40 = [*(a1 + 40) asString];
    v41 = [v38 brc_errorItemNotFound:v40];
    *buf = 138413058;
    v78 = v39;
    v79 = 2112;
    v80 = 0;
    v81 = 2112;
    v82 = v41;
    v83 = 2112;
    v84 = v36;
    _os_log_impl(&dword_223E7A000, v37, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
  }

  v42 = *(a1 + 80);
  v43 = MEMORY[0x277CCA9B8];
  v26 = [*(a1 + 40) asString];
  v44 = [v43 brc_errorItemNotFound:v26];
  (*(v42 + 16))(v42, 0, v44);

LABEL_34:
}

void __109__BRCXPCRegularIPCsClient_FPFSAdditions__startDownloadFileObject_existingContents_options_etagIfLoser_reply___block_invoke_104(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __109__BRCXPCRegularIPCsClient_FPFSAdditions__startDownloadFileObject_existingContents_options_etagIfLoser_reply___block_invoke_104_cold_1(a1);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __109__BRCXPCRegularIPCsClient_FPFSAdditions__startDownloadFileObject_existingContents_options_etagIfLoser_reply___block_invoke_105;
  v10[3] = &unk_278503F58;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 32);
  v18 = *(a1 + 96);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a1 + 104);
  v17 = v7;
  v19 = v8;
  v9 = [*(a1 + 48) itemID];
  [v4 performBlock:v10 whenSyncDownCompletesLookingForItemID:v9];
}

void __109__BRCXPCRegularIPCsClient_FPFSAdditions__startDownloadFileObject_existingContents_options_etagIfLoser_reply___block_invoke_105(uint64_t a1, char a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [*(a1 + 56) itemFetcher];
    v19 = [v3 itemByFileObjectID:*(a1 + 48) dbFacade:*(a1 + 64)];

    v4 = [*(a1 + 56) fsDownloader];
    v5 = [v19 asDocument];
    v6 = [v4 getDownloadEtagForItem:v5 etagIfLoser:*(a1 + 72)];

    [*(a1 + 40) _createFileProvidingRequestOperationOfFileObject:*(a1 + 48) existingContents:0 localItem:v19 etagIfLoser:*(a1 + 72) etagToDownload:v6 progress:*(a1 + 80) options:*(a1 + 96) reply:*(a1 + 88)];
  }

  else
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __109__BRCXPCRegularIPCsClient_FPFSAdditions__startDownloadFileObject_existingContents_options_etagIfLoser_reply___block_invoke_105_cold_1(a1);
    }

    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *(a1 + 40);
      v13 = [*(a1 + 48) asString];
      v14 = [v11 brc_errorAcceptShareFailedForItem:v13];
      *buf = 138413058;
      v21 = v12;
      v22 = 2112;
      v23 = 0;
      v24 = 2112;
      v25 = v14;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    v15 = *(a1 + 88);
    v16 = MEMORY[0x277CCA9B8];
    v17 = [*(a1 + 48) asString];
    v18 = [v16 brc_errorAcceptShareFailedForItem:v17];
    (*(v15 + 16))(v15, 0, v18);
  }
}

void __109__BRCXPCRegularIPCsClient_FPFSAdditions__startDownloadFileObject_existingContents_options_etagIfLoser_reply___block_invoke_107(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v4 = [WeakRetained error];

  if (v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __109__BRCXPCRegularIPCsClient_FPFSAdditions__startDownloadFileObject_existingContents_options_etagIfLoser_reply___block_invoke_107_cold_1((a1 + 72));
    }

    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) asString];
      v12 = [v9 brc_errorAcceptShareFailedForItem:v11];
      v18 = 138413058;
      v19 = v10;
      v20 = 2112;
      v21 = 0;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v18, 0x2Au);
    }

    v13 = *(a1 + 56);
    v14 = MEMORY[0x277CCA9B8];
    v15 = [*(a1 + 40) asString];
    v16 = [v14 brc_errorAcceptShareFailedForItem:v15];
    (*(v13 + 16))(v13, 0, v16);
  }

  else
  {
    v17 = *(*(a1 + 64) + 16);

    v17();
  }
}

- (void)deleteItemWithIdentifier:(id)identifier baseVersion:(id)version options:(unint64_t)options completionHandler:(id)handler
{
  v66 = *MEMORY[0x277D85DE8];
  optionsCopy2 = identifier;
  versionCopy = version;
  handlerCopy = handler;
  memset(v49, 0, sizeof(v49));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) deleteItemWithIdentifier:baseVersion:options:completionHandler:]", 938, 0, v49);
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = optionsCopy2;
    v15 = v49[0];
    v16 = qos_class_self();
    v17 = BRCPrettyPrintEnumWithContext(v16, &brc_qos_entries, 0);
    *buf = 134219010;
    v51 = v15;
    v52 = 2112;
    selfCopy2 = self;
    v54 = 2112;
    v55 = v17;
    v56 = 2080;
    v57 = "[BRCXPCRegularIPCsClient(FPFSAdditions) deleteItemWithIdentifier:baseVersion:options:completionHandler:]";
    v58 = 2112;
    optionsCopy3 = v12;
    _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);

    optionsCopy2 = v14;
  }

  v18 = *MEMORY[0x277CFAC68];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __105__BRCXPCRegularIPCsClient_FPFSAdditions__deleteItemWithIdentifier_baseVersion_options_completionHandler___block_invoke;
  v47[3] = &unk_2785014D0;
  v47[4] = self;
  v19 = handlerCopy;
  v48 = v19;
  LODWORD(v18) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v18, v47);

  if (v18)
  {
    memset(v46, 0, sizeof(v46));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) deleteItemWithIdentifier:baseVersion:options:completionHandler:]", 947, 0, v46);
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      optionsCopy = options;
      options = optionsCopy2;
      v23 = v46[0];
      v24 = qos_class_self();
      v25 = BRCPrettyPrintEnumWithContext(v24, &brc_qos_entries, 0);
      br_prettyDescription = [versionCopy br_prettyDescription];
      *buf = 134219778;
      v51 = v23;
      v52 = 2112;
      selfCopy2 = self;
      v54 = 2112;
      v55 = v25;
      v56 = 2080;
      v57 = "[BRCXPCRegularIPCsClient(FPFSAdditions) deleteItemWithIdentifier:baseVersion:options:completionHandler:]";
      v58 = 2112;
      optionsCopy2 = options;
      optionsCopy3 = options;
      v60 = 2112;
      v61 = br_prettyDescription;
      v62 = 2048;
      LOBYTE(options) = optionsCopy;
      v63 = optionsCopy;
      v64 = 2112;
      v65 = v20;
      _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@, %@, 0x%lx%@", buf, 0x52u);
    }

    memset(v45, 0, sizeof(v45));
    __brc_create_section(0, "[BRCXPCRegularIPCsClient(FPFSAdditions) deleteItemWithIdentifier:baseVersion:options:completionHandler:]", 950, 0, v45);
    v27 = brc_bread_crumbs();
    v28 = brc_default_log();
    v29 = options & 1;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v34 = " recursively";
      *buf = 134218754;
      if ((options & 1) == 0)
      {
        v34 = "";
      }

      v51 = v45[0];
      v52 = 2112;
      selfCopy2 = optionsCopy2;
      v54 = 2080;
      v55 = v34;
      v56 = 2112;
      v57 = v27;
      _os_log_debug_impl(&dword_223E7A000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx deleting item %@%s%@", buf, 0x2Au);
    }

    v30 = [MEMORY[0x277CFAE50] fileObjectIDWithString:optionsCopy2];
    if ([v30 type] == 1 || !objc_msgSend(v30, "type"))
    {
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __105__BRCXPCRegularIPCsClient_FPFSAdditions__deleteItemWithIdentifier_baseVersion_options_completionHandler___block_invoke_110;
      v43[3] = &unk_278503FF8;
      v43[4] = self;
      v44 = v19;
      [(BRCXPCRegularIPCsClient *)self getQueryItemForBRFileObjectID:v30 reply:v43];
    }

    else
    {
      session = [(BRCXPCClient *)self session];
      clientTruthWorkloop = [session clientTruthWorkloop];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __105__BRCXPCRegularIPCsClient_FPFSAdditions__deleteItemWithIdentifier_baseVersion_options_completionHandler___block_invoke_112;
      block[3] = &unk_278504020;
      v37 = session;
      v38 = v30;
      selfCopy3 = self;
      v42 = v29;
      v40 = versionCopy;
      v41 = v19;
      v33 = session;
      dispatch_async_and_wait(clientTruthWorkloop, block);
    }

    __brc_leave_section(v45);
    __brc_leave_section(v46);
  }

  __brc_leave_section(v49);
}

void __105__BRCXPCRegularIPCsClient_FPFSAdditions__deleteItemWithIdentifier_baseVersion_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __105__BRCXPCRegularIPCsClient_FPFSAdditions__deleteItemWithIdentifier_baseVersion_options_completionHandler___block_invoke_110(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __105__BRCXPCRegularIPCsClient_FPFSAdditions__deleteItemWithIdentifier_baseVersion_options_completionHandler___block_invoke_110_cold_1();
  }

  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCA9B8] brc_errorForRejectedDeletionOfItem:v3];
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v12, 0x20u);
  }

  v10 = *(a1 + 40);
  v11 = [MEMORY[0x277CCA9B8] brc_errorForRejectedDeletionOfItem:v3];
  (*(v10 + 16))(v10, v11);
}

void __105__BRCXPCRegularIPCsClient_FPFSAdditions__deleteItemWithIdentifier_baseVersion_options_completionHandler___block_invoke_112(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) itemFetcher];
  v3 = [v2 itemByFileObjectID:*(a1 + 40)];

  v4 = [*(a1 + 48) session];
  v5 = [v4 fsImporter];
  v6 = *(a1 + 72);
  v7 = *(a1 + 56);
  v12 = 0;
  [v5 deleteItem:v3 recursively:v6 baseVersion:v7 error:&v12];
  v8 = v12;

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 48);
    *buf = 138412802;
    v14 = v11;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
  }

  (*(*(a1 + 64) + 16))();
}

- (void)modifyItem:(id)item baseVersion:(id)version changedFields:(unint64_t)fields contents:(id)contents options:(unint64_t)options additionalAttrs:(id)attrs completionHandler:(id)handler
{
  v75 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  versionCopy = version;
  contentsCopy = contents;
  attrsCopy = attrs;
  handlerCopy = handler;
  memset(v58, 0, sizeof(v58));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) modifyItem:baseVersion:changedFields:contents:options:additionalAttrs:completionHandler:]", 1003, 0, v58);
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = v58[0];
    v17 = qos_class_self();
    v18 = BRCPrettyPrintEnumWithContext(v17, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy3 = v16;
    v61 = 2112;
    selfCopy2 = self;
    v63 = 2112;
    *v64 = v18;
    *&v64[8] = 2080;
    *&v64[10] = "[BRCXPCRegularIPCsClient(FPFSAdditions) modifyItem:baseVersion:changedFields:contents:options:additionalAttrs:completionHandler:]";
    *&v64[18] = 2112;
    *&v64[20] = v14;
    _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v19 = *MEMORY[0x277CFAC68];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __130__BRCXPCRegularIPCsClient_FPFSAdditions__modifyItem_baseVersion_changedFields_contents_options_additionalAttrs_completionHandler___block_invoke;
  v56[3] = &unk_2785014D0;
  v56[4] = self;
  v20 = handlerCopy;
  v57 = v20;
  LODWORD(v19) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v19, v56);

  if (v19)
  {
    v39 = [contentsCopy url];
    memset(v55, 0, sizeof(v55));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) modifyItem:baseVersion:changedFields:contents:options:additionalAttrs:completionHandler:]", 1014, 0, v55);
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = v55[0];
      v24 = qos_class_self();
      v25 = BRCPrettyPrintEnumWithContext(v24, &brc_qos_entries, 0);
      br_prettyDescription = [versionCopy br_prettyDescription];
      v27 = BRCPrettyPrintBitmap();
      v28 = BRCPrettyPrintBitmap();
      *buf = 134220290;
      selfCopy3 = v23;
      v61 = 2112;
      selfCopy2 = self;
      v63 = 2112;
      *v64 = v25;
      *&v64[8] = 2080;
      *&v64[10] = "[BRCXPCRegularIPCsClient(FPFSAdditions) modifyItem:baseVersion:changedFields:contents:options:additionalAttrs:completionHandler:]";
      *&v64[18] = 2112;
      *&v64[20] = itemCopy;
      v65 = 2112;
      v66 = br_prettyDescription;
      v67 = 2112;
      v68 = v27;
      v69 = 2112;
      v70 = v39;
      v71 = 2112;
      v72 = v28;
      v73 = 2112;
      v74 = v21;
      _os_log_impl(&dword_223E7A000, v22, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@, %@, <%@>, %@, %@%@", buf, 0x66u);
    }

    session = [(BRCXPCClient *)self session];
    v30 = MEMORY[0x277CFAE50];
    itemIdentifier = [itemCopy itemIdentifier];
    v32 = [v30 fileObjectIDWithString:itemIdentifier];

    if ([v32 isRootContainerItem])
    {
      v33 = [BRCNotification alloc];
      session2 = [(BRCXPCClient *)self session];
      v35 = [(BRCNotification *)v33 initRootContainerNotificationWithSessionContext:session2];

      v36 = brc_bread_crumbs();
      v37 = brc_default_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 138413314;
        selfCopy3 = self;
        v61 = 2112;
        selfCopy2 = v35;
        v63 = 1024;
        *v64 = 0;
        *&v64[4] = 2112;
        *&v64[6] = 0;
        *&v64[14] = 2112;
        *&v64[16] = v36;
        _os_log_impl(&dword_223E7A000, v37, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %d, %@)%@", buf, 0x30u);
      }

      (*(v20 + 2))(v20, v35, 0, 0);
    }

    else
    {
      clientTruthWorkloop = [session clientTruthWorkloop];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __130__BRCXPCRegularIPCsClient_FPFSAdditions__modifyItem_baseVersion_changedFields_contents_options_additionalAttrs_completionHandler___block_invoke_113;
      block[3] = &unk_2785040A0;
      v46 = session;
      v47 = v32;
      selfCopy4 = self;
      v49 = itemCopy;
      v53 = v20;
      v50 = v39;
      v51 = versionCopy;
      fieldsCopy = fields;
      v52 = attrsCopy;
      dispatch_async(clientTruthWorkloop, block);

      v35 = v46;
    }

    __brc_leave_section(v55);
  }

  __brc_leave_section(v58);
}

void __130__BRCXPCRegularIPCsClient_FPFSAdditions__modifyItem_baseVersion_changedFields_contents_options_additionalAttrs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413314;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 1024;
    v12 = 0;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %d, %@)%@", &v7, 0x30u);
  }

  (*(*(a1 + 40) + 16))();
}

void __130__BRCXPCRegularIPCsClient_FPFSAdditions__modifyItem_baseVersion_changedFields_contents_options_additionalAttrs_completionHandler___block_invoke_113(uint64_t a1)
{
  v2 = [*(a1 + 32) clientDB];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __130__BRCXPCRegularIPCsClient_FPFSAdditions__modifyItem_baseVersion_changedFields_contents_options_additionalAttrs_completionHandler___block_invoke_2;
  v13[3] = &unk_278504078;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v12 = *(a1 + 48);
  v5 = *(&v12 + 1);
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v15 = v12;
  v14 = v6;
  v7 = *(a1 + 88);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v18 = *(a1 + 96);
  *&v10 = *(a1 + 80);
  *(&v10 + 1) = v7;
  *&v11 = v8;
  *(&v11 + 1) = v9;
  v16 = v11;
  v17 = v10;
  [v2 groupInTransaction:v13];
}

uint64_t __130__BRCXPCRegularIPCsClient_FPFSAdditions__modifyItem_baseVersion_changedFields_contents_options_additionalAttrs_completionHandler___block_invoke_2(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) itemFetcher];
  v3 = [v2 itemByFileObjectID:*(a1 + 40)];

  if (v3 && ![v3 isDead])
  {
    v16 = [*(a1 + 64) startAccessingSecurityScopedResource];
    v39 = 0;
    v17 = [*(a1 + 32) fsImporter];
    v18 = *(a1 + 96);
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    v21 = *(a1 + 72);
    v22 = *(a1 + 80);
    v38 = 0;
    LOBYTE(v33) = 0;
    v14 = [v17 changeItem:v3 baseVersion:v21 changedFields:v18 newValues:v19 contents:v20 additionalAttrs:v22 clearCKInfoOnSyncUp:v33 stillPendingFields:&v39 error:&v38];
    v12 = v38;

    if (v16)
    {
      [*(a1 + 64) stopAccessingSecurityScopedResource];
    }

    if (v12)
    {
      v23 = 0;
    }

    else
    {
      v23 = v14;
    }

    if (v23 == 1)
    {
      v24 = [[BRCNotification alloc] initWithLocalItem:v3 itemDiffs:0];
      if ([v3 isZoneRoot])
      {
        v25 = [v3 appLibrary];
        v26 = [v25 containerMetadata];

        v27 = [MEMORY[0x277CFAE98] containerItemForContainer:v26 withRepresentativeItem:v24];

        v24 = v27;
      }

      v28 = *(a1 + 48);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __130__BRCXPCRegularIPCsClient_FPFSAdditions__modifyItem_baseVersion_changedFields_contents_options_additionalAttrs_completionHandler___block_invoke_114;
      v34[3] = &unk_278501940;
      v34[4] = v28;
      v35 = v24;
      v37 = v39;
      v36 = *(a1 + 88);
      v29 = v24;
      [v28 _queueOrCallCompletionBlock:v34];
    }

    else
    {
      v30 = brc_bread_crumbs();
      v31 = brc_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = *(a1 + 48);
        *buf = 138413314;
        v41 = v32;
        v42 = 2112;
        v43 = 0;
        v44 = 1024;
        v45 = 0;
        v46 = 2112;
        v47 = v12;
        v48 = 2112;
        v49 = v30;
        _os_log_impl(&dword_223E7A000, v31, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %d, %@)%@", buf, 0x30u);
      }

      (*(*(a1 + 88) + 16))();
    }
  }

  else
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = MEMORY[0x277CCA9B8];
      v7 = *(a1 + 48);
      v8 = [*(a1 + 56) itemIdentifier];
      v9 = [v6 brc_errorItemNotFound:v8];
      *buf = 138413314;
      v41 = v7;
      v42 = 2112;
      v43 = 0;
      v44 = 1024;
      v45 = 0;
      v46 = 2112;
      v47 = v9;
      v48 = 2112;
      v49 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %d, %@)%@", buf, 0x30u);
    }

    v10 = *(a1 + 88);
    v11 = MEMORY[0x277CCA9B8];
    v12 = [*(a1 + 56) itemIdentifier];
    v13 = [v11 brc_errorItemNotFound:v12];
    (*(v10 + 16))(v10, 0, 0, v13);

    v14 = 0;
  }

  return v14;
}

uint64_t __130__BRCXPCRegularIPCsClient_FPFSAdditions__modifyItem_baseVersion_changedFields_contents_options_additionalAttrs_completionHandler___block_invoke_114(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[7];
    v8 = 138413314;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %lu, %@)%@", &v8, 0x34u);
  }

  return (*(a1[6] + 16))();
}

- (void)reimportItemIdentifier:(id)identifier reply:(id)reply
{
  v56 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  memset(v45, 0, sizeof(v45));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) reimportItemIdentifier:reply:]", 1076, 0, v45);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v45[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    v47 = v10;
    v48 = 2112;
    selfCopy = self;
    v50 = 2112;
    v51 = v12;
    v52 = 2080;
    v53 = "[BRCXPCRegularIPCsClient(FPFSAdditions) reimportItemIdentifier:reply:]";
    v54 = 2112;
    v55 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v13 = *MEMORY[0x277CFAC58];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __71__BRCXPCRegularIPCsClient_FPFSAdditions__reimportItemIdentifier_reply___block_invoke;
  v43[3] = &unk_2785014D0;
  v43[4] = self;
  v14 = replyCopy;
  v44 = v14;
  LODWORD(v13) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v13, v43);

  if (v13)
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [BRCXPCRegularIPCsClient(FPFSAdditions) reimportItemIdentifier:reply:];
    }

    mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
    currentPersona = [mEMORY[0x277D77BF8] currentPersona];
    br_personaID = [currentPersona br_personaID];

    if ([br_personaID isEqualToString:@"__defaultPersonaID__"])
    {
      v20 = 0;
    }

    else
    {
      v20 = br_personaID;
    }

    v21 = v20;
    v22 = br_personaID;
    if (!v21)
    {
      if (reimportItemIdentifier_reply____personaOnceToken != -1)
      {
        [BRCXPCRegularIPCsClient(FPFSAdditions) reimportItemIdentifier:reply:];
      }

      v22 = reimportItemIdentifier_reply____personalPersona;
    }

    mEMORY[0x277D77BF8]2 = [MEMORY[0x277D77BF8] sharedManager];
    currentPersona2 = [mEMORY[0x277D77BF8]2 currentPersona];

    v42 = 0;
    userPersonaUniqueString = [currentPersona2 userPersonaUniqueString];
    v26 = userPersonaUniqueString;
    if (userPersonaUniqueString == v22 || ([userPersonaUniqueString isEqualToString:v22] & 1) != 0)
    {
      v27 = 0;
    }

    else
    {
      if (voucher_process_can_use_arbitrary_personas())
      {
        v41 = 0;
        v28 = [currentPersona2 copyCurrentPersonaContextWithError:&v41];
        v36 = v41;
        v29 = v42;
        v42 = v28;

        if (v36)
        {
          v30 = brc_bread_crumbs();
          v31 = brc_default_log();
          if (os_log_type_enabled(v31, 0x90u))
          {
            __br_notify_register_dispatch_block_invoke_cold_4();
          }
        }

        v27 = [currentPersona2 br_generateAndRestorePersonaContextWithPersonaUniqueString:{v22, v36}];

        if (!v27)
        {
          goto LABEL_16;
        }

        v38 = brc_bread_crumbs();
        v32 = brc_default_log();
        if (os_log_type_enabled(v32, 0x90u))
        {
          *buf = 138412802;
          v47 = br_personaID;
          v48 = 2112;
          selfCopy = v27;
          v50 = 2112;
          v33 = v38;
          v51 = v38;
          _os_log_error_impl(&dword_223E7A000, v32, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
        }

        else
        {
          v33 = v38;
        }
      }

      else
      {
        if (v21 || ([currentPersona2 isDataSeparatedPersona] & 1) != 0)
        {
          v34 = brc_bread_crumbs();
          v35 = brc_default_log();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            __br_notify_register_dispatch_block_invoke_cold_3();
          }

          v27 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
          goto LABEL_16;
        }

        v33 = brc_bread_crumbs();
        v32 = brc_default_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          __br_notify_register_dispatch_block_invoke_cold_2();
        }

        v27 = 0;
      }
    }

LABEL_16:
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __71__BRCXPCRegularIPCsClient_FPFSAdditions__reimportItemIdentifier_reply___block_invoke_119;
    v39[3] = &unk_2785014D0;
    v39[4] = self;
    v40 = v14;
    [BRCImportUtil reimportItemsBelowItemWithIdentifier:identifierCopy completionHandler:v39];

    _BRRestorePersona();
  }

  __brc_leave_section(v45);
}

void __71__BRCXPCRegularIPCsClient_FPFSAdditions__reimportItemIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __71__BRCXPCRegularIPCsClient_FPFSAdditions__reimportItemIdentifier_reply___block_invoke_115()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = reimportItemIdentifier_reply____personalPersona;
  reimportItemIdentifier_reply____personalPersona = v0;
}

void __71__BRCXPCRegularIPCsClient_FPFSAdditions__reimportItemIdentifier_reply___block_invoke_119(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)enumerateTrashItemsFromRank:(unint64_t)rank limit:(unint64_t)limit completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  memset(v30, 0, sizeof(v30));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) enumerateTrashItemsFromRank:limit:completion:]", 1096, 0, v30);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v30[0];
    v12 = qos_class_self();
    v13 = BRCPrettyPrintEnumWithContext(v12, &brc_qos_entries, 0);
    *buf = 134219010;
    v32 = v11;
    v33 = 2112;
    selfCopy = self;
    v35 = 2112;
    v36 = v13;
    v37 = 2080;
    v38 = "[BRCXPCRegularIPCsClient(FPFSAdditions) enumerateTrashItemsFromRank:limit:completion:]";
    v39 = 2112;
    v40 = v9;
    _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __87__BRCXPCRegularIPCsClient_FPFSAdditions__enumerateTrashItemsFromRank_limit_completion___block_invoke;
  v28[3] = &unk_2785014D0;
  v28[4] = self;
  v14 = completionCopy;
  v29 = v14;
  v15 = _brc_ipc_check_applibrary_proxy(self, 1, v28);

  if (v15)
  {
    session = [(BRCXPCClient *)self session];
    tracker = self->super._tracker;
    readOnlyWorkloop = [session readOnlyWorkloop];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __87__BRCXPCRegularIPCsClient_FPFSAdditions__enumerateTrashItemsFromRank_limit_completion___block_invoke_120;
    v22[3] = &unk_2785040C8;
    limitCopy = limit;
    v19 = session;
    rankCopy = rank;
    v23 = v19;
    selfCopy2 = self;
    v25 = v14;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __87__BRCXPCRegularIPCsClient_FPFSAdditions__enumerateTrashItemsFromRank_limit_completion___block_invoke_122;
    v20[3] = &unk_278500048;
    v20[4] = self;
    v21 = v25;
    brc_task_tracker_async_with_logs(tracker, readOnlyWorkloop, v22, v20);
  }

  __brc_leave_section(v30);
}

void __87__BRCXPCRegularIPCsClient_FPFSAdditions__enumerateTrashItemsFromRank_limit_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413314;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 1024;
    v12 = 0;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %d, %@)%@", &v7, 0x30u);
  }

  (*(*(a1 + 40) + 16))();
}

void __87__BRCXPCRegularIPCsClient_FPFSAdditions__enumerateTrashItemsFromRank_limit_completion___block_invoke_120(void *a1)
{
  v1 = a1;
  v38 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a1[7]];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = v1[4];
  v5 = v1[7];
  v4 = v1[8];
  v6 = [v3 readOnlyDB];
  v7 = [v3 trashedItemsEnumeratorFromNotifRank:v4 batchSize:v5 db:v6];

  v8 = [v7 countByEnumeratingWithState:&v23 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v22 = v1;
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
        v14 = [v13 notifsRank];
        v15 = [BRCNotification notificationFromItem:v13];
        v16 = [v15 asFileProviderItem];

        if (v16)
        {
          [v2 addObject:v16];
        }
      }

      v10 += v9;
      v9 = [v7 countByEnumeratingWithState:&v23 objects:v37 count:16];
    }

    while (v9);
    v17 = v14 + 1;
    v1 = v22;
  }

  else
  {
    v10 = 0;
    v17 = 0;
  }

  if (v10 >= v1[7])
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = brc_bread_crumbs();
  v20 = brc_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = v1[5];
    *buf = 138413314;
    v28 = v21;
    v29 = 2112;
    v30 = v2;
    v31 = 2048;
    v32 = v18;
    v33 = 2112;
    v34 = 0;
    v35 = 2112;
    v36 = v19;
    _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %llu, %@)%@", buf, 0x34u);
  }

  (*(v1[6] + 16))();
}

void __87__BRCXPCRegularIPCsClient_FPFSAdditions__enumerateTrashItemsFromRank_limit_completion___block_invoke_122(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
    v8 = 138413314;
    v9 = v4;
    v10 = 2112;
    v11 = 0;
    v12 = 1024;
    v13 = 0;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %d, %@)%@", &v8, 0x30u);
  }

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
  (*(v6 + 16))(v6, 0, 0, v7);
}

- (void)notifyReimportCompleted:(id)completed
{
  v32 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  memset(v21, 0, sizeof(v21));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) notifyReimportCompleted:]", 1128, 0, v21);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v21[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v7;
    v24 = 2112;
    selfCopy = self;
    v26 = 2112;
    v27 = v9;
    v28 = 2080;
    v29 = "[BRCXPCRegularIPCsClient(FPFSAdditions) notifyReimportCompleted:]";
    v30 = 2112;
    v31 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v10 = *MEMORY[0x277CFAC68];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__BRCXPCRegularIPCsClient_FPFSAdditions__notifyReimportCompleted___block_invoke;
  v19[3] = &unk_2785014D0;
  v19[4] = self;
  v11 = completedCopy;
  v20 = v11;
  LODWORD(v10) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v10, v19);

  if (v10)
  {
    session = [(BRCXPCClient *)self session];
    clientTruthWorkloop = [session clientTruthWorkloop];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __66__BRCXPCRegularIPCsClient_FPFSAdditions__notifyReimportCompleted___block_invoke_123;
    v17[3] = &unk_2784FF450;
    v14 = session;
    v18 = v14;
    dispatch_async_and_wait(clientTruthWorkloop, v17);

    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v24 = 2112;
      selfCopy = 0;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(v11 + 2))(v11, 0);
  }

  __brc_leave_section(v21);
}

void __66__BRCXPCRegularIPCsClient_FPFSAdditions__notifyReimportCompleted___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)boostFilePresenterForItemIdentifier:(id)identifier reply:(id)reply
{
  v30 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  if ([identifierCopy br_isBoostableItemIdentifier])
  {
    memset(v17, 0, sizeof(v17));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) boostFilePresenterForItemIdentifier:reply:]", 1170, 0, v17);
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = v17[0];
      v11 = qos_class_self();
      v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
      *buf = 134219266;
      selfCopy2 = v10;
      v20 = 2112;
      selfCopy = self;
      v22 = 2112;
      v23 = v12;
      v24 = 2080;
      v25 = "[BRCXPCRegularIPCsClient(FPFSAdditions) boostFilePresenterForItemIdentifier:reply:]";
      v26 = 2112;
      v27 = identifierCopy;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __84__BRCXPCRegularIPCsClient_FPFSAdditions__boostFilePresenterForItemIdentifier_reply___block_invoke;
    v15[3] = &unk_2785040F0;
    v15[4] = self;
    v16 = replyCopy;
    [(BRCXPCRegularIPCsClient *)self accessItemIdentifierLocalItem:identifierCopy dbAccessKind:0 synchronouslyIfPossible:0 handler:v15];

    __brc_leave_section(v17);
  }

  else
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v20 = 2112;
      selfCopy = 0;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(replyCopy + 2))(replyCopy, 0);
  }
}

void __84__BRCXPCRegularIPCsClient_FPFSAdditions__boostFilePresenterForItemIdentifier_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = [v5 brc_wrappedError];
      v26 = 138412802;
      v27 = v8;
      v28 = 2112;
      v29 = v9;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v26, 0x20u);
    }

    v10 = *(a1 + 40);
    v11 = [v5 brc_wrappedError];
    (*(v10 + 16))(v10, v11);
  }

  else
  {
    v12 = [a2 appLibrary];
    v11 = v12;
    if (v12 && ([v12 defaultClientZone], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isSyncBlockedBecauseAppNotInstalled"), v13, !v14))
    {
      [*(a1 + 32) addAppLibrary:v11];
      v18 = *MEMORY[0x277CFAB60];
      v19 = [v11 session];
      v20 = [v19 personaIdentifier];
      v21 = [v18 br_libnotifyPerPersonaNotificationName:v20];

      v22 = [MEMORY[0x277CCAB98] defaultCenter];
      [v22 postNotificationName:v21 object:0];

      v23 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = *(a1 + 32);
        v26 = 138412802;
        v27 = v25;
        v28 = 2112;
        v29 = 0;
        v30 = 2112;
        v31 = v23;
        _os_log_impl(&dword_223E7A000, v24, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v26, 0x20u);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 32);
        v26 = 138412802;
        v27 = v17;
        v28 = 2112;
        v29 = 0;
        v30 = 2112;
        v31 = v15;
        _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v26, 0x20u);
      }

      (*(*(a1 + 40) + 16))(*(a1 + 40), 0);
    }
  }
}

- (void)_unboostFilePresenterForItemIdentifier:(id)identifier handledAppLibrarys:(id)librarys completionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  librarysCopy = librarys;
  handlerCopy = handler;
  memset(v22, 0, sizeof(v22));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) _unboostFilePresenterForItemIdentifier:handledAppLibrarys:completionHandler:]", 1186, 0, v22);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v22[0];
    v14 = qos_class_self();
    v15 = BRCPrettyPrintEnumWithContext(v14, &brc_qos_entries, 0);
    *buf = 134219266;
    v24 = v13;
    v25 = 2112;
    selfCopy = self;
    v27 = 2112;
    v28 = v15;
    v29 = 2080;
    v30 = "[BRCXPCRegularIPCsClient(FPFSAdditions) _unboostFilePresenterForItemIdentifier:handledAppLibrarys:completionHandler:]";
    v31 = 2112;
    v32 = identifierCopy;
    v33 = 2112;
    v34 = v11;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __118__BRCXPCRegularIPCsClient_FPFSAdditions___unboostFilePresenterForItemIdentifier_handledAppLibrarys_completionHandler___block_invoke;
  v18[3] = &unk_278504118;
  v16 = handlerCopy;
  v21 = v16;
  v17 = librarysCopy;
  v19 = v17;
  selfCopy2 = self;
  [(BRCXPCRegularIPCsClient *)self accessItemIdentifierLocalItem:identifierCopy dbAccessKind:0 synchronouslyIfPossible:0 handler:v18];

  __brc_leave_section(v22);
}

void __118__BRCXPCRegularIPCsClient_FPFSAdditions___unboostFilePresenterForItemIdentifier_handledAppLibrarys_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v4 = *(a1 + 48);
    v7 = [a3 brc_wrappedError];
    (*(v4 + 16))(v4, 0, v7);
  }

  else
  {
    v5 = [a2 appLibrary];
    v7 = v5;
    if (v5)
    {
      v6 = [*(a1 + 32) containsObject:v5];
      v5 = v7;
      if ((v6 & 1) == 0)
      {
        [*(a1 + 40) removeAppLibrary:v7];
        v5 = v7;
      }
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v5, 0);
  }
}

- (void)unboostFilePresenterForItemIdentifiers:(id)identifiers reply:(id)reply
{
  v41 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  replyCopy = reply;
  memset(v34, 0, sizeof(v34));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) unboostFilePresenterForItemIdentifiers:reply:]", 1191, 0, v34);
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v34[0];
    v9 = qos_class_self();
    v10 = BRCPrettyPrintEnumWithContext(v9, &brc_qos_entries, 0);
    *buf = 134219266;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = self;
    *&buf[22] = 2112;
    v37 = v10;
    *v38 = 2080;
    *&v38[2] = "[BRCXPCRegularIPCsClient(FPFSAdditions) unboostFilePresenterForItemIdentifiers:reply:]";
    *&v38[10] = 2112;
    *&v38[12] = identifiersCopy;
    v39 = 2112;
    v40 = v6;
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v37 = __Block_byref_object_copy__27;
  *v38 = __Block_byref_object_dispose__27;
  *&v38[8] = 0;
  v11 = objc_opt_new();
  v12 = dispatch_group_create();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = identifiersCopy;
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v14)
  {
    v15 = *v31;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        if ([v17 br_isBoostableItemIdentifier])
        {
          dispatch_group_enter(v12);
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __87__BRCXPCRegularIPCsClient_FPFSAdditions__unboostFilePresenterForItemIdentifiers_reply___block_invoke;
          v26[3] = &unk_278504140;
          v29 = buf;
          v18 = v11;
          v27 = v18;
          v28 = v12;
          [(BRCXPCRegularIPCsClient *)self _unboostFilePresenterForItemIdentifier:v17 handledAppLibrarys:v18 completionHandler:v26];
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v14);
  }

  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__BRCXPCRegularIPCsClient_FPFSAdditions__unboostFilePresenterForItemIdentifiers_reply___block_invoke_2;
  block[3] = &unk_278504168;
  v25 = buf;
  block[4] = self;
  v24 = replyCopy;
  v20 = replyCopy;
  dispatch_group_notify(v12, queue, block);

  _Block_object_dispose(buf, 8);
  __brc_leave_section(v34);
}

void __87__BRCXPCRegularIPCsClient_FPFSAdditions__unboostFilePresenterForItemIdentifiers_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  if (v6)
  {
    [*(a1 + 32) addObject:v6];
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __87__BRCXPCRegularIPCsClient_FPFSAdditions__unboostFilePresenterForItemIdentifiers_reply___block_invoke_2(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = a1[4];
    v5 = *(*(a1[6] + 8) + 40);
    v7 = 138412802;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  return (*(a1[5] + 16))();
}

- (void)capabilityWhenTryingToReparentItemIdentifier:(id)identifier toNewParent:(id)parent reply:(id)reply
{
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  parentCopy = parent;
  replyCopy = reply;
  memset(v21, 0, sizeof(v21));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) capabilityWhenTryingToReparentItemIdentifier:toNewParent:reply:]", 1239, 0, v21);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v21[0];
    v14 = qos_class_self();
    v15 = BRCPrettyPrintEnumWithContext(v14, &brc_qos_entries, 0);
    *buf = 134219266;
    v23 = v13;
    v24 = 2112;
    selfCopy = self;
    v26 = 2112;
    v27 = v15;
    v28 = 2080;
    v29 = "[BRCXPCRegularIPCsClient(FPFSAdditions) capabilityWhenTryingToReparentItemIdentifier:toNewParent:reply:]";
    v30 = 2112;
    v31 = identifierCopy;
    v32 = 2112;
    v33 = v11;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __105__BRCXPCRegularIPCsClient_FPFSAdditions__capabilityWhenTryingToReparentItemIdentifier_toNewParent_reply___block_invoke;
  v18[3] = &unk_2785041B8;
  v18[4] = self;
  v16 = replyCopy;
  v20 = v16;
  v17 = parentCopy;
  v19 = v17;
  [(BRCXPCRegularIPCsClient *)self accessItemIdentifierLocalItem:identifierCopy dbAccessKind:1 synchronouslyIfPossible:0 handler:v18];

  __brc_leave_section(v21);
}

void __105__BRCXPCRegularIPCsClient_FPFSAdditions__capabilityWhenTryingToReparentItemIdentifier_toNewParent_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 32);
      v20 = [v7 brc_wrappedError];
      *buf = 138413058;
      v29 = v19;
      v30 = 1024;
      *v31 = 1;
      *&v31[4] = 2112;
      *&v31[6] = v20;
      *&v31[14] = 2112;
      *&v31[16] = v17;
      _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", buf, 0x26u);
    }

    v21 = *(a1 + 48);
    v22 = [v7 brc_wrappedError];
    (*(v21 + 16))(v21, 1, v22);
  }

  else
  {
    memset(v27, 0, sizeof(v27));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) capabilityWhenTryingToReparentItemIdentifier:toNewParent:reply:]_block_invoke", 1238, 0, v27);
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = v27[0];
      v11 = *(a1 + 32);
      v12 = qos_class_self();
      v13 = BRCPrettyPrintEnumWithContext(v12, &brc_qos_entries, 0);
      v14 = *(a1 + 40);
      *buf = 134219266;
      v29 = v10;
      v30 = 2112;
      *v31 = v11;
      *&v31[8] = 2112;
      *&v31[10] = v13;
      *&v31[18] = 2080;
      *&v31[20] = "[BRCXPCRegularIPCsClient(FPFSAdditions) capabilityWhenTryingToReparentItemIdentifier:toNewParent:reply:]_block_invoke";
      v32 = 2112;
      v33 = v14;
      v34 = 2112;
      v35 = v8;
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
    }

    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __105__BRCXPCRegularIPCsClient_FPFSAdditions__capabilityWhenTryingToReparentItemIdentifier_toNewParent_reply___block_invoke_128;
    v23[3] = &unk_278504190;
    v23[4] = v15;
    v24 = 0;
    v26 = *(a1 + 48);
    v25 = v5;
    [v15 accessItemIdentifierLocalItem:v16 dbAccessKind:1 synchronouslyIfPossible:0 handler:v23];

    __brc_leave_section(v27);
  }
}

void __105__BRCXPCRegularIPCsClient_FPFSAdditions__capabilityWhenTryingToReparentItemIdentifier_toNewParent_reply___block_invoke_128(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 32);
      v24 = [*(a1 + 40) brc_wrappedError];
      *buf = 138413058;
      v31 = v23;
      v32 = 1024;
      *v33 = 1;
      *&v33[4] = 2112;
      *&v33[6] = v24;
      *&v33[14] = 2112;
      *&v33[16] = v21;
      _os_log_impl(&dword_223E7A000, v22, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", buf, 0x26u);
    }

    v25 = *(a1 + 56);
    v26 = [*(a1 + 40) brc_wrappedError];
    (*(v25 + 16))(v25, 1, v26);
  }

  else
  {
    memset(v29, 0, sizeof(v29));
    __brc_create_section(0, "[BRCXPCRegularIPCsClient(FPFSAdditions) capabilityWhenTryingToReparentItemIdentifier:toNewParent:reply:]_block_invoke", 1232, 0, v29);
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(a1 + 48);
      *buf = 134218754;
      v31 = v29[0];
      v32 = 2112;
      *v33 = v27;
      *&v33[8] = 2112;
      *&v33[10] = v5;
      *&v33[18] = 2112;
      *&v33[20] = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx getting move status to reparent %@ to %@%@", buf, 0x2Au);
    }

    v10 = +[BRCDaemonContainerHelper sharedHelper];
    v11 = *(a1 + 48);
    v12 = [v11 session];
    v28 = 0;
    v13 = [v10 br_capabilityToMoveFromLocalItem:v11 toNewParent:v5 session:v12 error:&v28];
    v14 = v28;

    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      v18 = [v14 brc_wrappedError];
      *buf = 138413058;
      v31 = v17;
      v32 = 1024;
      *v33 = v13;
      *&v33[4] = 2112;
      *&v33[6] = v18;
      *&v33[14] = 2112;
      *&v33[16] = v15;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", buf, 0x26u);
    }

    v19 = *(a1 + 56);
    v20 = [v14 brc_wrappedError];
    (*(v19 + 16))(v19, v13, v20);

    __brc_leave_section(v29);
  }
}

- (void)getBookmarkDataForItemIdentifier:(id)identifier onlyAllowItemKnowByServer:(BOOL)server allowAccessByBundleID:(id)d documentID:(id)iD isDirectory:(BOOL)directory reply:(id)reply
{
  v49 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  iDCopy = iD;
  replyCopy = reply;
  memset(v36, 0, sizeof(v36));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) getBookmarkDataForItemIdentifier:onlyAllowItemKnowByServer:allowAccessByBundleID:documentID:isDirectory:reply:]", 1274, 0, v36);
  v17 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v27 = iDCopy;
    serverCopy = server;
    directoryCopy = directory;
    v21 = v36[0];
    v22 = qos_class_self();
    v23 = BRCPrettyPrintEnumWithContext(v22, &brc_qos_entries, 0);
    *buf = 134219266;
    v38 = v21;
    v39 = 2112;
    selfCopy = self;
    v41 = 2112;
    v42 = v23;
    v43 = 2080;
    v44 = "[BRCXPCRegularIPCsClient(FPFSAdditions) getBookmarkDataForItemIdentifier:onlyAllowItemKnowByServer:allowAccessByBundleID:documentID:isDirectory:reply:]";
    v45 = 2112;
    v46 = identifierCopy;
    v47 = 2112;
    v48 = v17;
    _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);

    directory = directoryCopy;
    server = serverCopy;
    iDCopy = v27;
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __152__BRCXPCRegularIPCsClient_FPFSAdditions__getBookmarkDataForItemIdentifier_onlyAllowItemKnowByServer_allowAccessByBundleID_documentID_isDirectory_reply___block_invoke;
  v29[3] = &unk_2785041E0;
  serverCopy2 = server;
  directoryCopy2 = directory;
  v24 = identifierCopy;
  v30 = v24;
  v25 = iDCopy;
  v31 = v25;
  selfCopy2 = self;
  v26 = replyCopy;
  v33 = v26;
  [(BRCXPCRegularIPCsClient *)self accessItemIdentifierLocalItem:v24 dbAccessKind:0 synchronouslyIfPossible:0 handler:v29];

  __brc_leave_section(v36);
}

void __152__BRCXPCRegularIPCsClient_FPFSAdditions__getBookmarkDataForItemIdentifier_onlyAllowItemKnowByServer_allowAccessByBundleID_documentID_isDirectory_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v12 = 0;
LABEL_13:
    v11 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  if ([v5 isKnownByServer])
  {
    if (([v5 isFSRoot] & 1) == 0)
    {
      v7 = [v5 bookmarkData];
      if ([v5 isDocument])
      {
        v8 = [v5 asDocument];
        v9 = [v8 currentVersion];
        v10 = [v9 ckInfo];
        v11 = [v10 etag];
      }

      else
      {
        v8 = [v5 st];
        v9 = [v8 ckInfo];
        v11 = [v9 etag];
      }

      v12 = 0;
      goto LABEL_14;
    }
  }

  else if (*(a1 + 64) == 1)
  {
    v13 = [MEMORY[0x277CCA9B8] brc_errorNotInCloud:0];
LABEL_12:
    v12 = v13;
    goto LABEL_13;
  }

  if (![v5 isDocument] || *(a1 + 65) == 1)
  {
    v13 = [MEMORY[0x277CCA9B8] brc_errorNoDocument:*(a1 + 32) underlyingPOSIXError:21];
    goto LABEL_12;
  }

  v20 = MEMORY[0x277CCACA8];
  v21 = *(a1 + 40);
  v22 = [v5 serverZone];
  v7 = [v20 bookmarkDataWithDocumentID:v21 serverZone:v22];

  v12 = 0;
  v11 = 0;
LABEL_14:
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = *(a1 + 48);
    v17 = [v12 brc_wrappedError];
    v23 = 138413314;
    v24 = v16;
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v11;
    v29 = 2112;
    v30 = v17;
    v31 = 2112;
    v32 = v14;
    _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", &v23, 0x34u);
  }

  v18 = *(a1 + 56);
  v19 = [v12 brc_wrappedError];
  (*(v18 + 16))(v18, v7, v11, v19);
}

- (void)getPublishedURLForItemIdentifier:(id)identifier forStreaming:(BOOL)streaming requestedTTL:(unint64_t)l reply:(id)reply
{
  v45 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __107__BRCXPCRegularIPCsClient_FPFSAdditions__getPublishedURLForItemIdentifier_forStreaming_requestedTTL_reply___block_invoke;
  v31[3] = &unk_278504208;
  v31[4] = self;
  v12 = replyCopy;
  v32 = v12;
  v13 = MEMORY[0x22AA4A310](v31);
  memset(v30, 0, sizeof(v30));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) getPublishedURLForItemIdentifier:forStreaming:requestedTTL:reply:]", 1307, 0, v30);
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v23 = v13;
    streamingCopy = streaming;
    lCopy = l;
    v18 = v30[0];
    v19 = qos_class_self();
    v20 = BRCPrettyPrintEnumWithContext(v19, &brc_qos_entries, 0);
    *buf = 134219266;
    v34 = v18;
    v35 = 2112;
    selfCopy = self;
    v37 = 2112;
    v38 = v20;
    v39 = 2080;
    v40 = "[BRCXPCRegularIPCsClient(FPFSAdditions) getPublishedURLForItemIdentifier:forStreaming:requestedTTL:reply:]";
    v41 = 2112;
    v42 = identifierCopy;
    v43 = 2112;
    v44 = v14;
    _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);

    l = lCopy;
    streaming = streamingCopy;
    v13 = v23;
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __107__BRCXPCRegularIPCsClient_FPFSAdditions__getPublishedURLForItemIdentifier_forStreaming_requestedTTL_reply___block_invoke_134;
  v24[3] = &unk_278504230;
  v21 = v13;
  v27 = v21;
  v22 = identifierCopy;
  v25 = v22;
  selfCopy2 = self;
  streamingCopy2 = streaming;
  lCopy2 = l;
  [(BRCXPCRegularIPCsClient *)self accessItemIdentifierLocalItem:v22 dbAccessKind:0 synchronouslyIfPossible:0 handler:v24];

  __brc_leave_section(v30);
}

void __107__BRCXPCRegularIPCsClient_FPFSAdditions__getPublishedURLForItemIdentifier_forStreaming_requestedTTL_reply___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || !v8 || v9)
  {
    if (!v9)
    {
      v10 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:15 description:@"Publish failed but no error was set"];
    }

    v8 = 0;
    v7 = 0;
  }

  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 32);
    v14 = [v10 brc_wrappedError];
    v17 = 138413314;
    v18 = v13;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v14;
    v25 = 2112;
    v26 = v11;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", &v17, 0x34u);
  }

  v15 = *(a1 + 40);
  v16 = [v10 brc_wrappedError];
  (*(v15 + 16))(v15, v7, v8, v16);
}

void __107__BRCXPCRegularIPCsClient_FPFSAdditions__getPublishedURLForItemIdentifier_forStreaming_requestedTTL_reply___block_invoke_134(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (!v5)
    {
      v7 = brc_bread_crumbs();
      v8 = brc_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __107__BRCXPCRegularIPCsClient_FPFSAdditions__getPublishedURLForItemIdentifier_forStreaming_requestedTTL_reply___block_invoke_134_cold_1(a1);
      }
    }

    [*(a1 + 40) _getPublishedURLForLocalItem:v5 forStreaming:*(a1 + 64) requestedTTL:*(a1 + 56) reply:*(a1 + 48)];
  }
}

- (void)getAttributeValues:(id)values forItemIdentifier:(id)identifier reply:(id)reply
{
  v34 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  identifierCopy = identifier;
  replyCopy = reply;
  memset(v21, 0, sizeof(v21));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) getAttributeValues:forItemIdentifier:reply:]", 1323, 0, v21);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v21[0];
    v14 = qos_class_self();
    v15 = BRCPrettyPrintEnumWithContext(v14, &brc_qos_entries, 0);
    *buf = 134219266;
    v23 = v13;
    v24 = 2112;
    selfCopy = self;
    v26 = 2112;
    v27 = v15;
    v28 = 2080;
    v29 = "[BRCXPCRegularIPCsClient(FPFSAdditions) getAttributeValues:forItemIdentifier:reply:]";
    v30 = 2112;
    v31 = identifierCopy;
    v32 = 2112;
    v33 = v11;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __85__BRCXPCRegularIPCsClient_FPFSAdditions__getAttributeValues_forItemIdentifier_reply___block_invoke;
  v18[3] = &unk_278504258;
  v18[4] = self;
  v16 = valuesCopy;
  v19 = v16;
  v17 = replyCopy;
  v20 = v17;
  [(BRCXPCRegularIPCsClient *)self accessItemIdentifierLocalItem:identifierCopy dbAccessKind:0 synchronouslyIfPossible:0 handler:v18];

  __brc_leave_section(v21);
}

void __85__BRCXPCRegularIPCsClient_FPFSAdditions__getAttributeValues_forItemIdentifier_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [*(a1 + 32) _removeSandboxedAttributes:*(a1 + 40)];
    v7 = [BRCUbiquitousAttributes brc_attributesValues:v8 localItem:v5];
  }

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v12 = 138413058;
    v13 = v11;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v12, 0x2Au);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)getiWorkPublishingInfoForItemIdentifier:(id)identifier reply:(id)reply
{
  v39 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  memset(v26, 0, sizeof(v26));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) getiWorkPublishingInfoForItemIdentifier:reply:]", 1331, 0, v26);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v26[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    v28 = v10;
    v29 = 2112;
    selfCopy2 = self;
    v31 = 2112;
    v32 = v12;
    v33 = 2080;
    v34 = "[BRCXPCRegularIPCsClient(FPFSAdditions) getiWorkPublishingInfoForItemIdentifier:reply:]";
    v35 = 2112;
    v36 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v13 = *MEMORY[0x277CFABB0];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __88__BRCXPCRegularIPCsClient_FPFSAdditions__getiWorkPublishingInfoForItemIdentifier_reply___block_invoke;
  v24[3] = &unk_2785014D0;
  v24[4] = self;
  v14 = replyCopy;
  v25 = v14;
  LODWORD(v13) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v13, v24);

  if (v13)
  {
    memset(v23, 0, sizeof(v23));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) getiWorkPublishingInfoForItemIdentifier:reply:]", 1340, 0, v23);
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = v23[0];
      v18 = qos_class_self();
      v19 = BRCPrettyPrintEnumWithContext(v18, &brc_qos_entries, 0);
      *buf = 134219266;
      v28 = v17;
      v29 = 2112;
      selfCopy2 = self;
      v31 = 2112;
      v32 = v19;
      v33 = 2080;
      v34 = "[BRCXPCRegularIPCsClient(FPFSAdditions) getiWorkPublishingInfoForItemIdentifier:reply:]";
      v35 = 2112;
      v36 = identifierCopy;
      v37 = 2112;
      v38 = v15;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __88__BRCXPCRegularIPCsClient_FPFSAdditions__getiWorkPublishingInfoForItemIdentifier_reply___block_invoke_136;
    v20[3] = &unk_2785041B8;
    v20[4] = self;
    v22 = v14;
    v21 = identifierCopy;
    [(BRCXPCRegularIPCsClient *)self accessItemIdentifierLocalItem:v21 dbAccessKind:1 synchronouslyIfPossible:0 handler:v20];

    __brc_leave_section(v23);
  }

  __brc_leave_section(v26);
}

void __88__BRCXPCRegularIPCsClient_FPFSAdditions__getiWorkPublishingInfoForItemIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413570;
    v8 = v6;
    v9 = 1024;
    v10 = 0;
    v11 = 1024;
    v12 = 0;
    v13 = 2112;
    v14 = 0;
    v15 = 2112;
    v16 = v3;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %d, %@, %@)%@", &v7, 0x36u);
  }

  (*(*(a1 + 40) + 16))();
}

void __88__BRCXPCRegularIPCsClient_FPFSAdditions__getiWorkPublishingInfoForItemIdentifier_reply___block_invoke_136(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = 138413570;
      v10 = v8;
      v11 = 1024;
      v12 = 0;
      v13 = 1024;
      v14 = 0;
      v15 = 2112;
      v16 = 0;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %d, %@, %@)%@", &v9, 0x36u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) _getiWorkPublishingInfoForLocalItem:a2 itemIdentifier:*(a1 + 40) reply:*(a1 + 48)];
  }
}

- (void)setiWorkPublishingInfoForItemIdentifier:(id)identifier isForPublish:(BOOL)publish readonly:(BOOL)readonly reply:(id)reply
{
  v49 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  memset(v36, 0, sizeof(v36));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) setiWorkPublishingInfoForItemIdentifier:isForPublish:readonly:reply:]", 1350, 0, v36);
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    publishCopy = publish;
    readonlyCopy = readonly;
    v16 = v36[0];
    v17 = qos_class_self();
    v18 = BRCPrettyPrintEnumWithContext(v17, &brc_qos_entries, 0);
    *buf = 134219010;
    v38 = v16;
    v39 = 2112;
    selfCopy2 = self;
    v41 = 2112;
    v42 = v18;
    v43 = 2080;
    v44 = "[BRCXPCRegularIPCsClient(FPFSAdditions) setiWorkPublishingInfoForItemIdentifier:isForPublish:readonly:reply:]";
    v45 = 2112;
    v46 = v12;
    _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);

    readonly = readonlyCopy;
    publish = publishCopy;
  }

  v19 = *MEMORY[0x277CFABB0];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __110__BRCXPCRegularIPCsClient_FPFSAdditions__setiWorkPublishingInfoForItemIdentifier_isForPublish_readonly_reply___block_invoke;
  v34[3] = &unk_2785014D0;
  v34[4] = self;
  v20 = replyCopy;
  v35 = v20;
  LODWORD(v19) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v19, v34);

  if (v19)
  {
    memset(v33, 0, sizeof(v33));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) setiWorkPublishingInfoForItemIdentifier:isForPublish:readonly:reply:]", 1361, 0, v33);
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      publishCopy2 = publish;
      readonlyCopy2 = readonly;
      v24 = v33[0];
      v25 = qos_class_self();
      v26 = BRCPrettyPrintEnumWithContext(v25, &brc_qos_entries, 0);
      *buf = 134219266;
      v38 = v24;
      v39 = 2112;
      selfCopy2 = self;
      v41 = 2112;
      v42 = v26;
      v43 = 2080;
      v44 = "[BRCXPCRegularIPCsClient(FPFSAdditions) setiWorkPublishingInfoForItemIdentifier:isForPublish:readonly:reply:]";
      v45 = 2112;
      v46 = identifierCopy;
      v47 = 2112;
      v48 = v21;
      _os_log_impl(&dword_223E7A000, v22, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);

      readonly = readonlyCopy2;
      publish = publishCopy2;
    }

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __110__BRCXPCRegularIPCsClient_FPFSAdditions__setiWorkPublishingInfoForItemIdentifier_isForPublish_readonly_reply___block_invoke_137;
    v28[3] = &unk_278504280;
    v28[4] = self;
    v30 = v20;
    v29 = identifierCopy;
    publishCopy3 = publish;
    readonlyCopy3 = readonly;
    [(BRCXPCRegularIPCsClient *)self accessItemIdentifierLocalItem:v29 dbAccessKind:0 synchronouslyIfPossible:0 handler:v28];

    __brc_leave_section(v33);
  }

  __brc_leave_section(v36);
}

void __110__BRCXPCRegularIPCsClient_FPFSAdditions__setiWorkPublishingInfoForItemIdentifier_isForPublish_readonly_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __110__BRCXPCRegularIPCsClient_FPFSAdditions__setiWorkPublishingInfoForItemIdentifier_isForPublish_readonly_reply___block_invoke_137(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = [v5 brc_wrappedError];
      v12 = 138412802;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v12, 0x20u);
    }

    v10 = *(a1 + 48);
    v11 = [v5 brc_wrappedError];
    (*(v10 + 16))(v10, v11);
  }

  else
  {
    [*(a1 + 32) _setiWorkPublishingInfoForLocalItem:a2 itemIdentifier:*(a1 + 40) publish:*(a1 + 56) readonly:*(a1 + 57) reply:*(a1 + 48)];
  }
}

- (void)getiWorkPublishingBadgingStatusForItemIdentifier:(id)identifier reply:(id)reply
{
  v39 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  memset(v26, 0, sizeof(v26));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) getiWorkPublishingBadgingStatusForItemIdentifier:reply:]", 1369, 0, v26);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v26[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    v28 = v10;
    v29 = 2112;
    selfCopy2 = self;
    v31 = 2112;
    v32 = v12;
    v33 = 2080;
    v34 = "[BRCXPCRegularIPCsClient(FPFSAdditions) getiWorkPublishingBadgingStatusForItemIdentifier:reply:]";
    v35 = 2112;
    v36 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v13 = *MEMORY[0x277CFABB0];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __97__BRCXPCRegularIPCsClient_FPFSAdditions__getiWorkPublishingBadgingStatusForItemIdentifier_reply___block_invoke;
  v24[3] = &unk_2785014D0;
  v24[4] = self;
  v14 = replyCopy;
  v25 = v14;
  LODWORD(v13) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v13, v24);

  if (v13)
  {
    memset(v23, 0, sizeof(v23));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) getiWorkPublishingBadgingStatusForItemIdentifier:reply:]", 1378, 0, v23);
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = v23[0];
      v18 = qos_class_self();
      v19 = BRCPrettyPrintEnumWithContext(v18, &brc_qos_entries, 0);
      *buf = 134219266;
      v28 = v17;
      v29 = 2112;
      selfCopy2 = self;
      v31 = 2112;
      v32 = v19;
      v33 = 2080;
      v34 = "[BRCXPCRegularIPCsClient(FPFSAdditions) getiWorkPublishingBadgingStatusForItemIdentifier:reply:]";
      v35 = 2112;
      v36 = identifierCopy;
      v37 = 2112;
      v38 = v15;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __97__BRCXPCRegularIPCsClient_FPFSAdditions__getiWorkPublishingBadgingStatusForItemIdentifier_reply___block_invoke_138;
    v20[3] = &unk_2785041B8;
    v20[4] = self;
    v22 = v14;
    v21 = identifierCopy;
    [(BRCXPCRegularIPCsClient *)self accessItemIdentifierLocalItem:v21 dbAccessKind:1 synchronouslyIfPossible:0 handler:v20];

    __brc_leave_section(v23);
  }

  __brc_leave_section(v26);
}

void __97__BRCXPCRegularIPCsClient_FPFSAdditions__getiWorkPublishingBadgingStatusForItemIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 1024;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v7, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
}

void __97__BRCXPCRegularIPCsClient_FPFSAdditions__getiWorkPublishingBadgingStatusForItemIdentifier_reply___block_invoke_138(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = 138413058;
      v10 = v8;
      v11 = 1024;
      v12 = 0;
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v9, 0x26u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) _getiWorkPublishingBadgingStatusForLocalItem:a2 itemIdentifier:*(a1 + 40) reply:*(a1 + 48)];
  }
}

- (void)getiWorkNeedsShareMigrateForItemIdentifier:(id)identifier reply:(id)reply
{
  v39 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  memset(v26, 0, sizeof(v26));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) getiWorkNeedsShareMigrateForItemIdentifier:reply:]", 1386, 0, v26);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v26[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    v28 = v10;
    v29 = 2112;
    selfCopy2 = self;
    v31 = 2112;
    v32 = v12;
    v33 = 2080;
    v34 = "[BRCXPCRegularIPCsClient(FPFSAdditions) getiWorkNeedsShareMigrateForItemIdentifier:reply:]";
    v35 = 2112;
    v36 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v13 = *MEMORY[0x277CFABB0];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __91__BRCXPCRegularIPCsClient_FPFSAdditions__getiWorkNeedsShareMigrateForItemIdentifier_reply___block_invoke;
  v24[3] = &unk_2785014D0;
  v24[4] = self;
  v14 = replyCopy;
  v25 = v14;
  LODWORD(v13) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v13, v24);

  if (v13)
  {
    memset(v23, 0, sizeof(v23));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) getiWorkNeedsShareMigrateForItemIdentifier:reply:]", 1395, 0, v23);
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = v23[0];
      v18 = qos_class_self();
      v19 = BRCPrettyPrintEnumWithContext(v18, &brc_qos_entries, 0);
      *buf = 134219266;
      v28 = v17;
      v29 = 2112;
      selfCopy2 = self;
      v31 = 2112;
      v32 = v19;
      v33 = 2080;
      v34 = "[BRCXPCRegularIPCsClient(FPFSAdditions) getiWorkNeedsShareMigrateForItemIdentifier:reply:]";
      v35 = 2112;
      v36 = identifierCopy;
      v37 = 2112;
      v38 = v15;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __91__BRCXPCRegularIPCsClient_FPFSAdditions__getiWorkNeedsShareMigrateForItemIdentifier_reply___block_invoke_139;
    v20[3] = &unk_2785041B8;
    v20[4] = self;
    v22 = v14;
    v21 = identifierCopy;
    [(BRCXPCRegularIPCsClient *)self accessItemIdentifierLocalItem:v21 dbAccessKind:1 synchronouslyIfPossible:0 handler:v20];

    __brc_leave_section(v23);
  }

  __brc_leave_section(v26);
}

void __91__BRCXPCRegularIPCsClient_FPFSAdditions__getiWorkNeedsShareMigrateForItemIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 1024;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v7, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
}

void __91__BRCXPCRegularIPCsClient_FPFSAdditions__getiWorkNeedsShareMigrateForItemIdentifier_reply___block_invoke_139(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = 138413058;
      v10 = v8;
      v11 = 1024;
      v12 = 0;
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v9, 0x26u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) _getiWorkNeedsShareMigrateForLocalItem:a2 itemIdentifier:*(a1 + 40) reply:*(a1 + 48)];
  }
}

- (void)_refreshLatestRevisionAndSharingStateForItemIdentifier:(id)identifier retryOnApplyFailure:(BOOL)failure reply:(id)reply
{
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  memset(v21, 0, sizeof(v21));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) _refreshLatestRevisionAndSharingStateForItemIdentifier:retryOnApplyFailure:reply:]", 1453, 0, v21);
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v21[0];
    v13 = qos_class_self();
    v14 = BRCPrettyPrintEnumWithContext(v13, &brc_qos_entries, 0);
    *buf = 134219266;
    v23 = v12;
    v24 = 2112;
    selfCopy = self;
    v26 = 2112;
    v27 = v14;
    v28 = 2080;
    v29 = "[BRCXPCRegularIPCsClient(FPFSAdditions) _refreshLatestRevisionAndSharingStateForItemIdentifier:retryOnApplyFailure:reply:]";
    v30 = 2112;
    v31 = identifierCopy;
    v32 = 2112;
    v33 = v10;
    _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __123__BRCXPCRegularIPCsClient_FPFSAdditions___refreshLatestRevisionAndSharingStateForItemIdentifier_retryOnApplyFailure_reply___block_invoke;
  v17[3] = &unk_2785042D0;
  v17[4] = self;
  v15 = replyCopy;
  v19 = v15;
  v16 = identifierCopy;
  v18 = v16;
  failureCopy = failure;
  [(BRCXPCRegularIPCsClient *)self accessItemIdentifierLocalItem:v16 dbAccessKind:0 synchronouslyIfPossible:0 handler:v17];

  __brc_leave_section(v21);
}

void __123__BRCXPCRegularIPCsClient_FPFSAdditions___refreshLatestRevisionAndSharingStateForItemIdentifier_retryOnApplyFailure_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 138412802;
      v39 = v9;
      v40 = 2112;
      v41 = v6;
      v42 = 2112;
      v43 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(*(a1 + 48) + 16))();
    goto LABEL_21;
  }

  if (([v5 isIdleOrRejected] & 1) == 0 && (objc_msgSend(v5, "localDiffs") & 0x3FF0000) != 0)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v13 = [MEMORY[0x277CCA9B8] brc_errorItemChanged];
      *buf = 138412802;
      v39 = v12;
      v40 = 2112;
      v41 = v13;
      v42 = 2112;
      v43 = v10;
      _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    v14 = *(a1 + 48);
    v15 = [MEMORY[0x277CCA9B8] brc_errorItemChanged];
    (*(v14 + 16))(v14, v15);
LABEL_20:

    goto LABEL_21;
  }

  if ([v5 isDocument])
  {
    v15 = [v5 clientZone];
    v16 = [v5 asDocument];
    v17 = [BRCUserDefaults defaultsForMangledID:0];
    [v17 refreshRevisionMaxBackoff];
    v18 = [v15 locateContentRecordIfNecessaryForItem:v16 isUserWaiting:1 maxOperationBackoff:?];

    if (v18)
    {
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __123__BRCXPCRegularIPCsClient_FPFSAdditions___refreshLatestRevisionAndSharingStateForItemIdentifier_retryOnApplyFailure_reply___block_invoke_140;
      v33[3] = &unk_2785042A8;
      v19 = *(a1 + 40);
      v37 = *(a1 + 56);
      v20 = *(a1 + 32);
      v34 = v19;
      v35 = v20;
      v36 = *(a1 + 48);
      [v18 addLocateRecordCompletionBlock:v33];

      v21 = v34;
    }

    else
    {
      v28 = brc_bread_crumbs();
      v29 = brc_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = *(a1 + 32);
        v31 = [MEMORY[0x277CCA9B8] brc_errorItemChanged];
        *buf = 138412802;
        v39 = v30;
        v40 = 2112;
        v41 = v31;
        v42 = 2112;
        v43 = v28;
        _os_log_impl(&dword_223E7A000, v29, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
      }

      v32 = *(a1 + 48);
      v21 = [MEMORY[0x277CCA9B8] brc_errorItemChanged];
      (*(v32 + 16))(v32, v21);
    }

    goto LABEL_20;
  }

  v22 = brc_bread_crumbs();
  v23 = brc_default_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = *(a1 + 32);
    v25 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:*(a1 + 40)];
    *buf = 138412802;
    v39 = v24;
    v40 = 2112;
    v41 = v25;
    v42 = 2112;
    v43 = v22;
    _os_log_impl(&dword_223E7A000, v23, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
  }

  v26 = *(a1 + 48);
  v27 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:*(a1 + 40)];
  (*(v26 + 16))(v26, v27);

LABEL_21:
}

void __123__BRCXPCRegularIPCsClient_FPFSAdditions___refreshLatestRevisionAndSharingStateForItemIdentifier_retryOnApplyFailure_reply___block_invoke_140(uint64_t a1, char a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 br_isCloudDocsErrorCode:14])
  {
    v6 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:*(a1 + 32)];

    v5 = v6;
  }

  if ([v5 br_isCloudDocsErrorCode:161])
  {
    if (*(a1 + 56) == 1)
    {
      [*(a1 + 40) _refreshLatestRevisionAndSharingStateForItemIdentifier:*(a1 + 32) retryOnApplyFailure:0 reply:*(a1 + 48)];
      goto LABEL_13;
    }

    v7 = [MEMORY[0x277CCA9B8] brc_errorItemChanged];

    v5 = v7;
  }

  if ((a2 & 1) == 0 && !v5)
  {
    v5 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:*(a1 + 32)];
  }

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 40);
    v11 = [v5 brc_wrappedError];
    v14 = 138412802;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v14, 0x20u);
  }

  v12 = *(a1 + 48);
  v13 = [v5 brc_wrappedError];
  (*(v12 + 16))(v12, v13);

LABEL_13:
}

- (void)_fetchLatestContentRevisionAndSharingStateForItemIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __108__BRCXPCRegularIPCsClient_FPFSAdditions___fetchLatestContentRevisionAndSharingStateForItemIdentifier_reply___block_invoke;
  v10[3] = &unk_278504320;
  v11 = identifierCopy;
  v12 = replyCopy;
  v10[4] = self;
  v8 = identifierCopy;
  v9 = replyCopy;
  [(BRCXPCRegularIPCsClient *)self _refreshLatestRevisionAndSharingStateForItemIdentifier:v8 reply:v10];
}

void __108__BRCXPCRegularIPCsClient_FPFSAdditions___fetchLatestContentRevisionAndSharingStateForItemIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = [v3 brc_wrappedError];
      *buf = 138413314;
      v14 = v6;
      v15 = 2112;
      v16 = 0;
      v17 = 2112;
      v18 = 0;
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", buf, 0x34u);
    }

    v8 = *(a1 + 48);
    v9 = [v3 brc_wrappedError];
    (*(v8 + 16))(v8, 0, 0, v9);
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __108__BRCXPCRegularIPCsClient_FPFSAdditions___fetchLatestContentRevisionAndSharingStateForItemIdentifier_reply___block_invoke_142;
    v11[3] = &unk_2785042F8;
    v10 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = *(a1 + 48);
    [BRCImportUtil forceLatestVersionOnDiskForItemID:v10 completionHandler:v11];
  }
}

void __108__BRCXPCRegularIPCsClient_FPFSAdditions___fetchLatestContentRevisionAndSharingStateForItemIdentifier_reply___block_invoke_142(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v17 = 138413314;
      v18 = v9;
      v19 = 2112;
      v20 = 0;
      v21 = 2112;
      v22 = 0;
      v23 = 2112;
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", &v17, 0x34u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = [v5 br_contentSignature];
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      v14 = [v10 contentSignature];
      v17 = 138413314;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = 0;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", &v17, 0x34u);
    }

    v15 = *(a1 + 40);
    v16 = [v10 contentSignature];
    (*(v15 + 16))(v15, v16, v5, 0);
  }
}

- (void)calculateSignatureForItemIdentifier:(id)identifier reply:(id)reply
{
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  memset(v21, 0, sizeof(v21));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) calculateSignatureForItemIdentifier:reply:]", 1486, 0, v21);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v21[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    v23 = v10;
    v24 = 2112;
    selfCopy = self;
    v26 = 2112;
    v27 = v12;
    v28 = 2080;
    v29 = "[BRCXPCRegularIPCsClient(FPFSAdditions) calculateSignatureForItemIdentifier:reply:]";
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v13 = *MEMORY[0x277CFAC68];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __84__BRCXPCRegularIPCsClient_FPFSAdditions__calculateSignatureForItemIdentifier_reply___block_invoke;
  v19[3] = &unk_2785014D0;
  v19[4] = self;
  v14 = replyCopy;
  v20 = v14;
  LODWORD(v13) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v13, v19);

  if (v13)
  {
    br_sharedProviderManager = [MEMORY[0x277CC64A8] br_sharedProviderManager];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __84__BRCXPCRegularIPCsClient_FPFSAdditions__calculateSignatureForItemIdentifier_reply___block_invoke_144;
    v16[3] = &unk_278504348;
    v16[4] = self;
    v18 = v14;
    v17 = identifierCopy;
    [br_sharedProviderManager getUserVisibleURLForItemIdentifier:v17 completionHandler:v16];
  }

  __brc_leave_section(v21);
}

void __84__BRCXPCRegularIPCsClient_FPFSAdditions__calculateSignatureForItemIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __84__BRCXPCRegularIPCsClient_FPFSAdditions__calculateSignatureForItemIdentifier_reply___block_invoke_144(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 138413058;
      v25 = v9;
      v26 = 2112;
      v27 = 0;
      v28 = 2112;
      v29 = v6;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    memset(v23, 0, sizeof(v23));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) calculateSignatureForItemIdentifier:reply:]_block_invoke", 1506, 0, v23);
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = v23[0];
      v13 = *(a1 + 32);
      v14 = qos_class_self();
      v15 = BRCPrettyPrintEnumWithContext(v14, &brc_qos_entries, 0);
      v16 = *(a1 + 40);
      *buf = 134219266;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = v15;
      v30 = 2080;
      v31 = "[BRCXPCRegularIPCsClient(FPFSAdditions) calculateSignatureForItemIdentifier:reply:]_block_invoke";
      v32 = 2112;
      v33 = v16;
      v34 = 2112;
      v35 = v10;
      _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
    }

    v18 = *(a1 + 32);
    v17 = *(a1 + 40);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __84__BRCXPCRegularIPCsClient_FPFSAdditions__calculateSignatureForItemIdentifier_reply___block_invoke_145;
    v19[3] = &unk_278504190;
    v19[4] = v18;
    v20 = v17;
    v22 = *(a1 + 48);
    v21 = v5;
    [v18 accessItemIdentifierLocalItem:v20 dbAccessKind:1 synchronouslyIfPossible:0 handler:v19];

    __brc_leave_section(v23);
  }
}

void __84__BRCXPCRegularIPCsClient_FPFSAdditions__calculateSignatureForItemIdentifier_reply___block_invoke_145(void *a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [a2 asDocument];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 clientZone];
      v9 = [v7 itemID];
      v10 = [v7 db];
      v11 = [v8 contentBoundaryKeyForItemID:v9 withDB:v10];

      if (v11)
      {
        v12 = [v7 clientZone];
        v13 = [v12 enhancedDrivePrivacyEnabled];

        if ((v13 & 1) == 0)
        {
          v14 = brc_bread_crumbs();
          v15 = brc_default_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            __84__BRCXPCRegularIPCsClient_FPFSAdditions__calculateSignatureForItemIdentifier_reply___block_invoke_145_cold_1();
          }
        }
      }

      v16 = a1[6];
      v30 = 0;
      v17 = [BRCDocumentSignatureCalculator calculateSignatureForURL:v16 boundaryKey:v11 error:&v30];
      v18 = v30;
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = a1[4];
        *buf = 138413058;
        v32 = v21;
        v33 = 2112;
        v34 = v17;
        v35 = 2112;
        v36 = v18;
        v37 = 2112;
        v38 = v19;
        _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
      }

      (*(a1[7] + 16))();
    }

    else
    {
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = a1[4];
        v28 = [MEMORY[0x277CCA9B8] brc_errorUnexpectedItemType:a1[5] description:@"Item is not a document"];
        *buf = 138413058;
        v32 = v27;
        v33 = 2112;
        v34 = 0;
        v35 = 2112;
        v36 = v28;
        v37 = 2112;
        v38 = v25;
        _os_log_impl(&dword_223E7A000, v26, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
      }

      v29 = a1[7];
      v18 = [MEMORY[0x277CCA9B8] brc_errorUnexpectedItemType:a1[5] description:@"Item is not a document"];
      (*(v29 + 16))(v29, 0, v18);
    }
  }

  else
  {
    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = a1[4];
      *buf = 138413058;
      v32 = v24;
      v33 = 2112;
      v34 = 0;
      v35 = 2112;
      v36 = v5;
      v37 = 2112;
      v38 = v22;
      _os_log_impl(&dword_223E7A000, v23, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    (*(a1[7] + 16))();
  }
}

- (void)calculateSignatureForItemIdentifier:(id)identifier forURL:(id)l reply:(id)reply
{
  v43 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  lCopy = l;
  replyCopy = reply;
  memset(v30, 0, sizeof(v30));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) calculateSignatureForItemIdentifier:forURL:reply:]", 1517, 0, v30);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v30[0];
    v14 = qos_class_self();
    v15 = BRCPrettyPrintEnumWithContext(v14, &brc_qos_entries, 0);
    *buf = 134219010;
    v32 = v13;
    v33 = 2112;
    selfCopy2 = self;
    v35 = 2112;
    v36 = v15;
    v37 = 2080;
    v38 = "[BRCXPCRegularIPCsClient(FPFSAdditions) calculateSignatureForItemIdentifier:forURL:reply:]";
    v39 = 2112;
    v40 = v11;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v16 = *MEMORY[0x277CFAC68];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __91__BRCXPCRegularIPCsClient_FPFSAdditions__calculateSignatureForItemIdentifier_forURL_reply___block_invoke;
  v28[3] = &unk_2785014D0;
  v28[4] = self;
  v17 = replyCopy;
  v29 = v17;
  LODWORD(v16) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v16, v28);

  if (v16)
  {
    memset(v27, 0, sizeof(v27));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) calculateSignatureForItemIdentifier:forURL:reply:]", 1532, 0, v27);
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = v27[0];
      v21 = qos_class_self();
      v22 = BRCPrettyPrintEnumWithContext(v21, &brc_qos_entries, 0);
      *buf = 134219266;
      v32 = v20;
      v33 = 2112;
      selfCopy2 = self;
      v35 = 2112;
      v36 = v22;
      v37 = 2080;
      v38 = "[BRCXPCRegularIPCsClient(FPFSAdditions) calculateSignatureForItemIdentifier:forURL:reply:]";
      v39 = 2112;
      v40 = identifierCopy;
      v41 = 2112;
      v42 = v18;
      _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __91__BRCXPCRegularIPCsClient_FPFSAdditions__calculateSignatureForItemIdentifier_forURL_reply___block_invoke_150;
    v23[3] = &unk_278504190;
    v23[4] = self;
    v24 = identifierCopy;
    v26 = v17;
    v25 = lCopy;
    [(BRCXPCRegularIPCsClient *)self accessItemIdentifierLocalItem:v24 dbAccessKind:1 synchronouslyIfPossible:0 handler:v23];

    __brc_leave_section(v27);
  }

  __brc_leave_section(v30);
}

void __91__BRCXPCRegularIPCsClient_FPFSAdditions__calculateSignatureForItemIdentifier_forURL_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __91__BRCXPCRegularIPCsClient_FPFSAdditions__calculateSignatureForItemIdentifier_forURL_reply___block_invoke_150(void *a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [a2 asDocument];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 clientZone];
      v9 = [v7 itemID];
      v10 = [v7 db];
      v11 = [v8 contentBoundaryKeyForItemID:v9 withDB:v10];

      if (v11)
      {
        v12 = [v7 clientZone];
        v13 = [v12 enhancedDrivePrivacyEnabled];

        if ((v13 & 1) == 0)
        {
          v14 = brc_bread_crumbs();
          v15 = brc_default_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            __84__BRCXPCRegularIPCsClient_FPFSAdditions__calculateSignatureForItemIdentifier_reply___block_invoke_145_cold_1();
          }
        }
      }

      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = a1[4];
        v19 = a1[6];
        v35 = 0;
        v20 = [BRCDocumentSignatureCalculator calculateSignatureForScopedURLWrapper:v19 boundaryKey:v11 error:&v35];
        v21 = v35;
        *buf = 138413058;
        v37 = v18;
        v38 = 2112;
        v39 = v20;
        v40 = 2112;
        v41 = v21;
        v42 = 2112;
        v43 = v16;
        _os_log_impl(&dword_223E7A000, v17, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
      }

      else
      {
        v21 = 0;
      }

      v30 = a1[6];
      v31 = a1[7];
      v34 = v21;
      v32 = [BRCDocumentSignatureCalculator calculateSignatureForScopedURLWrapper:v30 boundaryKey:v11 error:&v34];
      v33 = v34;

      (*(v31 + 16))(v31, v32, v33);
    }

    else
    {
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = a1[4];
        v28 = [MEMORY[0x277CCA9B8] brc_errorUnexpectedItemType:a1[5] description:@"Item is not a document"];
        *buf = 138413058;
        v37 = v27;
        v38 = 2112;
        v39 = 0;
        v40 = 2112;
        v41 = v28;
        v42 = 2112;
        v43 = v25;
        _os_log_impl(&dword_223E7A000, v26, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
      }

      v29 = a1[7];
      v11 = [MEMORY[0x277CCA9B8] brc_errorUnexpectedItemType:a1[5] description:@"Item is not a document"];
      (*(v29 + 16))(v29, 0, v11);
    }
  }

  else
  {
    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = a1[4];
      *buf = 138413058;
      v37 = v24;
      v38 = 2112;
      v39 = 0;
      v40 = 2112;
      v41 = v5;
      v42 = 2112;
      v43 = v22;
      _os_log_impl(&dword_223E7A000, v23, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    (*(a1[7] + 16))();
  }
}

- (void)cloneLatestContentRevisionForItemIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__BRCXPCRegularIPCsClient_FPFSAdditions__cloneLatestContentRevisionForItemIdentifier_reply___block_invoke;
  v10[3] = &unk_278504320;
  v11 = identifierCopy;
  v12 = replyCopy;
  v10[4] = self;
  v8 = identifierCopy;
  v9 = replyCopy;
  [(BRCXPCRegularIPCsClient *)self _refreshLatestRevisionAndSharingStateForItemIdentifier:v8 reply:v10];
}

void __92__BRCXPCRegularIPCsClient_FPFSAdditions__cloneLatestContentRevisionForItemIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      *buf = 138413314;
      v13 = v6;
      v14 = 2112;
      v15 = 0;
      v16 = 2112;
      v17 = 0;
      v18 = 2112;
      v19 = v3;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", buf, 0x34u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = [MEMORY[0x277CFAE50] fileObjectIDWithString:*(a1 + 40)];
    v8 = *(a1 + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __92__BRCXPCRegularIPCsClient_FPFSAdditions__cloneLatestContentRevisionForItemIdentifier_reply___block_invoke_151;
    v10[3] = &unk_278503F30;
    v10[4] = v8;
    v11 = *(a1 + 48);
    v9 = [v8 startDownloadFileObject:v7 existingContents:0 options:0 etagIfLoser:0 reply:v10];
  }
}

void __92__BRCXPCRegularIPCsClient_FPFSAdditions__cloneLatestContentRevisionForItemIdentifier_reply___block_invoke_151(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v19 = 138413314;
      v20 = v9;
      v21 = 2112;
      v22 = 0;
      v23 = 2112;
      v24 = 0;
      v25 = 2112;
      v26 = v6;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", &v19, 0x34u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = [v5 objectForKeyedSubscript:@"item"];
    v11 = [v10 asFileProviderItem];

    v12 = [v5 objectForKeyedSubscript:@"url"];
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      v16 = [v11 itemVersion];
      v19 = 138413314;
      v20 = v15;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = 0;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", &v19, 0x34u);
    }

    v17 = *(a1 + 40);
    v18 = [v11 itemVersion];
    (*(v17 + 16))(v17, v12, v18, 0);
  }
}

- (void)refreshSharingStateForItemIdentifier:(id)identifier reply:(id)reply
{
  v40 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  memset(v27, 0, sizeof(v27));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) refreshSharingStateForItemIdentifier:reply:]", 1564, 0, v27);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v27[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    v29 = v10;
    v30 = 2112;
    selfCopy2 = self;
    v32 = 2112;
    v33 = v12;
    v34 = 2080;
    v35 = "[BRCXPCRegularIPCsClient(FPFSAdditions) refreshSharingStateForItemIdentifier:reply:]";
    v36 = 2112;
    v37 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __85__BRCXPCRegularIPCsClient_FPFSAdditions__refreshSharingStateForItemIdentifier_reply___block_invoke;
  v25[3] = &unk_2785014D0;
  v25[4] = self;
  v13 = replyCopy;
  v26 = v13;
  v14 = _brc_ipc_check_applibrary_proxy(self, 1, v25);

  if (v14)
  {
    memset(v24, 0, sizeof(v24));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) refreshSharingStateForItemIdentifier:reply:]", 1566, 0, v24);
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = v24[0];
      v18 = qos_class_self();
      v19 = BRCPrettyPrintEnumWithContext(v18, &brc_qos_entries, 0);
      v20 = identifierCopy;
      uTF8String = [identifierCopy UTF8String];
      *buf = 134219266;
      v29 = v17;
      v30 = 2112;
      selfCopy2 = self;
      v32 = 2112;
      v33 = v19;
      v34 = 2080;
      v35 = "[BRCXPCRegularIPCsClient(FPFSAdditions) refreshSharingStateForItemIdentifier:reply:]";
      v36 = 2080;
      v37 = uTF8String;
      v38 = 2112;
      v39 = v15;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s Refreshing sharing state for %s%@", buf, 0x3Eu);
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __85__BRCXPCRegularIPCsClient_FPFSAdditions__refreshSharingStateForItemIdentifier_reply___block_invoke_152;
    v22[3] = &unk_278504370;
    v23 = v13;
    [(BRCXPCRegularIPCsClient *)self _fetchLatestContentRevisionAndSharingStateForItemIdentifier:identifierCopy reply:v22];

    __brc_leave_section(v24);
  }

  __brc_leave_section(v27);
}

void __85__BRCXPCRegularIPCsClient_FPFSAdditions__refreshSharingStateForItemIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __85__BRCXPCRegularIPCsClient_FPFSAdditions__refreshSharingStateForItemIdentifier_reply___block_invoke_152(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 32);
  v5 = [a4 brc_wrappedError];
  (*(v4 + 16))(v4, v5);
}

- (void)launchItemCountMismatchChecksForItemIdentifier:(id)identifier reply:(id)reply
{
  v39 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  memset(v26, 0, sizeof(v26));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) launchItemCountMismatchChecksForItemIdentifier:reply:]", 1585, 0, v26);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v26[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    v28 = v10;
    v29 = 2112;
    selfCopy2 = self;
    v31 = 2112;
    v32 = v12;
    v33 = 2080;
    v34 = "[BRCXPCRegularIPCsClient(FPFSAdditions) launchItemCountMismatchChecksForItemIdentifier:reply:]";
    v35 = 2112;
    v36 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v13 = *MEMORY[0x277CFAC68];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __95__BRCXPCRegularIPCsClient_FPFSAdditions__launchItemCountMismatchChecksForItemIdentifier_reply___block_invoke;
  v24[3] = &unk_2785014D0;
  v24[4] = self;
  v14 = replyCopy;
  v25 = v14;
  LODWORD(v13) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v13, v24);

  if (v13)
  {
    memset(v23, 0, sizeof(v23));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) launchItemCountMismatchChecksForItemIdentifier:reply:]", 1594, 0, v23);
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = v23[0];
      v18 = qos_class_self();
      v19 = BRCPrettyPrintEnumWithContext(v18, &brc_qos_entries, 0);
      *buf = 134219266;
      v28 = v17;
      v29 = 2112;
      selfCopy2 = self;
      v31 = 2112;
      v32 = v19;
      v33 = 2080;
      v34 = "[BRCXPCRegularIPCsClient(FPFSAdditions) launchItemCountMismatchChecksForItemIdentifier:reply:]";
      v35 = 2112;
      v36 = identifierCopy;
      v37 = 2112;
      v38 = v15;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __95__BRCXPCRegularIPCsClient_FPFSAdditions__launchItemCountMismatchChecksForItemIdentifier_reply___block_invoke_154;
    v20[3] = &unk_2785041B8;
    v20[4] = self;
    v22 = v14;
    v21 = identifierCopy;
    [(BRCXPCRegularIPCsClient *)self accessItemIdentifierLocalItem:v21 dbAccessKind:0 synchronouslyIfPossible:0 handler:v20];

    __brc_leave_section(v23);
  }

  __brc_leave_section(v26);
}

void __95__BRCXPCRegularIPCsClient_FPFSAdditions__launchItemCountMismatchChecksForItemIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 1024;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v7, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
}

void __95__BRCXPCRegularIPCsClient_FPFSAdditions__launchItemCountMismatchChecksForItemIdentifier_reply___block_invoke_154(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = 138413058;
      v10 = v8;
      v11 = 1024;
      v12 = 0;
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v9, 0x26u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) _launchItemCountMismatchChecksForLocalItem:a2 itemIdentifier:*(a1 + 40) reply:*(a1 + 48)];
  }
}

- (void)copyShareIDForItemIdentifier:(id)identifier reply:(id)reply
{
  v41 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  memset(v28, 0, sizeof(v28));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) copyShareIDForItemIdentifier:reply:]", 1602, 0, v28);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v28[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    v30 = v10;
    v31 = 2112;
    selfCopy2 = self;
    v33 = 2112;
    v34 = v12;
    v35 = 2080;
    v36 = "[BRCXPCRegularIPCsClient(FPFSAdditions) copyShareIDForItemIdentifier:reply:]";
    v37 = 2112;
    v38 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  clientPriviledgesDescriptor = [(BRCXPCClient *)self clientPriviledgesDescriptor];
  isSharingPrivateInterfaceEntitled = [clientPriviledgesDescriptor isSharingPrivateInterfaceEntitled];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __77__BRCXPCRegularIPCsClient_FPFSAdditions__copyShareIDForItemIdentifier_reply___block_invoke;
  v26[3] = &unk_2785014D0;
  v26[4] = self;
  v15 = replyCopy;
  v27 = v15;
  v16 = _brc_ipc_check_client_privilege(self, 1, isSharingPrivateInterfaceEntitled, "isSharingPrivateInterfaceEntitled", v26);

  if (v16)
  {
    memset(v25, 0, sizeof(v25));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) copyShareIDForItemIdentifier:reply:]", 1617, 0, v25);
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = v25[0];
      v20 = qos_class_self();
      v21 = BRCPrettyPrintEnumWithContext(v20, &brc_qos_entries, 0);
      *buf = 134219266;
      v30 = v19;
      v31 = 2112;
      selfCopy2 = self;
      v33 = 2112;
      v34 = v21;
      v35 = 2080;
      v36 = "[BRCXPCRegularIPCsClient(FPFSAdditions) copyShareIDForItemIdentifier:reply:]";
      v37 = 2112;
      v38 = identifierCopy;
      v39 = 2112;
      v40 = v17;
      _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __77__BRCXPCRegularIPCsClient_FPFSAdditions__copyShareIDForItemIdentifier_reply___block_invoke_156;
    v22[3] = &unk_2785041B8;
    v22[4] = self;
    v24 = v15;
    v23 = identifierCopy;
    [(BRCXPCRegularIPCsClient *)self accessItemIdentifierLocalItem:v23 dbAccessKind:1 synchronouslyIfPossible:0 handler:v22];

    __brc_leave_section(v25);
  }

  __brc_leave_section(v28);
}

void __77__BRCXPCRegularIPCsClient_FPFSAdditions__copyShareIDForItemIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __77__BRCXPCRegularIPCsClient_FPFSAdditions__copyShareIDForItemIdentifier_reply___block_invoke_156(void *a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (v5)
    {
      if (([v5 isShareableItem] & 1) == 0)
      {
        v23 = brc_bread_crumbs();
        v24 = brc_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = a1[4];
          v26 = [MEMORY[0x277CCA9B8] brc_errorItemNotShareable];
          v33 = 138413058;
          v34 = v25;
          v35 = 2112;
          v36 = 0;
          v37 = 2112;
          v38 = v26;
          v39 = 2112;
          v40 = v23;
          _os_log_impl(&dword_223E7A000, v24, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v33, 0x2Au);
        }

        v27 = a1[6];
        v12 = [MEMORY[0x277CCA9B8] brc_errorItemNotShareable];
        v16 = *(v27 + 16);
        goto LABEL_17;
      }

      if ([v5 isKnownByServer])
      {
        v10 = objc_alloc(MEMORY[0x277CBC5D0]);
        v11 = [v5 asShareableItem];
        v12 = [v10 initShareIDWithShareableItem:v11];

        v13 = brc_bread_crumbs();
        v14 = brc_default_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = a1[4];
          v33 = 138413058;
          v34 = v15;
          v35 = 2112;
          v36 = v12;
          v37 = 2112;
          v38 = 0;
          v39 = 2112;
          v40 = v13;
          _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v33, 0x2Au);
        }

        v16 = *(a1[6] + 16);
LABEL_17:
        v16();

        goto LABEL_22;
      }

      v28 = brc_bread_crumbs();
      v29 = brc_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = a1[4];
        v31 = [MEMORY[0x277CCA9B8] brc_errorNotInCloud:a1[5]];
        v33 = 138413058;
        v34 = v30;
        v35 = 2112;
        v36 = 0;
        v37 = 2112;
        v38 = v31;
        v39 = 2112;
        v40 = v28;
        _os_log_impl(&dword_223E7A000, v29, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v33, 0x2Au);
      }

      v21 = a1[6];
      v22 = [MEMORY[0x277CCA9B8] brc_errorNotInCloud:a1[5]];
    }

    else
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = a1[4];
        v20 = [MEMORY[0x277CCA9B8] brc_errorNoDocument:a1[5] underlyingPOSIXError:2];
        v33 = 138413058;
        v34 = v19;
        v35 = 2112;
        v36 = 0;
        v37 = 2112;
        v38 = v20;
        v39 = 2112;
        v40 = v17;
        _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v33, 0x2Au);
      }

      v21 = a1[6];
      v22 = [MEMORY[0x277CCA9B8] brc_errorNoDocument:a1[5] underlyingPOSIXError:2];
    }

    v32 = v22;
    (*(v21 + 16))(v21, 0, v22);

    goto LABEL_22;
  }

  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = a1[4];
    v33 = 138413058;
    v34 = v9;
    v35 = 2112;
    v36 = 0;
    v37 = 2112;
    v38 = v6;
    v39 = 2112;
    v40 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v33, 0x2Au);
  }

  (*(a1[6] + 16))();
LABEL_22:
}

- (void)checkIfItemIsShareableWithItemIdentifier:(id)identifier reply:(id)reply
{
  v38 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  memset(v25, 0, sizeof(v25));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) checkIfItemIsShareableWithItemIdentifier:reply:]", 1626, 0, v25);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v25[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    v27 = v10;
    v28 = 2112;
    selfCopy2 = self;
    v30 = 2112;
    v31 = v12;
    v32 = 2080;
    v33 = "[BRCXPCRegularIPCsClient(FPFSAdditions) checkIfItemIsShareableWithItemIdentifier:reply:]";
    v34 = 2112;
    v35 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v13 = *MEMORY[0x277CFAC68];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __89__BRCXPCRegularIPCsClient_FPFSAdditions__checkIfItemIsShareableWithItemIdentifier_reply___block_invoke;
  v23[3] = &unk_2785014D0;
  v23[4] = self;
  v14 = replyCopy;
  v24 = v14;
  LODWORD(v13) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v13, v23);

  if (v13)
  {
    memset(v22, 0, sizeof(v22));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) checkIfItemIsShareableWithItemIdentifier:reply:]", 1633, 0, v22);
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = v22[0];
      v18 = qos_class_self();
      v19 = BRCPrettyPrintEnumWithContext(v18, &brc_qos_entries, 0);
      *buf = 134219266;
      v27 = v17;
      v28 = 2112;
      selfCopy2 = self;
      v30 = 2112;
      v31 = v19;
      v32 = 2080;
      v33 = "[BRCXPCRegularIPCsClient(FPFSAdditions) checkIfItemIsShareableWithItemIdentifier:reply:]";
      v34 = 2112;
      v35 = identifierCopy;
      v36 = 2112;
      v37 = v15;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __89__BRCXPCRegularIPCsClient_FPFSAdditions__checkIfItemIsShareableWithItemIdentifier_reply___block_invoke_158;
    v20[3] = &unk_2785040F0;
    v20[4] = self;
    v21 = v14;
    [(BRCXPCRegularIPCsClient *)self accessItemIdentifierLocalItem:identifierCopy dbAccessKind:1 synchronouslyIfPossible:0 handler:v20];

    __brc_leave_section(v22);
  }

  __brc_leave_section(v25);
}

void __89__BRCXPCRegularIPCsClient_FPFSAdditions__checkIfItemIsShareableWithItemIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 1024;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v7, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
}

void __89__BRCXPCRegularIPCsClient_FPFSAdditions__checkIfItemIsShareableWithItemIdentifier_reply___block_invoke_158(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v15 = 138413058;
      v16 = v9;
      v17 = 1024;
      v18 = 0;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v15, 0x26u);
    }

    v10 = *(*(a1 + 40) + 16);
  }

  else
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      v15 = 138413058;
      v16 = v13;
      v17 = 1024;
      v18 = [v5 isShareableItem];
      v19 = 2112;
      v20 = 0;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v15, 0x26u);
    }

    v14 = *(a1 + 40);
    [v5 isShareableItem];
    v10 = *(v14 + 16);
  }

  v10();
}

- (void)getCreatorNameComponentsForItemIdentifier:(id)identifier reply:(id)reply
{
  v39 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  memset(v26, 0, sizeof(v26));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) getCreatorNameComponentsForItemIdentifier:reply:]", 1640, 0, v26);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v26[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    v28 = v10;
    v29 = 2112;
    selfCopy2 = self;
    v31 = 2112;
    v32 = v12;
    v33 = 2080;
    v34 = "[BRCXPCRegularIPCsClient(FPFSAdditions) getCreatorNameComponentsForItemIdentifier:reply:]";
    v35 = 2112;
    v36 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v13 = *MEMORY[0x277CFAC68];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __90__BRCXPCRegularIPCsClient_FPFSAdditions__getCreatorNameComponentsForItemIdentifier_reply___block_invoke;
  v24[3] = &unk_2785014D0;
  v24[4] = self;
  v14 = replyCopy;
  v25 = v14;
  LODWORD(v13) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v13, v24);

  if (v13)
  {
    memset(v23, 0, sizeof(v23));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) getCreatorNameComponentsForItemIdentifier:reply:]", 1656, 0, v23);
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = v23[0];
      v18 = qos_class_self();
      v19 = BRCPrettyPrintEnumWithContext(v18, &brc_qos_entries, 0);
      *buf = 134219266;
      v28 = v17;
      v29 = 2112;
      selfCopy2 = self;
      v31 = 2112;
      v32 = v19;
      v33 = 2080;
      v34 = "[BRCXPCRegularIPCsClient(FPFSAdditions) getCreatorNameComponentsForItemIdentifier:reply:]";
      v35 = 2112;
      v36 = identifierCopy;
      v37 = 2112;
      v38 = v15;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __90__BRCXPCRegularIPCsClient_FPFSAdditions__getCreatorNameComponentsForItemIdentifier_reply___block_invoke_159;
    v20[3] = &unk_2785041B8;
    v20[4] = self;
    v22 = v14;
    v21 = identifierCopy;
    [(BRCXPCRegularIPCsClient *)self accessItemIdentifierLocalItem:v21 dbAccessKind:1 synchronouslyIfPossible:0 handler:v20];

    __brc_leave_section(v23);
  }

  __brc_leave_section(v26);
}

void __90__BRCXPCRegularIPCsClient_FPFSAdditions__getCreatorNameComponentsForItemIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __90__BRCXPCRegularIPCsClient_FPFSAdditions__getCreatorNameComponentsForItemIdentifier_reply___block_invoke_159(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = a1[4];
      v25 = 138413058;
      v26 = v9;
      v27 = 2112;
      v28 = 0;
      v29 = 2112;
      v30 = v6;
      v31 = 2112;
      v32 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v25, 0x2Au);
    }

LABEL_4:

    (*(a1[6] + 16))();
    goto LABEL_5;
  }

  if (v5)
  {
    if ([v5 isZoneRoot])
    {
      v7 = brc_bread_crumbs();
      v8 = brc_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = a1[4];
        v25 = 138413058;
        v26 = v10;
        v27 = 2112;
        v28 = 0;
        v29 = 2112;
        v30 = 0;
        v31 = 2112;
        v32 = v7;
        _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v25, 0x2Au);
      }

      goto LABEL_4;
    }

    v17 = MEMORY[0x277CCAC00];
    v18 = [v5 st];
    v19 = [v18 creatorRowID];
    v20 = [v5 dbFacade];
    v21 = [v17 nameComponentsForKey:v19 dbFacade:v20];

    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = a1[4];
      v25 = 138413058;
      v26 = v24;
      v27 = 2112;
      v28 = v21;
      v29 = 2112;
      v30 = 0;
      v31 = 2112;
      v32 = v22;
      _os_log_impl(&dword_223E7A000, v23, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v25, 0x2Au);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = a1[4];
      v14 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:a1[5]];
      v25 = 138413058;
      v26 = v13;
      v27 = 2112;
      v28 = 0;
      v29 = 2112;
      v30 = v14;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v25, 0x2Au);
    }

    v15 = a1[6];
    v16 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:a1[5]];
    (*(v15 + 16))(v15, 0, v16);
  }

LABEL_5:
}

- (void)validateConnectionDomainWithDomainIdentifier:(id)identifier databaseID:(id)d reply:(id)reply
{
  v73 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  replyCopy = reply;
  memset(v58, 0, sizeof(v58));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) validateConnectionDomainWithDomainIdentifier:databaseID:reply:]", 1663, 0, v58);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v58[0];
    v14 = qos_class_self();
    v15 = BRCPrettyPrintEnumWithContext(v14, &brc_qos_entries, 0);
    *buf = 134219522;
    selfCopy5 = v13;
    v61 = 2112;
    selfCopy = self;
    v63 = 2112;
    v64 = v15;
    v65 = 2080;
    v66 = "[BRCXPCRegularIPCsClient(FPFSAdditions) validateConnectionDomainWithDomainIdentifier:databaseID:reply:]";
    v67 = 2112;
    v68 = identifierCopy;
    v69 = 2112;
    v70 = dCopy;
    v71 = 2112;
    v72 = v11;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@, %@%@", buf, 0x48u);
  }

  v16 = *MEMORY[0x277CFAC68];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __104__BRCXPCRegularIPCsClient_FPFSAdditions__validateConnectionDomainWithDomainIdentifier_databaseID_reply___block_invoke;
  v56[3] = &unk_2785014D0;
  v56[4] = self;
  v17 = replyCopy;
  v57 = v17;
  LODWORD(v16) = _brc_ipc_check_entitlement(self, v16, v56);

  if (v16)
  {
    v18 = +[BRCAccountsManager sharedManager];
    accountsLoadingBarrier = [v18 accountsLoadingBarrier];
    [accountsLoadingBarrier waitForBarrier];

    v20 = +[BRCAccountsManager sharedManager];
    accountHandlerForCurrentPersona = [v20 accountHandlerForCurrentPersona];

    waitForSessionDBLoadingBarrier = [accountHandlerForCurrentPersona waitForSessionDBLoadingBarrier];
    v23 = waitForSessionDBLoadingBarrier;
    if (!waitForSessionDBLoadingBarrier || ([waitForSessionDBLoadingBarrier databaseID], v24 = objc_claimAutoreleasedReturnValue(), v25 = v24 == 0, v24, v25))
    {
      v30 = brc_bread_crumbs();
      v31 = brc_default_log();
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_INFO);
      v33 = *MEMORY[0x277CC6300];
      if (v32)
      {
        v34 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC6300] code:-1000 userInfo:0];
        *buf = 138412802;
        selfCopy5 = self;
        v61 = 2112;
        selfCopy = v34;
        v63 = 2112;
        v64 = v30;
        _os_log_impl(&dword_223E7A000, v31, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
      }

      v35 = [MEMORY[0x277CCA9B8] errorWithDomain:v33 code:-1000 userInfo:0];
      (*(v17 + 2))(v17, v35);

      [(BRCXPCClient *)self invalidate];
      goto LABEL_35;
    }

    domainID = [v23 domainID];
    databaseID = [v23 databaseID];
    if (([(BRCXPCRegularIPCsClient *)identifierCopy isEqualToString:domainID]& 1) != 0)
    {
      if (([(BRCXPCRegularIPCsClient *)dCopy isEqualToString:databaseID]& 1) != 0)
      {
        v26 = brc_bread_crumbs();
        v27 = brc_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [BRCXPCRegularIPCsClient(FPFSAdditions) validateConnectionDomainWithDomainIdentifier:databaseID:reply:];
        }

        v28 = brc_bread_crumbs();
        v29 = brc_default_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          selfCopy5 = self;
          v61 = 2112;
          selfCopy = 0;
          v63 = 2112;
          v64 = v28;
          _os_log_impl(&dword_223E7A000, v29, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
        }

        (*(v17 + 2))(v17, 0);
        goto LABEL_34;
      }

      v43 = brc_bread_crumbs();
      v44 = brc_default_log();
      if (os_log_type_enabled(v44, 0x90u))
      {
        *buf = 138412802;
        selfCopy5 = dCopy;
        v61 = 2112;
        selfCopy = databaseID;
        v63 = 2112;
        v64 = v43;
        _os_log_error_impl(&dword_223E7A000, v44, 0x90u, "[ERROR] Database ID %@ doesn't match loaded database ID %@%@", buf, 0x20u);
      }

      if (!dCopy && [v23 isOpen])
      {
        v45 = brc_bread_crumbs();
        v46 = brc_default_log();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy5 = v45;
          _os_log_impl(&dword_223E7A000, v46, OS_LOG_TYPE_DEFAULT, "[WARNING] Recovering the domain decoration%@", buf, 0xCu);
        }

        [v23 fixFileProviderDomainDecorations];
        v47 = [BRCUserDefaults defaultsForMangledID:0];
        reimportRootContainerWhenDomainDecorationIsInvalid = [v47 reimportRootContainerWhenDomainDecorationIsInvalid];

        if (reimportRootContainerWhenDomainDecorationIsInvalid)
        {
          v49 = brc_bread_crumbs();
          v50 = brc_default_log();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            selfCopy5 = v49;
            _os_log_impl(&dword_223E7A000, v50, OS_LOG_TYPE_DEFAULT, "[WARNING] Reimporting the root container to make sure the domain is fully synced with our DB%@", buf, 0xCu);
          }

          [BRCImportUtil reimportItemsBelowItemWithIdentifier:*MEMORY[0x277CC6348] completionHandler:&__block_literal_global_164];
        }
      }

      v38 = brc_bread_crumbs();
      v39 = brc_default_log();
      v51 = os_log_type_enabled(v39, OS_LOG_TYPE_INFO);
      v41 = *MEMORY[0x277CC6300];
      if (v51)
      {
        v52 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC6300] code:-1000 userInfo:0];
        *buf = 138412802;
        selfCopy5 = self;
        v61 = 2112;
        selfCopy = v52;
        v63 = 2112;
        v64 = v38;
        _os_log_impl(&dword_223E7A000, v39, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
      }
    }

    else
    {
      v36 = brc_bread_crumbs();
      v37 = brc_default_log();
      if (os_log_type_enabled(v37, 0x90u))
      {
        *buf = 138412802;
        selfCopy5 = identifierCopy;
        v61 = 2112;
        selfCopy = domainID;
        v63 = 2112;
        v64 = v36;
        _os_log_error_impl(&dword_223E7A000, v37, 0x90u, "[ERROR] DomainID %@ doesn't match session domainID %@%@", buf, 0x20u);
      }

      v38 = brc_bread_crumbs();
      v39 = brc_default_log();
      v40 = os_log_type_enabled(v39, OS_LOG_TYPE_INFO);
      v41 = *MEMORY[0x277CC6300];
      if (v40)
      {
        v42 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC6300] code:-1000 userInfo:0];
        *buf = 138412802;
        selfCopy5 = self;
        v61 = 2112;
        selfCopy = v42;
        v63 = 2112;
        v64 = v38;
        _os_log_impl(&dword_223E7A000, v39, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
      }
    }

    v53 = [MEMORY[0x277CCA9B8] errorWithDomain:v41 code:-1000 userInfo:0];
    (*(v17 + 2))(v17, v53);

    [(BRCXPCClient *)self invalidate];
LABEL_34:

LABEL_35:
  }

  __brc_leave_section(v58);
}

void __104__BRCXPCRegularIPCsClient_FPFSAdditions__validateConnectionDomainWithDomainIdentifier_databaseID_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __104__BRCXPCRegularIPCsClient_FPFSAdditions__validateConnectionDomainWithDomainIdentifier_databaseID_reply___block_invoke_162(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, 0x90u))
    {
      __104__BRCXPCRegularIPCsClient_FPFSAdditions__validateConnectionDomainWithDomainIdentifier_databaseID_reply___block_invoke_162_cold_1();
    }
  }
}

- (void)startOperation:(id)operation toWaitForFPFSMigrationWithReply:(id)reply
{
  v31 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  replyCopy = reply;
  memset(v20, 0, sizeof(v20));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) startOperation:toWaitForFPFSMigrationWithReply:]", 1724, 0, v20);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v20[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    v22 = v10;
    v23 = 2112;
    selfCopy = self;
    v25 = 2112;
    v26 = v12;
    v27 = 2080;
    v28 = "[BRCXPCRegularIPCsClient(FPFSAdditions) startOperation:toWaitForFPFSMigrationWithReply:]";
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __89__BRCXPCRegularIPCsClient_FPFSAdditions__startOperation_toWaitForFPFSMigrationWithReply___block_invoke;
  v18[3] = &unk_2785014D0;
  v18[4] = self;
  v13 = replyCopy;
  v19 = v13;
  v14 = _brc_ipc_check_applibraries_access(self, 1, v18);

  if (v14)
  {
    clientTruthWorkloop = [(BRCAccountSession *)self->super.__session clientTruthWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__BRCXPCRegularIPCsClient_FPFSAdditions__startOperation_toWaitForFPFSMigrationWithReply___block_invoke_165;
    block[3] = &unk_278500048;
    block[4] = self;
    v17 = v13;
    dispatch_async_and_wait(clientTruthWorkloop, block);
  }

  __brc_leave_section(v20);
}

void __89__BRCXPCRegularIPCsClient_FPFSAdditions__startOperation_toWaitForFPFSMigrationWithReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __89__BRCXPCRegularIPCsClient_FPFSAdditions__startOperation_toWaitForFPFSMigrationWithReply___block_invoke_165(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 24) fpfsMigrationState])
  {
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __89__BRCXPCRegularIPCsClient_FPFSAdditions__startOperation_toWaitForFPFSMigrationWithReply___block_invoke_2;
    v8[3] = &unk_278504398;
    v3 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v3;
    v4 = [v2 addObserverForName:@"kBRCFPFSMigrationStateKey" object:0 queue:0 usingBlock:v8];
  }

  else
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 138412802;
      v11 = v7;
      v12 = 2112;
      v13 = 0;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __89__BRCXPCRegularIPCsClient_FPFSAdditions__startOperation_toWaitForFPFSMigrationWithReply___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"kBRCFPFSMigrationStateKey"];

  if (![v4 intValue])
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = 138412802;
      v9 = v7;
      v10 = 2112;
      v11 = 0;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v8, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)getClientSaltingVerificationKeysAtItemIdentifier:(id)identifier reply:(id)reply
{
  v38 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  memset(v25, 0, sizeof(v25));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) getClientSaltingVerificationKeysAtItemIdentifier:reply:]", 1744, 0, v25);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v25[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    v27 = v10;
    v28 = 2112;
    selfCopy2 = self;
    v30 = 2112;
    v31 = v12;
    v32 = 2080;
    v33 = "[BRCXPCRegularIPCsClient(FPFSAdditions) getClientSaltingVerificationKeysAtItemIdentifier:reply:]";
    v34 = 2112;
    v35 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v13 = *MEMORY[0x277CFAC68];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __97__BRCXPCRegularIPCsClient_FPFSAdditions__getClientSaltingVerificationKeysAtItemIdentifier_reply___block_invoke;
  v23[3] = &unk_2785014D0;
  v23[4] = self;
  v14 = replyCopy;
  v24 = v14;
  LODWORD(v13) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v13, v23);

  if (v13)
  {
    memset(v22, 0, sizeof(v22));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) getClientSaltingVerificationKeysAtItemIdentifier:reply:]", 1758, 0, v22);
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = v22[0];
      v18 = qos_class_self();
      v19 = BRCPrettyPrintEnumWithContext(v18, &brc_qos_entries, 0);
      *buf = 134219266;
      v27 = v17;
      v28 = 2112;
      selfCopy2 = self;
      v30 = 2112;
      v31 = v19;
      v32 = 2080;
      v33 = "[BRCXPCRegularIPCsClient(FPFSAdditions) getClientSaltingVerificationKeysAtItemIdentifier:reply:]";
      v34 = 2112;
      v35 = identifierCopy;
      v36 = 2112;
      v37 = v15;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __97__BRCXPCRegularIPCsClient_FPFSAdditions__getClientSaltingVerificationKeysAtItemIdentifier_reply___block_invoke_170;
    v20[3] = &unk_2785043C0;
    v20[4] = self;
    v21 = v14;
    [(BRCXPCRegularIPCsClient *)self accessItemIdentifierServerItem:identifierCopy dbAccessKind:1 synchronouslyIfPossible:0 handler:v20];

    __brc_leave_section(v22);
  }

  __brc_leave_section(v25);
}

void __97__BRCXPCRegularIPCsClient_FPFSAdditions__getClientSaltingVerificationKeysAtItemIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413826;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = 0;
    v13 = 2112;
    v14 = 0;
    v15 = 1024;
    v16 = 0;
    v17 = 2112;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %d, %@)%@", &v7, 0x44u);
  }

  (*(*(a1 + 40) + 16))();
}

void __97__BRCXPCRegularIPCsClient_FPFSAdditions__getClientSaltingVerificationKeysAtItemIdentifier_reply___block_invoke_170(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) session];
    v8 = [v7 readOnlyDB];
    v9 = [v5 itemID];
    v10 = [v5 clientZone];
    v11 = [v10 dbRowID];
    v12 = [v8 fetch:{@"SELECT basehash_salt_validation_key, validation_key(child_basehash_salt), validation_key(content_boundary_key), salting_state FROM server_items WHERE item_id = %@ AND zone_rowid = %@", v9, v11}];

    if ([v12 next])
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 32);
        v16 = [v12 dataAtIndex:0];
        v17 = [v12 dataAtIndex:1];
        v18 = [v12 dataAtIndex:2];
        *buf = 138413826;
        v32 = v15;
        v33 = 2112;
        v34 = v16;
        v35 = 2112;
        v36 = v17;
        v37 = 2112;
        v38 = v18;
        v39 = 1024;
        v40 = [v12 intAtIndex:3];
        v41 = 2112;
        v42 = 0;
        v43 = 2112;
        v44 = v13;
        _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %d, %@)%@", buf, 0x44u);
      }

      v19 = *(a1 + 40);
      v20 = [v12 dataAtIndex:0];
      v21 = [v12 dataAtIndex:1];
      v22 = [v12 dataAtIndex:2];
      (*(v19 + 16))(v19, v20, v21, v22, [v12 intAtIndex:3], 0);
    }

    else
    {
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = *(a1 + 32);
        v29 = [v12 error];
        *buf = 138413826;
        v32 = v28;
        v33 = 2112;
        v34 = 0;
        v35 = 2112;
        v36 = 0;
        v37 = 2112;
        v38 = 0;
        v39 = 1024;
        v40 = -1;
        v41 = 2112;
        v42 = v29;
        v43 = 2112;
        v44 = v26;
        _os_log_impl(&dword_223E7A000, v27, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %d, %@)%@", buf, 0x44u);
      }

      v30 = *(a1 + 40);
      v20 = [v12 error];
      (*(v30 + 16))(v30, 0, 0, 0, 0xFFFFFFFFLL, v20);
    }
  }

  else
  {
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = *(a1 + 32);
      *buf = 138413826;
      v32 = v25;
      v33 = 2112;
      v34 = 0;
      v35 = 2112;
      v36 = 0;
      v37 = 2112;
      v38 = 0;
      v39 = 1024;
      v40 = -1;
      v41 = 2112;
      v42 = v6;
      v43 = 2112;
      v44 = v23;
      _os_log_impl(&dword_223E7A000, v24, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %d, %@)%@", buf, 0x44u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)getServerSaltingKeysAtItemIdentifier:(id)identifier reply:(id)reply
{
  v42 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  memset(v31, 0, sizeof(v31));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) getServerSaltingKeysAtItemIdentifier:reply:]", 1766, 0, v31);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v31[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy3 = v10;
    v34 = 2112;
    selfCopy2 = self;
    v36 = 2112;
    v37 = v12;
    v38 = 2080;
    v39 = "[BRCXPCRegularIPCsClient(FPFSAdditions) getServerSaltingKeysAtItemIdentifier:reply:]";
    v40 = 2112;
    *v41 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v13 = *MEMORY[0x277CFAC68];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __85__BRCXPCRegularIPCsClient_FPFSAdditions__getServerSaltingKeysAtItemIdentifier_reply___block_invoke;
  v29[3] = &unk_2785014D0;
  v29[4] = self;
  v14 = replyCopy;
  v30 = v14;
  LODWORD(v13) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v13, v29);

  if (v13)
  {
    v15 = [BRCUserDefaults defaultsForMangledID:0];
    supportsEnhancedDrivePrivacy = [v15 supportsEnhancedDrivePrivacy];

    if (supportsEnhancedDrivePrivacy)
    {
      memset(v28, 0, sizeof(v28));
      __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) getServerSaltingKeysAtItemIdentifier:reply:]", 1811, 0, v28);
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = v28[0];
        v20 = qos_class_self();
        v21 = BRCPrettyPrintEnumWithContext(v20, &brc_qos_entries, 0);
        *buf = 134219266;
        selfCopy3 = v19;
        v34 = 2112;
        selfCopy2 = self;
        v36 = 2112;
        v37 = v21;
        v38 = 2080;
        v39 = "[BRCXPCRegularIPCsClient(FPFSAdditions) getServerSaltingKeysAtItemIdentifier:reply:]";
        v40 = 2112;
        *v41 = identifierCopy;
        *&v41[8] = 2112;
        *&v41[10] = v17;
        _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
      }

      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __85__BRCXPCRegularIPCsClient_FPFSAdditions__getServerSaltingKeysAtItemIdentifier_reply___block_invoke_178;
      v26[3] = &unk_2785040F0;
      v26[4] = self;
      v27 = v14;
      [(BRCXPCRegularIPCsClient *)self accessItemIdentifierLocalItem:identifierCopy dbAccessKind:1 synchronouslyIfPossible:0 handler:v26];

      __brc_leave_section(v28);
    }

    else
    {
      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [MEMORY[0x277CCA9B8] brc_errorPermissionError:@"Enhanced Drive Privacy Not Enabled"];
        *buf = 138413826;
        selfCopy3 = self;
        v34 = 2112;
        selfCopy2 = 0;
        v36 = 2112;
        v37 = 0;
        v38 = 2112;
        v39 = 0;
        v40 = 1024;
        *v41 = 0;
        *&v41[4] = 2112;
        *&v41[6] = v24;
        *&v41[14] = 2112;
        *&v41[16] = v22;
        _os_log_impl(&dword_223E7A000, v23, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %d, %@)%@", buf, 0x44u);
      }

      v25 = [MEMORY[0x277CCA9B8] brc_errorPermissionError:@"Enhanced Drive Privacy Not Enabled"];
      (*(v14 + 2))(v14, 0, 0, 0, 0, v25);
    }
  }

  __brc_leave_section(v31);
}

void __85__BRCXPCRegularIPCsClient_FPFSAdditions__getServerSaltingKeysAtItemIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413826;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = 0;
    v13 = 2112;
    v14 = 0;
    v15 = 1024;
    v16 = 0;
    v17 = 2112;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %d, %@)%@", &v7, 0x44u);
  }

  (*(*(a1 + 40) + 16))();
}

void __85__BRCXPCRegularIPCsClient_FPFSAdditions__getServerSaltingKeysAtItemIdentifier_reply___block_invoke_178(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 32);
      v22 = [v7 brc_wrappedError];
      *buf = 138413826;
      v29 = v21;
      v30 = 2112;
      v31 = 0;
      v32 = 2112;
      v33 = 0;
      v34 = 2112;
      v35 = 0;
      v36 = 1024;
      v37 = 0;
      v38 = 2112;
      v39 = v22;
      v40 = 2112;
      v41 = v19;
      _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %d, %@)%@", buf, 0x44u);
    }

    v23 = *(a1 + 40);
    v8 = [v7 brc_wrappedError];
    (*(v23 + 16))(v23, 0, 0, 0, 0, v8);
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
    v9 = [v5 structureRecordID];
    [v8 addObject:v9];
    if ([v5 isDocument])
    {
      v10 = [v5 asDocument];
      v11 = [v10 documentRecordID];
      [v8 addObject:v11];
    }

    v12 = [objc_alloc(MEMORY[0x277CBC3E0]) initWithRecordIDs:v8];
    v27[0] = @"boundaryKey";
    v27[1] = @"childBasehashSalt";
    v27[2] = @"saltingState";
    v27[3] = @"basehash";
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
    [v12 setDesiredKeys:v13];

    v14 = [MEMORY[0x277CBC4F8] br_testTrigger];
    [v12 setGroup:v14];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __85__BRCXPCRegularIPCsClient_FPFSAdditions__getServerSaltingKeysAtItemIdentifier_reply___block_invoke_184;
    v24[3] = &unk_2785043E8;
    v15 = *(a1 + 40);
    v24[4] = *(a1 + 32);
    v26 = v15;
    v25 = v5;
    [v12 setFetchRecordsCompletionBlock:v24];
    v16 = [*(a1 + 32) session];
    v17 = [v16 syncContextProvider];
    v18 = [v17 defaultSyncContext];
    [v18 addOperation:v12];
  }
}

void __85__BRCXPCRegularIPCsClient_FPFSAdditions__getServerSaltingKeysAtItemIdentifier_reply___block_invoke_184(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = [v6 brc_wrappedError];
      v26 = 138413826;
      v27 = v9;
      v28 = 2112;
      v29 = 0;
      v30 = 2112;
      v31 = 0;
      v32 = 2112;
      v33 = 0;
      v34 = 1024;
      v35 = 0;
      v36 = 2112;
      v37 = v10;
      v38 = 2112;
      v39 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %d, %@)%@", &v26, 0x44u);
    }

    v11 = *(a1 + 48);
    v12 = [v6 brc_wrappedError];
    (*(v11 + 16))(v11, 0, 0, 0, 0, v12);
  }

  else
  {
    if ([*(a1 + 40) isDocument])
    {
      v13 = [*(a1 + 40) asDocument];
      v14 = [v13 documentRecordID];
      v15 = [v5 objectForKeyedSubscript:v14];

      v16 = [v15 encryptedValues];
      v17 = [v16 objectForKeyedSubscript:@"boundaryKey"];
    }

    else
    {
      v17 = 0;
    }

    v18 = [*(a1 + 40) structureRecordID];
    v19 = [v5 objectForKeyedSubscript:v18];

    v20 = [v19 encryptedValues];
    v12 = [v20 objectForKeyedSubscript:@"childBasehashSalt"];

    v21 = [v19 objectForKeyedSubscript:@"saltingState"];

    v22 = [v19 objectForKeyedSubscript:@"basehash"];
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = *(a1 + 32);
      v26 = 138413826;
      v27 = v25;
      v28 = 2112;
      v29 = v22;
      v30 = 2112;
      v31 = v12;
      v32 = 2112;
      v33 = v17;
      v34 = 1024;
      v35 = v21;
      v36 = 2112;
      v37 = 0;
      v38 = 2112;
      v39 = v23;
      _os_log_impl(&dword_223E7A000, v24, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %d, %@)%@", &v26, 0x44u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)getServerContentSignatureAtItemIdentifier:(id)identifier reply:(id)reply
{
  v45 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  memset(v32, 0, sizeof(v32));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) getServerContentSignatureAtItemIdentifier:reply:]", 1819, 0, v32);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v32[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy3 = v10;
    v35 = 2112;
    selfCopy2 = self;
    v37 = 2112;
    v38 = v12;
    v39 = 2080;
    v40 = "[BRCXPCRegularIPCsClient(FPFSAdditions) getServerContentSignatureAtItemIdentifier:reply:]";
    v41 = 2112;
    v42 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v13 = *MEMORY[0x277CFAC68];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __90__BRCXPCRegularIPCsClient_FPFSAdditions__getServerContentSignatureAtItemIdentifier_reply___block_invoke;
  v30[3] = &unk_2785014D0;
  v30[4] = self;
  v14 = replyCopy;
  v31 = v14;
  LODWORD(v13) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v13, v30);

  if (v13)
  {
    v15 = [BRCUserDefaults defaultsForMangledID:0];
    supportsEnhancedDrivePrivacy = [v15 supportsEnhancedDrivePrivacy];

    if (supportsEnhancedDrivePrivacy)
    {
      memset(v29, 0, sizeof(v29));
      __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) getServerContentSignatureAtItemIdentifier:reply:]", 1848, 0, v29);
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = v29[0];
        v20 = qos_class_self();
        v21 = BRCPrettyPrintEnumWithContext(v20, &brc_qos_entries, 0);
        *buf = 134219266;
        selfCopy3 = v19;
        v35 = 2112;
        selfCopy2 = self;
        v37 = 2112;
        v38 = v21;
        v39 = 2080;
        v40 = "[BRCXPCRegularIPCsClient(FPFSAdditions) getServerContentSignatureAtItemIdentifier:reply:]";
        v41 = 2112;
        v42 = identifierCopy;
        v43 = 2112;
        v44 = v17;
        _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
      }

      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __90__BRCXPCRegularIPCsClient_FPFSAdditions__getServerContentSignatureAtItemIdentifier_reply___block_invoke_185;
      v26[3] = &unk_2785041B8;
      v26[4] = self;
      v28 = v14;
      v27 = identifierCopy;
      [(BRCXPCRegularIPCsClient *)self accessItemIdentifierLocalItem:v27 dbAccessKind:1 synchronouslyIfPossible:0 handler:v26];

      __brc_leave_section(v29);
    }

    else
    {
      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [MEMORY[0x277CCA9B8] brc_errorPermissionError:@"Enhanced Drive Privacy Not Enabled"];
        *buf = 138413058;
        selfCopy3 = self;
        v35 = 2112;
        selfCopy2 = 0;
        v37 = 2112;
        v38 = v24;
        v39 = 2112;
        v40 = v22;
        _os_log_impl(&dword_223E7A000, v23, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
      }

      v25 = [MEMORY[0x277CCA9B8] brc_errorPermissionError:@"Enhanced Drive Privacy Not Enabled"];
      (*(v14 + 2))(v14, 0, v25);
    }
  }

  __brc_leave_section(v32);
}

void __90__BRCXPCRegularIPCsClient_FPFSAdditions__getServerContentSignatureAtItemIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __90__BRCXPCRegularIPCsClient_FPFSAdditions__getServerContentSignatureAtItemIdentifier_reply___block_invoke_185(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = *(a1 + 32);
      v21 = [v7 brc_wrappedError];
      *buf = 138413058;
      v38 = v20;
      v39 = 2112;
      v40 = 0;
      v41 = 2112;
      v42 = v21;
      v43 = 2112;
      v44 = v18;
      _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    v22 = *(a1 + 48);
    v9 = [v7 brc_wrappedError];
    (*(v22 + 16))(v22, 0, v9);
  }

  else if ([v5 isDocument])
  {
    v8 = [v5 asDocument];
    v9 = [v8 documentRecordID];

    v10 = objc_alloc(MEMORY[0x277CBC3E0]);
    v36 = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    v12 = [v10 initWithRecordIDs:v11];

    v35[0] = @"fileContent";
    v35[1] = @"pkgSignature";
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
    [v12 setDesiredKeys:v13];

    v14 = [MEMORY[0x277CBC4F8] br_testTrigger];
    [v12 setGroup:v14];

    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __90__BRCXPCRegularIPCsClient_FPFSAdditions__getServerContentSignatureAtItemIdentifier_reply___block_invoke_186;
    v31 = &unk_2785043E8;
    v32 = *(a1 + 32);
    v34 = *(a1 + 48);
    v33 = v5;
    [v12 setFetchRecordsCompletionBlock:&v28];
    v15 = [*(a1 + 32) session];
    v16 = [v15 syncContextProvider];
    v17 = [v16 defaultSyncContext];
    [v17 addOperation:v12];
  }

  else
  {
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = *(a1 + 32);
      v26 = [MEMORY[0x277CCA9B8] brc_errorUnexpectedItemType:*(a1 + 40) description:@"Item is not a document"];
      *buf = 138413058;
      v38 = v25;
      v39 = 2112;
      v40 = 0;
      v41 = 2112;
      v42 = v26;
      v43 = 2112;
      v44 = v23;
      _os_log_impl(&dword_223E7A000, v24, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    v27 = *(a1 + 48);
    v9 = [MEMORY[0x277CCA9B8] brc_errorUnexpectedItemType:*(a1 + 40) description:@"Item is not a document"];
    (*(v27 + 16))(v27, 0, v9);
  }
}

void __90__BRCXPCRegularIPCsClient_FPFSAdditions__getServerContentSignatureAtItemIdentifier_reply___block_invoke_186(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = [v6 brc_wrappedError];
      v23 = 138413058;
      v24 = v9;
      v25 = 2112;
      v26 = 0;
      v27 = 2112;
      v28 = v10;
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v23, 0x2Au);
    }

    v11 = *(a1 + 48);
    v12 = [v6 brc_wrappedError];
    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    v13 = [*(a1 + 40) asDocument];
    v14 = [v13 documentRecordID];
    v12 = [v5 objectForKeyedSubscript:v14];

    v15 = [v12 objectForKeyedSubscript:@"fileContent"];
    v16 = [v12 objectForKeyedSubscript:@"pkgSignature"];
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 32);
      if (v15)
      {
        v20 = [v15 signature];
      }

      else
      {
        v20 = v16;
      }

      v23 = 138413058;
      v24 = v19;
      v25 = 2112;
      v26 = v20;
      v27 = 2112;
      v28 = 0;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v23, 0x2Au);
      if (v15)
      {
      }
    }

    v21 = *(a1 + 48);
    if (v15)
    {
      v22 = [v15 signature];
      (*(v21 + 16))(v21, v22, 0);
    }

    else
    {
      (*(v21 + 16))(v21, v16, 0);
    }
  }
}

- (void)getAvailableBytesForUploadOverCellularWithReply:(id)reply
{
  v31 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v20, 0, sizeof(v20));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) getAvailableBytesForUploadOverCellularWithReply:]", 1855, 0, v20);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v20[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v7;
    v23 = 2112;
    selfCopy = self;
    v25 = 2112;
    v26 = v9;
    v27 = 2080;
    v28 = "[BRCXPCRegularIPCsClient(FPFSAdditions) getAvailableBytesForUploadOverCellularWithReply:]";
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v10 = *MEMORY[0x277CFAC58];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90__BRCXPCRegularIPCsClient_FPFSAdditions__getAvailableBytesForUploadOverCellularWithReply___block_invoke;
  v18[3] = &unk_2785014D0;
  v18[4] = self;
  v11 = replyCopy;
  v19 = v11;
  LODWORD(v10) = _brc_ipc_check_entitlement_and_logged_status(self, 0, v10, v18);

  if (v10)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = +[BRCUploadConstraintChecker defaultChecker];
      availableSizeForUpload = [v14 availableSizeForUpload];
      *buf = 138413058;
      selfCopy2 = self;
      v23 = 2112;
      selfCopy = availableSizeForUpload;
      v25 = 2112;
      v26 = 0;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    v16 = +[BRCUploadConstraintChecker defaultChecker];
    availableSizeForUpload2 = [v16 availableSizeForUpload];
    (*(v11 + 2))(v11, availableSizeForUpload2, 0);
  }

  __brc_leave_section(v20);
}

void __90__BRCXPCRegularIPCsClient_FPFSAdditions__getAvailableBytesForUploadOverCellularWithReply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)overrideUploadOnCellularConstraintsWithReply:(id)reply
{
  v28 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v17, 0, sizeof(v17));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) overrideUploadOnCellularConstraintsWithReply:]", 1864, 0, v17);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v17[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v7;
    v20 = 2112;
    selfCopy = self;
    v22 = 2112;
    v23 = v9;
    v24 = 2080;
    v25 = "[BRCXPCRegularIPCsClient(FPFSAdditions) overrideUploadOnCellularConstraintsWithReply:]";
    v26 = 2112;
    v27 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__BRCXPCRegularIPCsClient_FPFSAdditions__overrideUploadOnCellularConstraintsWithReply___block_invoke;
  v15[3] = &unk_2785014D0;
  v15[4] = self;
  v10 = replyCopy;
  v16 = v10;
  v11 = _brc_ipc_check_entitlement_and_logged_status(self, 1, @"com.apple.fileprovider.acl-read", v15);

  if (v11)
  {
    v12 = +[BRCUploadConstraintChecker defaultChecker];
    [v12 overrideConstraints];
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v20 = 2112;
      selfCopy = 0;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(v10 + 2))(v10, 0);
  }

  __brc_leave_section(v17);
}

void __87__BRCXPCRegularIPCsClient_FPFSAdditions__overrideUploadOnCellularConstraintsWithReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)waitForStabilizationWithReply:(id)reply
{
  v28 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v17, 0, sizeof(v17));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) waitForStabilizationWithReply:]", 1875, 0, v17);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v17[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    v19 = v7;
    v20 = 2112;
    selfCopy = self;
    v22 = 2112;
    v23 = v9;
    v24 = 2080;
    v25 = "[BRCXPCRegularIPCsClient(FPFSAdditions) waitForStabilizationWithReply:]";
    v26 = 2112;
    v27 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v10 = *MEMORY[0x277CFAC68];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__BRCXPCRegularIPCsClient_FPFSAdditions__waitForStabilizationWithReply___block_invoke;
  v15[3] = &unk_2785014D0;
  v15[4] = self;
  v11 = replyCopy;
  v16 = v11;
  LODWORD(v10) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v10, v15);

  if (v10)
  {
    session = [(BRCXPCClient *)self session];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __72__BRCXPCRegularIPCsClient_FPFSAdditions__waitForStabilizationWithReply___block_invoke_191;
    v13[3] = &unk_2785014D0;
    v13[4] = self;
    v14 = v11;
    [session waitForUploadsToCompleteInSyncBubbleWithReply:v13];
  }

  __brc_leave_section(v17);
}

void __72__BRCXPCRegularIPCsClient_FPFSAdditions__waitForStabilizationWithReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __72__BRCXPCRegularIPCsClient_FPFSAdditions__waitForStabilizationWithReply___block_invoke_191(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_uploadItemIdentifier:(id)identifier locatedLocalItem:(id)item itemLocationError:(id)error withContents:(id)contents baseVersion:(id)version basedOnOriginalVersion:(BOOL)originalVersion options:(unint64_t)options parentProgress:(id)self0 reply:(id)self1
{
  originalVersionCopy = originalVersion;
  v46 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  itemCopy = item;
  errorCopy = error;
  contentsCopy = contents;
  versionCopy = version;
  progressCopy = progress;
  replyCopy = reply;
  if (errorCopy)
  {
    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      selfCopy2 = self;
      v40 = 2112;
      v41 = 0;
      v42 = 2112;
      v43 = errorCopy;
      v44 = 2112;
      v45 = v24;
      _os_log_impl(&dword_223E7A000, v25, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    replyCopy[2](replyCopy, 0, errorCopy);
  }

  else
  {
    v34 = identifierCopy;
    v35 = contentsCopy;
    if ([itemCopy isDocument])
    {
      session = [(BRCXPCClient *)self session];
      fsUploader = [session fsUploader];
      asDocument = [itemCopy asDocument];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __176__BRCXPCRegularIPCsClient_FPFSAdditions___uploadItemIdentifier_locatedLocalItem_itemLocationError_withContents_baseVersion_basedOnOriginalVersion_options_parentProgress_reply___block_invoke;
      v36[3] = &unk_2785042F8;
      v36[4] = self;
      v37 = replyCopy;
      v29 = [fsUploader uploadDocument:asDocument withContents:v35 baseVersion:versionCopy basedOnOriginalVersion:originalVersionCopy options:options reply:v36];

      if (v29)
      {
        [progressCopy setTotalUnitCount:{objc_msgSend(v29, "totalUnitCount")}];
        [progressCopy addChild:v29 withPendingUnitCount:{objc_msgSend(v29, "totalUnitCount")}];
      }

      identifierCopy = v34;
    }

    else
    {
      v30 = brc_bread_crumbs();
      v31 = brc_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = [MEMORY[0x277CCA9B8] brc_errorUnexpectedItemType:v34 description:@"Item is not a document"];
        *buf = 138413058;
        selfCopy2 = self;
        v40 = 2112;
        v41 = 0;
        v42 = 2112;
        v43 = v32;
        v44 = 2112;
        v45 = v30;
        _os_log_impl(&dword_223E7A000, v31, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
      }

      identifierCopy = v34;
      v33 = [MEMORY[0x277CCA9B8] brc_errorUnexpectedItemType:v34 description:@"Item is not a document"];
      replyCopy[2](replyCopy, 0, v33);
    }

    contentsCopy = v35;
  }
}

void __176__BRCXPCRegularIPCsClient_FPFSAdditions___uploadItemIdentifier_locatedLocalItem_itemLocationError_withContents_baseVersion_basedOnOriginalVersion_options_parentProgress_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v10 = 138413058;
    v11 = v9;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v10, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)uploadItemIdentifier:(id)identifier withContents:(id)contents baseVersion:(id)version basedOnOriginalVersion:(BOOL)originalVersion options:(unint64_t)options reply:(id)reply
{
  originalVersionCopy = originalVersion;
  v70 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  contentsCopy = contents;
  versionCopy = version;
  replyCopy = reply;
  memset(v51, 0, sizeof(v51));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) uploadItemIdentifier:withContents:baseVersion:basedOnOriginalVersion:options:reply:]", 1924, 0, v51);
  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = v51[0];
    v18 = qos_class_self();
    v19 = BRCPrettyPrintEnumWithContext(v18, &brc_qos_entries, 0);
    *buf = 134219010;
    v53 = v17;
    v54 = 2112;
    selfCopy3 = self;
    v56 = 2112;
    v57 = v19;
    v58 = 2080;
    v59 = "[BRCXPCRegularIPCsClient(FPFSAdditions) uploadItemIdentifier:withContents:baseVersion:basedOnOriginalVersion:options:reply:]";
    v60 = 2112;
    v61 = v15;
    _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v20 = *MEMORY[0x277CFAC68];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __125__BRCXPCRegularIPCsClient_FPFSAdditions__uploadItemIdentifier_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke;
  v49[3] = &unk_2785014D0;
  v49[4] = self;
  v21 = replyCopy;
  v50 = v21;
  LODWORD(v20) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v20, v49);

  if (v20)
  {
    memset(v48, 0, sizeof(v48));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) uploadItemIdentifier:withContents:baseVersion:basedOnOriginalVersion:options:reply:]", 1926, 0, v48);
    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = v48[0];
      v25 = qos_class_self();
      v26 = BRCPrettyPrintEnumWithContext(v25, &brc_qos_entries, 0);
      *buf = 134220034;
      v53 = v24;
      v54 = 2112;
      selfCopy3 = self;
      v56 = 2112;
      v57 = v26;
      v58 = 2080;
      v59 = "[BRCXPCRegularIPCsClient(FPFSAdditions) uploadItemIdentifier:withContents:baseVersion:basedOnOriginalVersion:options:reply:]";
      v60 = 2112;
      v61 = identifierCopy;
      v62 = 2112;
      v63 = versionCopy;
      v64 = 1024;
      v65 = originalVersionCopy;
      v66 = 2048;
      optionsCopy = options;
      v68 = 2112;
      v69 = v22;
      _os_log_impl(&dword_223E7A000, v23, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s uploadItemIdentifier %@ baseVersion:%@ basedOnOriginalVersion:%d options:%lu%@", buf, 0x58u);
    }

    v27 = objc_opt_new();
    [v27 setKind:*MEMORY[0x277CCA648]];
    [v27 setFileOperationKind:*MEMORY[0x277CCA630]];
    memset(v47, 0, sizeof(v47));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) uploadItemIdentifier:withContents:baseVersion:basedOnOriginalVersion:options:reply:]", 1942, 0, v47);
    v28 = brc_bread_crumbs();
    v29 = brc_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v35 = versionCopy;
      v30 = v47[0];
      v31 = qos_class_self();
      v32 = BRCPrettyPrintEnumWithContext(v31, &brc_qos_entries, 0);
      *buf = 134219266;
      v53 = v30;
      v54 = 2112;
      selfCopy3 = self;
      v56 = 2112;
      v57 = v32;
      v58 = 2080;
      v59 = "[BRCXPCRegularIPCsClient(FPFSAdditions) uploadItemIdentifier:withContents:baseVersion:basedOnOriginalVersion:options:reply:]";
      v60 = 2112;
      v61 = identifierCopy;
      v62 = 2112;
      v63 = v28;
      _os_log_impl(&dword_223E7A000, v29, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);

      versionCopy = v35;
    }

    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __125__BRCXPCRegularIPCsClient_FPFSAdditions__uploadItemIdentifier_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_193;
    v39[3] = &unk_278504410;
    v39[4] = self;
    v40 = identifierCopy;
    v41 = contentsCopy;
    v46 = originalVersionCopy;
    v42 = versionCopy;
    optionsCopy2 = options;
    v33 = v27;
    v43 = v33;
    v44 = v21;
    [(BRCXPCRegularIPCsClient *)self accessItemIdentifierLocalItem:v40 dbAccessKind:0 synchronouslyIfPossible:0 handler:v39];

    __brc_leave_section(v47);
    __brc_leave_section(v48);
  }

  else
  {
    v33 = 0;
  }

  __brc_leave_section(v51);

  return v33;
}

void __125__BRCXPCRegularIPCsClient_FPFSAdditions__uploadItemIdentifier_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getCKRecordIDsForFPItems:(id)items reply:(id)reply
{
  v43 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  replyCopy = reply;
  memset(v32, 0, sizeof(v32));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient(FPFSAdditions) getCKRecordIDsForFPItems:reply:]", 1986, 0, v32);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v32[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    v34 = v10;
    v35 = 2112;
    selfCopy = self;
    v37 = 2112;
    v38 = v12;
    v39 = 2080;
    v40 = "[BRCXPCRegularIPCsClient(FPFSAdditions) getCKRecordIDsForFPItems:reply:]";
    v41 = 2112;
    v42 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __73__BRCXPCRegularIPCsClient_FPFSAdditions__getCKRecordIDsForFPItems_reply___block_invoke;
  v30[3] = &unk_2785014D0;
  v30[4] = self;
  v13 = replyCopy;
  v31 = v13;
  v14 = _brc_ipc_check_logged_status(self, 1, v30);

  if (v14)
  {
    session = [(BRCXPCClient *)self session];
    br_getProviderIDForCurrentPersona = [MEMORY[0x277CFAE58] br_getProviderIDForCurrentPersona];
    fpDomain = [session fpDomain];
    identifier = [fpDomain identifier];

    clientTruthWorkloop = [session clientTruthWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__BRCXPCRegularIPCsClient_FPFSAdditions__getCKRecordIDsForFPItems_reply___block_invoke_195;
    block[3] = &unk_278504438;
    v24 = itemsCopy;
    v25 = br_getProviderIDForCurrentPersona;
    v26 = identifier;
    v27 = session;
    selfCopy2 = self;
    v29 = v13;
    v20 = session;
    v21 = identifier;
    v22 = br_getProviderIDForCurrentPersona;
    dispatch_async(clientTruthWorkloop, block);
  }

  __brc_leave_section(v32);
}

void __73__BRCXPCRegularIPCsClient_FPFSAdditions__getCKRecordIDsForFPItems_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __73__BRCXPCRegularIPCsClient_FPFSAdditions__getCKRecordIDsForFPItems_reply___block_invoke_195(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v32 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v35;
    v6 = 0x277CFA000uLL;
    do
    {
      v7 = 0;
      v33 = v4;
      do
      {
        if (*v35 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v34 + 1) + 8 * v7);
        v9 = [v8 objectAtIndexedSubscript:{0, v32}];
        v10 = [v9 providerID];
        v11 = [v10 isEqualToString:*(a1 + 40)];

        if (v11)
        {
          v12 = [v9 domainIdentifier];
          v13 = [v12 isEqualToString:*(a1 + 48)];

          if (v13)
          {
            v14 = [*(a1 + 56) itemFetcher];
            v15 = *(v6 + 3664);
            v16 = [v8 objectAtIndexedSubscript:1];
            v17 = [v15 fileObjectIDWithString:v16];
            v18 = [v14 itemByFileObjectID:v17];

            if (!v18)
            {
              v4 = v33;
              goto LABEL_20;
            }

            if ([v18 isSharedToMeTopLevelItem])
            {
              v19 = [v18 itemID];
              v20 = [v18 serverZone];
              v21 = [v20 zoneID];
              [v19 contentsRecordIDInZoneID:v21];
              v22 = v5;
              v24 = v23 = v2;
              [v32 setObject:v24 forKeyedSubscript:v9];

              v2 = v23;
              v5 = v22;
              v6 = 0x277CFA000;
            }

            else
            {
              v19 = [v18 structureRecordID];
              [v32 setObject:v19 forKeyedSubscript:v9];
            }

            v4 = v33;
          }

          else
          {
            v18 = brc_bread_crumbs();
            v19 = brc_default_log();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v28 = *(a1 + 48);
              *buf = 138412802;
              v39 = v8;
              v40 = 2112;
              v41 = v28;
              v42 = 2112;
              v43 = v18;
              v26 = v19;
              v27 = "[WARNING] %@ is not in domain %@%@";
              goto LABEL_15;
            }
          }
        }

        else
        {
          v18 = brc_bread_crumbs();
          v19 = brc_default_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v25 = *(a1 + 40);
            *buf = 138412802;
            v39 = v8;
            v40 = 2112;
            v41 = v25;
            v42 = 2112;
            v43 = v18;
            v26 = v19;
            v27 = "[WARNING] %@ does not belong to %@%@";
LABEL_15:
            _os_log_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0x20u);
          }
        }

LABEL_20:
        ++v7;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v4);
  }

  v29 = brc_bread_crumbs();
  v30 = brc_default_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = *(a1 + 64);
    *buf = 138413058;
    v39 = v31;
    v40 = 2112;
    v41 = v32;
    v42 = 2112;
    v43 = 0;
    v44 = 2112;
    v45 = v29;
    _os_log_impl(&dword_223E7A000, v30, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
  }

  (*(*(a1 + 72) + 16))();
}

- (void)getContainerURLForID:(id)d recreateDocumentsIfNeeded:(BOOL)needed reply:(id)reply
{
  neededCopy = needed;
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  memset(v26, 0, sizeof(v26));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient getContainerURLForID:recreateDocumentsIfNeeded:reply:]", 1518, 0, v26);
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v26[0];
    v13 = qos_class_self();
    v14 = BRCPrettyPrintEnumWithContext(v13, &brc_qos_entries, 0);
    *buf = 134219266;
    selfCopy2 = v12;
    v29 = 2112;
    selfCopy = self;
    v31 = 2112;
    v32 = v14;
    v33 = 2080;
    v34 = "[BRCXPCRegularIPCsClient getContainerURLForID:recreateDocumentsIfNeeded:reply:]";
    v35 = 2112;
    v36 = dCopy;
    v37 = 2112;
    v38 = v10;
    _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
  }

  if (dCopy)
  {
    defaultMangledID = [objc_alloc(MEMORY[0x277CFAE60]) initWithAppLibraryName:dCopy];
  }

  else
  {
    defaultMangledID = 0;
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __80__BRCXPCRegularIPCsClient_getContainerURLForID_recreateDocumentsIfNeeded_reply___block_invoke;
  v24[3] = &unk_2785014D0;
  v24[4] = self;
  v16 = replyCopy;
  v25 = v16;
  v17 = _brc_ipc_check_applibrary_read_access(self, 1, defaultMangledID, v24);

  if (v17)
  {
    active_platform = dyld_get_active_platform();
    if ((active_platform & 0xFFFFFFFB) == 2 || active_platform == 1 || active_platform == 11)
    {
      if (!dyld_program_sdk_at_least())
      {
        if (!defaultMangledID)
        {
          defaultMangledID = [(BRCXPCClient *)self defaultMangledID];
          if (!defaultMangledID)
          {
            goto LABEL_19;
          }
        }

LABEL_17:
        [(BRCXPCClient *)self _setupAppLibraryAndZoneWithID:defaultMangledID recreateDocumentsIfNeeded:neededCopy reply:v16];
        goto LABEL_22;
      }
    }

    else
    {
      syslog(5, "Unknown platform linking against CloudDocs framework %d", active_platform);
    }

    if (dCopy)
    {
      if (defaultMangledID)
      {
        goto LABEL_17;
      }
    }

    else
    {
      defaultMangledID2 = [(BRCXPCClient *)self defaultMangledID];

      defaultMangledID = defaultMangledID2;
      if (defaultMangledID2)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"containerID" value:0];
      *buf = 138413570;
      selfCopy2 = self;
      v29 = 2112;
      selfCopy = 0;
      v31 = 2112;
      v32 = 0;
      v33 = 2112;
      v34 = 0;
      v35 = 2112;
      v36 = v22;
      v37 = 2112;
      v38 = v20;
      _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %@)%@", buf, 0x3Eu);
    }

    v23 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"containerID" value:0];
    (*(v16 + 2))(v16, 0, 0, 0, v23);

    defaultMangledID = 0;
  }

LABEL_22:

  __brc_leave_section(v26);
}

void __80__BRCXPCRegularIPCsClient_getContainerURLForID_recreateDocumentsIfNeeded_reply___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413570;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = 0;
    v13 = 2112;
    v14 = 0;
    v15 = 2112;
    v16 = v3;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %@)%@", &v7, 0x3Eu);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)presyncContainerWithID:(id)d reply:(id)reply
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  memset(v20, 0, sizeof(v20));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient presyncContainerWithID:reply:]", 1556, 0, v20);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v20[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    v22 = v10;
    v23 = 2112;
    selfCopy = self;
    v25 = 2112;
    v26 = v12;
    v27 = 2080;
    v28 = "[BRCXPCRegularIPCsClient presyncContainerWithID:reply:]";
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __56__BRCXPCRegularIPCsClient_presyncContainerWithID_reply___block_invoke;
  v18[3] = &unk_2785014D0;
  v18[4] = self;
  v13 = replyCopy;
  v19 = v13;
  v14 = _brc_ipc_check_applibrary_proxy(self, 1, v18);

  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x277CFAE60]) initWithAppLibraryName:dCopy];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __56__BRCXPCRegularIPCsClient_presyncContainerWithID_reply___block_invoke_300;
    v16[3] = &unk_278506E58;
    v16[4] = self;
    v17 = v13;
    [(BRCXPCClient *)self _setupAppLibraryAndZoneWithID:v15 recreateDocumentsIfNeeded:0 reply:v16];
  }

  __brc_leave_section(v20);
}

void __56__BRCXPCRegularIPCsClient_presyncContainerWithID_reply___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = [v3 brc_wrappedError];
    v10 = 138412802;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v10, 0x20u);
  }

  v8 = *(a1 + 40);
  v9 = [v3 brc_wrappedError];
  (*(v8 + 16))(v8, v9);
}

void __56__BRCXPCRegularIPCsClient_presyncContainerWithID_reply___block_invoke_300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v10 = [v6 brc_wrappedError];
    v13 = 138412802;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v13, 0x20u);
  }

  v11 = *(a1 + 40);
  v12 = [v6 brc_wrappedError];
  (*(v11 + 16))(v11, v12);
}

- (void)getContainerURLForID:(id)d forProcess:(id *)process reply:(id)reply
{
  v45 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  memset(v37, 0, sizeof(v37));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient getContainerURLForID:forProcess:reply:]", 1571, 0, v37);
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v37[0];
    v13 = qos_class_self();
    v14 = BRCPrettyPrintEnumWithContext(v13, &brc_qos_entries, 0);
    *buf = 134219010;
    *&buf[4] = v12;
    *&buf[12] = 2112;
    *&buf[14] = self;
    *&buf[22] = 2112;
    *&buf[24] = v14;
    v39 = 2080;
    v40 = "[BRCXPCRegularIPCsClient getContainerURLForID:forProcess:reply:]";
    v41 = 2112;
    v42 = v10;
    _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __65__BRCXPCRegularIPCsClient_getContainerURLForID_forProcess_reply___block_invoke;
  v35[3] = &unk_2785014D0;
  v35[4] = self;
  v15 = replyCopy;
  v36 = v15;
  v16 = _brc_ipc_check_applibrary_proxy(self, 1, v35);

  if (v16)
  {
    v17 = [BRCClientPrivilegesDescriptor alloc];
    v18 = *&process->var0[4];
    *buf = *process->var0;
    *&buf[16] = v18;
    v19 = [(BRCClientPrivilegesDescriptor *)v17 initWithAuditToken:buf];
    appLibraryIDs = [(BRCClientPrivilegesDescriptor *)v19 appLibraryIDs];
    v21 = appLibraryIDs == 0;

    if (v21)
    {
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = MEMORY[0x277CCA9B8];
        applicationIdentifier = [(BRCClientPrivilegesDescriptor *)v19 applicationIdentifier];
        v29 = [v27 brc_errorNoAppLibraryForBundle:applicationIdentifier];
        *buf = 138413570;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = 0;
        *&buf[22] = 2112;
        *&buf[24] = 0;
        v39 = 2112;
        v40 = 0;
        v41 = 2112;
        v42 = v29;
        v43 = 2112;
        v44 = v25;
        _os_log_impl(&dword_223E7A000, v26, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %@)%@", buf, 0x3Eu);
      }

      v30 = MEMORY[0x277CCA9B8];
      applicationIdentifier2 = [(BRCClientPrivilegesDescriptor *)v19 applicationIdentifier];
      v31 = [v30 brc_errorNoAppLibraryForBundle:applicationIdentifier2];
      (*(v15 + 2))(v15, 0, 0, 0, v31);
    }

    else
    {
      if (!dCopy)
      {
        dCopy = [(BRCClientPrivilegesDescriptor *)v19 defaultAppLibraryID];
      }

      appLibraryIDs2 = [(BRCClientPrivilegesDescriptor *)v19 appLibraryIDs];
      v23 = [appLibraryIDs2 containsObject:dCopy];

      if (v23)
      {
        applicationIdentifier2 = [objc_alloc(MEMORY[0x277CFAE60]) initWithAppLibraryName:dCopy];
        [(BRCXPCClient *)self _setupAppLibraryAndZoneWithID:applicationIdentifier2 recreateDocumentsIfNeeded:0 reply:v15];
      }

      else
      {
        v32 = brc_bread_crumbs();
        v33 = brc_default_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"containerID" value:dCopy];
          *buf = 138413570;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = 0;
          *&buf[22] = 2112;
          *&buf[24] = 0;
          v39 = 2112;
          v40 = 0;
          v41 = 2112;
          v42 = v34;
          v43 = 2112;
          v44 = v32;
          _os_log_impl(&dword_223E7A000, v33, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %@)%@", buf, 0x3Eu);
        }

        applicationIdentifier2 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"containerID" value:dCopy];
        (*(v15 + 2))(v15, 0, 0, 0, applicationIdentifier2);
      }
    }
  }

  __brc_leave_section(v37);
}

void __65__BRCXPCRegularIPCsClient_getContainerURLForID_forProcess_reply___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = [v3 brc_wrappedError];
    v10 = 138413570;
    v11 = v6;
    v12 = 2112;
    v13 = 0;
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = 0;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %@)%@", &v10, 0x3Eu);
  }

  v8 = *(a1 + 40);
  v9 = [v3 brc_wrappedError];
  (*(v8 + 16))(v8, 0, 0, 0, v9);
}

- (void)updateContainerMetadataForID:(id)d
{
  v47 = *MEMORY[0x277D85DE8];
  dCopy = d;
  memset(v34, 0, sizeof(v34));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient updateContainerMetadataForID:]", 1595, 0, v34);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v34[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219266;
    selfCopy3 = v7;
    v37 = 2112;
    selfCopy = self;
    v39 = 2112;
    v40 = v9;
    v41 = 2080;
    v42 = "[BRCXPCRegularIPCsClient updateContainerMetadataForID:]";
    v43 = 2112;
    v44 = dCopy;
    v45 = 2112;
    v46 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
  }

  if (dCopy)
  {
    v10 = [objc_alloc(MEMORY[0x277CFAE60]) initWithAppLibraryName:dCopy];
  }

  else
  {
    v10 = 0;
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __56__BRCXPCRegularIPCsClient_updateContainerMetadataForID___block_invoke;
  v32[3] = &unk_2784FFFA8;
  v32[4] = self;
  v11 = dCopy;
  v33 = v11;
  v12 = _brc_ipc_check_applibrary_write_access(self, 1, v10, v32);

  if (v12)
  {
    if (dCopy && (-[BRCXPCClient entitledAppLibraryIDs](self, "entitledAppLibraryIDs"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 containsObject:v11], v13, (v14 & 1) != 0))
    {
      bundleID = [(BRCXPCClient *)self bundleID];
      session = [(BRCXPCClient *)self session];
      v17 = [session appLibraryByID:v11];

      if (v17)
      {
        v18 = BRCBundleServiceConnection();
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __56__BRCXPCRegularIPCsClient_updateContainerMetadataForID___block_invoke_302;
        v30[3] = &unk_2784FF540;
        v19 = v18;
        v31 = v19;
        v20 = [v19 remoteObjectProxyWithErrorHandler:v30];
        containerMetadata = [v17 containerMetadata];
        v22 = [containerMetadata versionNumberForBundleIdentifier:bundleID];

        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __56__BRCXPCRegularIPCsClient_updateContainerMetadataForID___block_invoke_2;
        v25[3] = &unk_278506E80;
        v23 = v19;
        v26 = v23;
        v27 = v17;
        selfCopy2 = self;
        v29 = bundleID;
        [v20 extractMetadataForContainerID:v11 bundleID:v29 minimumBundleVersion:v22 reply:v25];

        v24 = v31;
      }

      else
      {
        v23 = brc_bread_crumbs();
        v24 = brc_default_log();
        if (os_log_type_enabled(v24, 0x90u))
        {
          [BRCXPCRegularIPCsClient updateContainerMetadataForID:];
        }
      }
    }

    else
    {
      bundleID = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        selfCopy3 = self;
        v37 = 2112;
        selfCopy = v11;
        v39 = 2112;
        v40 = bundleID;
        _os_log_fault_impl(&dword_223E7A000, v17, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: %@ is not owning %@ and updating its metadata%@", buf, 0x20u);
      }
    }
  }

  __brc_leave_section(v34);
}

void __56__BRCXPCRegularIPCsClient_updateContainerMetadataForID___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 138413058;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ can't access %@: %@%@", &v8, 0x2Au);
  }
}

void __56__BRCXPCRegularIPCsClient_updateContainerMetadataForID___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) invalidate];
  v7 = [*(a1 + 40) defaultClientZone];
  v8 = [v7 activated];
  if (v5 && v8)
  {
    v9 = *(*(a1 + 48) + 8);
    v10 = [*(a1 + 40) db];
    v11 = [v10 serialQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __56__BRCXPCRegularIPCsClient_updateContainerMetadataForID___block_invoke_3;
    v12[3] = &unk_2784FF4F0;
    v13 = v7;
    v14 = *(a1 + 40);
    v15 = v5;
    v16 = v6;
    v17 = *(a1 + 56);
    brc_task_tracker_async_with_logs(v9, v11, v12, 0);
  }
}

void __56__BRCXPCRegularIPCsClient_updateContainerMetadataForID___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) activated])
  {
    v2 = [*(a1 + 40) containerMetadata];
    v3 = [v2 isDocumentScopePublic];

    v4 = [*(a1 + 40) containerMetadata];
    v5 = [v4 updateMetadataWithExtractorProperties:*(a1 + 48) iconPaths:*(a1 + 56) bundleID:*(a1 + 64)];

    if (v5)
    {
      [*(a1 + 40) scheduleContainerMetadataSyncUp];
    }

    v6 = [*(a1 + 40) containerMetadata];
    v7 = [v6 isDocumentScopePublic];

    if (v3 != v7)
    {
      v8 = *(a1 + 40);

      [v8 didUpdateDocumentScopePublic];
    }
  }
}

- (void)deleteAllContentsOfContainerID:(id)d onClient:(BOOL)client onServer:(BOOL)server wait:(BOOL)wait reply:(id)reply
{
  serverCopy = server;
  clientCopy = client;
  v85 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  v11 = 2;
  if (clientCopy)
  {
    v11 = 3;
  }

  v55 = serverCopy;
  if (serverCopy)
  {
    v11 = 4;
  }

  v52 = v11;
  memset(v72, 0, sizeof(v72));
  __brc_create_section(0, "[BRCXPCRegularIPCsClient deleteAllContentsOfContainerID:onClient:onServer:wait:reply:]", 1677, 0, v72);
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    selfCopy2 = v72[0];
    v77 = 2112;
    selfCopy = dCopy;
    v79 = 2112;
    v80 = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx IPC-initiated reset for %@%@", buf, 0x20u);
  }

  memset(v71, 0, sizeof(v71));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient deleteAllContentsOfContainerID:onClient:onServer:wait:reply:]", 1681, 0, v71);
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = v71[0];
    v17 = qos_class_self();
    v18 = BRCPrettyPrintEnumWithContext(v17, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v16;
    v77 = 2112;
    selfCopy = self;
    v79 = 2112;
    v80 = v18;
    v81 = 2080;
    v82 = "[BRCXPCRegularIPCsClient deleteAllContentsOfContainerID:onClient:onServer:wait:reply:]";
    v83 = 2112;
    v84 = v14;
    _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __87__BRCXPCRegularIPCsClient_deleteAllContentsOfContainerID_onClient_onServer_wait_reply___block_invoke;
  v69[3] = &unk_2785014D0;
  v69[4] = self;
  v48 = replyCopy;
  v70 = v48;
  v19 = _brc_ipc_check_applibrary_proxy(self, 1, v69);

  if (v19)
  {
    session = [(BRCXPCClient *)self session];
    v68 = 0;
    v21 = [session clientZonesMatchingSearchString:dCopy error:&v68];
    v47 = v68;

    v22 = objc_opt_new();
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = v21;
    v23 = [obj countByEnumeratingWithState:&v64 objects:v74 count:16];
    if (v23)
    {
      v24 = *v65;
      v25 = *MEMORY[0x277CFAD68];
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v65 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v64 + 1) + 8 * i);
          if ([v27 isCloudDocsZone] && (-[BRCXPCRegularIPCsClient isEqualToString:](dCopy, "isEqualToString:", v25) & 1) == 0)
          {
            v28 = brc_bread_crumbs();
            v29 = brc_default_log();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              selfCopy2 = dCopy;
              v77 = 2112;
              selfCopy = v28;
              _os_log_debug_impl(&dword_223E7A000, v29, OS_LOG_TYPE_DEBUG, "[DEBUG] Not deleting container %@ which is moved to clouddocs%@", buf, 0x16u);
            }
          }

          else
          {
            [v22 addObject:v27];
          }
        }

        v23 = [obj countByEnumeratingWithState:&v64 objects:v74 count:16];
      }

      while (v23);
    }

    if ([v22 count])
    {
      v30 = dispatch_group_create();
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v49 = v22;
      v31 = [v49 countByEnumeratingWithState:&v60 objects:v73 count:16];
      if (!v31)
      {
        goto LABEL_42;
      }

      v32 = *v61;
      while (1)
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v61 != v32)
          {
            objc_enumerationMutation(v49);
          }

          v34 = *(*(&v60 + 1) + 8 * j);
          if (v55 && [*(*(&v60 + 1) + 8 * j) isSharedZone])
          {
            v35 = brc_bread_crumbs();
            v36 = brc_default_log();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              selfCopy2 = v34;
              v77 = 2112;
              selfCopy = v35;
              _os_log_debug_impl(&dword_223E7A000, v36, OS_LOG_TYPE_DEBUG, "[DEBUG] We can't delete server zone for shared zone, skipping %@%@", buf, 0x16u);
            }

            goto LABEL_38;
          }

          v37 = brc_bread_crumbs();
          v38 = brc_default_log();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
          {
            v43 = BRCPrettyPrintEnum();
            *buf = 136315650;
            selfCopy2 = v43;
            v77 = 2112;
            selfCopy = v34;
            v79 = 2112;
            v80 = v37;
            _os_log_fault_impl(&dword_223E7A000, v38, OS_LOG_TYPE_FAULT, "[CRIT] %s reset for %@%@", buf, 0x20u);
          }

          v39 = +[BRCEventsAnalytics sharedAnalytics];
          v40 = MEMORY[0x277CCACA8];
          bundleID = [(BRCXPCClient *)self bundleID];
          v42 = [v40 stringWithFormat:@"ipc-%@", bundleID];
          [v39 registerAndSendNewContainerResetWithOutcome:v42];

          if (wait)
          {
            dispatch_group_enter(v30);
            v58[0] = MEMORY[0x277D85DD0];
            v58[1] = 3221225472;
            v58[2] = __87__BRCXPCRegularIPCsClient_deleteAllContentsOfContainerID_onClient_onServer_wait_reply___block_invoke_309;
            v58[3] = &unk_2784FF450;
            v59 = v30;
            [(BRCXPCRegularIPCsClient *)v34 scheduleReset:v52 completionHandler:v58];
            v35 = v59;
LABEL_38:

            continue;
          }

          [(BRCXPCRegularIPCsClient *)v34 scheduleReset:v52];
        }

        v31 = [v49 countByEnumeratingWithState:&v60 objects:v73 count:16];
        if (!v31)
        {
LABEL_42:

          queue = self->super._queue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __87__BRCXPCRegularIPCsClient_deleteAllContentsOfContainerID_onClient_onServer_wait_reply___block_invoke_2;
          block[3] = &unk_278500048;
          block[4] = self;
          v57 = v48;
          dispatch_group_notify(v30, queue, block);

          goto LABEL_46;
        }
      }
    }

    v45 = brc_bread_crumbs();
    v46 = brc_default_log();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v77 = 2112;
      selfCopy = v47;
      v79 = 2112;
      v80 = v45;
      _os_log_impl(&dword_223E7A000, v46, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(v48 + 2))(v48, v47);
LABEL_46:
  }

  __brc_leave_section(v71);
  __brc_leave_section(v72);
}

void __87__BRCXPCRegularIPCsClient_deleteAllContentsOfContainerID_onClient_onServer_wait_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __87__BRCXPCRegularIPCsClient_deleteAllContentsOfContainerID_onClient_onServer_wait_reply___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v6 = 138412802;
    v7 = v4;
    v8 = 2112;
    v9 = 0;
    v10 = 2112;
    v11 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v6, 0x20u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)registerInitialSyncBarrierForID:(id)d reply:(id)reply
{
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  memset(v25, 0, sizeof(v25));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient registerInitialSyncBarrierForID:reply:]", 1730, 0, v25);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v25[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219266;
    selfCopy2 = v10;
    v28 = 2112;
    selfCopy = self;
    v30 = 2112;
    v31 = v12;
    v32 = 2080;
    v33 = "[BRCXPCRegularIPCsClient registerInitialSyncBarrierForID:reply:]";
    v34 = 2112;
    v35 = dCopy;
    v36 = 2112;
    v37 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
  }

  if (dCopy)
  {
    defaultMangledID = [objc_alloc(MEMORY[0x277CFAE60]) initWithAppLibraryName:dCopy];
  }

  else
  {
    defaultMangledID = 0;
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __65__BRCXPCRegularIPCsClient_registerInitialSyncBarrierForID_reply___block_invoke;
  v23[3] = &unk_2785014D0;
  v23[4] = self;
  v14 = replyCopy;
  v24 = v14;
  v15 = _brc_ipc_check_applibrary_read_access(self, 1, defaultMangledID, v23);

  if (v15)
  {
    v22 = 0;
    if (!defaultMangledID)
    {
      defaultMangledID = [(BRCXPCClient *)self defaultMangledID];
    }

    v16 = [(BRCXPCClient *)self _setupAppLibrary:defaultMangledID error:&v22];
    if (v16)
    {
      [(BRCXPCClient *)self addAppLibrary:v16];
      defaultClientZone = [v16 defaultClientZone];
      v18 = [(BRCXPCClient *)self description];
      [defaultClientZone notifyClient:v18 whenFaultingIsDone:v14];
    }

    else
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        brc_wrappedError = [v22 brc_wrappedError];
        *buf = 138412802;
        selfCopy2 = self;
        v28 = 2112;
        selfCopy = brc_wrappedError;
        v30 = 2112;
        v31 = v19;
        _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
      }

      defaultClientZone = [v22 brc_wrappedError];
      (*(v14 + 2))(v14, defaultClientZone);
    }
  }

  __brc_leave_section(v25);
}

void __65__BRCXPCRegularIPCsClient_registerInitialSyncBarrierForID_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)_removeSandboxedAttributes:(id)attributes
{
  v17 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  allObjects = attributesCopy;
  if (![(BRCXPCClient *)self isSandboxed])
  {
    allObjects = attributesCopy;
    if (![(BRCXPCClient *)self hasPrivateSharingInterfaceEntitlement])
    {
      v6 = [MEMORY[0x277CBEB58] setWithArray:attributesCopy];
      v7 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CBE9B8], *MEMORY[0x277CBE9B0], *MEMORY[0x277CBE9A8], 0}];
      allObjects = attributesCopy;
      if ([v6 intersectsSet:v7])
      {
        [v6 minusSet:v7];
        v8 = brc_bread_crumbs();
        v9 = brc_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v12 = attributesCopy;
          v13 = 2112;
          v14 = v6;
          v15 = 2112;
          v16 = v8;
          _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] Stripping attributes request from %@ to %@%@", buf, 0x20u);
        }

        allObjects = [v6 allObjects];
      }
    }
  }

  return allObjects;
}

- (void)getItemUpdateSenderWithReceiver:(id)receiver reply:(id)reply
{
  v62 = *MEMORY[0x277D85DE8];
  receiverCopy = receiver;
  replyCopy = reply;
  memset(v50, 0, sizeof(v50));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient getItemUpdateSenderWithReceiver:reply:]", 1774, 0, v50);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v50[0];
    v10 = qos_class_self();
    v11 = BRCPrettyPrintEnumWithContext(v10, &brc_qos_entries, 0);
    *buf = 134219010;
    v53 = v9;
    v54 = 2112;
    selfCopy = self;
    v56 = 2112;
    v57 = v11;
    v58 = 2080;
    v59 = "[BRCXPCRegularIPCsClient getItemUpdateSenderWithReceiver:reply:]";
    v60 = 2112;
    v61 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __65__BRCXPCRegularIPCsClient_getItemUpdateSenderWithReceiver_reply___block_invoke;
  v48[3] = &unk_2785014D0;
  v48[4] = self;
  v33 = replyCopy;
  v49 = v33;
  v12 = _brc_ipc_check_applibraries_access(self, 1, v48);

  if (v12)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [BRCXPCRegularIPCsClient getItemUpdateSenderWithReceiver:reply:];
    }

    session = [(BRCXPCClient *)self session];
    notificationManager = [session notificationManager];

    v47 = 0;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    entitledAppLibraryIDs = [(BRCXPCClient *)self entitledAppLibraryIDs];
    v17 = 0;
    v18 = [entitledAppLibraryIDs countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v18)
    {
      v38 = 0;
      v39 = *v44;
      v36 = *MEMORY[0x277CFB030];
      v35 = *MEMORY[0x277CFB028];
      obj = entitledAppLibraryIDs;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v44 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v43 + 1) + 8 * i);
          v21 = [objc_alloc(MEMORY[0x277CFAE60]) initWithAppLibraryName:v20];
          v22 = [(BRCXPCClient *)self _setupAppLibrary:v21 error:&v47];
          if (v22)
          {
            [(BRCXPCClient *)self addAppLibrary:v22];
            v23 = [v22 url];

            if ([(BRCXPCClient *)self canAccessPhysicalURL:v23])
            {
              v24 = 0;
            }

            else
            {
              v24 = [(BRCXPCClient *)self issueContainerExtensionForURL:v23 error:0];
            }

            containerMetadata = [v22 containerMetadata];
            bundleID = [(BRCXPCClient *)self bundleID];
            v25 = [containerMetadata versionNumberForBundleIdentifier:bundleID];

            if (v24 | v25)
            {
              dictionary = [MEMORY[0x277CBEB38] dictionary];
              v29 = dictionary;
              if (v24)
              {
                [dictionary setObject:v24 forKeyedSubscript:v36];
              }

              if (v25)
              {
                [v29 setObject:v25 forKeyedSubscript:v35];
              }

              if (!v38)
              {
                v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
              }

              appLibraryID = [v22 appLibraryID];
              [v38 setObject:v29 forKeyedSubscript:appLibraryID];
            }

            v17 = v23;
          }

          else
          {
            v24 = brc_bread_crumbs();
            v25 = brc_default_log();
            if (os_log_type_enabled(v25, 0x90u))
            {
              *buf = 138412802;
              v53 = v20;
              v54 = 2112;
              selfCopy = v47;
              v56 = 2112;
              v57 = v24;
              _os_log_error_impl(&dword_223E7A000, v25, 0x90u, "[ERROR] can't setup container %@: %@%@", buf, 0x20u);
            }
          }
        }

        entitledAppLibraryIDs = obj;
        v18 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v18);
    }

    else
    {
      v38 = 0;
    }

    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __65__BRCXPCRegularIPCsClient_getItemUpdateSenderWithReceiver_reply___block_invoke_313;
    v40[3] = &unk_278506EA8;
    v40[4] = self;
    v31 = v38;
    v41 = v31;
    v42 = v33;
    [notificationManager getPipeWithXPCReceiver:receiverCopy client:self reply:v40];
  }

  __brc_leave_section(v50);
}

void __65__BRCXPCRegularIPCsClient_getItemUpdateSenderWithReceiver_reply___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413314;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = 0;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", &v7, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
}

void __65__BRCXPCRegularIPCsClient_getItemUpdateSenderWithReceiver_reply___block_invoke_313(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = 138413314;
    v9 = v6;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", &v8, 0x34u);
  }

  (*(a1[6] + 16))();
}

- (void)queryPathsForPersona:(id)persona reply:(id)reply
{
  v37 = *MEMORY[0x277D85DE8];
  personaCopy = persona;
  replyCopy = reply;
  v8 = [MEMORY[0x277CFAE10] queryFastPathsForPrimaryPersona:personaCopy];
  if (v8)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      selfCopy3 = self;
      v29 = 2112;
      selfCopy2 = v8;
      v31 = 2112;
      v32 = 0;
      v33 = 2112;
      v34 = v9;
      _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    replyCopy[2](replyCopy, v8, 0);
  }

  else
  {
    memset(v26, 0, sizeof(v26));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient queryPathsForPersona:reply:]", 1836, 0, v26);
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = v26[0];
      v14 = qos_class_self();
      v15 = BRCPrettyPrintEnumWithContext(v14, &brc_qos_entries, 0);
      *buf = 134219010;
      selfCopy3 = v13;
      v29 = 2112;
      selfCopy2 = self;
      v31 = 2112;
      v32 = v15;
      v33 = 2080;
      v34 = "[BRCXPCRegularIPCsClient queryPathsForPersona:reply:]";
      v35 = 2112;
      v36 = v11;
      _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __54__BRCXPCRegularIPCsClient_queryPathsForPersona_reply___block_invoke;
    v24[3] = &unk_2785014D0;
    v24[4] = self;
    v16 = replyCopy;
    v25 = v16;
    v17 = _brc_ipc_check_logged_status(self, 0, v24);

    if (v17)
    {
      cloudDocsHelper = [MEMORY[0x277CFAE18] cloudDocsHelper];
      v23 = 0;
      v19 = [cloudDocsHelper queryPathsForPersona:personaCopy withError:&v23];
      v20 = v23;
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        selfCopy3 = self;
        v29 = 2112;
        selfCopy2 = v19;
        v31 = 2112;
        v32 = v20;
        v33 = 2112;
        v34 = v21;
        _os_log_impl(&dword_223E7A000, v22, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
      }

      (v16)[2](v16, v19, v20);
    }

    __brc_leave_section(v26);
  }
}

void __54__BRCXPCRegularIPCsClient_queryPathsForPersona_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)queryEligibleAccountDescriptorsWithReply:(id)reply
{
  v17 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    allEligibleAccountDescriptors = [MEMORY[0x277CFAE00] allEligibleAccountDescriptors];
    v9 = 138413058;
    selfCopy = self;
    v11 = 2112;
    v12 = allEligibleAccountDescriptors;
    v13 = 2112;
    v14 = 0;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v9, 0x2Au);
  }

  allEligibleAccountDescriptors2 = [MEMORY[0x277CFAE00] allEligibleAccountDescriptors];
  replyCopy[2](replyCopy, allEligibleAccountDescriptors2, 0);
}

- (void)getTotalApplicationDocumentUsageWithReply:(id)reply
{
  v33 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v22, 0, sizeof(v22));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient getTotalApplicationDocumentUsageWithReply:]", 1855, 0, v22);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v22[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    v24 = v7;
    v25 = 2112;
    selfCopy = self;
    v27 = 2112;
    v28 = v9;
    v29 = 2080;
    v30 = "[BRCXPCRegularIPCsClient getTotalApplicationDocumentUsageWithReply:]";
    v31 = 2112;
    v32 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v10 = *MEMORY[0x277CFABA8];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __69__BRCXPCRegularIPCsClient_getTotalApplicationDocumentUsageWithReply___block_invoke;
  v20[3] = &unk_2785014D0;
  v20[4] = self;
  v11 = replyCopy;
  v21 = v11;
  LODWORD(v10) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v10, v20);

  if (v10)
  {
    br_getProviderDomainIDForCurrentPersona = [MEMORY[0x277CFAE58] br_getProviderDomainIDForCurrentPersona];
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [BRCXPCRegularIPCsClient getTotalApplicationDocumentUsageWithReply:];
    }

    v15 = MEMORY[0x277CC6420];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __69__BRCXPCRegularIPCsClient_getTotalApplicationDocumentUsageWithReply___block_invoke_320;
    v17[3] = &unk_2785043E8;
    v17[4] = self;
    v19 = v11;
    v16 = br_getProviderDomainIDForCurrentPersona;
    v18 = v16;
    [v15 accumulatedSizeOfItemsInDomain:v16 completion:v17];
  }

  __brc_leave_section(v22);
}

void __69__BRCXPCRegularIPCsClient_getTotalApplicationDocumentUsageWithReply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __69__BRCXPCRegularIPCsClient_getTotalApplicationDocumentUsageWithReply___block_invoke_320(void *a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v25 = a1[4];
      *buf = 138413058;
      v32 = v25;
      v33 = 2112;
      v34 = 0;
      v35 = 2112;
      v36 = v6;
      v37 = 2112;
      v38 = v7;
      _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v9 = [v5 objectForKeyedSubscript:*MEMORY[0x277CC5FC8]];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &unk_2837B04F0;
    }

    v12 = v11;

    v13 = [v5 objectForKeyedSubscript:*MEMORY[0x277CC5FC0]];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &unk_2837B04F0;
    }

    v16 = v15;

    v17 = [v5 objectForKeyedSubscript:*MEMORY[0x277CC6298]];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = &unk_2837B04F0;
    }

    v20 = v19;

    v29[0] = @"Total Size";
    v29[1] = @"Evictable Size";
    v30[0] = v12;
    v30[1] = v16;
    v29[2] = @"Document Count";
    v30[2] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
    v27 = a1[5];
    v28 = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v26 = a1[4];
      *buf = 138413058;
      v32 = v26;
      v33 = 2112;
      v34 = v22;
      v35 = 2112;
      v36 = 0;
      v37 = 2112;
      v38 = v23;
      _os_log_debug_impl(&dword_223E7A000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    (*(a1[6] + 16))();
  }
}

- (void)getApplicationDocumentUsageInfoForBundleID:(id)d withReply:(id)reply
{
  v60 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  memset(v47, 0, sizeof(v47));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient getApplicationDocumentUsageInfoForBundleID:withReply:]", 1885, 0, v47);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v47[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v10;
    v52 = 2112;
    selfCopy = self;
    v54 = 2112;
    v55 = v12;
    v56 = 2080;
    v57 = "[BRCXPCRegularIPCsClient getApplicationDocumentUsageInfoForBundleID:withReply:]";
    v58 = 2112;
    v59 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v13 = *MEMORY[0x277CFABA8];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __80__BRCXPCRegularIPCsClient_getApplicationDocumentUsageInfoForBundleID_withReply___block_invoke;
  v45[3] = &unk_2785014D0;
  v45[4] = self;
  v14 = replyCopy;
  v46 = v14;
  LODWORD(v13) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v13, v45);

  if (v13)
  {
    memset(v44, 0, sizeof(v44));
    __brc_create_section(0, "[BRCXPCRegularIPCsClient getApplicationDocumentUsageInfoForBundleID:withReply:]", 1887, 0, v44);
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      selfCopy2 = v44[0];
      v52 = 2112;
      selfCopy = dCopy;
      v54 = 2112;
      v55 = v15;
      _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx getting usage for %@%@", buf, 0x20u);
    }

    v17 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:dCopy placeholder:0];
    if (v17)
    {
      v18 = BREntitledContainerIdentifiersForProxy();
    }

    else
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy2 = dCopy;
        v52 = 2112;
        selfCopy = v19;
        _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] unable to find bundleID %@%@", buf, 0x16u);
      }

      v18 = 0;
    }

    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    session = [(BRCXPCClient *)self session];
    if ([v18 count])
    {
      clientTruthWorkloop = [session clientTruthWorkloop];
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __80__BRCXPCRegularIPCsClient_getApplicationDocumentUsageInfoForBundleID_withReply___block_invoke_333;
      v31 = &unk_278506ED0;
      v32 = v18;
      v33 = session;
      v34 = &v40;
      v35 = &v36;
      dispatch_async_and_wait(clientTruthWorkloop, &v28);
    }

    v48[0] = *MEMORY[0x277CFAB78];
    v23 = [MEMORY[0x277CCABB0] numberWithBool:{*(v37 + 24), v28, v29, v30, v31}];
    v48[1] = *MEMORY[0x277CFAB70];
    v49[0] = v23;
    v24 = [MEMORY[0x277CCABB0] numberWithBool:*(v41 + 24)];
    v49[1] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];

    v26 = brc_bread_crumbs();
    v27 = brc_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      selfCopy2 = self;
      v52 = 2112;
      selfCopy = v25;
      v54 = 2112;
      v55 = 0;
      v56 = 2112;
      v57 = v26;
      _os_log_impl(&dword_223E7A000, v27, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    (*(v14 + 2))(v14, v25, 0);
    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v40, 8);

    __brc_leave_section(v44);
  }

  __brc_leave_section(v47);
}

void __80__BRCXPCRegularIPCsClient_getApplicationDocumentUsageInfoForBundleID_withReply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __80__BRCXPCRegularIPCsClient_getApplicationDocumentUsageInfoForBundleID_withReply___block_invoke_333(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) appLibraryByID:{*(*(&v13 + 1) + 8 * i), v13}];
        v8 = v7;
        v9 = *(*(a1 + 48) + 8);
        if (*(v9 + 24))
        {
          v10 = 1;
        }

        else
        {
          v10 = [v7 hasLocalChanges];
          v9 = *(*(a1 + 48) + 8);
        }

        *(v9 + 24) = v10;
        v11 = *(*(a1 + 56) + 8);
        if (*(v11 + 24))
        {
          v12 = 1;
        }

        else
        {
          v12 = [v8 hasUbiquitousDocuments];
          v11 = *(*(a1 + 56) + 8);
        }

        *(v11 + 24) = v12;
        if (*(*(*(a1 + 48) + 8) + 24) == 1 && *(*(*(a1 + 56) + 8) + 24) == 1)
        {

          goto LABEL_18;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:
}

- (void)hasOptimizeStorageWithReply:(id)reply
{
  v25 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v18, 0, sizeof(v18));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient hasOptimizeStorageWithReply:]", 1928, 0, v18);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v18[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy = v7;
    v21 = 2112;
    *v22 = self;
    *&v22[8] = 2112;
    *&v22[10] = v9;
    *&v22[18] = 2080;
    *&v22[20] = "[BRCXPCRegularIPCsClient hasOptimizeStorageWithReply:]";
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v10 = *MEMORY[0x277CFACA0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__BRCXPCRegularIPCsClient_hasOptimizeStorageWithReply___block_invoke;
  v16[3] = &unk_2785014D0;
  v16[4] = self;
  v11 = replyCopy;
  v17 = v11;
  LODWORD(v10) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v10, v16);

  if (v10)
  {
    session = [(BRCXPCClient *)self session];
    hasOptimizeStorageEnabled = [session hasOptimizeStorageEnabled];

    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      selfCopy = self;
      v21 = 1024;
      *v22 = hasOptimizeStorageEnabled;
      *&v22[4] = 2112;
      *&v22[6] = 0;
      *&v22[14] = 2112;
      *&v22[16] = v14;
      _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", buf, 0x26u);
    }

    (*(v11 + 2))(v11, hasOptimizeStorageEnabled, 0);
  }

  __brc_leave_section(v18);
}

void __55__BRCXPCRegularIPCsClient_hasOptimizeStorageWithReply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 1024;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v7, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)setStorageOpimizationEnabled:(BOOL)enabled reply:(id)reply
{
  enabledCopy = enabled;
  v30 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v19, 0, sizeof(v19));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient setStorageOpimizationEnabled:reply:]", 1938, 0, v19);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v19[0];
    v10 = qos_class_self();
    v11 = BRCPrettyPrintEnumWithContext(v10, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v9;
    v22 = 2112;
    selfCopy = self;
    v24 = 2112;
    v25 = v11;
    v26 = 2080;
    v27 = "[BRCXPCRegularIPCsClient setStorageOpimizationEnabled:reply:]";
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v12 = *MEMORY[0x277CFACA0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__BRCXPCRegularIPCsClient_setStorageOpimizationEnabled_reply___block_invoke;
  v17[3] = &unk_2785014D0;
  v17[4] = self;
  v13 = replyCopy;
  v18 = v13;
  LODWORD(v12) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v12, v17);

  if (v12)
  {
    session = [(BRCXPCClient *)self session];
    [session setOptimizeStorageEnabled:enabledCopy synchronous:0];

    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v22 = 2112;
      selfCopy = 0;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(v13 + 2))(v13, 0);
  }

  __brc_leave_section(v19);
}

void __62__BRCXPCRegularIPCsClient_setStorageOpimizationEnabled_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)evictOldDocumentsWithReply:(id)reply
{
  v36 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v25, 0, sizeof(v25));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient evictOldDocumentsWithReply:]", 1948, 0, v25);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v25[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v7;
    v28 = 2112;
    selfCopy = self;
    v30 = 2112;
    v31 = v9;
    v32 = 2080;
    v33 = "[BRCXPCRegularIPCsClient evictOldDocumentsWithReply:]";
    v34 = 2112;
    v35 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v10 = *MEMORY[0x277CFACA0];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __54__BRCXPCRegularIPCsClient_evictOldDocumentsWithReply___block_invoke;
  v23[3] = &unk_2785014D0;
  v23[4] = self;
  v11 = replyCopy;
  v24 = v11;
  LODWORD(v10) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v10, v23);

  if (v10)
  {
    v12 = [BRCUserDefaults defaultsForMangledID:0];
    [v12 defaultTimeDeltaForEviction];
    v14 = v13;
    [v12 defaultOnDiskAccessTimeDefaultForEviction];
    v16 = v15;
    session = [(BRCXPCClient *)self session];
    diskReclaimer = [session diskReclaimer];
    v22 = 0;
    [diskReclaimer performOptimizeStorageWithTimeDelta:&v22 onDiskAccessTimeDelta:v14 error:v16];
    v19 = v22;

    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v28 = 2112;
      selfCopy = v19;
      v30 = 2112;
      v31 = v20;
      _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(v11 + 2))(v11, v19);
  }

  __brc_leave_section(v25);
}

void __54__BRCXPCRegularIPCsClient_evictOldDocumentsWithReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)iCloudDesktopSettingsChangedWithAttributes:(id)attributes reply:(id)reply
{
  v18 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  v9 = *MEMORY[0x277CCA050];
  if (v8)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
    v12 = 138412802;
    selfCopy = self;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v12, 0x20u);
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:v9 code:3328 userInfo:0];
  replyCopy[2](replyCopy, v11);
}

- (void)getContainersByID:(id)d
{
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  memset(v24, 0, sizeof(v24));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient getContainersByID:]", 1986, 0, v24);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v24[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v7;
    v27 = 2112;
    selfCopy = self;
    v29 = 2112;
    v30 = v9;
    v31 = 2080;
    v32 = "[BRCXPCRegularIPCsClient getContainersByID:]";
    v33 = 2112;
    v34 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __45__BRCXPCRegularIPCsClient_getContainersByID___block_invoke;
  v22[3] = &unk_2785014D0;
  v22[4] = self;
  v10 = dCopy;
  v23 = v10;
  v11 = _brc_ipc_check_applibrary_proxy(self, 1, v22);

  if (v11)
  {
    v12 = objc_opt_new();
    v13 = +[BRCDaemonContainerHelper sharedHelper];
    session = [(BRCXPCClient *)self session];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __45__BRCXPCRegularIPCsClient_getContainersByID___block_invoke_335;
    v19[3] = &unk_2784FF7D8;
    v15 = v13;
    v20 = v15;
    v16 = v12;
    v21 = v16;
    [session enumerateAppLibraries:v19];

    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      selfCopy2 = self;
      v27 = 2112;
      selfCopy = v16;
      v29 = 2112;
      v30 = 0;
      v31 = 2112;
      v32 = v17;
      _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    (*(v10 + 2))(v10, v16, 0);
  }

  __brc_leave_section(v24);
}

void __45__BRCXPCRegularIPCsClient_getContainersByID___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __45__BRCXPCRegularIPCsClient_getContainersByID___block_invoke_335(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 containerMetadata];
  if (v4)
  {
    [v4 setIsCloudSyncTCCDisabled:{objc_msgSend(*(a1 + 32), "cloudSyncTCCDisabledForContainerMeta:", v4)}];
    v5 = *(a1 + 40);
    v6 = [v3 appLibraryID];
    [v5 setObject:v4 forKeyedSubscript:v6];
  }

  else
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      __45__BRCXPCRegularIPCsClient_getContainersByID___block_invoke_335_cold_1();
    }
  }

  return 1;
}

- (void)getContainerForMangledID:(id)d personaID:(id)iD reply:(id)reply
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  replyCopy = reply;
  memset(v22, 0, sizeof(v22));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient getContainerForMangledID:personaID:reply:]", 2024, 0, v22);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v22[0];
    v14 = qos_class_self();
    v15 = BRCPrettyPrintEnumWithContext(v14, &brc_qos_entries, 0);
    *buf = 134219010;
    v24 = v13;
    v25 = 2112;
    selfCopy = self;
    v27 = 2112;
    v28 = v15;
    v29 = 2080;
    v30 = "[BRCXPCRegularIPCsClient getContainerForMangledID:personaID:reply:]";
    v31 = 2112;
    v32 = v11;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __68__BRCXPCRegularIPCsClient_getContainerForMangledID_personaID_reply___block_invoke;
  v20[3] = &unk_2785014D0;
  v20[4] = self;
  v16 = replyCopy;
  v21 = v16;
  v17 = _brc_ipc_check_logged_status(self, 0, v20);

  if (v17)
  {
    v19 = v16;
    v18 = dCopy;
    BRPerformWithPersonaAndError();
  }

  __brc_leave_section(v22);
}

void __68__BRCXPCRegularIPCsClient_getContainerForMangledID_personaID_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __68__BRCXPCRegularIPCsClient_getContainerForMangledID_personaID_reply___block_invoke_337(void *a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = a1[4];
      v21 = 138413058;
      v22 = v6;
      v23 = 2112;
      v24 = 0;
      v25 = 2112;
      v26 = v3;
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v21, 0x2Au);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v7 = +[BRCAccountsManager sharedManager];
    v8 = [v7 accountHandlerForCurrentPersona];

    v9 = [v8 session];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 appLibraryByMangledID:a1[5]];
      v12 = [v11 containerMetadataFilledWithTCCInfo];
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = a1[4];
        v21 = 138413058;
        v22 = v15;
        v23 = 2112;
        v24 = v12;
        v25 = 2112;
        v26 = 0;
        v27 = 2112;
        v28 = v13;
        _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v21, 0x2Au);
      }

      (*(a1[6] + 16))();
    }

    else
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = a1[4];
        v19 = [MEMORY[0x277CCA9B8] brc_errorLoggedOut];
        v21 = 138413058;
        v22 = v18;
        v23 = 2112;
        v24 = 0;
        v25 = 2112;
        v26 = v19;
        v27 = 2112;
        v28 = v16;
        _os_log_impl(&dword_223E7A000, v17, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v21, 0x2Au);
      }

      v20 = a1[6];
      v11 = [MEMORY[0x277CCA9B8] brc_errorLoggedOut];
      (*(v20 + 16))(v20, 0, v11);
    }
  }
}

- (void)didReceiveHandoffRequestForBundleID:(id)d reply:(id)reply
{
  v43 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  memset(v31, 0, sizeof(v31));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient didReceiveHandoffRequestForBundleID:reply:]", 2057, 0, v31);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v31[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v10;
    v35 = 2112;
    selfCopy = self;
    v37 = 2112;
    v38 = v12;
    v39 = 2080;
    v40 = "[BRCXPCRegularIPCsClient didReceiveHandoffRequestForBundleID:reply:]";
    v41 = 2112;
    v42 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __69__BRCXPCRegularIPCsClient_didReceiveHandoffRequestForBundleID_reply___block_invoke;
  v29[3] = &unk_2785014D0;
  v29[4] = self;
  v13 = replyCopy;
  v30 = v13;
  v14 = _brc_ipc_check_applibrary_proxy(self, 1, v29);

  if (v14)
  {
    v15 = +[BRCCloudDocsAppsMonitor cloudDocsAppsMonitor];
    v16 = [v15 containerIDsForApplicationIdentifier:dCopy];

    session = [(BRCXPCClient *)self session];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v25 objects:v32 count:16];
    if (v19)
    {
      v20 = *v26;
      do
      {
        v21 = 0;
        do
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = [session appLibraryByID:{*(*(&v25 + 1) + 8 * v21), v25}];
          [v22 didReceiveHandoffRequest];

          ++v21;
        }

        while (v19 != v21);
        v19 = [v18 countByEnumeratingWithState:&v25 objects:v32 count:16];
      }

      while (v19);
    }

    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v35 = 2112;
      selfCopy = 0;
      v37 = 2112;
      v38 = v23;
      _os_log_impl(&dword_223E7A000, v24, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(v13 + 2))(v13, 0);
  }

  __brc_leave_section(v31);
}

void __69__BRCXPCRegularIPCsClient_didReceiveHandoffRequestForBundleID_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)_loggedInUserPropertyValuesForKeys:(id)keys error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v30 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(keysCopy, "count")}];
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  br_accountForCurrentPersona = [defaultStore br_accountForCurrentPersona];
  if (br_accountForCurrentPersona)
  {
    errorCopy = error;
    v26 = defaultStore;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = keysCopy;
    v8 = keysCopy;
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      v12 = *MEMORY[0x277CFACB8];
      v29 = *MEMORY[0x277CFACC8];
      v28 = *MEMORY[0x277CFACC0];
      while (2)
      {
        v13 = 0;
        do
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v31 + 1) + 8 * v13);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v14 isEqualToString:v12])
            {
              br_firstName = [br_accountForCurrentPersona br_firstName];
            }

            else if ([v14 isEqualToString:v29])
            {
              br_firstName = [br_accountForCurrentPersona br_lastName];
            }

            else
            {
              if (![v14 isEqualToString:v28])
              {
                if (errorCopy)
                {
                  *errorCopy = [MEMORY[0x277CCA9B8] brc_errorUnknownKey:v14];
                }

                v18 = 0;
                goto LABEL_31;
              }

              br_firstName = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(br_accountForCurrentPersona, "br_isManagedAppleID")}];
            }

            v16 = br_firstName;
            if (br_firstName)
            {
              [v30 setObject:br_firstName forKeyedSubscript:v14];
            }
          }

          else
          {
            v16 = brc_bread_crumbs();
            v17 = brc_default_log();
            if (os_log_type_enabled(v17, 0x90u))
            {
              *buf = 138412546;
              v37 = v14;
              v38 = 2112;
              v39 = v16;
              _os_log_error_impl(&dword_223E7A000, v17, 0x90u, "[ERROR] key: %@ is not of class NSString%@", buf, 0x16u);
            }
          }

          ++v13;
        }

        while (v10 != v13);
        v10 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v18 = v30;
LABEL_31:
    defaultStore = v26;
    keysCopy = v27;
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:@"account"];
    if (v19)
    {
      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, 0x90u))
      {
        v24 = "(passed to caller)";
        *buf = 136315906;
        v37 = "[BRCXPCRegularIPCsClient _loggedInUserPropertyValuesForKeys:error:]";
        v38 = 2080;
        if (!error)
        {
          v24 = "(ignored by caller)";
        }

        v39 = v24;
        v40 = 2112;
        v41 = v19;
        v42 = 2112;
        v43 = v20;
        _os_log_error_impl(&dword_223E7A000, v21, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v22 = v19;
      *error = v19;
    }

    v18 = 0;
  }

  return v18;
}

- (void)getLoggedInUserPropertyValuesForKeys:(id)keys reply:(id)reply
{
  v35 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  replyCopy = reply;
  memset(v24, 0, sizeof(v24));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient getLoggedInUserPropertyValuesForKeys:reply:]", 2110, 0, v24);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v24[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v10;
    v27 = 2112;
    selfCopy = self;
    v29 = 2112;
    v30 = v12;
    v31 = 2080;
    v32 = "[BRCXPCRegularIPCsClient getLoggedInUserPropertyValuesForKeys:reply:]";
    v33 = 2112;
    v34 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  clientPriviledgesDescriptor = [(BRCXPCClient *)self clientPriviledgesDescriptor];
  isSharingPrivateInterfaceEntitled = [clientPriviledgesDescriptor isSharingPrivateInterfaceEntitled];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __70__BRCXPCRegularIPCsClient_getLoggedInUserPropertyValuesForKeys_reply___block_invoke;
  v22[3] = &unk_2785014D0;
  v22[4] = self;
  v15 = replyCopy;
  v23 = v15;
  v16 = _brc_ipc_check_client_privilege(self, 1, isSharingPrivateInterfaceEntitled, "isSharingPrivateInterfaceEntitled", v22);

  if (v16)
  {
    v21 = 0;
    v17 = [(BRCXPCRegularIPCsClient *)self _loggedInUserPropertyValuesForKeys:keysCopy error:&v21];
    v18 = v21;
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      selfCopy2 = self;
      v27 = 2112;
      selfCopy = v17;
      v29 = 2112;
      v30 = v18;
      v31 = 2112;
      v32 = v19;
      _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    (*(v15 + 2))(v15, v17, v18);
  }

  __brc_leave_section(v24);
}

void __70__BRCXPCRegularIPCsClient_getLoggedInUserPropertyValuesForKeys_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)setupInstanceWithDict:(id)dict reply:(id)reply
{
  v28 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  replyCopy = reply;
  memset(v17, 0, sizeof(v17));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient setupInstanceWithDict:reply:]", 2124, 0, v17);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v17[0];
    v12 = qos_class_self();
    v13 = BRCPrettyPrintEnumWithContext(v12, &brc_qos_entries, 0);
    *buf = 134219010;
    v19 = v11;
    v20 = 2112;
    selfCopy = self;
    v22 = 2112;
    v23 = v13;
    v24 = 2080;
    v25 = "[BRCXPCRegularIPCsClient setupInstanceWithDict:reply:]";
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__BRCXPCRegularIPCsClient_setupInstanceWithDict_reply___block_invoke;
  v15[3] = &unk_2785014D0;
  v15[4] = self;
  v14 = replyCopy;
  v16 = v14;
  _brc_ipc_spi(self, -1, a2, v15);

  __brc_leave_section(v17);
}

void __55__BRCXPCRegularIPCsClient_setupInstanceWithDict_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 1024;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v7, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)resetBudgets:(id)budgets reply:(id)reply
{
  v37 = *MEMORY[0x277D85DE8];
  budgetsCopy = budgets;
  replyCopy = reply;
  memset(v26, 0, sizeof(v26));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient resetBudgets:reply:]", 2132, 0, v26);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v26[0];
    v12 = qos_class_self();
    v13 = BRCPrettyPrintEnumWithContext(v12, &brc_qos_entries, 0);
    *buf = 134219010;
    v28 = v11;
    v29 = 2112;
    selfCopy = self;
    v31 = 2112;
    v32 = v13;
    v33 = 2080;
    v34 = "[BRCXPCRegularIPCsClient resetBudgets:reply:]";
    v35 = 2112;
    v36 = v9;
    _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __46__BRCXPCRegularIPCsClient_resetBudgets_reply___block_invoke;
  v24[3] = &unk_2785014D0;
  v24[4] = self;
  v14 = replyCopy;
  v25 = v14;
  v15 = _brc_ipc_spi(self, 1, a2, v24);

  if (v15)
  {
    session = [(BRCXPCClient *)self session];
    clientDB = [session clientDB];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __46__BRCXPCRegularIPCsClient_resetBudgets_reply___block_invoke_344;
    v19[3] = &unk_278506EF8;
    v18 = session;
    v20 = v18;
    v21 = budgetsCopy;
    selfCopy2 = self;
    v23 = v14;
    [clientDB performWithFlags:5 action:v19];
  }

  __brc_leave_section(v26);
}

void __46__BRCXPCRegularIPCsClient_resetBudgets_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __46__BRCXPCRegularIPCsClient_resetBudgets_reply___block_invoke_344(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  [a2 forceBatchStart];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__BRCXPCRegularIPCsClient_resetBudgets_reply___block_invoke_2;
  v14[3] = &unk_278505618;
  v3 = *(a1 + 32);
  v15 = *(a1 + 40);
  [v3 enumerateServerZones:v14];
  v4 = *(a1 + 40);
  if (!v4 || [v4 containsObject:@"global"])
  {
    v5 = [*(a1 + 32) containerScheduler];
    v6 = [v5 syncUpBudget];
    [v6 clear];

    v7 = [*(a1 + 32) throttleProvider];
    [v7 resetThrottles];
  }

  v8 = [*(a1 + 32) containerScheduler];
  v9 = [v8 syncScheduler];
  [v9 signal];

  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 48);
    *buf = 138412802;
    v17 = v12;
    v18 = 2112;
    v19 = 0;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
  }

  (*(*(a1 + 56) + 16))();
  return 1;
}

uint64_t __46__BRCXPCRegularIPCsClient_resetBudgets_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (!v5 || ([v3 zoneName], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "containsObject:", v6), v6, v7))
  {
    v8 = [v4 clientZone];
    [v8 resetSyncBudgetAndThrottle];
  }

  return 1;
}

- (void)performSelfCheck:(id)check reply:(id)reply
{
  v35 = *MEMORY[0x277D85DE8];
  checkCopy = check;
  replyCopy = reply;
  memset(v28, 0, sizeof(v28));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient performSelfCheck:reply:]", 2159, 0, v28);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v28[0];
    v12 = qos_class_self();
    v13 = BRCPrettyPrintEnumWithContext(v12, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v11;
    v31 = 2112;
    *v32 = self;
    *&v32[8] = 2112;
    *&v32[10] = v13;
    *&v32[18] = 2080;
    *&v32[20] = "[BRCXPCRegularIPCsClient performSelfCheck:reply:]";
    v33 = 2112;
    v34 = v9;
    _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __50__BRCXPCRegularIPCsClient_performSelfCheck_reply___block_invoke;
  v26[3] = &unk_2785014D0;
  v26[4] = self;
  v14 = replyCopy;
  v27 = v14;
  v15 = _brc_ipc_spi(self, 1, a2, v26);

  if (v15)
  {
    v16 = dup([checkCopy fileDescriptor]);
    v17 = fdopen(v16, "a");
    if (v17)
    {
      v18 = +[BRCDaemon daemon];
      v19 = [v18 selfCheck:v17];

      fclose(v17);
      if (v19)
      {
        br_errorFromErrno2 = 0;
      }

      else
      {
        br_errorFromErrno2 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1003 description:@"self check failed: broken invariant"];
      }

      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        selfCopy2 = self;
        v31 = 1024;
        *v32 = v19;
        *&v32[4] = 2112;
        *&v32[6] = br_errorFromErrno2;
        *&v32[14] = 2112;
        *&v32[16] = v24;
        _os_log_impl(&dword_223E7A000, v25, OS_LOG_TYPE_INFO, "[INFO] %@: reply(success=%d, %@)%@", buf, 0x26u);
      }

      (*(v14 + 2))(v14, v19, br_errorFromErrno2);
    }

    else
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
        *buf = 138413058;
        selfCopy2 = self;
        v31 = 1024;
        *v32 = 0;
        *&v32[4] = 2112;
        *&v32[6] = br_errorFromErrno;
        *&v32[14] = 2112;
        *&v32[16] = v21;
        _os_log_impl(&dword_223E7A000, v22, OS_LOG_TYPE_INFO, "[INFO] %@: reply(success=%d, %@)%@", buf, 0x26u);
      }

      br_errorFromErrno2 = [MEMORY[0x277CCA9B8] br_errorFromErrno];
      (*(v14 + 2))(v14, 0, br_errorFromErrno2);
    }
  }

  __brc_leave_section(v28);
}

void __50__BRCXPCRegularIPCsClient_performSelfCheck_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 1024;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v7, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)printStatus:(id)status containerID:(id)d reply:(id)reply
{
  v40 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  dCopy = d;
  replyCopy = reply;
  memset(v29, 0, sizeof(v29));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient printStatus:containerID:reply:]", 2177, 0, v29);
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = v29[0];
    v15 = qos_class_self();
    v16 = BRCPrettyPrintEnumWithContext(v15, &brc_qos_entries, 0);
    *buf = 134219010;
    v31 = v14;
    v32 = 2112;
    selfCopy = self;
    v34 = 2112;
    v35 = v16;
    v36 = 2080;
    v37 = "[BRCXPCRegularIPCsClient printStatus:containerID:reply:]";
    v38 = 2112;
    v39 = v12;
    _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __57__BRCXPCRegularIPCsClient_printStatus_containerID_reply___block_invoke;
  v27[3] = &unk_2785014D0;
  v27[4] = self;
  v17 = replyCopy;
  v28 = v17;
  v18 = _brc_ipc_spi(self, 1, a2, v27);

  if (v18)
  {
    tracker = self->super._tracker;
    v20 = dispatch_get_global_queue(0, 0);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __57__BRCXPCRegularIPCsClient_printStatus_containerID_reply___block_invoke_353;
    v23[3] = &unk_278500CE0;
    v23[4] = self;
    v24 = statusCopy;
    v25 = dCopy;
    v26 = v17;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __57__BRCXPCRegularIPCsClient_printStatus_containerID_reply___block_invoke_354;
    v21[3] = &unk_278500048;
    v21[4] = self;
    v22 = v26;
    brc_task_tracker_async_with_logs(tracker, v20, v23, v21);
  }

  __brc_leave_section(v29);
}

void __57__BRCXPCRegularIPCsClient_printStatus_containerID_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 1024;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v7, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
}

void __57__BRCXPCRegularIPCsClient_printStatus_containerID_reply___block_invoke_353(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) session];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(*(a1 + 32) + 8);
  v15 = 0;
  v7 = [v3 dumpStatusToFileHandle:v4 zoneName:v5 tracker:v6 error:&v15];
  v8 = v15;

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v12 = [v8 brc_wrappedError];
    *buf = 138413058;
    v17 = v11;
    v18 = 1024;
    v19 = v7;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_INFO, "[INFO] %@: reply(success=%d, %@)%@", buf, 0x26u);
  }

  v13 = *(a1 + 56);
  v14 = [v8 brc_wrappedError];
  (*(v13 + 16))(v13, v7, v14);

  objc_autoreleasePoolPop(v2);
}

void __57__BRCXPCRegularIPCsClient_printStatus_containerID_reply___block_invoke_354(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
    v8 = 138413058;
    v9 = v4;
    v10 = 1024;
    v11 = 0;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v8, 0x26u);
  }

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
  (*(v6 + 16))(v6, 0, v7);
}

- (void)printShareRequests:(id)requests personaID:(id)d isPending:(BOOL)pending asJSON:(BOOL)n reply:(id)reply
{
  v35 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  dCopy = d;
  replyCopy = reply;
  memset(v24, 0, sizeof(v24));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient printShareRequests:personaID:isPending:asJSON:reply:]", 2198, 0, v24);
  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = v24[0];
    v16 = qos_class_self();
    v17 = BRCPrettyPrintEnumWithContext(v16, &brc_qos_entries, 0);
    *buf = 134219010;
    v26 = v15;
    v27 = 2112;
    selfCopy = self;
    v29 = 2112;
    v30 = v17;
    v31 = 2080;
    v32 = "[BRCXPCRegularIPCsClient printShareRequests:personaID:isPending:asJSON:reply:]";
    v33 = 2112;
    v34 = v13;
    _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __79__BRCXPCRegularIPCsClient_printShareRequests_personaID_isPending_asJSON_reply___block_invoke;
  v22[3] = &unk_2785014D0;
  v22[4] = self;
  v18 = replyCopy;
  v23 = v18;
  v19 = _brc_ipc_check_logged_status(self, 1, v22);

  if (v19)
  {
    if (!dCopy)
    {
      dCopy = @"__defaultPersonaID__";
    }

    v21 = v18;
    v20 = requestsCopy;
    BRPerformWithPersonaAndError();
  }

  __brc_leave_section(v24);
}

void __79__BRCXPCRegularIPCsClient_printShareRequests_personaID_isPending_asJSON_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __79__BRCXPCRegularIPCsClient_printShareRequests_personaID_isPending_asJSON_reply___block_invoke_355(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      *buf = 138412802;
      v17 = v6;
      v18 = 2112;
      v19 = v3;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    v9 = dispatch_get_global_queue(0, 0);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __79__BRCXPCRegularIPCsClient_printShareRequests_personaID_isPending_asJSON_reply___block_invoke_356;
    v12[3] = &unk_278506F20;
    v12[4] = v7;
    v14 = *(a1 + 48);
    v13 = *(a1 + 40);
    v15 = *(a1 + 56);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __79__BRCXPCRegularIPCsClient_printShareRequests_personaID_isPending_asJSON_reply___block_invoke_357;
    v10[3] = &unk_278500048;
    v10[4] = *(a1 + 32);
    v11 = *(a1 + 48);
    brc_task_tracker_async_with_logs(v8, v9, v12, v10);
  }
}

void __79__BRCXPCRegularIPCsClient_printShareRequests_personaID_isPending_asJSON_reply___block_invoke_356(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = +[BRCAccountsManager sharedManager];
  v4 = [v3 accountHandlerForCurrentPersona];

  v5 = [v4 session];

  if (v5)
  {
    v6 = [v4 session];
    v7 = *(a1 + 40);
    v8 = *(a1 + 56);
    v9 = *(a1 + 57);
    v23 = 0;
    [v6 printShareRequests:v7 isPending:v8 asJSON:v9 error:&v23];
    v10 = v23;

    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      *buf = 138412802;
      v25 = v13;
      v26 = 2112;
      v27 = v10;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      v17 = MEMORY[0x277CCA9B8];
      v18 = [v4 loggedOutError];
      v19 = [v17 brc_errorLoggedOutWithUnderlyingError:v18];
      *buf = 138412802;
      v25 = v16;
      v26 = 2112;
      v27 = v19;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    v20 = *(a1 + 48);
    v21 = MEMORY[0x277CCA9B8];
    v10 = [v4 loggedOutError];
    v22 = [v21 brc_errorLoggedOutWithUnderlyingError:v10];
    (*(v20 + 16))(v20, v22);
  }

  objc_autoreleasePoolPop(v2);
}

void __79__BRCXPCRegularIPCsClient_printShareRequests_personaID_isPending_asJSON_reply___block_invoke_357(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
    v8 = 138412802;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v8, 0x20u);
  }

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
  (*(v6 + 16))(v6, v7);
}

- (void)getBGSystemTaskActivitiesDefaultConfig:(id)config
{
  v31 = *MEMORY[0x277D85DE8];
  configCopy = config;
  memset(v20, 0, sizeof(v20));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient getBGSystemTaskActivitiesDefaultConfig:]", 2230, 0, v20);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v20[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v7;
    v23 = 2112;
    selfCopy = self;
    v25 = 2112;
    v26 = v9;
    v27 = 2080;
    v28 = "[BRCXPCRegularIPCsClient getBGSystemTaskActivitiesDefaultConfig:]";
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v10 = *MEMORY[0x277CFAC58];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__BRCXPCRegularIPCsClient_getBGSystemTaskActivitiesDefaultConfig___block_invoke;
  v18[3] = &unk_2785014D0;
  v18[4] = self;
  v11 = configCopy;
  v19 = v11;
  LODWORD(v10) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v10, v18);

  if (v10)
  {
    v12 = [BRCUserDefaults defaultsForMangledID:0];
    session = [(BRCXPCClient *)self session];
    accountFacade = [session accountFacade];
    v15 = [v12 getBirdBGSTActivitiesConfigsWithAccountFacade:accountFacade];

    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      selfCopy2 = self;
      v23 = 2112;
      selfCopy = v15;
      v25 = 2112;
      v26 = 0;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&dword_223E7A000, v17, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    (*(v11 + 2))(v11, v15, 0);
  }

  __brc_leave_section(v20);
}

void __66__BRCXPCRegularIPCsClient_getBGSystemTaskActivitiesDefaultConfig___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)dumpFPFSMigrationStatusTo:(id)to personaID:(id)d includeNonMigratedItems:(BOOL)items reply:(id)reply
{
  v35 = *MEMORY[0x277D85DE8];
  toCopy = to;
  dCopy = d;
  replyCopy = reply;
  memset(v24, 0, sizeof(v24));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient dumpFPFSMigrationStatusTo:personaID:includeNonMigratedItems:reply:]", 2244, 0, v24);
  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = v24[0];
    v16 = qos_class_self();
    v17 = BRCPrettyPrintEnumWithContext(v16, &brc_qos_entries, 0);
    *buf = 134219010;
    v26 = v15;
    v27 = 2112;
    selfCopy = self;
    v29 = 2112;
    v30 = v17;
    v31 = 2080;
    v32 = "[BRCXPCRegularIPCsClient dumpFPFSMigrationStatusTo:personaID:includeNonMigratedItems:reply:]";
    v33 = 2112;
    v34 = v13;
    _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __93__BRCXPCRegularIPCsClient_dumpFPFSMigrationStatusTo_personaID_includeNonMigratedItems_reply___block_invoke;
  v22[3] = &unk_2785014D0;
  v22[4] = self;
  v18 = replyCopy;
  v23 = v18;
  v19 = _brc_ipc_spi(self, 0, a2, v22);

  if (v19)
  {
    if (!dCopy)
    {
      dCopy = @"__defaultPersonaID__";
    }

    v21 = v18;
    v20 = toCopy;
    BRPerformWithPersonaAndError();
  }

  __brc_leave_section(v24);
}

void __93__BRCXPCRegularIPCsClient_dumpFPFSMigrationStatusTo_personaID_includeNonMigratedItems_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 1024;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v7, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
}

void __93__BRCXPCRegularIPCsClient_dumpFPFSMigrationStatusTo_personaID_includeNonMigratedItems_reply___block_invoke_358(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      *buf = 138413058;
      v33 = v6;
      v34 = 1024;
      v35 = 0;
      v36 = 2112;
      v37 = v3;
      v38 = 2112;
      v39 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", buf, 0x26u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = +[BRCAccountsManager sharedManager];
    v8 = [v7 accountHandlerForCurrentPersona];

    v9 = [v8 session];

    if (v9)
    {
      v10 = *(*(a1 + 32) + 8);
      v11 = dispatch_get_global_queue(0, 0);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __93__BRCXPCRegularIPCsClient_dumpFPFSMigrationStatusTo_personaID_includeNonMigratedItems_reply___block_invoke_359;
      v26[3] = &unk_278503CE0;
      v27 = v8;
      v12 = *(a1 + 40);
      v13 = *(a1 + 32);
      v28 = v12;
      v29 = v13;
      v31 = *(a1 + 56);
      v30 = *(a1 + 48);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __93__BRCXPCRegularIPCsClient_dumpFPFSMigrationStatusTo_personaID_includeNonMigratedItems_reply___block_invoke_360;
      v24[3] = &unk_278500048;
      v24[4] = *(a1 + 32);
      v25 = *(a1 + 48);
      brc_task_tracker_async_with_logs(v10, v11, v26, v24);

      v14 = v27;
    }

    else
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 32);
        v18 = MEMORY[0x277CCA9B8];
        v19 = [v8 loggedOutError];
        v20 = [v18 brc_errorLoggedOutWithUnderlyingError:v19];
        *buf = 138413058;
        v33 = v17;
        v34 = 1024;
        v35 = 0;
        v36 = 2112;
        v37 = v20;
        v38 = 2112;
        v39 = v15;
        _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", buf, 0x26u);
      }

      v21 = *(a1 + 48);
      v22 = MEMORY[0x277CCA9B8];
      v14 = [v8 loggedOutError];
      v23 = [v22 brc_errorLoggedOutWithUnderlyingError:v14];
      (*(v21 + 16))(v21, 0, v23);
    }
  }
}

void __93__BRCXPCRegularIPCsClient_dumpFPFSMigrationStatusTo_personaID_includeNonMigratedItems_reply___block_invoke_359(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) session];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 48) + 8);
  v6 = *(a1 + 64);
  v15 = 0;
  v7 = [v3 dumpFPFSMigrationStatusToFileHandle:v4 tracker:v5 includeNonMigratedItems:v6 error:&v15];
  v8 = v15;

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 48);
    v12 = [v8 brc_wrappedError];
    *buf = 138413058;
    v17 = v11;
    v18 = 1024;
    v19 = v7;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_INFO, "[INFO] %@: reply(success=%d, %@)%@", buf, 0x26u);
  }

  v13 = *(a1 + 56);
  v14 = [v8 brc_wrappedError];
  (*(v13 + 16))(v13, v7, v14);

  objc_autoreleasePoolPop(v2);
}

void __93__BRCXPCRegularIPCsClient_dumpFPFSMigrationStatusTo_personaID_includeNonMigratedItems_reply___block_invoke_360(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
    v8 = 138413058;
    v9 = v4;
    v10 = 1024;
    v11 = 0;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v8, 0x26u);
  }

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
  (*(v6 + 16))(v6, 0, v7);
}

- (void)dumpDatabaseTo:(id)to containerID:(id)d personaID:(id)iD includeAllItems:(BOOL)items verbose:(BOOL)verbose reply:(id)reply
{
  v42 = *MEMORY[0x277D85DE8];
  toCopy = to;
  dCopy = d;
  iDCopy = iD;
  replyCopy = reply;
  memset(v31, 0, sizeof(v31));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient dumpDatabaseTo:containerID:personaID:includeAllItems:verbose:reply:]", 2282, 0, v31);
  v16 = brc_bread_crumbs();
  v17 = brc_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = dCopy;
    v19 = toCopy;
    v20 = v31[0];
    v21 = qos_class_self();
    v22 = BRCPrettyPrintEnumWithContext(v21, &brc_qos_entries, 0);
    *buf = 134219010;
    v33 = v20;
    v34 = 2112;
    selfCopy = self;
    v36 = 2112;
    v37 = v22;
    v38 = 2080;
    v39 = "[BRCXPCRegularIPCsClient dumpDatabaseTo:containerID:personaID:includeAllItems:verbose:reply:]";
    v40 = 2112;
    v41 = v16;
    _os_log_impl(&dword_223E7A000, v17, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);

    toCopy = v19;
    dCopy = v18;
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __94__BRCXPCRegularIPCsClient_dumpDatabaseTo_containerID_personaID_includeAllItems_verbose_reply___block_invoke;
  v29[3] = &unk_2785014D0;
  v29[4] = self;
  v23 = replyCopy;
  v30 = v23;
  v24 = _brc_ipc_spi(self, 0, a2, v29);

  if (v24)
  {
    if (!iDCopy)
    {
      iDCopy = @"__defaultPersonaID__";
    }

    v28 = v23;
    v26 = toCopy;
    v27 = dCopy;
    BRPerformWithPersonaAndError();
  }

  __brc_leave_section(v31);
}

void __94__BRCXPCRegularIPCsClient_dumpDatabaseTo_containerID_personaID_includeAllItems_verbose_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 1024;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v7, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
}

void __94__BRCXPCRegularIPCsClient_dumpDatabaseTo_containerID_personaID_includeAllItems_verbose_reply___block_invoke_361(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    v7 = +[BRCAccountsManager sharedManager];
    v8 = [v7 accountHandlerForCurrentPersona];

    v9 = [v8 session];

    if (!v9)
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *(a1 + 32);
        v22 = MEMORY[0x277CCA9B8];
        v23 = [v8 loggedOutError];
        v24 = [v22 brc_errorLoggedOutWithUnderlyingError:v23];
        *buf = 138413058;
        v48 = v21;
        v49 = 1024;
        *v50 = 0;
        *&v50[4] = 2112;
        *&v50[6] = v24;
        *&v50[14] = 2112;
        *&v50[16] = v19;
        _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", buf, 0x26u);
      }

      v25 = *(a1 + 56);
      v26 = MEMORY[0x277CCA9B8];
      v27 = [v8 loggedOutError];
      v28 = [v26 brc_errorLoggedOutWithUnderlyingError:v27];
      (*(v25 + 16))(v25, 0, v28);

      goto LABEL_17;
    }

    memset(v46, 0, sizeof(v46));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient dumpDatabaseTo:containerID:personaID:includeAllItems:verbose:reply:]_block_invoke", 2301, 0, v46);
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = v46[0];
      v13 = *(a1 + 32);
      v14 = qos_class_self();
      v15 = BRCPrettyPrintEnumWithContext(v14, &brc_qos_entries, 0);
      *buf = 134219010;
      v48 = v12;
      v49 = 2112;
      *v50 = v13;
      *&v50[8] = 2112;
      *&v50[10] = v15;
      *&v50[18] = 2080;
      *&v50[20] = "[BRCXPCRegularIPCsClient dumpDatabaseTo:containerID:personaID:includeAllItems:verbose:reply:]_block_invoke";
      v51 = 2112;
      v52 = v10;
      _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
    }

    v16 = *(a1 + 32);
    v17 = [v8 session];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __94__BRCXPCRegularIPCsClient_dumpDatabaseTo_containerID_personaID_includeAllItems_verbose_reply___block_invoke_362;
    v44[3] = &unk_2785014D0;
    v44[4] = *(a1 + 32);
    v45 = *(a1 + 56);
    if (v16)
    {
      v18 = _brc_ipc_check_logged_status(v16, 1, v44);

      if ((v18 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v29 = *(*(a1 + 32) + 8);
    v30 = dispatch_get_global_queue(0, 0);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __94__BRCXPCRegularIPCsClient_dumpDatabaseTo_containerID_personaID_includeAllItems_verbose_reply___block_invoke_363;
    v39[3] = &unk_278506F98;
    v40 = v8;
    v31 = *(a1 + 40);
    v32 = *(a1 + 48);
    v43 = *(a1 + 64);
    v36 = *(a1 + 32);
    v33 = *(a1 + 56);
    *&v34 = v36;
    *(&v34 + 1) = v33;
    *&v35 = v31;
    *(&v35 + 1) = v32;
    v41 = v35;
    v42 = v34;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __94__BRCXPCRegularIPCsClient_dumpDatabaseTo_containerID_personaID_includeAllItems_verbose_reply___block_invoke_364;
    v37[3] = &unk_278500048;
    v37[4] = *(a1 + 32);
    v38 = *(a1 + 56);
    brc_task_tracker_async_with_logs(v29, v30, v39, v37);

LABEL_16:
    __brc_leave_section(v46);
LABEL_17:

    goto LABEL_18;
  }

  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    *buf = 138413058;
    v48 = v6;
    v49 = 1024;
    *v50 = 0;
    *&v50[4] = 2112;
    *&v50[6] = v3;
    *&v50[14] = 2112;
    *&v50[16] = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", buf, 0x26u);
  }

  (*(*(a1 + 56) + 16))();
LABEL_18:
}

void __94__BRCXPCRegularIPCsClient_dumpDatabaseTo_containerID_personaID_includeAllItems_verbose_reply___block_invoke_362(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 1024;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v7, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
}

void __94__BRCXPCRegularIPCsClient_dumpDatabaseTo_containerID_personaID_includeAllItems_verbose_reply___block_invoke_363(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) session];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 72);
  v7 = *(a1 + 73);
  v8 = *(*(a1 + 56) + 8);
  v17 = 0;
  v9 = [v3 dumpDatabaseToFileHandle:v4 zoneName:v5 includeAllItems:v6 verbose:v7 tracker:v8 error:&v17];
  v10 = v17;

  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 56);
    v14 = [v10 brc_wrappedError];
    *buf = 138413058;
    v19 = v13;
    v20 = 1024;
    v21 = v9;
    v22 = 2112;
    v23 = v14;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] %@: reply(success=%d, %@)%@", buf, 0x26u);
  }

  v15 = *(a1 + 64);
  v16 = [v10 brc_wrappedError];
  (*(v15 + 16))(v15, v9, v16);

  objc_autoreleasePoolPop(v2);
}

void __94__BRCXPCRegularIPCsClient_dumpDatabaseTo_containerID_personaID_includeAllItems_verbose_reply___block_invoke_364(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
    v8 = 138413058;
    v9 = v4;
    v10 = 1024;
    v11 = 0;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v8, 0x26u);
  }

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
  (*(v6 + 16))(v6, 0, v7);
}

- (void)backupDatabaseWithURLWrapper:(id)wrapper reply:(id)reply
{
  v43 = *MEMORY[0x277D85DE8];
  wrapperCopy = wrapper;
  replyCopy = reply;
  memset(v32, 0, sizeof(v32));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient backupDatabaseWithURLWrapper:reply:]", 2319, 0, v32);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v32[0];
    v12 = qos_class_self();
    v13 = BRCPrettyPrintEnumWithContext(v12, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy3 = v11;
    v35 = 2112;
    selfCopy = self;
    v37 = 2112;
    v38 = v13;
    v39 = 2080;
    v40 = "[BRCXPCRegularIPCsClient backupDatabaseWithURLWrapper:reply:]";
    v41 = 2112;
    v42 = v9;
    _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __62__BRCXPCRegularIPCsClient_backupDatabaseWithURLWrapper_reply___block_invoke;
  v30[3] = &unk_2785014D0;
  v30[4] = self;
  v14 = replyCopy;
  v31 = v14;
  v15 = _brc_ipc_spi(self, 1, a2, v30);

  if (v15)
  {
    v16 = [wrapperCopy url];
    v17 = MEMORY[0x277CBEBC0];
    v18 = MEMORY[0x277CCACA8];
    session = [(BRCXPCClient *)self session];
    sessionDirPath = [session sessionDirPath];
    v21 = [v18 stringWithFormat:@"%@/db", sessionDirPath];
    v22 = [v17 fileURLWithPath:v21];

    v23 = v16;
    v24 = [BRCAccountSession sessionForBackingUpDatabasesAtURL:v22];
    v29 = 0;
    LOBYTE(v21) = [v24 backupDatabaseToURL:v23 includeServer:1 doNotObfuscate:1 error:&v29];
    v25 = v29;
    if (v21)
    {
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        selfCopy3 = self;
        v35 = 2112;
        selfCopy = v23;
        v37 = 2112;
        v38 = v25;
        v39 = 2112;
        v40 = v26;
        _os_log_impl(&dword_223E7A000, v27, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
      }

      v28 = v23;
    }

    else
    {
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        selfCopy3 = self;
        v35 = 2112;
        selfCopy = 0;
        v37 = 2112;
        v38 = v25;
        v39 = 2112;
        v40 = v26;
        _os_log_impl(&dword_223E7A000, v27, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
      }

      v28 = 0;
    }

    (*(v14 + 2))(v14, v28, v25);
  }

  __brc_leave_section(v32);
}

void __62__BRCXPCRegularIPCsClient_backupDatabaseWithURLWrapper_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)dumpCoordinationInfoTo:(id)to reply:(id)reply
{
  v36 = *MEMORY[0x277D85DE8];
  toCopy = to;
  replyCopy = reply;
  memset(v25, 0, sizeof(v25));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient dumpCoordinationInfoTo:reply:]", 2340, 0, v25);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v25[0];
    v12 = qos_class_self();
    v13 = BRCPrettyPrintEnumWithContext(v12, &brc_qos_entries, 0);
    *buf = 134219010;
    v27 = v11;
    v28 = 2112;
    selfCopy = self;
    v30 = 2112;
    v31 = v13;
    v32 = 2080;
    v33 = "[BRCXPCRegularIPCsClient dumpCoordinationInfoTo:reply:]";
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __56__BRCXPCRegularIPCsClient_dumpCoordinationInfoTo_reply___block_invoke;
  v23[3] = &unk_2785014D0;
  v23[4] = self;
  v14 = replyCopy;
  v24 = v14;
  v15 = _brc_ipc_spi(self, 1, a2, v23);

  if (v15)
  {
    tracker = self->super._tracker;
    v17 = dispatch_get_global_queue(0, 0);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __56__BRCXPCRegularIPCsClient_dumpCoordinationInfoTo_reply___block_invoke_369;
    v20[3] = &unk_2784FF5B8;
    v20[4] = self;
    v21 = toCopy;
    v22 = v14;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __56__BRCXPCRegularIPCsClient_dumpCoordinationInfoTo_reply___block_invoke_370;
    v18[3] = &unk_278500048;
    v18[4] = self;
    v19 = v22;
    brc_task_tracker_async_with_logs(tracker, v17, v20, v18);
  }

  __brc_leave_section(v25);
}

void __56__BRCXPCRegularIPCsClient_dumpCoordinationInfoTo_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 1024;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v7, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
}

void __56__BRCXPCRegularIPCsClient_dumpCoordinationInfoTo_reply___block_invoke_369(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) session];
  v4 = *(a1 + 40);
  v13 = 0;
  v5 = [v3 dumpFileCoordinationInfoToFileHandle:v4 error:&v13];
  v6 = v13;

  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v10 = [v6 brc_wrappedError];
    *buf = 138413058;
    v15 = v9;
    v16 = 1024;
    v17 = v5;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] %@: reply(success=%d, %@)%@", buf, 0x26u);
  }

  v11 = *(a1 + 48);
  v12 = [v6 brc_wrappedError];
  (*(v11 + 16))(v11, v5, v12);

  objc_autoreleasePoolPop(v2);
}

void __56__BRCXPCRegularIPCsClient_dumpCoordinationInfoTo_reply___block_invoke_370(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
    v8 = 138413058;
    v9 = v4;
    v10 = 1024;
    v11 = 0;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v8, 0x26u);
  }

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
  (*(v6 + 16))(v6, 0, v7);
}

- (void)simulateHealthIssueWithContainer:(id)container status:(id)status reply:(id)reply
{
  v92 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  statusCopy = status;
  replyCopy = reply;
  memset(v78, 0, sizeof(v78));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient simulateHealthIssueWithContainer:status:reply:]", 2356, 0, v78);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v78[0];
    v14 = qos_class_self();
    v15 = BRCPrettyPrintEnumWithContext(v14, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy6 = v13;
    v82 = 2112;
    selfCopy3 = self;
    v84 = 2112;
    v85 = v15;
    v86 = 2080;
    v87 = "[BRCXPCRegularIPCsClient simulateHealthIssueWithContainer:status:reply:]";
    v88 = 2112;
    v89 = v11;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __73__BRCXPCRegularIPCsClient_simulateHealthIssueWithContainer_status_reply___block_invoke;
  v76[3] = &unk_2785014D0;
  v76[4] = self;
  v16 = replyCopy;
  v77 = v16;
  v17 = _brc_ipc_spi(self, 1, a2, v76);

  if (v17)
  {
    memset(v75, 0, sizeof(v75));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient simulateHealthIssueWithContainer:status:reply:]", 2360, 0, v75);
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = v75[0];
      v21 = qos_class_self();
      v22 = BRCPrettyPrintEnumWithContext(v21, &brc_qos_entries, 0);
      *buf = 134219266;
      selfCopy6 = v20;
      v82 = 2112;
      selfCopy3 = self;
      v84 = 2112;
      v85 = v22;
      v86 = 2080;
      v87 = "[BRCXPCRegularIPCsClient simulateHealthIssueWithContainer:status:reply:]";
      v88 = 2112;
      v89 = containerCopy;
      v90 = 2112;
      v91 = v18;
      _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
    }

    if (containerCopy)
    {
      v23 = [objc_alloc(MEMORY[0x277CFAE60]) initWithAppLibraryName:containerCopy];
    }

    else
    {
      v23 = 0;
    }

    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __73__BRCXPCRegularIPCsClient_simulateHealthIssueWithContainer_status_reply___block_invoke_371;
    v73[3] = &unk_2785014D0;
    v73[4] = self;
    v25 = v16;
    v74 = v25;
    v26 = _brc_ipc_check_applibrary_write_access(self, 1, v23, v73);

    if (!v26)
    {
      lowercaseString = statusCopy;
LABEL_31:

      __brc_leave_section(v75);
      goto LABEL_32;
    }

    memset(v72, 0, sizeof(v72));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient simulateHealthIssueWithContainer:status:reply:]", 2361, 0, v72);
    v27 = brc_bread_crumbs();
    v28 = brc_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v66 = v16;
      v29 = v25;
      v30 = v23;
      v31 = v72[0];
      v32 = qos_class_self();
      v33 = BRCPrettyPrintEnumWithContext(v32, &brc_qos_entries, 0);
      *buf = 134219010;
      selfCopy6 = v31;
      v82 = 2112;
      selfCopy3 = self;
      v84 = 2112;
      v85 = v33;
      v86 = 2080;
      v87 = "[BRCXPCRegularIPCsClient simulateHealthIssueWithContainer:status:reply:]";
      v88 = 2112;
      v89 = v27;
      _os_log_impl(&dword_223E7A000, v28, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s simulating health issue%@", buf, 0x34u);

      v23 = v30;
      v25 = v29;
      v16 = v66;
    }

    v34 = brc_bread_crumbs();
    v35 = brc_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy6 = containerCopy;
      v82 = 2112;
      selfCopy3 = statusCopy;
      v84 = 2112;
      v85 = v34;
      _os_log_impl(&dword_223E7A000, v35, OS_LOG_TYPE_DEFAULT, "[NOTICE] simulating health issue on %@: %@%@", buf, 0x20u);
    }

    session = [(BRCXPCClient *)self session];
    v36 = [session appLibraryByID:containerCopy];
    defaultClientZone = [v36 defaultClientZone];

    if (defaultClientZone)
    {
      lowercaseString = [(BRCXPCRegularIPCsClient *)statusCopy lowercaseString];

      if ([(BRCXPCRegularIPCsClient *)lowercaseString isEqualToString:@"healthy"])
      {
        v37 = objc_alloc(MEMORY[0x277CBC5D0]);
        zoneName = [defaultClientZone zoneName];
        brc_zoneHealthZoneID = [MEMORY[0x277CBC5F8] brc_zoneHealthZoneID];
        v40 = [v37 initWithRecordName:zoneName zoneID:brc_zoneHealthZoneID];

        v41 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"zoneState" recordID:v40];
        [v41 setObject:&unk_2837B0508 forKeyedSubscript:@"state"];
        v42 = MEMORY[0x277CCABB0];
        date = [MEMORY[0x277CBEAA8] date];
        [date timeIntervalSince1970];
        v45 = [v42 numberWithUnsignedLongLong:v44];
        [v41 setObject:v45 forKeyedSubscript:@"updateTime"];

        [v41 setObject:&stru_2837504F0 forKeyedSubscript:@"clientInfo"];
        zoneHealthState = [defaultClientZone zoneHealthState];
        ckInfo = [zoneHealthState ckInfo];
        [ckInfo setCKInfoFieldsInRecord:v41 includeCZMEtag:0];

        v48 = objc_alloc(MEMORY[0x277CBC4A0]);
        v79 = v41;
        v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
        v50 = [v48 initWithRecordsToSave:v49 recordIDsToDelete:0];

        br_zoneHealthSimulation = [MEMORY[0x277CBC4F8] br_zoneHealthSimulation];
        [v50 setGroup:br_zoneHealthSimulation];

        v52 = objc_opt_new();
        [v50 setConfiguration:v52];

        configuration = [v50 configuration];
        [configuration setSourceApplicationBundleIdentifier:*MEMORY[0x277CFADD0]];

        v69[0] = MEMORY[0x277D85DD0];
        v69[1] = 3221225472;
        v69[2] = __73__BRCXPCRegularIPCsClient_simulateHealthIssueWithContainer_status_reply___block_invoke_387;
        v69[3] = &unk_2785067F8;
        v69[4] = self;
        v71 = v25;
        v54 = session;
        v70 = v54;
        [v50 setModifyRecordsCompletionBlock:v69];
        syncContextProvider = [v54 syncContextProvider];
        zoneHealthSyncContext = [syncContextProvider zoneHealthSyncContext];
        [zoneHealthSyncContext addOperation:v50];

        statusCopy = lowercaseString;
      }

      else
      {
        if ([(BRCXPCRegularIPCsClient *)lowercaseString isEqualToString:@"partial"])
        {
          [defaultClientZone reportProblemWithType:6 recordName:@"root"];
          v60 = brc_bread_crumbs();
          v61 = brc_default_log();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            selfCopy6 = self;
            v82 = 2112;
            selfCopy3 = 0;
            v84 = 2112;
            v85 = v60;
            _os_log_impl(&dword_223E7A000, v61, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
          }

          (*(v25 + 2))(v25, 0);
          goto LABEL_30;
        }

        v62 = brc_bread_crumbs();
        v63 = brc_default_log();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          v64 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"newStatus" value:lowercaseString];
          *buf = 138412802;
          selfCopy6 = self;
          v82 = 2112;
          selfCopy3 = v64;
          v84 = 2112;
          v85 = v62;
          _os_log_impl(&dword_223E7A000, v63, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
        }

        v40 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"newStatus" value:lowercaseString];
        (*(v25 + 2))(v25, v40);
        statusCopy = lowercaseString;
      }
    }

    else
    {
      v57 = brc_bread_crumbs();
      v58 = brc_default_log();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        v59 = [MEMORY[0x277CCA9B8] brc_errorAppLibraryNotFound:containerCopy];
        *buf = 138412802;
        selfCopy6 = self;
        v82 = 2112;
        selfCopy3 = v59;
        v84 = 2112;
        v85 = v57;
        _os_log_impl(&dword_223E7A000, v58, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
      }

      v40 = [MEMORY[0x277CCA9B8] brc_errorAppLibraryNotFound:containerCopy];
      (*(v25 + 2))(v25, v40);
    }

    lowercaseString = statusCopy;
LABEL_30:

    __brc_leave_section(v72);
    goto LABEL_31;
  }

  lowercaseString = statusCopy;
LABEL_32:
  __brc_leave_section(v78);
}

void __73__BRCXPCRegularIPCsClient_simulateHealthIssueWithContainer_status_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __73__BRCXPCRegularIPCsClient_simulateHealthIssueWithContainer_status_reply___block_invoke_371(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __73__BRCXPCRegularIPCsClient_simulateHealthIssueWithContainer_status_reply___block_invoke_387(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = [v5 brc_wrappedError];
    v13 = 138412802;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v13, 0x20u);
  }

  v10 = *(a1 + 48);
  v11 = [v5 brc_wrappedError];
  (*(v10 + 16))(v10, v11);

  v12 = [*(a1 + 40) containerScheduler];
  [v12 scheduleSyncDownForZoneHealthWithGroup:0];
}

- (void)healthStatusStringForContainer:(id)container reply:(id)reply
{
  v61 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  replyCopy = reply;
  memset(v48, 0, sizeof(v48));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient healthStatusStringForContainer:reply:]", 2410, 0, v48);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v48[0];
    v12 = qos_class_self();
    v13 = BRCPrettyPrintEnumWithContext(v12, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy5 = v11;
    v51 = 2112;
    selfCopy3 = self;
    v53 = 2112;
    v54 = v13;
    v55 = 2080;
    v56 = "[BRCXPCRegularIPCsClient healthStatusStringForContainer:reply:]";
    v57 = 2112;
    v58 = v9;
    _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __64__BRCXPCRegularIPCsClient_healthStatusStringForContainer_reply___block_invoke;
  v46[3] = &unk_2785014D0;
  v46[4] = self;
  v14 = replyCopy;
  v47 = v14;
  v15 = _brc_ipc_spi(self, 1, a2, v46);

  if (v15)
  {
    memset(v45, 0, sizeof(v45));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient healthStatusStringForContainer:reply:]", 2414, 0, v45);
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = v45[0];
      v19 = qos_class_self();
      v20 = BRCPrettyPrintEnumWithContext(v19, &brc_qos_entries, 0);
      *buf = 134219266;
      selfCopy5 = v18;
      v51 = 2112;
      selfCopy3 = self;
      v53 = 2112;
      v54 = v20;
      v55 = 2080;
      v56 = "[BRCXPCRegularIPCsClient healthStatusStringForContainer:reply:]";
      v57 = 2112;
      v58 = containerCopy;
      v59 = 2112;
      v60 = v16;
      _os_log_impl(&dword_223E7A000, v17, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
    }

    if (containerCopy)
    {
      v21 = [objc_alloc(MEMORY[0x277CFAE60]) initWithAppLibraryName:containerCopy];
    }

    else
    {
      v21 = 0;
    }

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __64__BRCXPCRegularIPCsClient_healthStatusStringForContainer_reply___block_invoke_398;
    v43[3] = &unk_2785014D0;
    v43[4] = self;
    v22 = v14;
    v44 = v22;
    v41 = v21;
    v23 = _brc_ipc_check_applibrary_read_access(self, 1, v21, v43);

    if (v23)
    {
      memset(v42, 0, sizeof(v42));
      __brc_create_section(1, "[BRCXPCRegularIPCsClient healthStatusStringForContainer:reply:]", 2416, 0, v42);
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = v42[0];
        v27 = qos_class_self();
        v28 = BRCPrettyPrintEnumWithContext(v27, &brc_qos_entries, 0);
        *buf = 134219266;
        selfCopy5 = v26;
        v51 = 2112;
        selfCopy3 = self;
        v53 = 2112;
        v54 = v28;
        v55 = 2080;
        v56 = "[BRCXPCRegularIPCsClient healthStatusStringForContainer:reply:]";
        v57 = 2112;
        v58 = containerCopy;
        v59 = 2112;
        v60 = v24;
        _os_log_impl(&dword_223E7A000, v25, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s getting health status on %@%@", buf, 0x3Eu);
      }

      session = [(BRCXPCClient *)self session];
      v30 = [session appLibraryByID:containerCopy];
      defaultClientZone = [v30 defaultClientZone];

      if (defaultClientZone)
      {
        v32 = brc_bread_crumbs();
        v33 = brc_default_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          zoneHealthState = [defaultClientZone zoneHealthState];
          v35 = zoneHealthStateDescriptionForCode([zoneHealthState state]);
          *buf = 138413058;
          selfCopy5 = self;
          v51 = 2112;
          selfCopy3 = v35;
          v53 = 2112;
          v54 = 0;
          v55 = 2112;
          v56 = v32;
          _os_log_impl(&dword_223E7A000, v33, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
        }

        zoneHealthState2 = [defaultClientZone zoneHealthState];
        v37 = zoneHealthStateDescriptionForCode([zoneHealthState2 state]);
        (*(v22 + 2))(v22, v37, 0);
      }

      else
      {
        v38 = brc_bread_crumbs();
        v39 = brc_default_log();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = [MEMORY[0x277CCA9B8] brc_errorAppLibraryNotFound:containerCopy];
          *buf = 138413058;
          selfCopy5 = self;
          v51 = 2112;
          selfCopy3 = 0;
          v53 = 2112;
          v54 = v40;
          v55 = 2112;
          v56 = v38;
          _os_log_impl(&dword_223E7A000, v39, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
        }

        zoneHealthState2 = [MEMORY[0x277CCA9B8] brc_errorAppLibraryNotFound:containerCopy];
        (*(v22 + 2))(v22, 0, zoneHealthState2);
      }

      __brc_leave_section(v42);
    }

    __brc_leave_section(v45);
  }

  __brc_leave_section(v48);
}

void __64__BRCXPCRegularIPCsClient_healthStatusStringForContainer_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __64__BRCXPCRegularIPCsClient_healthStatusStringForContainer_reply___block_invoke_398(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)zoneNameForContainer:(id)container reply:(id)reply
{
  v56 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  replyCopy = reply;
  memset(v43, 0, sizeof(v43));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient zoneNameForContainer:reply:]", 2431, 0, v43);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v43[0];
    v12 = qos_class_self();
    v13 = BRCPrettyPrintEnumWithContext(v12, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy5 = v11;
    v46 = 2112;
    selfCopy2 = self;
    v48 = 2112;
    v49 = v13;
    v50 = 2080;
    v51 = "[BRCXPCRegularIPCsClient zoneNameForContainer:reply:]";
    v52 = 2112;
    v53 = v9;
    _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __54__BRCXPCRegularIPCsClient_zoneNameForContainer_reply___block_invoke;
  v41[3] = &unk_2785014D0;
  v41[4] = self;
  v14 = replyCopy;
  v42 = v14;
  v15 = _brc_ipc_spi(self, 1, a2, v41);

  if (v15)
  {
    memset(v40, 0, sizeof(v40));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient zoneNameForContainer:reply:]", 2435, 0, v40);
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = v40[0];
      v19 = qos_class_self();
      v20 = BRCPrettyPrintEnumWithContext(v19, &brc_qos_entries, 0);
      *buf = 134219266;
      selfCopy5 = v18;
      v46 = 2112;
      selfCopy2 = self;
      v48 = 2112;
      v49 = v20;
      v50 = 2080;
      v51 = "[BRCXPCRegularIPCsClient zoneNameForContainer:reply:]";
      v52 = 2112;
      v53 = containerCopy;
      v54 = 2112;
      v55 = v16;
      _os_log_impl(&dword_223E7A000, v17, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
    }

    if (containerCopy)
    {
      v21 = [objc_alloc(MEMORY[0x277CFAE60]) initWithAppLibraryName:containerCopy];
    }

    else
    {
      v21 = 0;
    }

    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __54__BRCXPCRegularIPCsClient_zoneNameForContainer_reply___block_invoke_399;
    v37 = &unk_2785014D0;
    selfCopy3 = self;
    v22 = v14;
    v39 = v22;
    v23 = _brc_ipc_check_applibrary_read_access(self, 1, v21, &v34);

    if (v23)
    {
      v24 = [(BRCXPCClient *)self session:v34];
      v25 = [v24 appLibraryByID:containerCopy];
      defaultClientZone = [v25 defaultClientZone];

      if (defaultClientZone)
      {
        v27 = brc_bread_crumbs();
        v28 = brc_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          zoneName = [defaultClientZone zoneName];
          *buf = 138413058;
          selfCopy5 = self;
          v46 = 2112;
          selfCopy2 = zoneName;
          v48 = 2112;
          v49 = 0;
          v50 = 2112;
          v51 = v27;
          _os_log_impl(&dword_223E7A000, v28, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
        }

        zoneName2 = [defaultClientZone zoneName];
        (*(v22 + 2))(v22, zoneName2, 0);
      }

      else
      {
        v31 = brc_bread_crumbs();
        v32 = brc_default_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = [MEMORY[0x277CCA9B8] brc_errorAppLibraryNotFound:containerCopy];
          *buf = 138413058;
          selfCopy5 = self;
          v46 = 2112;
          selfCopy2 = 0;
          v48 = 2112;
          v49 = v33;
          v50 = 2112;
          v51 = v31;
          _os_log_impl(&dword_223E7A000, v32, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
        }

        zoneName2 = [MEMORY[0x277CCA9B8] brc_errorAppLibraryNotFound:containerCopy];
        (*(v22 + 2))(v22, 0, zoneName2);
      }
    }

    __brc_leave_section(v40);
  }

  __brc_leave_section(v43);
}

void __54__BRCXPCRegularIPCsClient_zoneNameForContainer_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __54__BRCXPCRegularIPCsClient_zoneNameForContainer_reply___block_invoke_399(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)forceSyncZoneHealthWithBarrierWithTimeout:(unint64_t)timeout reply:(id)reply
{
  v63 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v53, 0, sizeof(v53));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient forceSyncZoneHealthWithBarrierWithTimeout:reply:]", 2450, 0, v53);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v53[0];
    v10 = qos_class_self();
    v11 = BRCPrettyPrintEnumWithContext(v10, &brc_qos_entries, 0);
    *buf = 134219010;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = self;
    *&buf[22] = 2112;
    v61 = v11;
    *v62 = 2080;
    *&v62[2] = "[BRCXPCRegularIPCsClient forceSyncZoneHealthWithBarrierWithTimeout:reply:]";
    *&v62[10] = 2112;
    *&v62[12] = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __75__BRCXPCRegularIPCsClient_forceSyncZoneHealthWithBarrierWithTimeout_reply___block_invoke;
  v51[3] = &unk_2785014D0;
  v51[4] = self;
  v12 = replyCopy;
  v52 = v12;
  v13 = _brc_ipc_check_applibraries_access(self, 1, v51);

  if (v13)
  {
    memset(buf, 0, sizeof(buf));
    __brc_create_section(0, "[BRCXPCRegularIPCsClient forceSyncZoneHealthWithBarrierWithTimeout:reply:]", 2452, 0, buf);
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [BRCXPCRegularIPCsClient forceSyncZoneHealthWithBarrierWithTimeout:reply:];
    }

    v49 = *buf;
    v50 = *&buf[16];
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v16 = dispatch_group_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v61 = __Block_byref_object_copy__52;
    *v62 = __Block_byref_object_dispose__52;
    *&v62[8] = 0;
    dispatch_group_enter(v16);
    session = [(BRCXPCClient *)self session];
    containerScheduler = [session containerScheduler];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __75__BRCXPCRegularIPCsClient_forceSyncZoneHealthWithBarrierWithTimeout_reply___block_invoke_400;
    v40[3] = &unk_278506FE8;
    v43 = v49;
    v44 = v50;
    v42 = buf;
    v19 = v16;
    v41 = v19;
    [containerScheduler notifyAfterNextZoneHealthSyncDown:v40];

    session2 = [(BRCXPCClient *)self session];
    containerScheduler2 = [session2 containerScheduler];
    [containerScheduler2 scheduleSyncDownForZoneHealthWithGroup:0];

    queue = self->super._queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__BRCXPCRegularIPCsClient_forceSyncZoneHealthWithBarrierWithTimeout_reply___block_invoke_401;
    block[3] = &unk_278507010;
    v38 = v49;
    v39 = v50;
    block[4] = self;
    v36 = &v45;
    v37 = buf;
    v23 = v12;
    v35 = v23;
    dispatch_group_notify(v19, queue, block);
    if (timeout)
    {
      v24 = dispatch_time(0, 1000000000 * timeout);
      if (dispatch_group_wait(v19, v24))
      {
        v32 = v49;
        v33 = v50;
        v25 = brc_bread_crumbs();
        v26 = brc_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [BRCXPCRegularIPCsClient forceSyncZoneHealthWithBarrierWithTimeout:reply:];
        }

        selfCopy = self;
        objc_sync_enter(selfCopy);
        if ((v46[3] & 1) == 0)
        {
          *(v46 + 24) = 1;
          v28 = brc_bread_crumbs();
          v29 = brc_default_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:60 description:{@"zone-health sync timed-out", v32, v33}];
            *v54 = 138412802;
            v55 = selfCopy;
            v56 = 2112;
            v57 = v30;
            v58 = 2112;
            v59 = v28;
            _os_log_impl(&dword_223E7A000, v29, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", v54, 0x20u);
          }

          v31 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:60 description:@"zone-health sync timed-out"];
          (*(v23 + 2))(v23, v31);
        }

        objc_sync_exit(selfCopy);

        __brc_leave_section(&v32);
      }
    }

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v45, 8);
  }

  __brc_leave_section(v53);
}

void __75__BRCXPCRegularIPCsClient_forceSyncZoneHealthWithBarrierWithTimeout_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __75__BRCXPCRegularIPCsClient_forceSyncZoneHealthWithBarrierWithTimeout_reply___block_invoke_400(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = *(a1 + 48);
  v12 = *(a1 + 64);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __75__BRCXPCRegularIPCsClient_forceSyncZoneHealthWithBarrierWithTimeout_reply___block_invoke_400_cold_1();
  }

  if (v3)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __75__BRCXPCRegularIPCsClient_forceSyncZoneHealthWithBarrierWithTimeout_reply___block_invoke_400_cold_2();
    }

    v8 = [v3 brc_wrappedError];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  dispatch_group_leave(*(a1 + 32));
  __brc_leave_section(&v11);
}

void __75__BRCXPCRegularIPCsClient_forceSyncZoneHealthWithBarrierWithTimeout_reply___block_invoke_401(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 64);
  v12 = *(a1 + 80);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __75__BRCXPCRegularIPCsClient_forceSyncZoneHealthWithBarrierWithTimeout_reply___block_invoke_401_cold_1();
  }

  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = *(*(a1 + 48) + 8);
  if ((*(v5 + 24) & 1) == 0)
  {
    *(v5 + 24) = 1;
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412802;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), *(*(*(a1 + 56) + 8) + 40), v10);
  }

  objc_sync_exit(v4);

  __brc_leave_section(&v11);
}

- (void)forceSyncWithBarrierContainerID:(id)d timeout:(unint64_t)timeout reply:(id)reply
{
  v93 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  memset(v80, 0, sizeof(v80));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient forceSyncWithBarrierContainerID:timeout:reply:]", 2497, 0, v80);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v80[0];
    v12 = qos_class_self();
    v13 = BRCPrettyPrintEnumWithContext(v12, &brc_qos_entries, 0);
    *buf = 134219266;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = self;
    *&buf[22] = 2112;
    v89 = v13;
    *v90 = 2080;
    *&v90[2] = "[BRCXPCRegularIPCsClient forceSyncWithBarrierContainerID:timeout:reply:]";
    *&v90[10] = 2112;
    *&v90[12] = dCopy;
    v91 = 2112;
    v92 = v9;
    _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
  }

  if (dCopy)
  {
    defaultMangledID = [objc_alloc(MEMORY[0x277CFAE60]) initWithAppLibraryName:dCopy];
  }

  else
  {
    defaultMangledID = 0;
  }

  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __73__BRCXPCRegularIPCsClient_forceSyncWithBarrierContainerID_timeout_reply___block_invoke;
  v78[3] = &unk_2785014D0;
  v78[4] = self;
  v15 = replyCopy;
  v79 = v15;
  v16 = _brc_ipc_check_applibrary_read_access(self, 1, defaultMangledID, v78);

  if (v16)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v89 = __Block_byref_object_copy__52;
    *v90 = __Block_byref_object_dispose__52;
    *&v90[8] = 0;
    v76[0] = 0;
    v76[1] = v76;
    v76[2] = 0x3032000000;
    v76[3] = __Block_byref_object_copy__52;
    v76[4] = __Block_byref_object_dispose__52;
    v77 = 0;
    group = dispatch_group_create();
    v17 = *MEMORY[0x277CFAD58];
    v87[0] = *MEMORY[0x277CFADA8];
    v87[1] = v17;
    v18 = *MEMORY[0x277CFB070];
    v87[2] = *MEMORY[0x277CFADD0];
    v87[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:4];
    v20 = [v19 containsObject:dCopy];
    v21 = v20;
    v48 = v19;
    if (v20)
    {
      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [BRCXPCRegularIPCsClient forceSyncWithBarrierContainerID:timeout:reply:];
      }

      zoneName = dCopy;
      v25 = 0;
    }

    else
    {
      if (!defaultMangledID)
      {
        defaultMangledID = [(BRCXPCClient *)self defaultMangledID];
      }

      v25 = [(BRCXPCClient *)self _setupAppLibrary:defaultMangledID error:*&buf[8] + 40];
      if (!v25)
      {
        v45 = brc_bread_crumbs();
        v46 = brc_default_log();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          brc_wrappedError = [*(*&buf[8] + 40) brc_wrappedError];
          *v83 = 138412802;
          *&v83[4] = self;
          *&v83[12] = 2112;
          *&v83[14] = brc_wrappedError;
          *&v83[22] = 2112;
          v84 = v45;
          _os_log_impl(&dword_223E7A000, v46, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", v83, 0x20u);
        }

        brc_wrappedError2 = [*(*&buf[8] + 40) brc_wrappedError];
        (*(v15 + 2))(v15, brc_wrappedError2);
        v25 = 0;
        goto LABEL_29;
      }

      [(BRCXPCClient *)self addAppLibrary:v25];
      defaultClientZone = [v25 defaultClientZone];
      zoneName = [defaultClientZone zoneName];
    }

    memset(v81, 0, sizeof(v81));
    __brc_create_section(0, "[BRCXPCRegularIPCsClient forceSyncWithBarrierContainerID:timeout:reply:]", 2527, 0, v81);
    v27 = brc_bread_crumbs();
    v28 = brc_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *v83 = 134218754;
      *&v83[4] = *v81;
      *&v83[12] = 2112;
      *&v83[14] = dCopy;
      *&v83[22] = 2112;
      v84 = zoneName;
      v85 = 2112;
      v86 = v27;
      _os_log_debug_impl(&dword_223E7A000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx waiting for next sync down for %@ -> %@%@", v83, 0x2Au);
    }

    v74 = *v81;
    v75 = *&v81[16];
    if ((v21 & 1) == 0)
    {
      dispatch_group_enter(group);
      defaultClientZone2 = [v25 defaultClientZone];
      v30 = [(BRCXPCClient *)self description];
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __73__BRCXPCRegularIPCsClient_forceSyncWithBarrierContainerID_timeout_reply___block_invoke_405;
      v68[3] = &unk_278507038;
      v72 = v74;
      v73 = v75;
      v69 = zoneName;
      v71 = buf;
      v70 = group;
      [defaultClientZone2 notifyClient:v30 afterNextSyncDown:v68];
    }

    dispatch_group_enter(group);
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __73__BRCXPCRegularIPCsClient_forceSyncWithBarrierContainerID_timeout_reply___block_invoke_406;
    v62[3] = &unk_278507038;
    v66 = v74;
    v67 = v75;
    v31 = zoneName;
    v63 = v31;
    v65 = v76;
    v32 = group;
    v64 = v32;
    [(BRCXPCRegularIPCsClient *)self forceSyncContainerID:v31 reply:v62];
    *v83 = 0;
    *&v83[8] = v83;
    *&v83[16] = 0x2020000000;
    LOBYTE(v84) = 0;
    queue = self->super._queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__BRCXPCRegularIPCsClient_forceSyncWithBarrierContainerID_timeout_reply___block_invoke_407;
    block[3] = &unk_278507060;
    v60 = v74;
    v61 = v75;
    brc_wrappedError2 = v31;
    v54 = brc_wrappedError2;
    selfCopy = self;
    v57 = v83;
    v58 = buf;
    v59 = v76;
    v35 = v15;
    v56 = v35;
    dispatch_group_notify(v32, queue, block);
    if (timeout)
    {
      v36 = dispatch_time(0, 1000000000 * timeout);
      if (dispatch_group_wait(v32, v36))
      {
        v51 = v74;
        v52 = v75;
        v37 = brc_bread_crumbs();
        v38 = brc_default_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          *v81 = 134218498;
          *&v81[4] = v51;
          *&v81[12] = 2112;
          *&v81[14] = brc_wrappedError2;
          *&v81[22] = 2112;
          v82 = v37;
          _os_log_debug_impl(&dword_223E7A000, v38, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx timed-out: sync of %@%@", v81, 0x20u);
        }

        selfCopy2 = self;
        objc_sync_enter(selfCopy2);
        if ((*(*&v83[8] + 24) & 1) == 0)
        {
          *(*&v83[8] + 24) = 1;
          v40 = brc_bread_crumbs();
          v41 = brc_default_log();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = v40;
            v43 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:60 description:{@"sync-down timed out: %@", dCopy, v48}];
            *v81 = 138412802;
            *&v81[4] = selfCopy2;
            *&v81[12] = 2112;
            *&v81[14] = v43;
            *&v81[22] = 2112;
            v82 = v42;
            _os_log_impl(&dword_223E7A000, v41, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", v81, 0x20u);

            v40 = v42;
          }

          v44 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:60 description:{@"sync-down timed out: %@", dCopy}];
          (*(v35 + 2))(v35, v44);
        }

        objc_sync_exit(selfCopy2);

        __brc_leave_section(&v51);
      }
    }

    _Block_object_dispose(v83, 8);
LABEL_29:

    _Block_object_dispose(v76, 8);
    _Block_object_dispose(buf, 8);
  }

  __brc_leave_section(v80);
}

void __73__BRCXPCRegularIPCsClient_forceSyncWithBarrierContainerID_timeout_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __73__BRCXPCRegularIPCsClient_forceSyncWithBarrierContainerID_timeout_reply___block_invoke_405(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = *(a1 + 56);
  v13 = *(a1 + 72);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    *buf = 134218498;
    v15 = v12;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx finished sync down for %@%@", buf, 0x20u);
  }

  if (v3)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __73__BRCXPCRegularIPCsClient_forceSyncWithBarrierContainerID_timeout_reply___block_invoke_405_cold_1();
    }

    v8 = [v3 brc_wrappedError];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  dispatch_group_leave(*(a1 + 40));
  __brc_leave_section(&v12);
}

void __73__BRCXPCRegularIPCsClient_forceSyncWithBarrierContainerID_timeout_reply___block_invoke_406(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = *(a1 + 56);
  v13 = *(a1 + 72);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    *buf = 134218498;
    v15 = v12;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx finished scheduling sync for %@%@", buf, 0x20u);
  }

  if (v3)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __73__BRCXPCRegularIPCsClient_forceSyncWithBarrierContainerID_timeout_reply___block_invoke_406_cold_1();
    }

    v8 = [v3 brc_wrappedError];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  dispatch_group_leave(*(a1 + 40));
  __brc_leave_section(&v12);
}

void __73__BRCXPCRegularIPCsClient_forceSyncWithBarrierContainerID_timeout_reply___block_invoke_407(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 80);
  v13 = *(a1 + 96);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    *buf = 134218498;
    v15 = v12;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx finished all sync down tasks for %@%@", buf, 0x20u);
  }

  v4 = *(a1 + 40);
  objc_sync_enter(v4);
  v5 = *(*(a1 + 56) + 8);
  if ((*(v5 + 24) & 1) == 0)
  {
    *(v5 + 24) = 1;
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      v9 = *(*(*(a1 + 64) + 8) + 40);
      if (!v9)
      {
        v9 = *(*(*(a1 + 72) + 8) + 40);
      }

      *buf = 138412802;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    v10 = *(*(*(a1 + 64) + 8) + 40);
    if (!v10)
    {
      v10 = *(*(*(a1 + 72) + 8) + 40);
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v10);
  }

  objc_sync_exit(v4);

  __brc_leave_section(&v12);
}

- (void)forceSyncContainerID:(id)d reply:(id)reply
{
  v110 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  v92 = 0;
  v93 = &v92;
  v94 = 0x3032000000;
  v95 = __Block_byref_object_copy__52;
  v96 = __Block_byref_object_dispose__52;
  v97 = 0;
  memset(v91, 0, sizeof(v91));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient forceSyncContainerID:reply:]", 2582, 0, v91);
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v91[0];
    v9 = qos_class_self();
    v10 = BRCPrettyPrintEnumWithContext(v9, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy9 = v8;
    v102 = 2112;
    selfCopy3 = self;
    v104 = 2112;
    v105 = v10;
    v106 = 2080;
    v107 = "[BRCXPCRegularIPCsClient forceSyncContainerID:reply:]";
    v108 = 2112;
    v109 = v6;
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __54__BRCXPCRegularIPCsClient_forceSyncContainerID_reply___block_invoke;
  v90[3] = &unk_2785000C0;
  v90[4] = &v92;
  _brc_ipc_check_applibraries_access(self, 1, v90);
  v11 = v93[5];
  if (!v11)
  {
    goto LABEL_6;
  }

  if (([v11 br_isCloudDocsErrorCode:16] & 1) == 0)
  {
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  if (![(BRCXPCClient *)self _hasPrivateIPCEntitlementForSelector:a2 error:0])
  {
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
LABEL_52:
      v61 = v93[5];
      *buf = 138412802;
      selfCopy9 = self;
      v102 = 2112;
      selfCopy3 = v61;
      v104 = 2112;
      v105 = v23;
      _os_log_impl(&dword_223E7A000, v24, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

LABEL_53:

    replyCopy[2](replyCopy, v93[5]);
    goto LABEL_54;
  }

LABEL_6:
  memset(v89, 0, sizeof(v89));
  __brc_create_section(0, "[BRCXPCRegularIPCsClient forceSyncContainerID:reply:]", 2597, 0, v89);
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    selfCopy9 = v89[0];
    v102 = 2112;
    selfCopy3 = self;
    v104 = 2112;
    v105 = dCopy;
    v106 = 2112;
    v107 = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %@: force syncing containers matching '%@'%@", buf, 0x2Au);
  }

  if (dCopy)
  {
    lowercaseString = [*MEMORY[0x277CFADA8] lowercaseString];
    lowercaseString2 = [dCopy lowercaseString];
    v16 = [lowercaseString containsString:lowercaseString2];

    lowercaseString3 = [*MEMORY[0x277CFAD58] lowercaseString];
    lowercaseString4 = [dCopy lowercaseString];
    v67 = [lowercaseString3 containsString:lowercaseString4];

    lowercaseString5 = [*MEMORY[0x277CFADD0] lowercaseString];
    lowercaseString6 = [dCopy lowercaseString];
    v66 = [lowercaseString5 containsString:lowercaseString6];

    lowercaseString7 = [*MEMORY[0x277CFB070] lowercaseString];
    lowercaseString8 = [dCopy lowercaseString];
    v65 = [lowercaseString7 containsString:lowercaseString8];
  }

  else
  {
    v65 = 1;
    v66 = 1;
    v67 = 1;
    v16 = 1;
  }

  [(BRCXPCClient *)self session];
  v71 = v88 = 0;
  v25 = [v71 appLibrariesMatchingSearchString:dCopy error:&v88];
  v26 = v88;
  v64 = v25;
  if ((v25 != 0) | (v16 | v67 | v66 | v65) & 1)
  {
    v27 = objc_opt_new();
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v28 = v25;
    v29 = [v28 countByEnumeratingWithState:&v84 objects:v99 count:16];
    if (v29)
    {
      v30 = *v85;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v85 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v84 + 1) + 8 * i);
          [(BRCXPCClient *)self addAppLibrary:v32];
          defaultClientZone = [v32 defaultClientZone];
          [v27 addObject:defaultClientZone];
        }

        v29 = [v28 countByEnumeratingWithState:&v84 objects:v99 count:16];
      }

      while (v29);
    }

    v83 = v26;
    v63 = [v71 clientZonesMatchingSearchString:dCopy error:&v83];
    v62 = v83;

    [v27 addObjectsFromArray:v63];
    if (v16)
    {
      v34 = brc_bread_crumbs();
      v35 = brc_default_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy9 = self;
        v102 = 2112;
        selfCopy3 = v34;
        _os_log_impl(&dword_223E7A000, v35, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@: force syncing shared database%@", buf, 0x16u);
      }

      containerScheduler = [v71 containerScheduler];
      [containerScheduler scheduleSyncDownForSharedDatabaseImmediately:1];
    }

    v37 = dispatch_group_create();
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    obj = v27;
    v38 = [obj countByEnumeratingWithState:&v79 objects:v98 count:16];
    if (v38)
    {
      v39 = *v80;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v80 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v79 + 1) + 8 * j);
          v42 = brc_bread_crumbs();
          v43 = brc_default_log();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            mangledID = [v41 mangledID];
            *buf = 138412802;
            selfCopy9 = self;
            v102 = 2112;
            selfCopy3 = mangledID;
            v104 = 2112;
            v105 = v42;
            _os_log_impl(&dword_223E7A000, v43, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@: force syncing %@%@", buf, 0x20u);
          }

          dispatch_group_enter(v37);
          tracker = self->super._tracker;
          clientTruthWorkloop = [v71 clientTruthWorkloop];
          v77[0] = MEMORY[0x277D85DD0];
          v77[1] = 3221225472;
          v77[2] = __54__BRCXPCRegularIPCsClient_forceSyncContainerID_reply___block_invoke_411;
          v77[3] = &unk_2784FF478;
          v77[4] = v41;
          v78 = v37;
          v75[0] = MEMORY[0x277D85DD0];
          v75[1] = 3221225472;
          v75[2] = __54__BRCXPCRegularIPCsClient_forceSyncContainerID_reply___block_invoke_2;
          v75[3] = &unk_2784FF450;
          v76 = v78;
          brc_task_tracker_async_with_logs(tracker, clientTruthWorkloop, v77, v75);
        }

        v38 = [obj countByEnumeratingWithState:&v79 objects:v98 count:16];
      }

      while (v38);
    }

    if (v67)
    {
      v47 = brc_bread_crumbs();
      v48 = brc_default_log();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy9 = self;
        v102 = 2112;
        selfCopy3 = v47;
        _os_log_impl(&dword_223E7A000, v48, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@: force syncing container metadata%@", buf, 0x16u);
      }

      containerScheduler2 = [v71 containerScheduler];
      [containerScheduler2 scheduleSyncDownForContainerMetadataWithGroup:0];
    }

    if (v66)
    {
      v50 = brc_bread_crumbs();
      v51 = brc_default_log();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy9 = self;
        v102 = 2112;
        selfCopy3 = v50;
        _os_log_impl(&dword_223E7A000, v51, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@: forcing syncing zone health%@", buf, 0x16u);
      }

      containerScheduler3 = [v71 containerScheduler];
      [containerScheduler3 scheduleSyncDownForZoneHealthWithGroup:0];
    }

    if (v65)
    {
      v53 = brc_bread_crumbs();
      v54 = brc_default_log();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy9 = self;
        v102 = 2112;
        selfCopy3 = v53;
        _os_log_impl(&dword_223E7A000, v54, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@: forcing syncing side car zone%@", buf, 0x16u);
      }

      containerScheduler4 = [v71 containerScheduler];
      br_syncDownPushTriggered = [MEMORY[0x277CBC4F8] br_syncDownPushTriggered];
      [containerScheduler4 scheduleSyncDownForSideCarWithGroup:br_syncDownPushTriggered];
    }

    queue = self->super._queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__BRCXPCRegularIPCsClient_forceSyncContainerID_reply___block_invoke_412;
    block[3] = &unk_278500048;
    block[4] = self;
    v74 = replyCopy;
    dispatch_group_notify(v37, queue, block);

    v26 = v62;
    v58 = v64;
  }

  else
  {
    v59 = brc_bread_crumbs();
    v60 = brc_default_log();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy9 = self;
      v102 = 2112;
      selfCopy3 = v26;
      v104 = 2112;
      v105 = v59;
      _os_log_impl(&dword_223E7A000, v60, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (replyCopy)[2](replyCopy, v26);
    v58 = v64;
  }

  __brc_leave_section(v89);
LABEL_54:
  __brc_leave_section(v91);
  _Block_object_dispose(&v92, 8);
}

void __54__BRCXPCRegularIPCsClient_forceSyncContainerID_reply___block_invoke_411(uint64_t a1)
{
  [*(a1 + 32) resetSyncBudgetAndThrottle];
  [*(a1 + 32) clearStateBits:0x200000];
  [*(a1 + 32) scheduleSyncDown];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

uint64_t __54__BRCXPCRegularIPCsClient_forceSyncContainerID_reply___block_invoke_412(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v6 = 138412802;
    v7 = v4;
    v8 = 2112;
    v9 = 0;
    v10 = 2112;
    v11 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v6, 0x20u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)iWorkForceSyncContainerID:(id)d ownedByMe:(BOOL)me reply:(id)reply
{
  meCopy = me;
  v48 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  memset(v39, 0, sizeof(v39));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient iWorkForceSyncContainerID:ownedByMe:reply:]", 2667, 0, v39);
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v39[0];
    v13 = qos_class_self();
    v14 = BRCPrettyPrintEnumWithContext(v13, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy4 = v12;
    v42 = 2112;
    selfCopy2 = self;
    v44 = 2112;
    v45 = v14;
    v46 = 2080;
    *v47 = "[BRCXPCRegularIPCsClient iWorkForceSyncContainerID:ownedByMe:reply:]";
    *&v47[8] = 2112;
    *&v47[10] = v10;
    _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  clientPriviledgesDescriptor = [(BRCXPCClient *)self clientPriviledgesDescriptor];
  isSharingPrivateInterfaceEntitled = [clientPriviledgesDescriptor isSharingPrivateInterfaceEntitled];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __69__BRCXPCRegularIPCsClient_iWorkForceSyncContainerID_ownedByMe_reply___block_invoke;
  v37[3] = &unk_2785014D0;
  v37[4] = self;
  v17 = replyCopy;
  v38 = v17;
  v18 = _brc_ipc_check_client_privilege(self, 1, isSharingPrivateInterfaceEntitled, "isSharingPrivateInterfaceEntitled", v37);

  if (v18)
  {
    memset(v36, 0, sizeof(v36));
    __brc_create_section(0, "[BRCXPCRegularIPCsClient iWorkForceSyncContainerID:ownedByMe:reply:]", 2669, 0, v36);
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134219010;
      selfCopy4 = v36[0];
      v42 = 2112;
      selfCopy2 = self;
      v44 = 2112;
      v45 = dCopy;
      v46 = 1024;
      *v47 = meCopy;
      *&v47[4] = 2112;
      *&v47[6] = v19;
      _os_log_debug_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %@: iWork force syncing containers matching '%@' ownedByMe:%d%@", buf, 0x30u);
    }

    session = [(BRCXPCClient *)self session];
    v22 = session;
    if (meCopy)
    {
      v23 = [session appLibraryByID:dCopy];
      tracker = self->super._tracker;
      clientTruthWorkloop = [v22 clientTruthWorkloop];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __69__BRCXPCRegularIPCsClient_iWorkForceSyncContainerID_ownedByMe_reply___block_invoke_413;
      v34[3] = &unk_2784FF450;
      v26 = v23;
      v35 = v26;
      brc_task_tracker_async_with_logs(tracker, clientTruthWorkloop, v34, 0);

      v27 = brc_bread_crumbs();
      v28 = brc_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        if (dCopy)
        {
          v29 = 0;
        }

        else
        {
          v29 = [MEMORY[0x277CCA9B8] brc_errorAppLibraryNotFound:0];
        }

        *buf = 138412802;
        selfCopy4 = self;
        v42 = 2112;
        selfCopy2 = v29;
        v44 = 2112;
        v45 = v27;
        _os_log_impl(&dword_223E7A000, v28, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
        if (!dCopy)
        {
        }
      }

      if (dCopy)
      {
        v33 = 0;
      }

      else
      {
        v33 = [MEMORY[0x277CCA9B8] brc_errorAppLibraryNotFound:0];
      }

      (*(v17 + 2))(v17, v33);
      if (!dCopy)
      {
      }
    }

    else
    {
      containerScheduler = [session containerScheduler];
      [containerScheduler scheduleSyncDownForSharedDatabaseImmediately:1];

      v31 = brc_bread_crumbs();
      v32 = brc_default_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        selfCopy4 = self;
        v42 = 2112;
        selfCopy2 = 0;
        v44 = 2112;
        v45 = v31;
        _os_log_impl(&dword_223E7A000, v32, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
      }

      (*(v17 + 2))(v17, 0);
    }

    __brc_leave_section(v36);
  }

  __brc_leave_section(v39);
}

void __69__BRCXPCRegularIPCsClient_iWorkForceSyncContainerID_ownedByMe_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __69__BRCXPCRegularIPCsClient_iWorkForceSyncContainerID_ownedByMe_reply___block_invoke_413(uint64_t a1)
{
  v1 = [*(a1 + 32) defaultClientZone];
  [v1 scheduleSyncDown];
}

- (void)createContainerWithID:(id)d ownerName:(id)name reply:(id)reply
{
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  replyCopy = reply;
  memset(v27, 0, sizeof(v27));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient createContainerWithID:ownerName:reply:]", 2689, 0, v27);
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = v27[0];
    v15 = qos_class_self();
    v16 = BRCPrettyPrintEnumWithContext(v15, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v14;
    v30 = 2112;
    selfCopy = self;
    v32 = 2112;
    v33 = v16;
    v34 = 2080;
    v35 = "[BRCXPCRegularIPCsClient createContainerWithID:ownerName:reply:]";
    v36 = 2112;
    v37 = v12;
    _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __65__BRCXPCRegularIPCsClient_createContainerWithID_ownerName_reply___block_invoke;
  v25[3] = &unk_2785014D0;
  v25[4] = self;
  v17 = replyCopy;
  v26 = v17;
  v18 = _brc_ipc_spi(self, 1, a2, v25);

  if (v18)
  {
    session = [(BRCXPCClient *)self session];
    v20 = [objc_alloc(MEMORY[0x277CFAE60]) initWithZoneName:dCopy ownerName:nameCopy];
    if ([v20 isShared])
    {
      v21 = [session getOrCreateSharedZones:v20];
    }

    else
    {
      v22 = [session getOrCreateAppLibraryAndPrivateZonesIfNecessary:v20];
    }

    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v30 = 2112;
      selfCopy = 0;
      v32 = 2112;
      v33 = v23;
      _os_log_impl(&dword_223E7A000, v24, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(v17 + 2))(v17, 0);
  }

  __brc_leave_section(v27);
}

void __65__BRCXPCRegularIPCsClient_createContainerWithID_ownerName_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)computePurgeableSpaceForAllUrgenciesWithReply:(id)reply
{
  v34 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v23, 0, sizeof(v23));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient computePurgeableSpaceForAllUrgenciesWithReply:]", 2708, 0, v23);
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v23[0];
    v9 = qos_class_self();
    v10 = BRCPrettyPrintEnumWithContext(v9, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v8;
    v26 = 2112;
    selfCopy = self;
    v28 = 2112;
    v29 = v10;
    v30 = 2080;
    v31 = "[BRCXPCRegularIPCsClient computePurgeableSpaceForAllUrgenciesWithReply:]";
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __73__BRCXPCRegularIPCsClient_computePurgeableSpaceForAllUrgenciesWithReply___block_invoke;
  v21[3] = &unk_2785014D0;
  v21[4] = self;
  v11 = replyCopy;
  v22 = v11;
  v12 = _brc_ipc_spi(self, 1, a2, v21);

  if (v12)
  {
    session = [(BRCXPCClient *)self session];
    diskReclaimer = [session diskReclaimer];

    if (diskReclaimer)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __73__BRCXPCRegularIPCsClient_computePurgeableSpaceForAllUrgenciesWithReply___block_invoke_414;
      v19[3] = &unk_278507088;
      v19[4] = self;
      v20 = v11;
      [diskReclaimer computePurgeableSpaceForAllUrgenciesWithReply:v19];
    }

    else
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        brc_errorLoggedOut = [MEMORY[0x277CCA9B8] brc_errorLoggedOut];
        *buf = 138413314;
        selfCopy2 = self;
        v26 = 2112;
        selfCopy = 0;
        v28 = 2112;
        v29 = 0;
        v30 = 2112;
        v31 = brc_errorLoggedOut;
        v32 = 2112;
        v33 = v15;
        _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", buf, 0x34u);
      }

      brc_errorLoggedOut2 = [MEMORY[0x277CCA9B8] brc_errorLoggedOut];
      (*(v11 + 2))(v11, 0, 0, brc_errorLoggedOut2);
    }
  }

  __brc_leave_section(v23);
}

void __73__BRCXPCRegularIPCsClient_computePurgeableSpaceForAllUrgenciesWithReply___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413314;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = 0;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", &v7, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
}

void __73__BRCXPCRegularIPCsClient_computePurgeableSpaceForAllUrgenciesWithReply___block_invoke_414(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 32);
    v13 = 138413314;
    v14 = v12;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", &v13, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)purgeAmount:(int64_t)amount withUrgency:(int)urgency reply:(id)reply
{
  v5 = *&urgency;
  v35 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v24, 0, sizeof(v24));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient purgeAmount:withUrgency:reply:]", 2726, 0, v24);
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v24[0];
    v13 = qos_class_self();
    v14 = BRCPrettyPrintEnumWithContext(v13, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v12;
    v27 = 2112;
    selfCopy = self;
    v29 = 2112;
    v30 = v14;
    v31 = 2080;
    v32 = "[BRCXPCRegularIPCsClient purgeAmount:withUrgency:reply:]";
    v33 = 2112;
    v34 = v10;
    _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __57__BRCXPCRegularIPCsClient_purgeAmount_withUrgency_reply___block_invoke;
  v22[3] = &unk_2785014D0;
  v22[4] = self;
  v15 = replyCopy;
  v23 = v15;
  v16 = _brc_ipc_spi(self, 1, a2, v22);

  if (v16)
  {
    session = [(BRCXPCClient *)self session];
    diskReclaimer = [session diskReclaimer];

    v19 = [diskReclaimer purgeSpace:amount withUrgency:v5];
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v27 = 2048;
      selfCopy = v19;
      v29 = 2112;
      v30 = v20;
      _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%lld)%@", buf, 0x20u);
    }

    (*(v15 + 2))(v15, v19);
  }

  __brc_leave_section(v24);
}

uint64_t __57__BRCXPCRegularIPCsClient_purgeAmount_withUrgency_reply___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v6 = 138412802;
    v7 = v4;
    v8 = 1024;
    v9 = 0;
    v10 = 2112;
    v11 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d)%@", &v6, 0x1Cu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)reclaimAmount:(int64_t)amount withUrgency:(int)urgency reply:(id)reply
{
  v33 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v22, 0, sizeof(v22));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient reclaimAmount:withUrgency:reply:]", 2736, 0, v22);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v22[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v10;
    v25 = 2112;
    selfCopy = self;
    v27 = 2112;
    v28 = v12;
    v29 = 2080;
    v30 = "[BRCXPCRegularIPCsClient reclaimAmount:withUrgency:reply:]";
    v31 = 2112;
    v32 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __59__BRCXPCRegularIPCsClient_reclaimAmount_withUrgency_reply___block_invoke;
  v20[3] = &unk_2785014D0;
  v20[4] = self;
  v13 = replyCopy;
  v21 = v13;
  v14 = _brc_ipc_spi(self, 1, a2, v20);

  if (v14)
  {
    session = [(BRCXPCClient *)self session];
    diskReclaimer = [session diskReclaimer];

    periodicReclaimSpace = [diskReclaimer periodicReclaimSpace];
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v25 = 2048;
      selfCopy = periodicReclaimSpace;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%lld)%@", buf, 0x20u);
    }

    (*(v13 + 2))(v13, periodicReclaimSpace);
  }

  __brc_leave_section(v22);
}

uint64_t __59__BRCXPCRegularIPCsClient_reclaimAmount_withUrgency_reply___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v6 = 138412802;
    v7 = v4;
    v8 = 1024;
    v9 = 0;
    v10 = 2112;
    v11 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d)%@", &v6, 0x1Cu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)launchSyncConsistencyChecksWithContainerIDs:(id)ds reply:(id)reply
{
  v52 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  replyCopy = reply;
  memset(v40, 0, sizeof(v40));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient launchSyncConsistencyChecksWithContainerIDs:reply:]", 2759, 0, v40);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v40[0];
    v10 = qos_class_self();
    v11 = BRCPrettyPrintEnumWithContext(v10, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v9;
    v44 = 2112;
    selfCopy = self;
    v46 = 2112;
    v47 = v11;
    v48 = 2080;
    v49 = "[BRCXPCRegularIPCsClient launchSyncConsistencyChecksWithContainerIDs:reply:]";
    v50 = 2112;
    v51 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v12 = *MEMORY[0x277CFAC58];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __77__BRCXPCRegularIPCsClient_launchSyncConsistencyChecksWithContainerIDs_reply___block_invoke;
  v38[3] = &unk_2785014D0;
  v38[4] = self;
  v13 = replyCopy;
  v39 = v13;
  LODWORD(v12) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v12, v38);

  if (v12)
  {
    session = [(BRCXPCClient *)self session];
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v15 = dsCopy;
    v16 = [v15 countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v16)
    {
      v17 = *v35;
      while (2)
      {
        v18 = 0;
        do
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v34 + 1) + 8 * v18);
          v20 = [objc_alloc(MEMORY[0x277CFAE60]) initWithAppLibraryName:v19];
          v21 = v20;
          if (!v20)
          {
            v26 = brc_bread_crumbs();
            v27 = brc_default_log();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v28 = [MEMORY[0x277CCA9B8] brc_errorAppLibraryNotFound:v19];
              *buf = 138413314;
              selfCopy2 = self;
              v44 = 2112;
              selfCopy = 0;
              v46 = 2112;
              v47 = 0;
              v48 = 2112;
              v49 = v28;
              v50 = 2112;
              v51 = v26;
              _os_log_impl(&dword_223E7A000, v27, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", buf, 0x34u);
            }

            v29 = [MEMORY[0x277CCA9B8] brc_errorAppLibraryNotFound:v19];
            (*(v13 + 2))(v13, 0, 0, v29);

            goto LABEL_16;
          }

          mangledIDString = [v20 mangledIDString];
          [v14 addObject:mangledIDString];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v15 countByEnumeratingWithState:&v34 objects:v41 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    applyScheduler = [session applyScheduler];
    hasActiveWorkGroup = [applyScheduler hasActiveWorkGroup];
    v25 = dispatch_time(0, 10000000000);
    dispatch_group_wait(hasActiveWorkGroup, v25);

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __77__BRCXPCRegularIPCsClient_launchSyncConsistencyChecksWithContainerIDs_reply___block_invoke_418;
    v32[3] = &unk_2785070B0;
    v32[4] = self;
    v33 = v13;
    [BRCSyncConsistencyReport generateReportWithSession:session mangledIDs:v14 completion:v32];

LABEL_16:
  }

  __brc_leave_section(v40);
}

void __77__BRCXPCRegularIPCsClient_launchSyncConsistencyChecksWithContainerIDs_reply___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413314;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = 0;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", &v7, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
}

void __77__BRCXPCRegularIPCsClient_launchSyncConsistencyChecksWithContainerIDs_reply___block_invoke_418(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v5 = [v3 telemetryErrorEvents];
  v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = [v3 telemetryWarningEvents];
  v9 = [v7 initWithCapacity:{objc_msgSend(v8, "count")}];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = [v3 telemetryErrorEvents];
  v11 = [v10 countByEnumeratingWithState:&v32 objects:v47 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      v14 = 0;
      do
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v32 + 1) + 8 * v14) data];
        [v6 addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v32 objects:v47 count:16];
    }

    while (v12);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = [v3 telemetryWarningEvents];
  v17 = [v16 countByEnumeratingWithState:&v28 objects:v46 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v29;
    do
    {
      v20 = 0;
      do
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v28 + 1) + 8 * v20) data];
        [v9 addObject:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v28 objects:v46 count:16];
    }

    while (v18);
  }

  v22 = brc_bread_crumbs();
  v23 = brc_default_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = *(a1 + 32);
    v25 = [v3 lastError];
    *buf = 138413314;
    v37 = v24;
    v38 = 2112;
    v39 = v6;
    v40 = 2112;
    v41 = v9;
    v42 = 2112;
    v43 = v25;
    v44 = 2112;
    v45 = v22;
    _os_log_impl(&dword_223E7A000, v23, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", buf, 0x34u);
  }

  v26 = *(a1 + 40);
  v27 = [v3 lastError];
  (*(v26 + 16))(v26, v6, v9, v27);
}

- (void)pauseSyncConsistencyWithReply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v18, 0, sizeof(v18));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient pauseSyncConsistencyWithReply:]", 2795, 0, v18);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v18[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v7;
    v21 = 2112;
    selfCopy = self;
    v23 = 2112;
    v24 = v9;
    v25 = 2080;
    v26 = "[BRCXPCRegularIPCsClient pauseSyncConsistencyWithReply:]";
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v10 = *MEMORY[0x277CFAC58];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__BRCXPCRegularIPCsClient_pauseSyncConsistencyWithReply___block_invoke;
  v16[3] = &unk_2785014D0;
  v16[4] = self;
  v11 = replyCopy;
  v17 = v11;
  LODWORD(v10) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v10, v16);

  if (v10)
  {
    v12 = BRDiskCheckerServiceConnection();
    remoteObjectProxy = [v12 remoteObjectProxy];
    [remoteObjectProxy pauseTreeConsistencyCheck];

    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v21 = 2112;
      selfCopy = 0;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(v11 + 2))(v11, 0);
  }

  __brc_leave_section(v18);
}

void __57__BRCXPCRegularIPCsClient_pauseSyncConsistencyWithReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)resumeSyncConsistencyWithReply:(id)reply
{
  v32 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v21, 0, sizeof(v21));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient resumeSyncConsistencyWithReply:]", 2807, 0, v21);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v21[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    v23 = v7;
    v24 = 2112;
    selfCopy = self;
    v26 = 2112;
    v27 = v9;
    v28 = 2080;
    v29 = "[BRCXPCRegularIPCsClient resumeSyncConsistencyWithReply:]";
    v30 = 2112;
    v31 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v10 = *MEMORY[0x277CFAC58];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __58__BRCXPCRegularIPCsClient_resumeSyncConsistencyWithReply___block_invoke;
  v19[3] = &unk_2785014D0;
  v19[4] = self;
  v11 = replyCopy;
  v20 = v11;
  LODWORD(v10) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v10, v19);

  if (v10)
  {
    v12 = BRDiskCheckerServiceConnection();
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __58__BRCXPCRegularIPCsClient_resumeSyncConsistencyWithReply___block_invoke_420;
    v17[3] = &unk_2785014D0;
    v17[4] = self;
    v13 = v11;
    v18 = v13;
    v14 = [v12 remoteObjectProxyWithErrorHandler:v17];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__BRCXPCRegularIPCsClient_resumeSyncConsistencyWithReply___block_invoke_421;
    v15[3] = &unk_2785014D0;
    v15[4] = self;
    v16 = v13;
    [v14 resumeTreeConsistencyCheckWithReply:v15];
  }

  __brc_leave_section(v21);
}

void __58__BRCXPCRegularIPCsClient_resumeSyncConsistencyWithReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __58__BRCXPCRegularIPCsClient_resumeSyncConsistencyWithReply___block_invoke_420(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __58__BRCXPCRegularIPCsClient_resumeSyncConsistencyWithReply___block_invoke_421(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)cancelTreeConsistencyCheckWithReply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v18, 0, sizeof(v18));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient cancelTreeConsistencyCheckWithReply:]", 2821, 0, v18);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v18[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v7;
    v21 = 2112;
    selfCopy = self;
    v23 = 2112;
    v24 = v9;
    v25 = 2080;
    v26 = "[BRCXPCRegularIPCsClient cancelTreeConsistencyCheckWithReply:]";
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v10 = *MEMORY[0x277CFAC58];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__BRCXPCRegularIPCsClient_cancelTreeConsistencyCheckWithReply___block_invoke;
  v16[3] = &unk_2785014D0;
  v16[4] = self;
  v11 = replyCopy;
  v17 = v11;
  LODWORD(v10) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v10, v16);

  if (v10)
  {
    v12 = BRDiskCheckerServiceConnection();
    remoteObjectProxy = [v12 remoteObjectProxy];
    [remoteObjectProxy cancelTreeConsistencyCheck];

    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v21 = 2112;
      selfCopy = 0;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(v11 + 2))(v11, 0);
  }

  __brc_leave_section(v18);
}

void __63__BRCXPCRegularIPCsClient_cancelTreeConsistencyCheckWithReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)waitForAccountToLoadWithReply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = +[BRCAccountsManager sharedManager];
  accountsLoadingBarrier = [v5 accountsLoadingBarrier];
  [accountsLoadingBarrier waitForBarrier];

  memset(v18, 0, sizeof(v18));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient waitForAccountToLoadWithReply:]", 2898, 0, v18);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v18[0];
    v10 = qos_class_self();
    v11 = BRCPrettyPrintEnumWithContext(v10, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v9;
    v21 = 2112;
    selfCopy = self;
    v23 = 2112;
    v24 = v11;
    v25 = 2080;
    v26 = "[BRCXPCRegularIPCsClient waitForAccountToLoadWithReply:]";
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__BRCXPCRegularIPCsClient_waitForAccountToLoadWithReply___block_invoke;
  v16[3] = &unk_2785014D0;
  v16[4] = self;
  v12 = replyCopy;
  v17 = v12;
  v13 = _brc_ipc_check_logged_status(self, 1, v16);

  if (v13)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v21 = 2112;
      selfCopy = 0;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(v12 + 2))(v12, 0);
  }

  __brc_leave_section(v18);
}

void __57__BRCXPCRegularIPCsClient_waitForAccountToLoadWithReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)validateCloudDocsSupported:(BOOL)supported withReply:(id)reply
{
  supportedCopy = supported;
  v37 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v26, 0, sizeof(v26));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient validateCloudDocsSupported:withReply:]", 2905, 0, v26);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v26[0];
    v10 = qos_class_self();
    v11 = BRCPrettyPrintEnumWithContext(v10, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v9;
    v29 = 2112;
    selfCopy = self;
    v31 = 2112;
    v32 = v11;
    v33 = 2080;
    v34 = "[BRCXPCRegularIPCsClient validateCloudDocsSupported:withReply:]";
    v35 = 2112;
    v36 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v25 = 0;
  v12 = [BRCSystemSupportAnalyzer isCloudDocsSupportedWithError:&v25];
  v13 = v25;
  v14 = v13;
  if (!v12 && supportedCopy && [(BRCXPCRegularIPCsClient *)v13 br_isCloudDocsErrorCode:121])
  {
    userInfo = [(BRCXPCRegularIPCsClient *)v14 userInfo];
    v16 = [userInfo objectForKeyedSubscript:@"unsupportedReason"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v23 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        [BRCXPCRegularIPCsClient validateCloudDocsSupported:withReply:];
      }
    }

    userInfo2 = [(BRCXPCRegularIPCsClient *)v14 userInfo];
    v19 = [userInfo2 objectForKeyedSubscript:@"unsupportedReason"];

    v20 = +[BRCUserNotification defaultInstance];
    [v20 showErrorVolumeNotSupportedWithReason:{objc_msgSend(v19, "intValue")}];
  }

  v21 = brc_bread_crumbs();
  v22 = brc_default_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    selfCopy2 = self;
    v29 = 2112;
    selfCopy = v14;
    v31 = 2112;
    v32 = v21;
    _os_log_impl(&dword_223E7A000, v22, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
  }

  replyCopy[2](replyCopy, v14);
  __brc_leave_section(v26);
}

- (void)createAccountWithACAccountID:(id)d dsid:(id)dsid reply:(id)reply
{
  v43 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dsidCopy = dsid;
  replyCopy = reply;
  memset(v32, 0, sizeof(v32));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient createAccountWithACAccountID:dsid:reply:]", 2944, 0, v32);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v32[0];
    v14 = qos_class_self();
    v15 = BRCPrettyPrintEnumWithContext(v14, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v13;
    v35 = 2112;
    selfCopy = self;
    v37 = 2112;
    v38 = v15;
    v39 = 2080;
    v40 = "[BRCXPCRegularIPCsClient createAccountWithACAccountID:dsid:reply:]";
    v41 = 2112;
    v42 = v11;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __67__BRCXPCRegularIPCsClient_createAccountWithACAccountID_dsid_reply___block_invoke;
  v30[3] = &unk_2785014D0;
  v30[4] = self;
  v16 = replyCopy;
  v31 = v16;
  v17 = _brc_ipc_check_account_access(self, -1, v30);

  if (v17)
  {
    v18 = +[BRCAccountsManager sharedManager];
    if ([v18 waitForInitialAccountLoadingSynchronouslyIfPossible])
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [BRCXPCRegularIPCsClient createAccountWithACAccountID:dsid:reply:];
      }

      if (BRGetMigrationStatusForDSID() > 1)
      {
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __67__BRCXPCRegularIPCsClient_createAccountWithACAccountID_dsid_reply___block_invoke_429;
        v28[3] = &unk_2785070D8;
        v28[4] = self;
        v29 = v16;
        [v18 createSessionWithACAccountID:dCopy dsid:dsidCopy completionHandler:v28];
      }

      else
      {
        v21 = brc_bread_crumbs();
        v22 = brc_default_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          [BRCXPCRegularIPCsClient createAccountWithACAccountID:dsid:reply:];
        }

        v23 = brc_bread_crumbs();
        v24 = brc_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"accountID" value:dsidCopy];
          *buf = 138412802;
          selfCopy2 = self;
          v35 = 2112;
          selfCopy = v25;
          v37 = 2112;
          v38 = v23;
          _os_log_impl(&dword_223E7A000, v24, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
        }

        v26 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"accountID" value:dsidCopy];
        (*(v16 + 2))(v16, v26);
      }
    }

    else
    {
      brc_errorBuddyFlowNeedsToRun = [MEMORY[0x277CCA9B8] brc_errorBuddyFlowNeedsToRun];
      (*(v16 + 2))(v16, brc_errorBuddyFlowNeedsToRun);
    }
  }

  __brc_leave_section(v32);
}

void __67__BRCXPCRegularIPCsClient_createAccountWithACAccountID_dsid_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __67__BRCXPCRegularIPCsClient_createAccountWithACAccountID_dsid_reply___block_invoke_429(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, 0x90u))
    {
      __67__BRCXPCRegularIPCsClient_createAccountWithACAccountID_dsid_reply___block_invoke_429_cold_1();
    }
  }

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    v11 = 138412802;
    v12 = v10;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v11, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_unregisterPrematurely
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (*(&selfCopy->super + 32))
  {
    v4 = 0;
  }

  else
  {
    v4 = selfCopy->super.__session;
  }

  session = selfCopy->super.__session;
  selfCopy->super.__session = 0;

  objc_sync_exit(selfCopy);
  [(BRCAccountSession *)v4 unregisterClient:selfCopy];
}

- (void)logoutAccountWithACAccountID:(id)d reply:(id)reply
{
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  memset(v27, 0, sizeof(v27));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient logoutAccountWithACAccountID:reply:]", 2995, 0, v27);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v27[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v10;
    v30 = 2112;
    selfCopy = self;
    v32 = 2112;
    v33 = v12;
    v34 = 2080;
    v35 = "[BRCXPCRegularIPCsClient logoutAccountWithACAccountID:reply:]";
    v36 = 2112;
    v37 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __62__BRCXPCRegularIPCsClient_logoutAccountWithACAccountID_reply___block_invoke;
  v25[3] = &unk_2785014D0;
  v25[4] = self;
  v13 = replyCopy;
  v26 = v13;
  v14 = _brc_ipc_check_account_access(self, 3, v25);

  if (v14)
  {
    [(BRCXPCRegularIPCsClient *)self _unregisterPrematurely];
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy2 = dCopy;
      v30 = 2112;
      selfCopy = v15;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEFAULT, "[NOTICE] Requested to logout of account %@%@", buf, 0x16u);
    }

    v17 = +[BRCAccountsManager sharedManager];
    v18 = [v17 destroySessionWithACAccountID:dCopy];

    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [BRCXPCRegularIPCsClient logoutAccountWithACAccountID:reply:];
    }

    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      if (v18)
      {
        v23 = 0;
      }

      else
      {
        v23 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:15 description:@"Failed to destroy account"];
      }

      *buf = 138412802;
      selfCopy2 = self;
      v30 = 2112;
      selfCopy = v23;
      v32 = 2112;
      v33 = v21;
      _os_log_impl(&dword_223E7A000, v22, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
      if ((v18 & 1) == 0)
      {
      }
    }

    if (v18)
    {
      v24 = 0;
    }

    else
    {
      v24 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:15 description:@"Failed to destroy account"];
    }

    (*(v13 + 2))(v13, v24);
    if ((v18 & 1) == 0)
    {
    }
  }

  __brc_leave_section(v27);
}

void __62__BRCXPCRegularIPCsClient_logoutAccountWithACAccountID_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)updateAccountDisplayName:(id)name reply:(id)reply
{
  v33 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  replyCopy = reply;
  memset(v22, 0, sizeof(v22));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient updateAccountDisplayName:reply:]", 3017, 0, v22);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v22[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    v24 = v10;
    v25 = 2112;
    selfCopy = self;
    v27 = 2112;
    v28 = v12;
    v29 = 2080;
    v30 = "[BRCXPCRegularIPCsClient updateAccountDisplayName:reply:]";
    v31 = 2112;
    v32 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __58__BRCXPCRegularIPCsClient_updateAccountDisplayName_reply___block_invoke;
  v20[3] = &unk_2785014D0;
  v20[4] = self;
  v13 = replyCopy;
  v21 = v13;
  v14 = _brc_ipc_check_account_access(self, 1, v20);

  if (v14)
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = nameCopy;
      v25 = 2112;
      selfCopy = v15;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEFAULT, "[NOTICE] Requested to update display name of account %@%@", buf, 0x16u);
    }

    v17 = +[BRCAccountsManager sharedManager];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __58__BRCXPCRegularIPCsClient_updateAccountDisplayName_reply___block_invoke_440;
    v18[3] = &unk_2785014D0;
    v18[4] = self;
    v19 = v13;
    [v17 updateAccountDisplayName:nameCopy completionHandler:v18];
  }

  __brc_leave_section(v22);
}

void __58__BRCXPCRegularIPCsClient_updateAccountDisplayName_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __58__BRCXPCRegularIPCsClient_updateAccountDisplayName_reply___block_invoke_440(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      __58__BRCXPCRegularIPCsClient_updateAccountDisplayName_reply___block_invoke_440_cold_1();
    }
  }

  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = 138412802;
    v10 = v8;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v9, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)userVerifiedTermsWithReply:(id)reply
{
  v33 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v22, 0, sizeof(v22));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient userVerifiedTermsWithReply:]", 3032, 0, v22);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v22[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v7;
    v25 = 2112;
    selfCopy = self;
    v27 = 2112;
    v28 = v9;
    v29 = 2080;
    v30 = "[BRCXPCRegularIPCsClient userVerifiedTermsWithReply:]";
    v31 = 2112;
    v32 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __54__BRCXPCRegularIPCsClient_userVerifiedTermsWithReply___block_invoke;
  v20[3] = &unk_2785014D0;
  v20[4] = self;
  v10 = replyCopy;
  v21 = v10;
  v11 = _brc_ipc_check_account_access(self, 1, v20);

  if (v11)
  {
    session = [(BRCXPCClient *)self session];
    fsUploader = [session fsUploader];
    [fsUploader userVerifiedTerms];

    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC6300] code:-1000 userInfo:0];
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [BRCXPCRegularIPCsClient userVerifiedTermsWithReply:];
    }

    br_sharedProviderManager = [MEMORY[0x277CC64A8] br_sharedProviderManager];
    [br_sharedProviderManager signalErrorResolved:v14 completionHandler:&__block_literal_global_444];

    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v25 = 2112;
      selfCopy = 0;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(v10 + 2))(v10, 0);
  }

  __brc_leave_section(v22);
}

void __54__BRCXPCRegularIPCsClient_userVerifiedTermsWithReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __54__BRCXPCRegularIPCsClient_userVerifiedTermsWithReply___block_invoke_442(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __54__BRCXPCRegularIPCsClient_userVerifiedTermsWithReply___block_invoke_442_cold_1();
  }
}

- (void)accountDidChangeWithCellularEnabled:(BOOL)enabled isUnlimitedUpdatesEnabled:(BOOL)updatesEnabled reply:(id)reply
{
  updatesEnabledCopy = updatesEnabled;
  enabledCopy = enabled;
  v55 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v43, 0, sizeof(v43));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient accountDidChangeWithCellularEnabled:isUnlimitedUpdatesEnabled:reply:]", 3051, 0, v43);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v43[0];
    v12 = qos_class_self();
    v13 = BRCPrettyPrintEnumWithContext(v12, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v11;
    v47 = 2112;
    selfCopy = self;
    v49 = 2112;
    v50 = v13;
    v51 = 2080;
    v52 = "[BRCXPCRegularIPCsClient accountDidChangeWithCellularEnabled:isUnlimitedUpdatesEnabled:reply:]";
    v53 = 2112;
    v54 = v9;
    _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __95__BRCXPCRegularIPCsClient_accountDidChangeWithCellularEnabled_isUnlimitedUpdatesEnabled_reply___block_invoke;
  v41[3] = &unk_2785014D0;
  v41[4] = self;
  v14 = replyCopy;
  v42 = v14;
  v15 = _brc_ipc_check_account_access(self, 1, v41);

  if (v15)
  {
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    [defaultStore invalidateAccountForPersonaCache];

    mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
    br_currentPersonaID = [mEMORY[0x277D77BF8] br_currentPersonaID];

    v19 = +[BRCContainerCellularSettings containerCellularSettings];
    [v19 accountDidChangeForPersona:br_currentPersonaID];

    if (enabledCopy)
    {
      session = [(BRCXPCClient *)self session];
      fsUploader = [session fsUploader];
      [fsUploader rescheduleJobsPendingCellular];

      br_sharedProviderManager = [MEMORY[0x277CC64A8] br_sharedProviderManager];
      brc_errorNetworkUnreachableDueToCellularOverICDDisabled = [MEMORY[0x277CCA9B8] brc_errorNetworkUnreachableDueToCellularOverICDDisabled];
      br_fileProviderError = [brc_errorNetworkUnreachableDueToCellularOverICDDisabled br_fileProviderError];
      [br_sharedProviderManager signalErrorResolved:br_fileProviderError completionHandler:&__block_literal_global_448];

      mEMORY[0x277CFAEA0] = [MEMORY[0x277CFAEA0] sharedReachabilityMonitor];
      LODWORD(brc_errorNetworkUnreachableDueToCellularOverICDDisabled) = [mEMORY[0x277CFAEA0] isCellularNetwork];

      if (brc_errorNetworkUnreachableDueToCellularOverICDDisabled)
      {
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        session2 = [(BRCXPCClient *)self session];
        syncContextProvider = [session2 syncContextProvider];
        allSyncContexts = [syncContextProvider allSyncContexts];

        v29 = [allSyncContexts countByEnumeratingWithState:&v37 objects:v44 count:16];
        if (v29)
        {
          v30 = *v38;
          do
          {
            v31 = 0;
            do
            {
              if (*v38 != v30)
              {
                objc_enumerationMutation(allSyncContexts);
              }

              [*(*(&v37 + 1) + 8 * v31++) cancelWiFiOnlyOperationsIfNeeded];
            }

            while (v29 != v31);
            v29 = [allSyncContexts countByEnumeratingWithState:&v37 objects:v44 count:16];
          }

          while (v29);
        }
      }

      if (updatesEnabledCopy)
      {
        v32 = brc_bread_crumbs();
        v33 = brc_default_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          [BRCXPCRegularIPCsClient accountDidChangeWithCellularEnabled:isUnlimitedUpdatesEnabled:reply:];
        }

        v34 = +[BRCUploadConstraintChecker defaultChecker];
        [v34 rescheduleUploadsAndSendNotificationIfNeeded];
      }
    }

    v35 = brc_bread_crumbs();
    v36 = brc_default_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v47 = 2112;
      selfCopy = 0;
      v49 = 2112;
      v50 = v35;
      _os_log_impl(&dword_223E7A000, v36, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(v14 + 2))(v14, 0);
  }

  __brc_leave_section(v43);
}

void __95__BRCXPCRegularIPCsClient_accountDidChangeWithCellularEnabled_isUnlimitedUpdatesEnabled_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __95__BRCXPCRegularIPCsClient_accountDidChangeWithCellularEnabled_isUnlimitedUpdatesEnabled_reply___block_invoke_446(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __95__BRCXPCRegularIPCsClient_accountDidChangeWithCellularEnabled_isUnlimitedUpdatesEnabled_reply___block_invoke_446_cold_1();
  }
}

- (void)invalidateAccountCacheWithReply:(id)reply
{
  v28 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v17, 0, sizeof(v17));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient invalidateAccountCacheWithReply:]", 3082, 0, v17);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v17[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v7;
    v20 = 2112;
    selfCopy = self;
    v22 = 2112;
    v23 = v9;
    v24 = 2080;
    v25 = "[BRCXPCRegularIPCsClient invalidateAccountCacheWithReply:]";
    v26 = 2112;
    v27 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__BRCXPCRegularIPCsClient_invalidateAccountCacheWithReply___block_invoke;
  v15[3] = &unk_2785014D0;
  v15[4] = self;
  v10 = replyCopy;
  v16 = v10;
  v11 = _brc_ipc_check_account_access(self, 0, v15);

  if (v11)
  {
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    [defaultStore invalidateAccountForPersonaCache];

    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v20 = 2112;
      selfCopy = 0;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(v10 + 2))(v10, 0);
  }

  __brc_leave_section(v17);
}

void __59__BRCXPCRegularIPCsClient_invalidateAccountCacheWithReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)jetsamCloudDocsAppsWithReply:(id)reply
{
  v33 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v22, 0, sizeof(v22));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient jetsamCloudDocsAppsWithReply:]", 3093, 0, v22);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v22[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v7;
    v25 = 2112;
    selfCopy = self;
    v27 = 2112;
    v28 = v9;
    v29 = 2080;
    v30 = "[BRCXPCRegularIPCsClient jetsamCloudDocsAppsWithReply:]";
    v31 = 2112;
    v32 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __56__BRCXPCRegularIPCsClient_jetsamCloudDocsAppsWithReply___block_invoke;
  v20[3] = &unk_2785014D0;
  v20[4] = self;
  v10 = replyCopy;
  v21 = v10;
  v11 = _brc_ipc_check_account_access(self, 0, v20);

  if (v11)
  {
    session = [(BRCXPCClient *)self session];
    accountHandler = [session accountHandler];
    v14 = accountHandler;
    if (accountHandler)
    {
      accountHandlerForCurrentPersona = accountHandler;
    }

    else
    {
      v16 = +[BRCAccountsManager sharedManager];
      accountHandlerForCurrentPersona = [v16 accountHandlerForCurrentPersona];
    }

    [accountHandlerForCurrentPersona jetsamCloudDocsApps];
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    [defaultStore invalidateAccountForPersonaCache];

    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v25 = 2112;
      selfCopy = 0;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(v10 + 2))(v10, 0);
  }

  __brc_leave_section(v22);
}

void __56__BRCXPCRegularIPCsClient_jetsamCloudDocsAppsWithReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getContainersNeedingUpload:(id)upload
{
  v35 = *MEMORY[0x277D85DE8];
  uploadCopy = upload;
  memset(v24, 0, sizeof(v24));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient getContainersNeedingUpload:]", 3106, 0, v24);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v24[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    v26 = v7;
    v27 = 2112;
    selfCopy = self;
    v29 = 2112;
    v30 = v9;
    v31 = 2080;
    v32 = "[BRCXPCRegularIPCsClient getContainersNeedingUpload:]";
    v33 = 2112;
    v34 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __54__BRCXPCRegularIPCsClient_getContainersNeedingUpload___block_invoke;
  v22[3] = &unk_2785014D0;
  v22[4] = self;
  v10 = uploadCopy;
  v23 = v10;
  v11 = _brc_ipc_check_account_access(self, 1, v22);

  if (v11)
  {
    session = [(BRCXPCClient *)self session];
    tracker = self->super._tracker;
    clientTruthWorkloop = [session clientTruthWorkloop];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __54__BRCXPCRegularIPCsClient_getContainersNeedingUpload___block_invoke_451;
    v18[3] = &unk_2784FF5B8;
    v15 = session;
    v19 = v15;
    selfCopy2 = self;
    v21 = v10;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__BRCXPCRegularIPCsClient_getContainersNeedingUpload___block_invoke_452;
    v16[3] = &unk_278500048;
    v16[4] = self;
    v17 = v21;
    brc_task_tracker_async_with_logs(tracker, clientTruthWorkloop, v18, v16);
  }

  __brc_leave_section(v24);
}

void __54__BRCXPCRegularIPCsClient_getContainersNeedingUpload___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __54__BRCXPCRegularIPCsClient_getContainersNeedingUpload___block_invoke_451(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = a1[4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__BRCXPCRegularIPCsClient_getContainersNeedingUpload___block_invoke_2;
  v8[3] = &unk_2784FFD58;
  v4 = v2;
  v9 = v4;
  [v3 enumerateAppLibraries:v8];
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = a1[5];
    *buf = 138413058;
    v11 = v7;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
  }

  (*(a1[6] + 16))();
}

uint64_t __54__BRCXPCRegularIPCsClient_getContainersNeedingUpload___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 defaultClientZone];
  v5 = [v4 isSyncBlockedBecauseAppNotInstalled];

  if ((v5 & 1) == 0 && [v3 hasLocalChanges])
  {
    v6 = *(a1 + 32);
    v7 = [v3 containerMetadata];
    [v6 addObject:v7];
  }

  return 1;
}

void __54__BRCXPCRegularIPCsClient_getContainersNeedingUpload___block_invoke_452(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
    v8 = 138413058;
    v9 = v4;
    v10 = 2112;
    v11 = 0;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v8, 0x2Au);
  }

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
  (*(v6 + 16))(v6, 0, v7);
}

- (void)setMigrationStatus:(char)status forDSID:(id)d shouldUpdateAccount:(BOOL)account reply:(id)reply
{
  v43 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  memset(v32, 0, sizeof(v32));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient setMigrationStatus:forDSID:shouldUpdateAccount:reply:]", 3129, 0, v32);
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v32[0];
    v13 = qos_class_self();
    v14 = BRCPrettyPrintEnumWithContext(v13, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v12;
    v35 = 2112;
    selfCopy = self;
    v37 = 2112;
    v38 = v14;
    v39 = 2080;
    v40 = "[BRCXPCRegularIPCsClient setMigrationStatus:forDSID:shouldUpdateAccount:reply:]";
    v41 = 2112;
    v42 = v10;
    _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __80__BRCXPCRegularIPCsClient_setMigrationStatus_forDSID_shouldUpdateAccount_reply___block_invoke;
  v30[3] = &unk_2785014D0;
  v30[4] = self;
  v15 = replyCopy;
  v31 = v15;
  v16 = _brc_ipc_check_account_access(self, 0, v30);

  if (v16)
  {
    v17 = +[BRCAccountsManager sharedManager];
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    v19 = [defaultStore br_appleAccountWithPersonID:dCopy];

    identifier = [v19 identifier];
    if (identifier)
    {
      br_personaIdentifier = [v19 br_personaIdentifier];
      v29 = v15;
      v26 = v17;
      v27 = v19;
      v28 = dCopy;
      BRPerformWithPersonaAndError();
    }

    else
    {
      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        brc_errorLoggedOut = [MEMORY[0x277CCA9B8] brc_errorLoggedOut];
        *buf = 138412802;
        selfCopy2 = self;
        v35 = 2112;
        selfCopy = brc_errorLoggedOut;
        v37 = 2112;
        v38 = v22;
        _os_log_impl(&dword_223E7A000, v23, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
      }

      brc_errorLoggedOut2 = [MEMORY[0x277CCA9B8] brc_errorLoggedOut];
      (*(v15 + 2))(v15, brc_errorLoggedOut2);
    }
  }

  __brc_leave_section(v32);
}

void __80__BRCXPCRegularIPCsClient_setMigrationStatus_forDSID_shouldUpdateAccount_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __80__BRCXPCRegularIPCsClient_setMigrationStatus_forDSID_shouldUpdateAccount_reply___block_invoke_453(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      *buf = 138412802;
      v20 = v6;
      v21 = 2112;
      v22 = v3;
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v7 = [*(a1 + 40) getOrCreateAccountHandlerForACAccount:*(a1 + 48)];
    if (v7)
    {
      v8 = *(a1 + 72);
      v9 = *(a1 + 73);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __80__BRCXPCRegularIPCsClient_setMigrationStatus_forDSID_shouldUpdateAccount_reply___block_invoke_454;
      v17[3] = &unk_278500048;
      v17[4] = *(a1 + 32);
      v10 = *(a1 + 56);
      v18 = *(a1 + 64);
      [v7 setMigrationStatus:v8 forDSID:v10 shouldUpdateAccount:v9 completion:v17];
    }

    else
    {
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        v14 = [MEMORY[0x277CCA9B8] brc_errorLoggedOut];
        *buf = 138412802;
        v20 = v13;
        v21 = 2112;
        v22 = v14;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
      }

      v15 = *(a1 + 64);
      v16 = [MEMORY[0x277CCA9B8] brc_errorLoggedOut];
      (*(v15 + 16))(v15, v16);
    }
  }
}

uint64_t __80__BRCXPCRegularIPCsClient_setMigrationStatus_forDSID_shouldUpdateAccount_reply___block_invoke_454(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v6 = 138412802;
    v7 = v4;
    v8 = 2112;
    v9 = 0;
    v10 = 2112;
    v11 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v6, 0x20u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)getSyncState:(unint64_t)state reply:(id)reply
{
  v31 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v20, 0, sizeof(v20));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient getSyncState:reply:]", 3159, 0, v20);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v20[0];
    v10 = qos_class_self();
    v11 = BRCPrettyPrintEnumWithContext(v10, &brc_qos_entries, 0);
    *buf = 134219010;
    v22 = v9;
    v23 = 2112;
    selfCopy = self;
    v25 = 2112;
    v26 = v11;
    v27 = 2080;
    v28 = "[BRCXPCRegularIPCsClient getSyncState:reply:]";
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __46__BRCXPCRegularIPCsClient_getSyncState_reply___block_invoke;
  v18[3] = &unk_2785014D0;
  v18[4] = self;
  v12 = replyCopy;
  v19 = v12;
  v13 = _brc_ipc_check_entitlement_and_logged_status(self, 1, @"com.apple.fileprovider.acl-read", v18);

  if (v13)
  {
    session = [(BRCXPCClient *)self session];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__BRCXPCRegularIPCsClient_getSyncState_reply___block_invoke_458;
    v15[3] = &unk_278507128;
    v15[4] = self;
    stateCopy = state;
    v16 = v12;
    [session performAsyncOnClientReadDatabaseWorkloop:v15];
  }

  __brc_leave_section(v20);
}

void __46__BRCXPCRegularIPCsClient_getSyncState_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2048;
    v10 = 1;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%lu, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __46__BRCXPCRegularIPCsClient_getSyncState_reply___block_invoke_458(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [*(a1 + 32) session];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__BRCXPCRegularIPCsClient_getSyncState_reply___block_invoke_2;
  v14[3] = &unk_278500298;
  v6 = v4;
  v15 = v6;
  [v5 enumerateClientZones:v14];

  v7 = *(a1 + 48);
  v13 = 0;
  v8 = [v3 getSyncState:v7 ignoredZones:v6 error:&v13];

  v9 = v13;
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 32);
    *buf = 138413058;
    v17 = v12;
    v18 = 2048;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%lu, %@)%@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __46__BRCXPCRegularIPCsClient_getSyncState_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSyncBlockedBecauseAppNotInstalled])
  {
    v4 = *(a1 + 32);
    v5 = [v3 dbRowID];
    [v4 addIndex:{objc_msgSend(v5, "unsignedIntegerValue")}];
  }

  return 1;
}

- (void)resolveFileObjectIDsToContentRecordIDsForThumbnails:(id)thumbnails reply:(id)reply
{
  v42 = *MEMORY[0x277D85DE8];
  thumbnailsCopy = thumbnails;
  replyCopy = reply;
  memset(v31, 0, sizeof(v31));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient resolveFileObjectIDsToContentRecordIDsForThumbnails:reply:]", 3218, 0, v31);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v31[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    v33 = v10;
    v34 = 2112;
    selfCopy = self;
    v36 = 2112;
    v37 = v12;
    v38 = 2080;
    v39 = "[BRCXPCRegularIPCsClient resolveFileObjectIDsToContentRecordIDsForThumbnails:reply:]";
    v40 = 2112;
    v41 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __85__BRCXPCRegularIPCsClient_resolveFileObjectIDsToContentRecordIDsForThumbnails_reply___block_invoke;
  v29[3] = &unk_2785014D0;
  v29[4] = self;
  v13 = replyCopy;
  v30 = v13;
  v14 = _brc_ipc_check_applibrary_proxy(self, 1, v29);

  if (v14)
  {
    session = [(BRCXPCClient *)self session];
    clientReadDatabaseFacade = [session clientReadDatabaseFacade];
    tracker = self->super._tracker;
    workloop = [clientReadDatabaseFacade workloop];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __85__BRCXPCRegularIPCsClient_resolveFileObjectIDsToContentRecordIDsForThumbnails_reply___block_invoke_462;
    v23[3] = &unk_278502FF8;
    v24 = thumbnailsCopy;
    v19 = session;
    v25 = v19;
    v20 = clientReadDatabaseFacade;
    v26 = v20;
    selfCopy2 = self;
    v28 = v13;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __85__BRCXPCRegularIPCsClient_resolveFileObjectIDsToContentRecordIDsForThumbnails_reply___block_invoke_463;
    v21[3] = &unk_278500048;
    v21[4] = self;
    v22 = v28;
    brc_task_tracker_async_with_logs(tracker, workloop, v23, v21);
  }

  __brc_leave_section(v31);
}

void __85__BRCXPCRegularIPCsClient_resolveFileObjectIDsToContentRecordIDsForThumbnails_reply___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138414082;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = 0;
    v13 = 2112;
    v14 = 0;
    v15 = 2112;
    v16 = 0;
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %@, %@, %@)%@", &v7, 0x52u);
  }

  (*(*(a1 + 40) + 16))();
}

void __85__BRCXPCRegularIPCsClient_resolveFileObjectIDsToContentRecordIDsForThumbnails_reply___block_invoke_462(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v31 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v30 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v29 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v33 objects:v53 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v34;
    *&v4 = 138412290;
    v27 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        if ([v8 type] != 2)
        {
          v15 = brc_bread_crumbs();
          v16 = brc_default_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            *buf = v27;
            v38 = v15;
            _os_log_fault_impl(&dword_223E7A000, v16, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: asked the content record ID of a non-document%@", buf, 0xCu);
          }

          goto LABEL_12;
        }

        v9 = [*(a1 + 40) itemFetcher];
        v10 = [v9 itemByFileObjectID:v8 dbFacade:*(a1 + 48)];
        v11 = [v10 asDocument];

        if (!v11)
        {
          v15 = brc_bread_crumbs();
          v16 = brc_default_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v38 = v8;
            v39 = 2112;
            v40 = v15;
            _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] No document found for %@%@", buf, 0x16u);
          }

LABEL_12:

          [v32 addObject:v8];
          continue;
        }

        v12 = [v11 currentVersion];
        v13 = [v12 thumbnailSize];

        if (v13 < 1)
        {
          v17 = [v11 currentVersion];
          v18 = [v17 isSmallAndMostRecentClientsGenerateThumbnails];

          if (v18)
          {
            v19 = [v11 currentVersion];
            v20 = [v19 ckInfo];
            [v20 etag];
            v22 = v21 = v2;
            [v29 setObject:v22 forKeyedSubscript:v8];

            v2 = v21;
            v23 = v30;
          }

          else
          {
            v23 = v28;
          }

          [v23 addObject:v8];
        }

        else
        {
          v14 = [v11 documentRecordID];
          [v31 setObject:v14 forKeyedSubscript:v8];
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v33 objects:v53 count:16];
    }

    while (v5);
  }

  v24 = brc_bread_crumbs();
  v25 = brc_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = *(a1 + 56);
    *buf = 138414082;
    v38 = v26;
    v39 = 2112;
    v40 = v31;
    v41 = 2112;
    v42 = v30;
    v43 = 2112;
    v44 = v28;
    v45 = 2112;
    v46 = v32;
    v47 = 2112;
    v48 = v29;
    v49 = 2112;
    v50 = 0;
    v51 = 2112;
    v52 = v24;
    _os_log_impl(&dword_223E7A000, v25, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %@, %@, %@)%@", buf, 0x52u);
  }

  (*(*(a1 + 64) + 16))();
}

void __85__BRCXPCRegularIPCsClient_resolveFileObjectIDsToContentRecordIDsForThumbnails_reply___block_invoke_463(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
    v8 = 138414082;
    v9 = v4;
    v10 = 2112;
    v11 = 0;
    v12 = 2112;
    v13 = 0;
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = 0;
    v18 = 2112;
    v19 = 0;
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %@, %@, %@)%@", &v8, 0x52u);
  }

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
  (*(v6 + 16))(v6, 0, 0, 0, 0, 0, v7);
}

- (void)resolveBookmarkDataToURL:(id)l reply:(id)reply
{
  v59 = *MEMORY[0x277D85DE8];
  lCopy = l;
  replyCopy = reply;
  memset(v44, 0, sizeof(v44));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient resolveBookmarkDataToURL:reply:]", 3271, 0, v44);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v44[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy3 = v10;
    v47 = 2112;
    selfCopy = self;
    v49 = 2112;
    v50 = v12;
    v51 = 2080;
    v52 = "[BRCXPCRegularIPCsClient resolveBookmarkDataToURL:reply:]";
    v53 = 2112;
    v54 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __58__BRCXPCRegularIPCsClient_resolveBookmarkDataToURL_reply___block_invoke;
  v42[3] = &unk_2785014D0;
  v42[4] = self;
  v13 = replyCopy;
  v43 = v13;
  v14 = _brc_ipc_check_logged_status(self, 1, v42);

  if (v14)
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [BRCXPCRegularIPCsClient resolveBookmarkDataToURL:reply:];
    }

    v40 = 0;
    v41 = 0;
    v38 = 0;
    v39 = 0;
    session = [(BRCXPCClient *)self session];
    v37 = 0;
    v18 = [lCopy parseBookmarkDataWithAccountSession:session docID:&v38 itemID:&v41 mangledID:&v40 unsaltedBookmarkData:&v39 error:&v37];
    v19 = v37;
    if (v18)
    {
      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138413314;
        selfCopy3 = v38;
        v47 = 2112;
        selfCopy = v41;
        v49 = 2112;
        v50 = v40;
        v51 = 2112;
        v52 = v39;
        v53 = 2112;
        v54 = v20;
        _os_log_debug_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] looking for docID:%@ itemID:%@ mangledID:%@ unsaltedBookmarkData:%@%@", buf, 0x34u);
      }

      tracker = self->super._tracker;
      clientTruthWorkloop = [session clientTruthWorkloop];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __58__BRCXPCRegularIPCsClient_resolveBookmarkDataToURL_reply___block_invoke_464;
      v30[3] = &unk_2785071A0;
      v31 = session;
      v32 = v40;
      selfCopy2 = self;
      v34 = v41;
      v36 = v13;
      v35 = v38;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __58__BRCXPCRegularIPCsClient_resolveBookmarkDataToURL_reply___block_invoke_473;
      v28[3] = &unk_278500048;
      v28[4] = self;
      v29 = v36;
      brc_task_tracker_async_with_logs(tracker, clientTruthWorkloop, v30, v28);

      brc_wrappedError2 = v31;
    }

    else
    {
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        brc_wrappedError = [v19 brc_wrappedError];
        *buf = 138413826;
        selfCopy3 = self;
        v47 = 2112;
        selfCopy = 0;
        v49 = 2112;
        v50 = 0;
        v51 = 2112;
        v52 = 0;
        v53 = 2112;
        v54 = 0;
        v55 = 2112;
        v56 = brc_wrappedError;
        v57 = 2112;
        v58 = v25;
        _os_log_impl(&dword_223E7A000, v26, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %@, %@)%@", buf, 0x48u);
      }

      brc_wrappedError2 = [v19 brc_wrappedError];
      (*(v13 + 2))(v13, 0, 0, 0, 0, brc_wrappedError2);
    }
  }

  __brc_leave_section(v44);
}

void __58__BRCXPCRegularIPCsClient_resolveBookmarkDataToURL_reply___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413826;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = 0;
    v13 = 2112;
    v14 = 0;
    v15 = 2112;
    v16 = 0;
    v17 = 2112;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %@, %@)%@", &v7, 0x48u);
  }

  (*(*(a1 + 40) + 16))();
}

void __58__BRCXPCRegularIPCsClient_resolveBookmarkDataToURL_reply___block_invoke_464(id *a1)
{
  v84 = *MEMORY[0x277D85DE8];
  v2 = a1 + 5;
  v3 = [a1[4] clientZoneByMangledID:a1[5]];
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__52;
  v67 = __Block_byref_object_dispose__52;
  if ([*v2 isPrivate])
  {
    v4 = [a1[4] appLibraryByMangledID:a1[5]];
  }

  else
  {
    v4 = 0;
  }

  v68 = v4;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__52;
  v61 = __Block_byref_object_dispose__52;
  v62 = 0;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __58__BRCXPCRegularIPCsClient_resolveBookmarkDataToURL_reply___block_invoke_2;
  v51[3] = &unk_278507150;
  v55 = &v63;
  v44 = *(a1 + 5);
  v5 = v44.i64[0];
  v52 = vextq_s8(v44, v44, 8uLL);
  v56 = &v57;
  v53 = a1[7];
  v54 = a1[9];
  v6 = MEMORY[0x22AA4A310](v51);
  v7 = [v3 itemByItemID:a1[7]];
  v8 = v58[5];
  v58[5] = v7;

  v9 = v58[5];
  if (v9 || ([v3 itemByDocumentID:{objc_msgSend(a1[8], "unsignedIntValue")}], v10 = objc_claimAutoreleasedReturnValue(), v11 = v58[5], v58[5] = v10, v11, (v9 = v58[5]) != 0))
  {
    v12 = [v9 appLibrary];
    v13 = v64[5];
    v64[5] = v12;
  }

  if ([a1[6] _isAppLibraryProxyEntitled])
  {
    LOBYTE(v14) = 1;
  }

  else if (v64[5])
  {
    v15 = [a1[6] entitledAppLibraryIDs];
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v39 = a1[6];
      *buf = 138412802;
      v70 = v39;
      v71 = 2112;
      v72 = v15;
      v73 = 2112;
      v74 = v16;
      _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ has access to %@%@", buf, 0x20u);
    }

    v18 = [v64[5] appLibraryID];
    v14 = [v15 containsObject:v18];

    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v40 = a1[6];
      v41 = [v64[5] logName];
      v42 = v41;
      v43 = "does not have";
      *buf = 138413058;
      v70 = v40;
      v71 = 2080;
      if (v14)
      {
        v43 = "has";
      }

      v72 = v43;
      v73 = 2112;
      v74 = v41;
      v75 = 2112;
      v76 = v19;
      _os_log_debug_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ %s access to %@%@", buf, 0x2Au);
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  v21 = [v58[5] fileObjectID];
  v22 = [v21 asString];

  if (v22)
  {
    v23 = [MEMORY[0x277CC64A8] br_sharedProviderManager];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __58__BRCXPCRegularIPCsClient_resolveBookmarkDataToURL_reply___block_invoke_471;
    v45[3] = &unk_278507178;
    v24 = v22;
    v25 = a1[6];
    v46 = v24;
    v47 = v25;
    v48 = a1[9];
    v49 = v6;
    v50 = v14;
    [v23 getUserVisibleURLForItemIdentifier:v24 completionHandler:v45];

    v26 = v46;
  }

  else
  {
    v27 = brc_bread_crumbs();
    v28 = brc_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = [a1[7] debugItemIDString];
      __58__BRCXPCRegularIPCsClient_resolveBookmarkDataToURL_reply___block_invoke_464_cold_1(v29, v27, v83, v28);
    }

    v30 = brc_bread_crumbs();
    v31 = brc_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = MEMORY[0x277CCA9B8];
      v33 = a1[6];
      v34 = [a1[7] itemIDString];
      v35 = [v32 brc_errorItemNotFound:v34];
      *buf = 138413826;
      v70 = v33;
      v71 = 2112;
      v72 = 0;
      v73 = 2112;
      v74 = 0;
      v75 = 2112;
      v76 = 0;
      v77 = 2112;
      v78 = 0;
      v79 = 2112;
      v80 = v35;
      v81 = 2112;
      v82 = v30;
      _os_log_impl(&dword_223E7A000, v31, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %@, %@)%@", buf, 0x48u);
    }

    v36 = a1[9];
    v37 = MEMORY[0x277CCA9B8];
    v26 = [a1[7] itemIDString];
    v38 = [v37 brc_errorItemNotFound:v26];
    (*(v36 + 2))(v36, 0, 0, 0, 0, v38);
  }

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);
}

void __58__BRCXPCRegularIPCsClient_resolveBookmarkDataToURL_reply___block_invoke_2(uint64_t a1, void *a2, char a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if ((a3 & 1) == 0)
  {
    if (![*(a1 + 32) canAccessPath:objc_msgSend(v5 accessKind:{"fileSystemRepresentation"), 0}])
    {
      if (*(*(*(a1 + 64) + 8) + 40))
      {
        v10 = brc_bread_crumbs();
        v11 = brc_default_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a1 + 32);
          v30 = 138412546;
          v31 = v12;
          v32 = 2112;
          v33 = v10;
          _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] resolveBookmarkDataToURL denied for %@: not entitled%@", &v30, 0x16u);
        }

        v13 = [MEMORY[0x277CCA9B8] brc_errorPermissionError:@"Not Entitled"];
        goto LABEL_17;
      }

LABEL_14:
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 40);
        v30 = 138412546;
        v31 = v16;
        v32 = 2112;
        v33 = v14;
        _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't find appLibrary for id %@%@", &v30, 0x16u);
      }

      v17 = MEMORY[0x277CCA9B8];
      v18 = [*(a1 + 40) appLibraryOrZoneName];
      v13 = [v17 brc_errorAppLibraryNotFound:v18];

LABEL_17:
      v9 = 0;
      goto LABEL_18;
    }

    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v29 = *(a1 + 32);
      v30 = 138412802;
      v31 = v29;
      v32 = 2112;
      v33 = v6;
      v34 = 2112;
      v35 = v7;
      _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Client %@ has access to %@%@", &v30, 0x20u);
    }
  }

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    goto LABEL_14;
  }

  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v9 = [v6 brc_issueSandboxExtensionOfClass:*MEMORY[0x277D861C0] error:0];
    if (v6)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v9 = 0;
    if (v6)
    {
      goto LABEL_23;
    }
  }

  v25 = MEMORY[0x277CCA9B8];
  v26 = [*(a1 + 48) itemIDString];
  v13 = [v25 brc_errorItemNotFound:v26];

  if (v13)
  {
    v27 = brc_bread_crumbs();
    v28 = brc_default_log();
    if (os_log_type_enabled(v28, 0x90u))
    {
      __58__BRCXPCRegularIPCsClient_resolveBookmarkDataToURL_reply___block_invoke_2_cold_1();
    }
  }

LABEL_18:
  if (v13)
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 32);
      v30 = 138413826;
      v31 = v21;
      v32 = 2112;
      v33 = 0;
      v34 = 2112;
      v35 = 0;
      v36 = 2112;
      v37 = 0;
      v38 = 2112;
      v39 = 0;
      v40 = 2112;
      v41 = v13;
      v42 = 2112;
      v43 = v19;
      _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %@, %@)%@", &v30, 0x48u);
    }

    (*(*(a1 + 56) + 16))();
    goto LABEL_26;
  }

LABEL_23:
  v22 = brc_bread_crumbs();
  v23 = brc_default_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = *(a1 + 32);
    v30 = 138413826;
    v31 = v24;
    v32 = 2112;
    v33 = v6;
    v34 = 2112;
    v35 = v9;
    v36 = 2112;
    v37 = 0;
    v38 = 2112;
    v39 = 0;
    v40 = 2112;
    v41 = 0;
    v42 = 2112;
    v43 = v22;
    _os_log_impl(&dword_223E7A000, v23, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %@, %@)%@", &v30, 0x48u);
  }

  (*(*(a1 + 56) + 16))();
LABEL_26:
}

void __58__BRCXPCRegularIPCsClient_resolveBookmarkDataToURL_reply___block_invoke_471(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = a1[4];
      v13 = 138412802;
      v14 = v12;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Got an error while computing the user visible url of %@ - %@%@", &v13, 0x20u);
    }

    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = a1[5];
      v13 = 138413826;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = 0;
      v19 = 2112;
      v20 = 0;
      v21 = 2112;
      v22 = 0;
      v23 = 2112;
      v24 = v6;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %@, %@)%@", &v13, 0x48u);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    (*(a1[7] + 16))();
  }
}

void __58__BRCXPCRegularIPCsClient_resolveBookmarkDataToURL_reply___block_invoke_473(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
    v8 = 138413826;
    v9 = v4;
    v10 = 2112;
    v11 = 0;
    v12 = 2112;
    v13 = 0;
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = 0;
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %@, %@)%@", &v8, 0x48u);
  }

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
  (*(v6 + 16))(v6, 0, 0, 0, 0, v7);
}

- (void)getApplicationStatus:(id)status
{
  v24 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  memset(v17, 0, sizeof(v17));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient getApplicationStatus:]", 3428, 0, v17);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v17[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy = v7;
    v20 = 2112;
    *v21 = self;
    *&v21[8] = 2112;
    *&v21[10] = v9;
    *&v21[18] = 2080;
    *&v21[20] = "[BRCXPCRegularIPCsClient getApplicationStatus:]";
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__BRCXPCRegularIPCsClient_getApplicationStatus___block_invoke;
  v15[3] = &unk_2785014D0;
  v15[4] = self;
  v10 = statusCopy;
  v16 = v10;
  v11 = _brc_ipc_check_logged_status(self, 0, v15);

  if (v11)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      cloudEnabledStatus = [(BRCXPCClient *)self cloudEnabledStatus];
      *buf = 138413058;
      selfCopy = self;
      v20 = 1024;
      *v21 = cloudEnabledStatus;
      *&v21[4] = 2112;
      *&v21[6] = 0;
      *&v21[14] = 2112;
      *&v21[16] = v12;
      _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", buf, 0x26u);
    }

    (*(v10 + 2))(v10, [(BRCXPCClient *)self cloudEnabledStatus], 0);
  }

  __brc_leave_section(v17);
}

void __48__BRCXPCRegularIPCsClient_getApplicationStatus___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 1024;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v7, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getApplicationStatusForProcess:(id *)process reply:(id)reply
{
  v27 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v23, 0, sizeof(v23));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient getApplicationStatusForProcess:reply:]", 3437, 0, v23);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v23[0];
    v10 = qos_class_self();
    v11 = BRCPrettyPrintEnumWithContext(v10, &brc_qos_entries, 0);
    *buf = 134219010;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = self;
    *&buf[22] = 2112;
    *&buf[24] = v11;
    *&buf[32] = 2080;
    *&buf[34] = "[BRCXPCRegularIPCsClient getApplicationStatusForProcess:reply:]";
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __64__BRCXPCRegularIPCsClient_getApplicationStatusForProcess_reply___block_invoke;
  v21[3] = &unk_2785014D0;
  v21[4] = self;
  v12 = replyCopy;
  v22 = v12;
  v13 = _brc_ipc_check_applibrary_proxy(self, 0, v21);

  if (v13)
  {
    v14 = [BRCClientPrivilegesDescriptor alloc];
    v15 = *&process->var0[4];
    *buf = *process->var0;
    *&buf[16] = v15;
    v16 = [(BRCClientPrivilegesDescriptor *)v14 initWithAuditToken:buf];
    session = [(BRCXPCClient *)self session];
    v18 = [(BRCClientPrivilegesDescriptor *)v16 cloudEnabledStatusWithHasSession:session != 0];

    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = v18;
      *&buf[18] = 2112;
      *&buf[20] = 0;
      *&buf[28] = 2112;
      *&buf[30] = v19;
      _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", buf, 0x26u);
    }

    (*(v12 + 2))(v12, v18, 0);
  }

  __brc_leave_section(v23);
}

void __64__BRCXPCRegularIPCsClient_getApplicationStatusForProcess_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 1024;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v7, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getLastSyncDateWithReply:(id)reply
{
  v33 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v22, 0, sizeof(v22));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient getLastSyncDateWithReply:]", 3451, 0, v22);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v22[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v7;
    v25 = 2112;
    selfCopy = self;
    v27 = 2112;
    v28 = v9;
    v29 = 2080;
    v30 = "[BRCXPCRegularIPCsClient getLastSyncDateWithReply:]";
    v31 = 2112;
    v32 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __52__BRCXPCRegularIPCsClient_getLastSyncDateWithReply___block_invoke;
  v20[3] = &unk_2785014D0;
  v20[4] = self;
  v10 = replyCopy;
  v21 = v10;
  v11 = _brc_ipc_check_logged_status(self, 0, v20);

  if (v11)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      session = [(BRCXPCClient *)self session];
      serverState = [session serverState];
      lastSyncDownDate = [serverState lastSyncDownDate];
      *buf = 138413058;
      selfCopy2 = self;
      v25 = 2112;
      selfCopy = lastSyncDownDate;
      v27 = 2112;
      v28 = 0;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    session2 = [(BRCXPCClient *)self session];
    serverState2 = [session2 serverState];
    lastSyncDownDate2 = [serverState2 lastSyncDownDate];
    (*(v10 + 2))(v10, lastSyncDownDate2, 0);
  }

  __brc_leave_section(v22);
}

void __52__BRCXPCRegularIPCsClient_getLastSyncDateWithReply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getLocalizedLastSyncWithReply:(id)reply
{
  v55 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v44, 0, sizeof(v44));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient getLocalizedLastSyncWithReply:]", 3460, 0, v44);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v44[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy3 = v7;
    v47 = 2112;
    selfCopy = self;
    v49 = 2112;
    v50 = v9;
    v51 = 2080;
    v52 = "[BRCXPCRegularIPCsClient getLocalizedLastSyncWithReply:]";
    v53 = 2112;
    v54 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __57__BRCXPCRegularIPCsClient_getLocalizedLastSyncWithReply___block_invoke;
  v42[3] = &unk_2785014D0;
  v42[4] = self;
  v10 = replyCopy;
  v43 = v10;
  v11 = _brc_ipc_check_logged_status(self, 0, v42);

  if (v11)
  {
    session = [(BRCXPCClient *)self session];
    serverState = [session serverState];
    lastSyncDownDate = [serverState lastSyncDownDate];

    if (!lastSyncDownDate)
    {
      v23 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        selfCopy3 = self;
        v47 = 2112;
        selfCopy = 0;
        v49 = 2112;
        v50 = 0;
        v51 = 2112;
        v52 = v23;
        _os_log_impl(&dword_223E7A000, v24, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
      }

      (*(v10 + 2))(v10, 0, 0);
      goto LABEL_15;
    }

    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:lastSyncDownDate];
    v17 = v16;
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v19 = [currentCalendar components:16 fromDate:lastSyncDownDate toDate:date options:0];
    date2 = [MEMORY[0x277CBEAA8] date];
    [currentCalendar rangeOfUnit:16 inUnit:512 forDate:date2];
    v22 = v21;

    if (v17 < 60.0 || v17 < 3600.0)
    {
      goto LABEL_11;
    }

    [lastSyncDownDate timeIntervalSinceReferenceDate];
    v30 = v29;
    v31 = [currentCalendar startOfDayForDate:date];
    [v31 timeIntervalSinceReferenceDate];
    v33 = v30 > v32;

    if (v33)
    {
      v25 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v25 setTimeStyle:1];
      [v25 setDateStyle:0];
      v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v35 = [v25 stringFromDate:lastSyncDownDate];
      v36 = _BRLocalizedStringWithFormat();
    }

    else
    {
      if ([v19 day] <= 1)
      {
LABEL_11:
        v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v26 = _BRLocalizedStringWithFormat();
LABEL_12:

        v27 = brc_bread_crumbs();
        v28 = brc_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 138413058;
          selfCopy3 = self;
          v47 = 2112;
          selfCopy = v26;
          v49 = 2112;
          v50 = 0;
          v51 = 2112;
          v52 = v27;
          _os_log_impl(&dword_223E7A000, v28, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
        }

        (*(v10 + 2))(v10, v26, 0);
LABEL_15:

        goto LABEL_16;
      }

      if ([v19 day] < v22)
      {
        v25 = objc_alloc_init(MEMORY[0x277CCA968]);
        v37 = MEMORY[0x277CCA968];
        currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
        v34 = [v37 dateFormatFromTemplate:@"EEEE" options:0 locale:currentLocale];

        [v25 setDateFormat:v34];
        v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v39 = [v25 stringFromDate:lastSyncDownDate];
        v40 = _BRLocalizedStringWithFormat();
        v41 = v39;
        v26 = v40;

        goto LABEL_20;
      }

      v25 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v25 setTimeStyle:0];
      [v25 setDateStyle:2];
      v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v35 = [v25 stringFromDate:lastSyncDownDate];
      v36 = _BRLocalizedStringWithFormat();
    }

    v26 = v36;
LABEL_20:

    goto LABEL_12;
  }

LABEL_16:
  __brc_leave_section(v44);
}

void __57__BRCXPCRegularIPCsClient_getLocalizedLastSyncWithReply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getContainerStatusWithID:(id)d reply:(id)reply
{
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  memset(v30, 0, sizeof(v30));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient getContainerStatusWithID:reply:]", 3517, 0, v30);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v30[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219266;
    selfCopy2 = v10;
    v33 = 2112;
    *v34 = self;
    *&v34[8] = 2112;
    *&v34[10] = v12;
    *&v34[18] = 2080;
    *&v34[20] = "[BRCXPCRegularIPCsClient getContainerStatusWithID:reply:]";
    v35 = 2112;
    v36 = dCopy;
    v37 = 2112;
    v38 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
  }

  if (dCopy)
  {
    v13 = [objc_alloc(MEMORY[0x277CFAE60]) initWithAppLibraryName:dCopy];
  }

  else
  {
    v13 = 0;
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __58__BRCXPCRegularIPCsClient_getContainerStatusWithID_reply___block_invoke;
  v28[3] = &unk_2785014D0;
  v28[4] = self;
  v14 = replyCopy;
  v29 = v14;
  v15 = _brc_ipc_check_applibrary_read_access(self, 1, v13, v28);

  if (v15)
  {
    session = [(BRCXPCClient *)self session];
    v17 = [session appLibraryByID:dCopy];

    if (!v17)
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"containerID" value:dCopy];
        *buf = 138413058;
        selfCopy2 = self;
        v33 = 1024;
        *v34 = 0;
        *&v34[4] = 2112;
        *&v34[6] = v20;
        *&v34[14] = 2112;
        *&v34[16] = v18;
        _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", buf, 0x26u);
      }

      v21 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"containerID" value:dCopy];
      (*(v14 + 2))(v14, 0, v21);
    }

    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      defaultClientZone = [v17 defaultClientZone];
      v25 = BRContainerStatusFromSyncState([defaultClientZone syncState]);
      *buf = 138413058;
      selfCopy2 = self;
      v33 = 1024;
      *v34 = v25;
      *&v34[4] = 2112;
      *&v34[6] = 0;
      *&v34[14] = 2112;
      *&v34[16] = v22;
      _os_log_impl(&dword_223E7A000, v23, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", buf, 0x26u);
    }

    defaultClientZone2 = [v17 defaultClientZone];
    v27 = BRContainerStatusFromSyncState([defaultClientZone2 syncState]);
    (*(v14 + 2))(v14, v27, 0);
  }

  __brc_leave_section(v30);
}

void __58__BRCXPCRegularIPCsClient_getContainerStatusWithID_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 1024;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v7, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getContainerLastServerUpdateWithID:(id)d reply:(id)reply
{
  v43 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  memset(v34, 0, sizeof(v34));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient getContainerLastServerUpdateWithID:reply:]", 3531, 0, v34);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v34[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219266;
    selfCopy2 = v10;
    v37 = 2112;
    *v38 = self;
    *&v38[8] = 2112;
    *&v38[10] = v12;
    *&v38[18] = 2080;
    *&v38[20] = "[BRCXPCRegularIPCsClient getContainerLastServerUpdateWithID:reply:]";
    v39 = 2112;
    v40 = dCopy;
    v41 = 2112;
    v42 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@%@", buf, 0x3Eu);
  }

  if (dCopy)
  {
    v13 = [objc_alloc(MEMORY[0x277CFAE60]) initWithAppLibraryName:dCopy];
  }

  else
  {
    v13 = 0;
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __68__BRCXPCRegularIPCsClient_getContainerLastServerUpdateWithID_reply___block_invoke;
  v32[3] = &unk_2785014D0;
  v32[4] = self;
  v14 = replyCopy;
  v33 = v14;
  v15 = _brc_ipc_check_applibrary_read_access(self, 1, v13, v32);

  if (v15)
  {
    session = [(BRCXPCClient *)self session];
    v31 = [session appLibraryByID:dCopy];

    if (!v31)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"containerID" value:dCopy];
        *buf = 138413058;
        selfCopy2 = self;
        v37 = 1024;
        *v38 = 0;
        *&v38[4] = 2112;
        *&v38[6] = v19;
        *&v38[14] = 2112;
        *&v38[16] = v17;
        _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", buf, 0x26u);
      }

      v20 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"containerID" value:dCopy];
      (*(v14 + 2))(v14, 0, v20);
    }

    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      defaultClientZone = [v31 defaultClientZone];
      serverZone = [defaultClientZone serverZone];
      changeState = [serverZone changeState];
      lastSyncDownDate = [changeState lastSyncDownDate];
      *buf = 138413058;
      selfCopy2 = self;
      v37 = 2112;
      *v38 = lastSyncDownDate;
      *&v38[8] = 2112;
      *&v38[10] = 0;
      *&v38[18] = 2112;
      *&v38[20] = v21;
      _os_log_impl(&dword_223E7A000, v22, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    defaultClientZone2 = [v31 defaultClientZone];
    serverZone2 = [defaultClientZone2 serverZone];
    changeState2 = [serverZone2 changeState];
    lastSyncDownDate2 = [changeState2 lastSyncDownDate];
    (*(v14 + 2))(v14, lastSyncDownDate2, 0);
  }

  __brc_leave_section(v34);
}

void __68__BRCXPCRegularIPCsClient_getContainerLastServerUpdateWithID_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)currentNotifRankWithReply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v18, 0, sizeof(v18));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient currentNotifRankWithReply:]", 3547, 0, v18);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v18[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    v20 = v7;
    v21 = 2112;
    selfCopy = self;
    v23 = 2112;
    v24 = v9;
    v25 = 2080;
    v26 = "[BRCXPCRegularIPCsClient currentNotifRankWithReply:]";
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__BRCXPCRegularIPCsClient_currentNotifRankWithReply___block_invoke;
  v16[3] = &unk_2785014D0;
  v16[4] = self;
  v10 = replyCopy;
  v17 = v10;
  v11 = _brc_ipc_check_applibrary_proxy(self, 1, v16);

  if (v11)
  {
    session = [(BRCXPCClient *)self session];
    notificationManager = [session notificationManager];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__BRCXPCRegularIPCsClient_currentNotifRankWithReply___block_invoke_502;
    v14[3] = &unk_2785071C8;
    v14[4] = self;
    v15 = v10;
    [notificationManager fetchLastFlushedRankWithReply:v14];
  }

  __brc_leave_section(v18);
}

void __53__BRCXPCRegularIPCsClient_currentNotifRankWithReply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2048;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%llu, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __53__BRCXPCRegularIPCsClient_currentNotifRankWithReply___block_invoke_502(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 138413058;
    v9 = v6;
    v10 = 2048;
    v11 = a2;
    v12 = 2112;
    v13 = 0;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%llu, %@)%@", &v8, 0x2Au);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)enumerateItemsInFolder:(id)folder sortOrder:(unsigned __int8)order offset:(unint64_t)offset limit:(unint64_t)limit completion:(id)completion
{
  v58 = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  completionCopy = completion;
  memset(v47, 0, sizeof(v47));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient enumerateItemsInFolder:sortOrder:offset:limit:completion:]", 3567, 0, v47);
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v33 = completionCopy;
    offsetCopy = offset;
    v17 = folderCopy;
    orderCopy = order;
    limitCopy = limit;
    v20 = v47[0];
    v21 = qos_class_self();
    v22 = BRCPrettyPrintEnumWithContext(v21, &brc_qos_entries, 0);
    *buf = 134219010;
    v49 = v20;
    v50 = 2112;
    offsetCopy2 = self;
    v52 = 2112;
    limitCopy2 = v22;
    v54 = 2080;
    v55 = "[BRCXPCRegularIPCsClient enumerateItemsInFolder:sortOrder:offset:limit:completion:]";
    v56 = 2112;
    v57 = v14;
    _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);

    limit = limitCopy;
    order = orderCopy;
    folderCopy = v17;
    offset = offsetCopy;
    completionCopy = v33;
  }

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __84__BRCXPCRegularIPCsClient_enumerateItemsInFolder_sortOrder_offset_limit_completion___block_invoke;
  v45[3] = &unk_2785014D0;
  v45[4] = self;
  v23 = completionCopy;
  v46 = v23;
  v24 = _brc_ipc_check_applibrary_proxy(self, 1, v45);

  if (v24)
  {
    v25 = brc_bread_crumbs();
    v26 = brc_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v49 = folderCopy;
      v50 = 2048;
      offsetCopy2 = offset;
      v52 = 2048;
      limitCopy2 = limit;
      v54 = 2112;
      v55 = v25;
      _os_log_debug_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] enumerating items in %@ offset:%lld limit:%lld%@", buf, 0x2Au);
    }

    session = [(BRCXPCClient *)self session];
    clientReadDatabaseFacade = [session clientReadDatabaseFacade];
    tracker = self->super._tracker;
    workloop = [clientReadDatabaseFacade workloop];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __84__BRCXPCRegularIPCsClient_enumerateItemsInFolder_sortOrder_offset_limit_completion___block_invoke_504;
    v36[3] = &unk_278507218;
    v37 = folderCopy;
    v31 = session;
    v38 = v31;
    v32 = clientReadDatabaseFacade;
    v39 = v32;
    selfCopy2 = self;
    offsetCopy3 = offset;
    orderCopy2 = order;
    v41 = v23;
    limitCopy3 = limit;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __84__BRCXPCRegularIPCsClient_enumerateItemsInFolder_sortOrder_offset_limit_completion___block_invoke_518;
    v34[3] = &unk_278500048;
    v34[4] = self;
    v35 = v41;
    brc_task_tracker_async_with_logs(tracker, workloop, v36, v34);
  }

  __brc_leave_section(v47);
}

void __84__BRCXPCRegularIPCsClient_enumerateItemsInFolder_sortOrder_offset_limit_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413570;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 1024;
    v12 = 0;
    v13 = 1024;
    v14 = 0;
    v15 = 2112;
    v16 = v3;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %ull, %d, %@)%@", &v7, 0x36u);
  }

  (*(*(a1 + 40) + 16))();
}

void __84__BRCXPCRegularIPCsClient_enumerateItemsInFolder_sortOrder_offset_limit_completion___block_invoke_504(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  if ([*(a1 + 32) isRootContainerItem])
  {
    v3 = [*(a1 + 40) clientState];
    v4 = [v3 objectForKeyedSubscript:@"lastQuotaFetchDate"];

    if (!v4 || ([MEMORY[0x277CBEAA8] date], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "timeIntervalSinceDate:", v4), v7 = v6, +[BRCUserDefaults defaultsForMangledID:](BRCUserDefaults, "defaultsForMangledID:", 0), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "minFetchQuotaInterval"), v10 = v9, v8, v5, v7 > v10))
    {
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __84__BRCXPCRegularIPCsClient_enumerateItemsInFolder_sortOrder_offset_limit_completion___block_invoke_504_cold_3();
      }

      v13 = [*(a1 + 40) fsUploader];
      [v13 forceScheduleQuotaFetchForOwner:*MEMORY[0x277CBBF28]];
    }

    v14 = [*(a1 + 40) zoneAppRetriever];
    v15 = *(a1 + 48);
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __84__BRCXPCRegularIPCsClient_enumerateItemsInFolder_sortOrder_offset_limit_completion___block_invoke_508;
    v54[3] = &unk_2785071F0;
    v16 = v2;
    v55 = v16;
    [v14 enumerateContainersWithDBFacade:v15 handler:v54];

    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 56);
      v20 = *(a1 + 72);
      *buf = 138413570;
      v58 = v19;
      v59 = 2112;
      v60 = v16;
      v61 = 2048;
      v62 = v20;
      v63 = 1024;
      v64 = 0;
      v65 = 2112;
      v66 = 0;
      v67 = 2112;
      v68 = v17;
      _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %llu, %d, %@)%@", buf, 0x3Au);
    }

    (*(*(a1 + 64) + 16))();
    goto LABEL_40;
  }

  v21 = [*(a1 + 32) isCloudDocsRoot];
  v22 = *(a1 + 40);
  if (v21)
  {
    v23 = [v22 appLibraryByID:*MEMORY[0x277CFAD68]];
    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      __84__BRCXPCRegularIPCsClient_enumerateItemsInFolder_sortOrder_offset_limit_completion___block_invoke_504_cold_1();
    }

    v26 = [v23 fetchRootItemWithFacade:*(a1 + 48)];
  }

  else
  {
    v23 = [v22 itemFetcher];
    v26 = [v23 itemByFileObjectID:*(a1 + 32) dbFacade:*(a1 + 48)];
  }

  v27 = v26;

  v28 = [v27 itemID];
  if ([v28 isDocumentsFolder])
  {
    goto LABEL_20;
  }

  v29 = [v27 isMigratingToFPFS];

  if (v29)
  {
    v30 = brc_bread_crumbs();
    v31 = brc_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      __84__BRCXPCRegularIPCsClient_enumerateItemsInFolder_sortOrder_offset_limit_completion___block_invoke_504_cold_2();
    }

    v28 = +[BRCAutoBugCaptureReporter sharedABCReporter];
    [v28 captureLogsForOperationType:@"FPFSMigration" ofSubtype:@"MigratingItem" forError:0];
LABEL_20:
  }

  v32 = *(a1 + 72);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v33 = [*(a1 + 40) itemFetcher];
  v49 = v27;
  v34 = [v27 itemGlobalID];
  v35 = [v33 enumerateChildrenOfItemGlobalID:v34 dbFacade:*(a1 + 48) sortOrder:*(a1 + 88) offset:*(a1 + 72) limit:*(a1 + 80)];

  v36 = [v35 countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v51;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v51 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = [BRCNotification notificationFromItem:*(*(&v50 + 1) + 8 * i)];
        v41 = [v40 asFileProviderItem];

        if (v41)
        {
          [v2 addObject:v41];
        }
      }

      v32 += v37;
      v37 = [v35 countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v37);
  }

  if (v32 - *(a1 + 72) == *(a1 + 80))
  {
    v42 = 1;
    v4 = v49;
  }

  else
  {
    v4 = v49;
    if ([v49 isShareAcceptationFault])
    {
      v32 = 0;
      v42 = 1;
    }

    else
    {
      v43 = [v49 clientZone];
      v44 = [v49 itemID];
      v45 = [v43 serverItemTypeByItemID:v44 dbFacade:*(a1 + 48)];

      v32 = 0;
      v42 = 1;
      if (v45 != 9 && v45 != 255)
      {
        v32 = 0;
        v42 = 0;
      }
    }
  }

  v46 = brc_bread_crumbs();
  v47 = brc_default_log();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    v48 = *(a1 + 56);
    *buf = 138413570;
    v58 = v48;
    v59 = 2112;
    v60 = v2;
    v61 = 2048;
    v62 = v32;
    v63 = 1024;
    v64 = v42;
    v65 = 2112;
    v66 = 0;
    v67 = 2112;
    v68 = v46;
    _os_log_impl(&dword_223E7A000, v47, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %llu, %d, %@)%@", buf, 0x3Au);
  }

  (*(*(a1 + 64) + 16))();
LABEL_40:
}

uint64_t __84__BRCXPCRegularIPCsClient_enumerateItemsInFolder_sortOrder_offset_limit_completion___block_invoke_508(uint64_t a1, void *a2)
{
  v3 = [a2 asFileProviderItem];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

void __84__BRCXPCRegularIPCsClient_enumerateItemsInFolder_sortOrder_offset_limit_completion___block_invoke_518(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
    v8 = 138413570;
    v9 = v4;
    v10 = 2112;
    v11 = 0;
    v12 = 2048;
    v13 = 0;
    v14 = 1024;
    v15 = 0;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %llu, %d, %@)%@", &v8, 0x3Au);
  }

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
  (*(v6 + 16))(v6, 0, 0, 0, v7);
}

- (void)enumerateWorkingSetChangesFromChangeToken:(id)token limit:(unint64_t)limit completion:(id)completion
{
  v48 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  completionCopy = completion;
  memset(v37, 0, sizeof(v37));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient enumerateWorkingSetChangesFromChangeToken:limit:completion:]", 3668, 0, v37);
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v37[0];
    v13 = qos_class_self();
    v14 = BRCPrettyPrintEnumWithContext(v13, &brc_qos_entries, 0);
    *buf = 134219010;
    v39 = v12;
    v40 = 2112;
    selfCopy2 = self;
    v42 = 2112;
    v43 = v14;
    v44 = 2080;
    v45 = "[BRCXPCRegularIPCsClient enumerateWorkingSetChangesFromChangeToken:limit:completion:]";
    v46 = 2112;
    v47 = v10;
    _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __86__BRCXPCRegularIPCsClient_enumerateWorkingSetChangesFromChangeToken_limit_completion___block_invoke;
  v35[3] = &unk_2785014D0;
  v35[4] = self;
  v15 = completionCopy;
  v36 = v15;
  v16 = _brc_ipc_check_applibrary_proxy(self, 1, v35);

  if (v16)
  {
    memset(v34, 0, sizeof(v34));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient enumerateWorkingSetChangesFromChangeToken:limit:completion:]", 3670, 0, v34);
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = v34[0];
      v20 = qos_class_self();
      v21 = BRCPrettyPrintEnumWithContext(v20, &brc_qos_entries, 0);
      *buf = 134219010;
      v39 = v19;
      v40 = 2112;
      selfCopy2 = self;
      v42 = 2112;
      v43 = v21;
      v44 = 2080;
      v45 = "[BRCXPCRegularIPCsClient enumerateWorkingSetChangesFromChangeToken:limit:completion:]";
      v46 = 2112;
      v47 = v17;
      _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s enumerating working set changes%@", buf, 0x34u);
    }

    session = [(BRCXPCClient *)self session];
    tracker = self->super._tracker;
    clientTruthWorkloop = [session clientTruthWorkloop];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __86__BRCXPCRegularIPCsClient_enumerateWorkingSetChangesFromChangeToken_limit_completion___block_invoke_519;
    v28[3] = &unk_2785018F0;
    v25 = session;
    v29 = v25;
    limitCopy = limit;
    v30 = tokenCopy;
    selfCopy3 = self;
    v32 = v15;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __86__BRCXPCRegularIPCsClient_enumerateWorkingSetChangesFromChangeToken_limit_completion___block_invoke_521;
    v26[3] = &unk_278500048;
    v26[4] = self;
    v27 = v32;
    brc_task_tracker_async_with_logs(tracker, clientTruthWorkloop, v28, v26);

    __brc_leave_section(v34);
  }

  __brc_leave_section(v37);
}

void __86__BRCXPCRegularIPCsClient_enumerateWorkingSetChangesFromChangeToken_limit_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413570;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = 0;
    v13 = 2112;
    v14 = 0;
    v15 = 2112;
    v16 = v3;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %@)%@", &v7, 0x3Eu);
  }

  (*(*(a1 + 40) + 16))();
}

void __86__BRCXPCRegularIPCsClient_enumerateWorkingSetChangesFromChangeToken_limit_completion___block_invoke_519(uint64_t a1)
{
  v2 = [*(a1 + 32) recentsEnumerator];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __86__BRCXPCRegularIPCsClient_enumerateWorkingSetChangesFromChangeToken_limit_completion___block_invoke_2;
  v6[3] = &unk_278507240;
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6[4] = *(a1 + 48);
  v7 = v4;
  [v2 enumerateChangesFromChangeToken:v3 limit:v5 completion:v6];
}

void __86__BRCXPCRegularIPCsClient_enumerateWorkingSetChangesFromChangeToken_limit_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 32);
    v16 = 138413570;
    v17 = v15;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %@)%@", &v16, 0x3Eu);
  }

  (*(*(a1 + 40) + 16))();
}

void __86__BRCXPCRegularIPCsClient_enumerateWorkingSetChangesFromChangeToken_limit_completion___block_invoke_521(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
    v8 = 138413570;
    v9 = v4;
    v10 = 2112;
    v11 = 0;
    v12 = 2112;
    v13 = 0;
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %@)%@", &v8, 0x3Eu);
  }

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
  (*(v6 + 16))(v6, 0, 0, 0, v7);
}

- (void)_getPublishedURLForLocalItem:(id)item forStreaming:(BOOL)streaming requestedTTL:(unint64_t)l reply:(id)reply
{
  streamingCopy = streaming;
  v52[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  replyCopy = reply;
  if (([itemCopy isDocument] & 1) == 0)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = 2;
LABEL_6:
    v20 = [v18 brc_errorNoDocument:0 underlyingPOSIXError:v19];
    goto LABEL_8;
  }

  asDocument = [itemCopy asDocument];
  currentVersion = [asDocument currentVersion];
  ckInfo = [currentVersion ckInfo];

  if (ckInfo)
  {
    asDocument2 = [itemCopy asDocument];
    currentVersion2 = [asDocument2 currentVersion];
    isPackage = [currentVersion2 isPackage];

    if (!isPackage)
    {
      serverZone = [itemCopy serverZone];
      mangledID = [serverZone mangledID];
      v21 = [BRCUserDefaults defaultsForMangledID:mangledID];

      asDocument3 = [itemCopy asDocument];
      documentRecordID = [asDocument3 documentRecordID];

      v25 = objc_alloc(MEMORY[0x277CBC570]);
      v40 = documentRecordID;
      v52[0] = documentRecordID;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
      v27 = [v25 initWithRecordIDs:v26];

      br_publishingRequest = [MEMORY[0x277CBC4F8] br_publishingRequest];
      [v27 setGroup:br_publishingRequest];

      v50 = @"fileContent";
      v29 = [itemCopy st];
      logicalName = [v29 logicalName];
      v51 = logicalName;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      [v27 setFileNamesByAssetFieldNames:v31];

      if (!l)
      {
        l = [v21 publishURLTimeout];
      }

      [v27 setRequestedTTL:l];
      configuration = [v27 configuration];
      [configuration setDiscretionaryNetworkBehavior:0];

      configuration2 = [v27 configuration];
      [configuration2 setAutomaticallyRetryNetworkFailures:0];

      if (streamingCopy)
      {
        [v27 setURLOptions:1];
      }

      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __88__BRCXPCRegularIPCsClient__getPublishedURLForLocalItem_forStreaming_requestedTTL_reply___block_invoke;
      v47[3] = &unk_278507268;
      v34 = replyCopy;
      v48 = v34;
      v49 = v27;
      [v27 setAssetPublishedBlock:v47];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __88__BRCXPCRegularIPCsClient__getPublishedURLForLocalItem_forStreaming_requestedTTL_reply___block_invoke_2;
      v44[3] = &unk_278507290;
      v45 = v34;
      v46 = v27;
      [v27 setPublishAssetCompletionBlock:v44];
      tracker = self->super._tracker;
      queue = self->super._queue;
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __88__BRCXPCRegularIPCsClient__getPublishedURLForLocalItem_forStreaming_requestedTTL_reply___block_invoke_3;
      v41[3] = &unk_2784FF478;
      v42 = serverZone;
      v43 = v27;
      v37 = v27;
      v38 = serverZone;
      brc_task_tracker_async_with_logs(tracker, queue, v41, 0);

      goto LABEL_15;
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = 21;
    goto LABEL_6;
  }

  v20 = [MEMORY[0x277CCA9B8] brc_errorNotInCloud:0];
LABEL_8:
  v21 = v20;
  if (v20)
  {
    (*(replyCopy + 2))(replyCopy, 0, 0, v20);
LABEL_15:
  }
}

uint64_t __88__BRCXPCRegularIPCsClient__getPublishedURLForLocalItem_forStreaming_requestedTTL_reply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = *(a1 + 32);
  v8 = a5;
  v9 = a4;
  v10 = [v9 downloadURL];
  v11 = [v9 downloadURLExpiration];

  (*(v7 + 16))(v7, v10, v11, v8);
  [*(a1 + 40) setPublishAssetCompletionBlock:0];
  v12 = *(a1 + 40);

  return [v12 setAssetPublishedBlock:0];
}

uint64_t __88__BRCXPCRegularIPCsClient__getPublishedURLForLocalItem_forStreaming_requestedTTL_reply___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  [*(a1 + 40) setPublishAssetCompletionBlock:0];
  v2 = *(a1 + 40);

  return [v2 setAssetPublishedBlock:0];
}

void __88__BRCXPCRegularIPCsClient__getPublishedURLForLocalItem_forStreaming_requestedTTL_reply___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) metadataSyncContext];
  [v2 addOperation:*(a1 + 40)];
}

- (void)_getiWorkPublishingInfoForLocalItem:(id)item itemIdentifier:(id)identifier reply:(id)reply
{
  v49 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  identifierCopy = identifier;
  replyCopy = reply;
  if (!itemCopy)
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:identifierCopy];
      *buf = 138413570;
      selfCopy4 = self;
      v39 = 1024;
      v40 = 0;
      v41 = 1024;
      v42 = 0;
      v43 = 2112;
      v44 = 0;
      v45 = 2112;
      v46 = v20;
      v47 = 2112;
      v48 = v18;
      _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %d, %@, %@)%@", buf, 0x36u);
    }

    v21 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:identifierCopy];
    goto LABEL_18;
  }

  if (([itemCopy isDocument] & 1) == 0)
  {
    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [MEMORY[0x277CCA9B8] brc_errorNoDocument:identifierCopy underlyingPOSIXError:21];
      *buf = 138413570;
      selfCopy4 = self;
      v39 = 1024;
      v40 = 0;
      v41 = 1024;
      v42 = 0;
      v43 = 2112;
      v44 = 0;
      v45 = 2112;
      v46 = v24;
      v47 = 2112;
      v48 = v22;
      _os_log_impl(&dword_223E7A000, v23, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %d, %@, %@)%@", buf, 0x36u);
    }

    v21 = [MEMORY[0x277CCA9B8] brc_errorNoDocument:identifierCopy underlyingPOSIXError:21];
    goto LABEL_18;
  }

  if (([itemCopy isKnownByServer] & 1) == 0)
  {
    v25 = brc_bread_crumbs();
    v26 = brc_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [MEMORY[0x277CCA9B8] brc_errorNotInCloud:identifierCopy];
      *buf = 138413570;
      selfCopy4 = self;
      v39 = 1024;
      v40 = 0;
      v41 = 1024;
      v42 = 0;
      v43 = 2112;
      v44 = 0;
      v45 = 2112;
      v46 = v27;
      v47 = 2112;
      v48 = v25;
      _os_log_impl(&dword_223E7A000, v26, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %d, %@, %@)%@", buf, 0x36u);
    }

    v21 = [MEMORY[0x277CCA9B8] brc_errorNotInCloud:identifierCopy];
    goto LABEL_18;
  }

  v11 = [itemCopy st];
  iWorkShareable = [v11 iWorkShareable];

  if ((iWorkShareable & 1) == 0)
  {
    v28 = brc_bread_crumbs();
    v29 = brc_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"path isn't iWork Shareable" value:identifierCopy];
      *buf = 138413570;
      selfCopy4 = self;
      v39 = 1024;
      v40 = 0;
      v41 = 1024;
      v42 = 0;
      v43 = 2112;
      v44 = 0;
      v45 = 2112;
      v46 = v30;
      v47 = 2112;
      v48 = v28;
      _os_log_impl(&dword_223E7A000, v29, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %d, %@, %@)%@", buf, 0x36u);
    }

    v21 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"path isn't iWork Shareable" value:identifierCopy];
LABEL_18:
    v16 = v21;
    (*(replyCopy + 2))(replyCopy, 0, 0, 0, v21);
    goto LABEL_19;
  }

  v13 = [BRCFetchiWorkSharingInfoOperation alloc];
  asDocument = [itemCopy asDocument];
  session = [(BRCXPCClient *)self session];
  v16 = [(BRCFetchiWorkSharingInfoOperation *)v13 initWithDocumentItem:asDocument sessionContext:session];

  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __84__BRCXPCRegularIPCsClient__getiWorkPublishingInfoForLocalItem_itemIdentifier_reply___block_invoke;
  v34 = &unk_2785072B8;
  selfCopy5 = self;
  v36 = replyCopy;
  [(_BRCOperation *)v16 setFinishBlock:&v31];
  v17 = [(BRCXPCClient *)self session:v31];
  [v17 addMiscOperation:v16];

  [(_BRCOperation *)v16 schedule];
LABEL_19:
}

void __84__BRCXPCRegularIPCsClient__getiWorkPublishingInfoForLocalItem_itemIdentifier_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CBC148];
  v7 = a2;
  v8 = [v7 objectForKeyedSubscript:v6];
  v9 = [v8 BOOLValue];

  v10 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBC140]];
  v11 = [v10 BOOLValue];

  v12 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBC138]];
  v13 = [v7 encryptedValues];

  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277CBC150]];

  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        __84__BRCXPCRegularIPCsClient__getiWorkPublishingInfoForLocalItem_itemIdentifier_reply___block_invoke_cold_1();
      }

      v17 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: base token of unexpected class"];

      v5 = v17;
    }
  }

  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        __84__BRCXPCRegularIPCsClient__getiWorkPublishingInfoForLocalItem_itemIdentifier_reply___block_invoke_cold_2();
      }

      v20 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: sharing key of unexpected class"];

      v5 = v20;
    }
  }

  if (v5)
  {
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 32);
      v24 = [v5 brc_wrappedError];
      v41 = 138413570;
      v42 = v23;
      v43 = 1024;
      v44 = 0;
      v45 = 1024;
      v46 = 0;
      v47 = 2112;
      v48 = 0;
      v49 = 2112;
      v50 = v24;
      v51 = 2112;
      v52 = v21;
      _os_log_impl(&dword_223E7A000, v22, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %d, %@, %@)%@", &v41, 0x36u);
    }

    v25 = *(a1 + 40);
    v26 = [v5 brc_wrappedError];
    (*(v25 + 16))(v25, 0, 0, 0, v26);

LABEL_15:
    goto LABEL_26;
  }

  if (v9)
  {
    if ((v12 != 0) == (v14 != 0))
    {
      v36 = [v14 base64EncodedStringWithOptions:0];
      v5 = [v36 mutableCopy];

      [v5 replaceOccurrencesOfString:@"+" withString:@"-" options:0 range:{0, objc_msgSend(v5, "length")}];
      [v5 replaceOccurrencesOfString:@"/" withString:@"_" options:0 range:{0, objc_msgSend(v5, "length")}];
      v37 = [v12 stringByAppendingString:v5];
      v38 = brc_bread_crumbs();
      v39 = brc_default_log();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = *(a1 + 32);
        v41 = 138413570;
        v42 = v40;
        v43 = 1024;
        v44 = 1;
        v45 = 1024;
        v46 = v11;
        v47 = 2112;
        v48 = v37;
        v49 = 2112;
        v50 = 0;
        v51 = 2112;
        v52 = v38;
        _os_log_impl(&dword_223E7A000, v39, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %d, %@, %@)%@", &v41, 0x36u);
      }

      (*(*(a1 + 40) + 16))();
      goto LABEL_15;
    }

    v27 = brc_bread_crumbs();
    v28 = brc_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      __84__BRCXPCRegularIPCsClient__getiWorkPublishingInfoForLocalItem_itemIdentifier_reply___block_invoke_cold_3();
    }

    v29 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: only got sharing key or base token, didn't get both"}];
    v30 = brc_bread_crumbs();
    v31 = brc_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = *(a1 + 32);
      v41 = 138413570;
      v42 = v32;
      v43 = 1024;
      v44 = 0;
      v45 = 1024;
      v46 = 0;
      v47 = 2112;
      v48 = 0;
      v49 = 2112;
      v50 = v29;
      v51 = 2112;
      v52 = v30;
      _os_log_impl(&dword_223E7A000, v31, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %d, %@, %@)%@", &v41, 0x36u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v33 = brc_bread_crumbs();
    v34 = brc_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = *(a1 + 32);
      v41 = 138413570;
      v42 = v35;
      v43 = 1024;
      v44 = 0;
      v45 = 1024;
      v46 = 0;
      v47 = 2112;
      v48 = 0;
      v49 = 2112;
      v50 = 0;
      v51 = 2112;
      v52 = v33;
      _os_log_impl(&dword_223E7A000, v34, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %d, %@, %@)%@", &v41, 0x36u);
    }

    (*(*(a1 + 40) + 16))();
  }

LABEL_26:
}

- (void)_setiWorkPublishingInfoForLocalItem:(id)item itemIdentifier:(id)identifier publish:(BOOL)publish readonly:(BOOL)readonly reply:(id)reply
{
  readonlyCopy = readonly;
  publishCopy = publish;
  v47 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  identifierCopy = identifier;
  replyCopy = reply;
  if (!itemCopy)
  {
    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:identifierCopy];
      *buf = 138412802;
      selfCopy4 = self;
      v43 = 2112;
      v44 = v24;
      v45 = 2112;
      v46 = v22;
      _os_log_impl(&dword_223E7A000, v23, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    v25 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:identifierCopy];
    goto LABEL_18;
  }

  if (([itemCopy isDocument] & 1) == 0)
  {
    v26 = brc_bread_crumbs();
    v27 = brc_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = [MEMORY[0x277CCA9B8] brc_errorNoDocument:identifierCopy underlyingPOSIXError:21];
      *buf = 138412802;
      selfCopy4 = self;
      v43 = 2112;
      v44 = v28;
      v45 = 2112;
      v46 = v26;
      _os_log_impl(&dword_223E7A000, v27, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    v25 = [MEMORY[0x277CCA9B8] brc_errorNoDocument:identifierCopy underlyingPOSIXError:21];
    goto LABEL_18;
  }

  if (([itemCopy isKnownByServer] & 1) == 0)
  {
    v29 = brc_bread_crumbs();
    v30 = brc_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = [MEMORY[0x277CCA9B8] brc_errorNotInCloud:identifierCopy];
      *buf = 138412802;
      selfCopy4 = self;
      v43 = 2112;
      v44 = v31;
      v45 = 2112;
      v46 = v29;
      _os_log_impl(&dword_223E7A000, v30, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    v25 = [MEMORY[0x277CCA9B8] brc_errorNotInCloud:identifierCopy];
    goto LABEL_18;
  }

  v15 = [itemCopy st];
  iWorkShareable = [v15 iWorkShareable];

  if ((iWorkShareable & 1) == 0)
  {
    v32 = brc_bread_crumbs();
    v33 = brc_default_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"path isn't iWork Shareable" value:identifierCopy];
      *buf = 138412802;
      selfCopy4 = self;
      v43 = 2112;
      v44 = v34;
      v45 = 2112;
      v46 = v32;
      _os_log_impl(&dword_223E7A000, v33, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    v25 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"path isn't iWork Shareable" value:identifierCopy];
LABEL_18:
    v20 = v25;
    replyCopy[2](replyCopy, v25);
    goto LABEL_19;
  }

  v17 = [BRCiWorkPublishingOperation alloc];
  asDocument = [itemCopy asDocument];
  session = [(BRCXPCClient *)self session];
  v20 = [(BRCiWorkPublishingOperation *)v17 initWithDocumentItem:asDocument sessionContext:session forPublish:publishCopy readonly:readonlyCopy];

  v35 = MEMORY[0x277D85DD0];
  v36 = 3221225472;
  v37 = __101__BRCXPCRegularIPCsClient__setiWorkPublishingInfoForLocalItem_itemIdentifier_publish_readonly_reply___block_invoke;
  v38 = &unk_2785024A0;
  selfCopy5 = self;
  v40 = replyCopy;
  [(_BRCOperation *)v20 setFinishBlock:&v35];
  v21 = [(BRCXPCClient *)self session:v35];
  [v21 addMiscOperation:v20];

  [(_BRCOperation *)v20 schedule];
LABEL_19:
}

void __101__BRCXPCRegularIPCsClient__setiWorkPublishingInfoForLocalItem_itemIdentifier_publish_readonly_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = [v4 brc_wrappedError];
    v11 = 138412802;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v11, 0x20u);
  }

  v9 = *(a1 + 40);
  v10 = [v4 brc_wrappedError];
  (*(v9 + 16))(v9, v10);
}

- (void)_getiWorkPublishingBadgingStatusForLocalItem:(id)item itemIdentifier:(id)identifier reply:(id)reply
{
  v37 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  identifierCopy = identifier;
  replyCopy = reply;
  if (!itemCopy)
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:identifierCopy];
      v29 = 138413058;
      selfCopy5 = self;
      v31 = 1024;
      v32 = 0;
      v33 = 2112;
      v34 = v17;
      v35 = 2112;
      v36 = v15;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v29, 0x26u);
    }

    v18 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:identifierCopy];
    goto LABEL_20;
  }

  if (([itemCopy isDocument] & 1) == 0)
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [MEMORY[0x277CCA9B8] brc_errorNoDocument:identifierCopy underlyingPOSIXError:21];
      v29 = 138413058;
      selfCopy5 = self;
      v31 = 1024;
      v32 = 0;
      v33 = 2112;
      v34 = v21;
      v35 = 2112;
      v36 = v19;
      _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v29, 0x26u);
    }

    v18 = [MEMORY[0x277CCA9B8] brc_errorNoDocument:identifierCopy underlyingPOSIXError:21];
    goto LABEL_20;
  }

  if (([itemCopy isKnownByServer] & 1) == 0)
  {
    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [MEMORY[0x277CCA9B8] brc_errorNotInCloud:identifierCopy];
      v29 = 138413058;
      selfCopy5 = self;
      v31 = 1024;
      v32 = 0;
      v33 = 2112;
      v34 = v24;
      v35 = 2112;
      v36 = v22;
      _os_log_impl(&dword_223E7A000, v23, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v29, 0x26u);
    }

    v18 = [MEMORY[0x277CCA9B8] brc_errorNotInCloud:identifierCopy];
    goto LABEL_20;
  }

  v11 = [itemCopy st];
  iWorkShareable = [v11 iWorkShareable];

  if ((iWorkShareable & 1) == 0)
  {
    v25 = brc_bread_crumbs();
    v26 = brc_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"path isn't iWork Shareable" value:identifierCopy];
      v29 = 138413058;
      selfCopy5 = self;
      v31 = 1024;
      v32 = 0;
      v33 = 2112;
      v34 = v27;
      v35 = 2112;
      v36 = v25;
      _os_log_impl(&dword_223E7A000, v26, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v29, 0x26u);
    }

    v18 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"path isn't iWork Shareable" value:identifierCopy];
LABEL_20:
    v28 = v18;
    replyCopy[2](replyCopy, 0, v18);

    goto LABEL_21;
  }

  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v29 = 138413058;
    selfCopy5 = self;
    v31 = 1024;
    LOBYTE(v32) = [itemCopy sharingOptions] & 3;
    v32 = v32;
    v33 = 2112;
    v34 = 0;
    v35 = 2112;
    v36 = v13;
    _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v29, 0x26u);
  }

  replyCopy[2](replyCopy, [itemCopy sharingOptions] & 3, 0);
LABEL_21:
}

- (void)_getiWorkNeedsShareMigrateForLocalItem:(id)item itemIdentifier:(id)identifier reply:(id)reply
{
  v38 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  identifierCopy = identifier;
  replyCopy = reply;
  if (!itemCopy)
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:identifierCopy];
      v30 = 138413058;
      selfCopy5 = self;
      v32 = 1024;
      v33 = 0;
      v34 = 2112;
      v35 = v18;
      v36 = 2112;
      v37 = v16;
      _os_log_impl(&dword_223E7A000, v17, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v30, 0x26u);
    }

    v19 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:identifierCopy];
    goto LABEL_20;
  }

  if (([itemCopy isDocument] & 1) == 0)
  {
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [MEMORY[0x277CCA9B8] brc_errorNoDocument:identifierCopy underlyingPOSIXError:21];
      v30 = 138413058;
      selfCopy5 = self;
      v32 = 1024;
      v33 = 0;
      v34 = 2112;
      v35 = v22;
      v36 = 2112;
      v37 = v20;
      _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v30, 0x26u);
    }

    v19 = [MEMORY[0x277CCA9B8] brc_errorNoDocument:identifierCopy underlyingPOSIXError:21];
    goto LABEL_20;
  }

  if (([itemCopy isKnownByServer] & 1) == 0)
  {
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [MEMORY[0x277CCA9B8] brc_errorNotInCloud:identifierCopy];
      v30 = 138413058;
      selfCopy5 = self;
      v32 = 1024;
      v33 = 0;
      v34 = 2112;
      v35 = v25;
      v36 = 2112;
      v37 = v23;
      _os_log_impl(&dword_223E7A000, v24, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v30, 0x26u);
    }

    v19 = [MEMORY[0x277CCA9B8] brc_errorNotInCloud:identifierCopy];
    goto LABEL_20;
  }

  v11 = [itemCopy st];
  iWorkShareable = [v11 iWorkShareable];

  if ((iWorkShareable & 1) == 0)
  {
    v26 = brc_bread_crumbs();
    v27 = brc_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"path isn't iWork Shareable" value:identifierCopy];
      v30 = 138413058;
      selfCopy5 = self;
      v32 = 1024;
      v33 = 0;
      v34 = 2112;
      v35 = v28;
      v36 = 2112;
      v37 = v26;
      _os_log_impl(&dword_223E7A000, v27, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v30, 0x26u);
    }

    v19 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"path isn't iWork Shareable" value:identifierCopy];
LABEL_20:
    v29 = v19;
    replyCopy[2](replyCopy, 0, v19);

    goto LABEL_21;
  }

  v13 = [itemCopy sharingOptions] & 0x4D;
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v30 = 138413058;
    selfCopy5 = self;
    v32 = 1024;
    v33 = v13 == 1;
    v34 = 2112;
    v35 = 0;
    v36 = 2112;
    v37 = v14;
    _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v30, 0x26u);
  }

  (replyCopy)[2](replyCopy, v13 == 1, 0);
LABEL_21:
}

- (void)_launchItemCountMismatchChecksForLocalItem:(id)item itemIdentifier:(id)identifier reply:(id)reply
{
  v34 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  identifierCopy = identifier;
  replyCopy = reply;
  if (!itemCopy)
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:identifierCopy];
      *buf = 138413058;
      selfCopy2 = self;
      v28 = 1024;
      v29 = 0;
      v30 = 2112;
      v31 = v18;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&dword_223E7A000, v17, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", buf, 0x26u);
    }

    v19 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:identifierCopy];
    goto LABEL_10;
  }

  if (([itemCopy isDirectory] & 1) == 0)
  {
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [MEMORY[0x277CCA9B8] brc_errorNoDocument:identifierCopy underlyingPOSIXError:20];
      *buf = 138413058;
      selfCopy2 = self;
      v28 = 1024;
      v29 = 0;
      v30 = 2112;
      v31 = v22;
      v32 = 2112;
      v33 = v20;
      _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", buf, 0x26u);
    }

    v19 = [MEMORY[0x277CCA9B8] brc_errorNoDocument:identifierCopy underlyingPOSIXError:20];
LABEL_10:
    v23 = v19;
    replyCopy[2](replyCopy, 0, v19);

    goto LABEL_11;
  }

  session = [(BRCXPCClient *)self session];
  applyScheduler = [session applyScheduler];
  hasActiveWorkGroup = [applyScheduler hasActiveWorkGroup];
  v14 = dispatch_time(0, 10000000000);
  dispatch_group_wait(hasActiveWorkGroup, v14);

  asDirectory = [itemCopy asDirectory];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __91__BRCXPCRegularIPCsClient__launchItemCountMismatchChecksForLocalItem_itemIdentifier_reply___block_invoke;
  v24[3] = &unk_2785072E0;
  v24[4] = self;
  v25 = replyCopy;
  [BRCItemCountMismatchReport generateReportForSharedFolder:asDirectory qualityOfService:25 completionHandler:v24];

LABEL_11:
}

void __91__BRCXPCRegularIPCsClient__launchItemCountMismatchChecksForLocalItem_itemIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = [v3 itemCountDifference] == 0;
      v8 = [v3 lastError];
      v19 = 138413058;
      v20 = v6;
      v21 = 1024;
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v19, 0x26u);
    }

    v9 = *(a1 + 40);
    v10 = [v3 itemCountDifference] == 0;
    v11 = [v3 lastError];
    (*(v9 + 16))(v9, v10, v11);
  }

  else
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    v15 = *MEMORY[0x277CFABD0];
    if (v14)
    {
      v16 = *(a1 + 32);
      v17 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:9999 description:@"Failed generating mismatch report"];
      v19 = 138413058;
      v20 = v16;
      v21 = 1024;
      v22 = 0;
      v23 = 2112;
      v24 = v17;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v19, 0x26u);
    }

    v18 = *(a1 + 40);
    v11 = [MEMORY[0x277CCA9B8] br_errorWithDomain:v15 code:9999 description:@"Failed generating mismatch report"];
    (*(v18 + 16))(v18, 0, v11);
  }
}

- (void)_startOperation:(id)operation toCopySharingAccessTokenWithLocalItem:(id)item itemIdentifier:(id)identifier reply:(id)reply
{
  itemCopy = item;
  identifierCopy = identifier;
  replyCopy = reply;
  operationCopy = operation;
  v14 = [BRCSharingCopyAccessTokenOperation alloc];
  asDocument = [itemCopy asDocument];
  session = [(BRCXPCClient *)self session];
  v17 = [(BRCSharingCopyAccessTokenOperation *)v14 initWithItem:asDocument sessionContext:session];

  [(_BRCFrameworkOperation *)v17 setRemoteClientProxy:operationCopy];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __102__BRCXPCRegularIPCsClient__startOperation_toCopySharingAccessTokenWithLocalItem_itemIdentifier_reply___block_invoke;
  v25 = &unk_278507308;
  v26 = itemCopy;
  v27 = identifierCopy;
  selfCopy = self;
  v29 = replyCopy;
  v18 = replyCopy;
  v19 = identifierCopy;
  v20 = itemCopy;
  [(_BRCOperation *)v17 setFinishBlock:&v22];
  v21 = [(BRCXPCClient *)self session:v22];
  [v21 addMiscOperation:v17];

  [(_BRCOperation *)v17 schedule];
}

void __102__BRCXPCRegularIPCsClient__startOperation_toCopySharingAccessTokenWithLocalItem_itemIdentifier_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  if ([v5 br_isCloudDocsErrorCode:24])
  {
    v7 = [*(a1 + 32) clientZone];
    v8 = [v7 isSharedZone];

    v9 = *(a1 + 40);
    if (v8)
    {
      v10 = [MEMORY[0x277CCA9B8] brc_errorDocumentIsNoLongerSharedAtIdentifier:v9];

      v11 = [*(a1 + 48) session];
      v12 = [v11 clientTruthWorkloop];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __102__BRCXPCRegularIPCsClient__startOperation_toCopySharingAccessTokenWithLocalItem_itemIdentifier_reply___block_invoke_2;
      block[3] = &unk_2784FF450;
      v22 = *(a1 + 32);
      dispatch_async(v12, block);
    }

    else
    {
      v10 = [MEMORY[0x277CCA9B8] brc_errorDocumentIsNotSharedAtIdentifier:v9];
    }

    v5 = v10;
  }

  v13 = [v6 objectForKeyedSubscript:@"token"];
  v14 = [v6 objectForKeyedSubscript:@"ref_id"];

  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = *(a1 + 48);
    v18 = [v5 brc_wrappedError];
    *buf = 138413314;
    v24 = v17;
    v25 = 2112;
    v26 = v13;
    v27 = 2112;
    v28 = v14;
    v29 = 2112;
    v30 = v18;
    v31 = 2112;
    v32 = v15;
    _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", buf, 0x34u);
  }

  v19 = *(a1 + 56);
  v20 = [v5 brc_wrappedError];
  (*(v19 + 16))(v19, v13, v14, v20);
}

void __102__BRCXPCRegularIPCsClient__startOperation_toCopySharingAccessTokenWithLocalItem_itemIdentifier_reply___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) clientZone];
  [v1 scheduleSyncDown];
}

- (void)_startOperation:(id)operation toCopySharingInfoWithLocalItem:(id)item reply:(id)reply
{
  itemCopy = item;
  replyCopy = reply;
  operationCopy = operation;
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [BRCXPCRegularIPCsClient _startOperation:toCopySharingInfoWithLocalItem:reply:];
  }

  v13 = [BRCSharingCopyShareOperation alloc];
  session = [(BRCXPCClient *)self session];
  v15 = [(BRCSharingCopyShareOperation *)v13 initWithItem:itemCopy sessionContext:session];

  [(_BRCFrameworkOperation *)v15 setRemoteClientProxy:operationCopy];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__BRCXPCRegularIPCsClient__startOperation_toCopySharingInfoWithLocalItem_reply___block_invoke;
  v18[3] = &unk_278503E90;
  v19 = itemCopy;
  selfCopy = self;
  v21 = replyCopy;
  v16 = replyCopy;
  v17 = itemCopy;
  [(_BRCOperation *)v15 setFinishBlock:v18];
  [(_BRCOperation *)v15 schedule];
}

void __80__BRCXPCRegularIPCsClient__startOperation_toCopySharingInfoWithLocalItem_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __80__BRCXPCRegularIPCsClient__startOperation_toCopySharingInfoWithLocalItem_reply___block_invoke_cold_1();
    }
  }

  if (([v6 brc_containsCloudKitErrorCode:11] & 1) != 0 || objc_msgSend(v6, "brc_isCloudKitErrorImplyingZoneNeedsCreation"))
  {
    v7 = [*(a1 + 32) clientZone];
    v8 = [v7 isSharedZone];

    if (v8)
    {
      v9 = [MEMORY[0x277CCA9B8] brc_errorDocumentIsNoLongerSharedAtIdentifier:0];

      v10 = [*(a1 + 40) session];
      v11 = [v10 clientTruthWorkloop];
      v33 = MEMORY[0x277D85DD0];
      v34 = 3221225472;
      v35 = __80__BRCXPCRegularIPCsClient__startOperation_toCopySharingInfoWithLocalItem_reply___block_invoke_567;
      v36 = &unk_2784FF450;
      v37 = *(a1 + 32);
      v12 = v11;
      v13 = &v33;
      v14 = objc_autoreleasePoolPush();
      v38 = 0uLL;
      v39 = 0;
      __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v38);
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v31 = v38;
        label = dispatch_queue_get_label(v12);
        *block = 134218498;
        *&block[4] = v31;
        *&block[12] = 2080;
        *&block[14] = label;
        *&block[22] = 2112;
        v41 = v15;
        _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", block, 0x20u);
      }

      *&v42[16] = v38;
      v43 = v39;
      *block = MEMORY[0x277D85DD0];
      *&block[8] = 3221225472;
      *&block[16] = __dispatch_async_with_logs_block_invoke_19;
      v41 = &unk_2784FF568;
      v17 = v12;
      *v42 = v17;
      v18 = v13;
      *&v42[8] = v18;
      dispatch_async(v17, block);

      objc_autoreleasePoolPop(v14);
      v6 = v37;
    }

    else
    {
      v9 = [MEMORY[0x277CCA9B8] brc_errorDocumentIsNotSharedAtIdentifier:0];
    }

    v6 = v9;
  }

  v19 = [v5 objectForKeyedSubscript:{@"share", v33, v34, v35, v36}];
  v20 = [v5 objectForKeyedSubscript:@"rootURL"];
  v21 = [v19 participants];
  v22 = [v21 count];

  if (v22 >= 3)
  {
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      __80__BRCXPCRegularIPCsClient__startOperation_toCopySharingInfoWithLocalItem_reply___block_invoke_cold_2(v19, v23, v24);
    }
  }

  v25 = brc_bread_crumbs();
  v26 = brc_default_log();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = *(a1 + 40);
    v28 = [v6 brc_wrappedError];
    *block = 138413314;
    *&block[4] = v27;
    *&block[12] = 2112;
    *&block[14] = v19;
    *&block[22] = 2112;
    v41 = v20;
    *v42 = 2112;
    *&v42[2] = v28;
    *&v42[10] = 2112;
    *&v42[12] = v25;
    _os_log_impl(&dword_223E7A000, v26, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", block, 0x34u);
  }

  v29 = *(a1 + 48);
  v30 = [v6 brc_wrappedError];
  (*(v29 + 16))(v29, v19, v20, v30);
}

void __80__BRCXPCRegularIPCsClient__startOperation_toCopySharingInfoWithLocalItem_reply___block_invoke_567(uint64_t a1)
{
  v1 = [*(a1 + 32) clientZone];
  [v1 scheduleSyncDown];
}

- (void)startOperation:(id)operation toCopySharingInfoWithItemID:(id)d reply:(id)reply
{
  v38 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  dCopy = d;
  replyCopy = reply;
  memset(v27, 0, sizeof(v27));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient startOperation:toCopySharingInfoWithItemID:reply:]", 3950, 0, v27);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v27[0];
    v14 = qos_class_self();
    v15 = BRCPrettyPrintEnumWithContext(v14, &brc_qos_entries, 0);
    *buf = 134219010;
    v29 = v13;
    v30 = 2112;
    selfCopy = self;
    v32 = 2112;
    v33 = v15;
    v34 = 2080;
    v35 = "[BRCXPCRegularIPCsClient startOperation:toCopySharingInfoWithItemID:reply:]";
    v36 = 2112;
    v37 = v11;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  clientPriviledgesDescriptor = [(BRCXPCClient *)self clientPriviledgesDescriptor];
  isSharingProxyEntitled = [clientPriviledgesDescriptor isSharingProxyEntitled];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __76__BRCXPCRegularIPCsClient_startOperation_toCopySharingInfoWithItemID_reply___block_invoke;
  v25[3] = &unk_2785014D0;
  v25[4] = self;
  v18 = replyCopy;
  v26 = v18;
  v19 = _brc_ipc_check_client_privilege(self, 1, isSharingProxyEntitled, "isSharingProxyEntitled", v25);

  if (v19)
  {
    clientTruthWorkloop = [(BRCAccountSession *)self->super.__session clientTruthWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__BRCXPCRegularIPCsClient_startOperation_toCopySharingInfoWithItemID_reply___block_invoke_576;
    block[3] = &unk_2785003B0;
    block[4] = self;
    v22 = dCopy;
    v24 = v18;
    v23 = operationCopy;
    dispatch_async_and_wait(clientTruthWorkloop, block);
  }

  __brc_leave_section(v27);
}

void __76__BRCXPCRegularIPCsClient_startOperation_toCopySharingInfoWithItemID_reply___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413314;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = 0;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", &v7, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
}

void __76__BRCXPCRegularIPCsClient_startOperation_toCopySharingInfoWithItemID_reply___block_invoke_576(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) session];
  v3 = [v2 itemFetcher];
  v4 = [MEMORY[0x277CFAE50] fileObjectIDWithString:*(a1 + 40)];
  v5 = [v3 itemByFileObjectID:v4];

  if (v5)
  {
    [*(a1 + 32) _startOperation:*(a1 + 48) toCopySharingInfoWithLocalItem:v5 reply:*(a1 + 56)];
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:*(a1 + 40)];
      v12 = 138413314;
      v13 = v8;
      v14 = 2112;
      v15 = 0;
      v16 = 2112;
      v17 = 0;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", &v12, 0x34u);
    }

    v10 = *(a1 + 56);
    v11 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:*(a1 + 40)];
    (*(v10 + 16))(v10, 0, 0, v11);
  }
}

- (void)startOperation:(id)operation toCopySharingAccessTokenOfItemID:(id)d reply:(id)reply
{
  v38 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  dCopy = d;
  replyCopy = reply;
  memset(v27, 0, sizeof(v27));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient startOperation:toCopySharingAccessTokenOfItemID:reply:]", 3966, 0, v27);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v27[0];
    v14 = qos_class_self();
    v15 = BRCPrettyPrintEnumWithContext(v14, &brc_qos_entries, 0);
    *buf = 134219010;
    v29 = v13;
    v30 = 2112;
    selfCopy = self;
    v32 = 2112;
    v33 = v15;
    v34 = 2080;
    v35 = "[BRCXPCRegularIPCsClient startOperation:toCopySharingAccessTokenOfItemID:reply:]";
    v36 = 2112;
    v37 = v11;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  clientPriviledgesDescriptor = [(BRCXPCClient *)self clientPriviledgesDescriptor];
  isSharingProxyEntitled = [clientPriviledgesDescriptor isSharingProxyEntitled];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __81__BRCXPCRegularIPCsClient_startOperation_toCopySharingAccessTokenOfItemID_reply___block_invoke;
  v25[3] = &unk_2785014D0;
  v25[4] = self;
  v18 = replyCopy;
  v26 = v18;
  v19 = _brc_ipc_check_client_privilege(self, 1, isSharingProxyEntitled, "isSharingProxyEntitled", v25);

  if (v19)
  {
    clientTruthWorkloop = [(BRCAccountSession *)self->super.__session clientTruthWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__BRCXPCRegularIPCsClient_startOperation_toCopySharingAccessTokenOfItemID_reply___block_invoke_578;
    block[3] = &unk_2785003B0;
    block[4] = self;
    v22 = dCopy;
    v24 = v18;
    v23 = operationCopy;
    dispatch_async_and_wait(clientTruthWorkloop, block);
  }

  __brc_leave_section(v27);
}

void __81__BRCXPCRegularIPCsClient_startOperation_toCopySharingAccessTokenOfItemID_reply___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413314;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = 0;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", &v7, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
}

void __81__BRCXPCRegularIPCsClient_startOperation_toCopySharingAccessTokenOfItemID_reply___block_invoke_578(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) session];
  v3 = [v2 itemFetcher];
  v4 = [MEMORY[0x277CFAE50] fileObjectIDWithString:*(a1 + 40)];
  v5 = [v3 itemByFileObjectID:v4];

  if (v5 && ([v5 isDocument] & 1) != 0)
  {
    if ([v5 isKnownByServer] & 1) != 0 || (objc_msgSend(v5, "isShareAcceptationFault"))
    {
      goto LABEL_11;
    }

    v6 = [MEMORY[0x277CCA9B8] brc_errorNotInCloud:*(a1 + 40)];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] brc_errorNoDocument:*(a1 + 40) underlyingPOSIXError:2];
  }

  v7 = v6;
  if (!v6)
  {
LABEL_11:
    [*(a1 + 32) _startOperation:*(a1 + 48) toCopySharingAccessTokenWithLocalItem:v5 itemIdentifier:*(a1 + 40) reply:*(a1 + 56)];
    goto LABEL_12;
  }

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    v11 = 138413314;
    v12 = v10;
    v13 = 2112;
    v14 = 0;
    v15 = 2112;
    v16 = 0;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", &v11, 0x34u);
  }

  (*(*(a1 + 56) + 16))();
LABEL_12:
}

- (void)startOperation:(id)operation toCopyShortTokenOfItemID:(id)d reply:(id)reply
{
  v38 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  dCopy = d;
  replyCopy = reply;
  memset(v27, 0, sizeof(v27));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient startOperation:toCopyShortTokenOfItemID:reply:]", 3990, 0, v27);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v27[0];
    v14 = qos_class_self();
    v15 = BRCPrettyPrintEnumWithContext(v14, &brc_qos_entries, 0);
    *buf = 134219010;
    v29 = v13;
    v30 = 2112;
    selfCopy = self;
    v32 = 2112;
    v33 = v15;
    v34 = 2080;
    v35 = "[BRCXPCRegularIPCsClient startOperation:toCopyShortTokenOfItemID:reply:]";
    v36 = 2112;
    v37 = v11;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  clientPriviledgesDescriptor = [(BRCXPCClient *)self clientPriviledgesDescriptor];
  isSharingProxyEntitled = [clientPriviledgesDescriptor isSharingProxyEntitled];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __73__BRCXPCRegularIPCsClient_startOperation_toCopyShortTokenOfItemID_reply___block_invoke;
  v25[3] = &unk_2785014D0;
  v25[4] = self;
  v18 = replyCopy;
  v26 = v18;
  v19 = _brc_ipc_check_client_privilege(self, 1, isSharingProxyEntitled, "isSharingProxyEntitled", v25);

  if (v19)
  {
    clientTruthWorkloop = [(BRCAccountSession *)self->super.__session clientTruthWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__BRCXPCRegularIPCsClient_startOperation_toCopyShortTokenOfItemID_reply___block_invoke_579;
    block[3] = &unk_2785003B0;
    block[4] = self;
    v22 = dCopy;
    v24 = v18;
    v23 = operationCopy;
    dispatch_async_and_wait(clientTruthWorkloop, block);
  }

  __brc_leave_section(v27);
}

void __73__BRCXPCRegularIPCsClient_startOperation_toCopyShortTokenOfItemID_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __73__BRCXPCRegularIPCsClient_startOperation_toCopyShortTokenOfItemID_reply___block_invoke_579(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) session];
  v3 = [v2 itemFetcher];
  v4 = [MEMORY[0x277CFAE50] fileObjectIDWithString:*(a1 + 40)];
  v5 = [v3 itemByFileObjectID:v4];

  if (v5 && ([v5 isDocument] & 1) != 0)
  {
    if ([v5 isKnownByServer] & 1) != 0 || (objc_msgSend(v5, "isShareAcceptationFault"))
    {
      goto LABEL_11;
    }

    v6 = [MEMORY[0x277CCA9B8] brc_errorNotInCloud:*(a1 + 40)];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] brc_errorNoDocument:*(a1 + 40) underlyingPOSIXError:2];
  }

  v7 = v6;
  if (!v6)
  {
LABEL_11:
    v11 = [BRCSharingCopyShortTokenOperation alloc];
    v12 = [v5 asDocument];
    v13 = [*(a1 + 32) session];
    v7 = [(BRCSharingCopyShortTokenOperation *)v11 initWithItem:v12 sessionContext:v13];

    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __73__BRCXPCRegularIPCsClient_startOperation_toCopyShortTokenOfItemID_reply___block_invoke_581;
    v17 = &unk_2785024A0;
    v18 = *(a1 + 32);
    v19 = *(a1 + 56);
    [(_BRCOperation *)v7 setFinishBlock:&v14];
    [*(a1 + 32) _startSharingOperationAfterAcceptation:v7 client:*(a1 + 48) item:{v5, v14, v15, v16, v17, v18}];

    goto LABEL_12;
  }

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    *buf = 138413058;
    v21 = v10;
    v22 = 2112;
    v23 = 0;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
  }

  (*(*(a1 + 56) + 16))();
LABEL_12:
}

void __73__BRCXPCRegularIPCsClient_startOperation_toCopyShortTokenOfItemID_reply___block_invoke_581(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v10 = [v6 brc_wrappedError];
    v13 = 138413058;
    v14 = v9;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v13, 0x2Au);
  }

  v11 = *(a1 + 40);
  v12 = [v6 brc_wrappedError];
  (*(v11 + 16))(v11, v5, v12);
}

- (void)startOperation:(id)operation toCopySharingWebAuthTokenForContainerID:(id)d reply:(id)reply
{
  v40 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  dCopy = d;
  replyCopy = reply;
  memset(v29, 0, sizeof(v29));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient startOperation:toCopySharingWebAuthTokenForContainerID:reply:]", 4018, 0, v29);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v29[0];
    v14 = qos_class_self();
    v15 = BRCPrettyPrintEnumWithContext(v14, &brc_qos_entries, 0);
    *buf = 134219010;
    v31 = v13;
    v32 = 2112;
    selfCopy = self;
    v34 = 2112;
    v35 = v15;
    v36 = 2080;
    v37 = "[BRCXPCRegularIPCsClient startOperation:toCopySharingWebAuthTokenForContainerID:reply:]";
    v38 = 2112;
    v39 = v11;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  clientPriviledgesDescriptor = [(BRCXPCClient *)self clientPriviledgesDescriptor];
  isSharingPrivateInterfaceEntitled = [clientPriviledgesDescriptor isSharingPrivateInterfaceEntitled];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __88__BRCXPCRegularIPCsClient_startOperation_toCopySharingWebAuthTokenForContainerID_reply___block_invoke;
  v27[3] = &unk_2785014D0;
  v27[4] = self;
  v18 = replyCopy;
  v28 = v18;
  v19 = _brc_ipc_check_client_privilege(self, 1, isSharingPrivateInterfaceEntitled, "isSharingPrivateInterfaceEntitled", v27);

  if (v19)
  {
    session = [(BRCXPCClient *)self session];
    v21 = [BRCSharingCopyWebAuthTokenOperation alloc];
    syncContextProvider = [session syncContextProvider];
    defaultSyncContext = [syncContextProvider defaultSyncContext];
    v24 = [(BRCSharingCopyWebAuthTokenOperation *)v21 initWithSyncContext:defaultSyncContext ckContainerID:dCopy sessionContext:session];

    [(_BRCFrameworkOperation *)v24 setRemoteClientProxy:operationCopy];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __88__BRCXPCRegularIPCsClient_startOperation_toCopySharingWebAuthTokenForContainerID_reply___block_invoke_583;
    v25[3] = &unk_2785024A0;
    v25[4] = self;
    v26 = v18;
    [(_BRCOperation *)v24 setFinishBlock:v25];
    [session addMiscOperation:v24];
    [(_BRCOperation *)v24 schedule];
  }

  __brc_leave_section(v29);
}

void __88__BRCXPCRegularIPCsClient_startOperation_toCopySharingWebAuthTokenForContainerID_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __88__BRCXPCRegularIPCsClient_startOperation_toCopySharingWebAuthTokenForContainerID_reply___block_invoke_583(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v10 = [v6 brc_wrappedError];
    v13 = 138413058;
    v14 = v9;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v13, 0x2Au);
  }

  v11 = *(a1 + 40);
  v12 = [v6 brc_wrappedError];
  (*(v11 + 16))(v11, v5, v12);
}

- (void)startOperation:(id)operation toCopyDocumentURLForRecordID:(id)d syncIfNeeded:(BOOL)needed reply:(id)reply
{
  neededCopy = needed;
  v61 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  dCopy = d;
  replyCopy = reply;
  memset(v46, 0, sizeof(v46));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient startOperation:toCopyDocumentURLForRecordID:syncIfNeeded:reply:]", 4037, 0, v46);
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = v46[0];
    v15 = qos_class_self();
    v16 = BRCPrettyPrintEnumWithContext(v15, &brc_qos_entries, 0);
    *buf = 134219010;
    v48 = v14;
    v49 = 2112;
    selfCopy2 = self;
    v51 = 2112;
    v52 = v16;
    v53 = 2080;
    v54 = "[BRCXPCRegularIPCsClient startOperation:toCopyDocumentURLForRecordID:syncIfNeeded:reply:]";
    v55 = 2112;
    v56 = v12;
    _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  clientPriviledgesDescriptor = [(BRCXPCClient *)self clientPriviledgesDescriptor];
  isSharingPrivateInterfaceEntitled = [clientPriviledgesDescriptor isSharingPrivateInterfaceEntitled];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke;
  v44[3] = &unk_2785014D0;
  v44[4] = self;
  v19 = replyCopy;
  v45 = v19;
  v20 = _brc_ipc_check_client_privilege(self, 1, isSharingPrivateInterfaceEntitled, "isSharingPrivateInterfaceEntitled", v44);

  if (v20)
  {
    memset(v43, 0, sizeof(v43));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient startOperation:toCopyDocumentURLForRecordID:syncIfNeeded:reply:]", 4039, 0, v43);
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = v43[0];
      v24 = qos_class_self();
      v25 = BRCPrettyPrintEnumWithContext(v24, &brc_qos_entries, 0);
      v26 = v25;
      v27 = "No";
      *buf = 134219522;
      v48 = v23;
      v49 = 2112;
      if (neededCopy)
      {
        v27 = "Yes";
      }

      selfCopy2 = self;
      v51 = 2112;
      v52 = v25;
      v53 = 2080;
      v54 = "[BRCXPCRegularIPCsClient startOperation:toCopyDocumentURLForRecordID:syncIfNeeded:reply:]";
      v55 = 2112;
      v56 = dCopy;
      v57 = 2080;
      v58 = v27;
      v59 = 2112;
      v60 = v21;
      _os_log_impl(&dword_223E7A000, v22, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s looking up url for recordID %@ fetching from server:%s%@", buf, 0x48u);
    }

    session = [(BRCXPCClient *)self session];
    v29 = self->super._tracker;
    session2 = [(BRCXPCClient *)self session];
    clientTruthWorkloop = [session2 clientTruthWorkloop];

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_586;
    v36[3] = &unk_2785073F8;
    v36[4] = self;
    v41 = v19;
    v32 = v29;
    v37 = v32;
    v33 = clientTruthWorkloop;
    v38 = v33;
    v39 = dCopy;
    v34 = session;
    v40 = v34;
    v42 = neededCopy;
    [v34 fetchUserRecordIDWithCompletionHandler:v36];

    __brc_leave_section(v43);
  }

  __brc_leave_section(v46);
}

void __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_586(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_587;
    v16[3] = &unk_2785073D0;
    v9 = *(a1 + 56);
    v10 = *(a1 + 32);
    v17 = v9;
    v18 = v10;
    v23 = *(a1 + 72);
    v19 = v5;
    v20 = *(a1 + 64);
    v21 = *(a1 + 40);
    v24 = *(a1 + 80);
    v22 = *(a1 + 48);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_600;
    v14[3] = &unk_278500048;
    v14[4] = *(a1 + 32);
    v15 = *(a1 + 72);
    brc_task_tracker_async_with_logs(v7, v8, v16, v14);
  }

  else
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      *buf = 138413058;
      v26 = v13;
      v27 = 2112;
      v28 = 0;
      v29 = 2112;
      v30 = v6;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    (*(*(a1 + 72) + 16))();
  }
}

void __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_587(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) session];
  v4 = [v3 zoneAppRetriever];
  v5 = [v2 brc_itemIDWithZoneAppRetriever:v4 error:&v35];

  if (v5)
  {
    v6 = [*(a1 + 32) zoneID];
    v7 = [v6 ownerName];
    v8 = [*(a1 + 48) recordName];
    v9 = [v7 isEqualToString:v8];

    if (v9)
    {
      v10 = objc_alloc(MEMORY[0x277CBC5F8]);
      v11 = [v6 zoneName];
      v12 = [v10 initWithZoneName:v11 ownerName:*MEMORY[0x277CBBF28]];

      v6 = v12;
    }

    v13 = [objc_alloc(MEMORY[0x277CFAE60]) initWithRecordZoneID:v6];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v37 = __Block_byref_object_copy__52;
    *&v38 = __Block_byref_object_dispose__52;
    *(&v38 + 1) = [*(a1 + 56) clientZoneByMangledID:v13];
    v14 = *(a1 + 64);
    v15 = *(*(a1 + 40) + 16);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_588;
    v24[3] = &unk_2785073A8;
    v33 = buf;
    v34 = *(a1 + 88);
    v16 = v13;
    v25 = v16;
    v26 = *(a1 + 56);
    v27 = *(a1 + 64);
    v17 = *(a1 + 72);
    v18 = *(a1 + 40);
    v28 = v17;
    v29 = v18;
    v32 = *(a1 + 80);
    v30 = *(a1 + 32);
    v31 = v5;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_599;
    v22[3] = &unk_278500048;
    v22[4] = *(a1 + 40);
    v23 = *(a1 + 80);
    brc_task_tracker_async_with_logs(v14, v15, v24, v22);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 40);
      *buf = 138413058;
      *&buf[4] = v21;
      *&buf[12] = 2112;
      *&buf[14] = 0;
      *&buf[22] = 2112;
      v37 = v35;
      LOWORD(v38) = 2112;
      *(&v38 + 2) = v19;
      _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    (*(*(a1 + 80) + 16))();
  }
}

void __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_588(uint64_t a1)
{
  if (!*(*(*(a1 + 96) + 8) + 40) && *(a1 + 104) == 1)
  {
    v2 = [*(a1 + 32) isShared];
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    if (v2)
    {
      v5 = [v3 getOrCreateSharedZones:v4];
      v6 = *(*(a1 + 96) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }

    else
    {
      v7 = [v3 getOrCreateAppLibraryAndPrivateZonesIfNecessary:v4];
      v8 = [v7 defaultClientZone];
      v9 = *(*(a1 + 96) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }

  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_2;
  v17[3] = &unk_278507380;
  v25 = *(a1 + 96);
  v18 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = *(a1 + 64);
  v19 = v13;
  v20 = v14;
  v24 = *(a1 + 88);
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  v26 = *(a1 + 104);
  v23 = *(a1 + 48);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_598;
  v15[3] = &unk_278500048;
  v15[4] = *(a1 + 64);
  v16 = *(a1 + 88);
  brc_task_tracker_async_with_logs(v11, v12, v17, v15);
}

void __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_2(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) clientZoneByMangledID:*(a1 + 40)];
  v3 = *(*(a1 + 88) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 88) + 8) + 40))
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_589;
    v36[3] = &unk_2785039E8;
    v5 = *(a1 + 56);
    v36[4] = *(a1 + 48);
    v37 = v5;
    v38 = *(a1 + 80);
    v6 = MEMORY[0x22AA4A310](v36);
    v7 = [*(*(*(a1 + 88) + 8) + 40) itemByItemID:*(a1 + 64)];
    v8 = v7;
    if (*(a1 + 96) == 1 && ([v7 isOnDisk] & 1) == 0)
    {
      v19 = *(a1 + 64);
      v20 = [*(a1 + 56) brc_itemType];
      v21 = [*(*(*(a1 + 88) + 8) + 40) serverZone];
      v22 = [v19 structureRecordIDForItemType:v20 zone:v21 aliasTargetZoneIsShared:1];

      v23 = *(*(*(a1 + 88) + 8) + 40);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_595;
      v28[3] = &unk_278507358;
      v33 = v6;
      v29 = *(a1 + 72);
      v24 = *(a1 + 32);
      v25 = *(a1 + 88);
      v30 = v24;
      v35 = v25;
      v26 = *(a1 + 64);
      v27 = *(a1 + 48);
      v31 = v26;
      v32 = v27;
      v34 = *(a1 + 80);
      [v23 performBlock:v28 whenItemWithRecordIDIsOnDisk:v22];
    }

    else
    {
      (v6)[2](v6, v8);
    }
  }

  else
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *(a1 + 48);
      v13 = [*(a1 + 40) appLibraryOrZoneName];
      v14 = [v11 brc_errorAppLibraryNotFound:v13];
      *buf = 138413058;
      v40 = v12;
      v41 = 2112;
      v42 = 0;
      v43 = 2112;
      v44 = v14;
      v45 = 2112;
      v46 = v9;
      _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    v15 = *(a1 + 80);
    v16 = MEMORY[0x277CCA9B8];
    v17 = [*(a1 + 40) appLibraryOrZoneName];
    v18 = [v16 brc_errorAppLibraryNotFound:v17];
    (*(v15 + 16))(v15, 0, v18);
  }
}

void __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_589(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isOnDisk])
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_590;
    v25[3] = &unk_2785029D0;
    v4 = v3;
    v5 = *(a1 + 32);
    v26 = v4;
    v27 = v5;
    v28 = *(a1 + 48);
    v6 = MEMORY[0x22AA4A310](v25);
    v7 = [v4 db];
    [v7 flushToMakeEditsVisibleToIPCReaders];

    v8 = [MEMORY[0x277CC64A8] br_sharedProviderManager];
    v9 = [v4 fileObjectID];
    v10 = [v9 asString];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_593;
    v22[3] = &unk_278503C90;
    v23 = v4;
    v24 = v6;
    v11 = v6;
    [v8 getUserVisibleURLForItemIdentifier:v10 completionHandler:v22];

    v12 = v26;
  }

  else
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = *(a1 + 32);
      v17 = [*(a1 + 40) description];
      v18 = [v15 brc_errorItemNotFound:v17];
      *buf = 138413058;
      v30 = v16;
      v31 = 2112;
      v32 = 0;
      v33 = 2112;
      v34 = v18;
      v35 = 2112;
      v36 = v13;
      _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = *(a1 + 48);
    v12 = [*(a1 + 40) description];
    v21 = [v19 brc_errorItemNotFound:v12];
    (*(v20 + 16))(v20, 0, v21);
  }
}

void __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_590(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v12 = 0;
    v4 = [MEMORY[0x277CC6438] wrapperWithURL:v3 readonly:0 error:&v12];
    v5 = v12;
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = [*(a1 + 32) itemID];
    v8 = [v7 description];
    v5 = [v6 brc_errorItemNotFound:v8];

    v4 = 0;
  }

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 40);
    *buf = 138413058;
    v14 = v11;
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
  }

  (*(*(a1 + 48) + 16))();
}

void __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_593(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 32);
      v10 = 138412802;
      v11 = v9;
      v12 = 2112;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Got an error while computing the URL of %@ - %@%@", &v10, 0x20u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_595(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) clientTruthWorkloop];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_2_596;
    v8[3] = &unk_278507330;
    v11 = *(a1 + 80);
    v9 = *(a1 + 48);
    v10 = *(a1 + 64);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_3;
    v6[3] = &unk_278500048;
    v6[4] = *(a1 + 56);
    v7 = *(a1 + 72);
    brc_task_tracker_async_with_logs(v3, v4, v8, v6);
  }

  else
  {
    v5 = *(*(a1 + 64) + 16);

    v5();
  }
}

void __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_2_596(void *a1)
{
  v2 = [*(*(a1[6] + 8) + 40) itemByItemID:a1[4]];
  (*(a1[5] + 16))();
}

void __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
    v8 = 138413058;
    v9 = v4;
    v10 = 2112;
    v11 = 0;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v8, 0x2Au);
  }

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
  (*(v6 + 16))(v6, 0, v7);
}

void __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_598(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
    v8 = 138413058;
    v9 = v4;
    v10 = 2112;
    v11 = 0;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v8, 0x2Au);
  }

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
  (*(v6 + 16))(v6, 0, v7);
}

void __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_599(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
    v8 = 138413058;
    v9 = v4;
    v10 = 2112;
    v11 = 0;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v8, 0x2Au);
  }

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
  (*(v6 + 16))(v6, 0, v7);
}

void __90__BRCXPCRegularIPCsClient_startOperation_toCopyDocumentURLForRecordID_syncIfNeeded_reply___block_invoke_600(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
    v8 = 138413058;
    v9 = v4;
    v10 = 2112;
    v11 = 0;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v8, 0x2Au);
  }

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
  (*(v6 + 16))(v6, 0, v7);
}

- (void)startOperation:(id)operation toCopyAvailableQuotaWithReply:(id)reply
{
  v35 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  replyCopy = reply;
  memset(v24, 0, sizeof(v24));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient startOperation:toCopyAvailableQuotaWithReply:]", 4147, 0, v24);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v24[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    v26 = v10;
    v27 = 2112;
    selfCopy = self;
    v29 = 2112;
    v30 = v12;
    v31 = 2080;
    v32 = "[BRCXPCRegularIPCsClient startOperation:toCopyAvailableQuotaWithReply:]";
    v33 = 2112;
    v34 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  clientPriviledgesDescriptor = [(BRCXPCClient *)self clientPriviledgesDescriptor];
  canFetchUserQuota = [clientPriviledgesDescriptor canFetchUserQuota];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __72__BRCXPCRegularIPCsClient_startOperation_toCopyAvailableQuotaWithReply___block_invoke;
  v22[3] = &unk_2785014D0;
  v22[4] = self;
  v15 = replyCopy;
  v23 = v15;
  v16 = _brc_ipc_check_client_privilege(self, 1, canFetchUserQuota, "canFetchUserQuota", v22);

  if (v16)
  {
    session = [(BRCXPCClient *)self session];
    v18 = [[BRCFetchQuotaOperation alloc] initWithSessionContext:session];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __72__BRCXPCRegularIPCsClient_startOperation_toCopyAvailableQuotaWithReply___block_invoke_604;
    v20[3] = &unk_278507420;
    v20[4] = self;
    v21 = v15;
    [(_BRCOperation *)v18 setFinishBlock:v20];
    br_quotaUpdateXPC = [MEMORY[0x277CBC4F8] br_quotaUpdateXPC];
    [(_BRCOperation *)v18 setGroup:br_quotaUpdateXPC];

    [session addMiscOperation:v18];
    [(_BRCOperation *)v18 schedule];
  }

  __brc_leave_section(v24);
}

void __72__BRCXPCRegularIPCsClient_startOperation_toCopyAvailableQuotaWithReply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __72__BRCXPCRegularIPCsClient_startOperation_toCopyAvailableQuotaWithReply___block_invoke_604(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v10 = 138413058;
    v11 = v9;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v10, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)startOperation:(id)operation toUploadAllFilesInContainer:(id)container reply:(id)reply
{
  v50 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  containerCopy = container;
  replyCopy = reply;
  memset(v38, 0, sizeof(v38));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient startOperation:toUploadAllFilesInContainer:reply:]", 4165, 0, v38);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v38[0];
    v14 = qos_class_self();
    v15 = BRCPrettyPrintEnumWithContext(v14, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v13;
    v42 = 2112;
    selfCopy = self;
    v44 = 2112;
    v45 = v15;
    v46 = 2080;
    v47 = "[BRCXPCRegularIPCsClient startOperation:toUploadAllFilesInContainer:reply:]";
    v48 = 2112;
    v49 = v11;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __76__BRCXPCRegularIPCsClient_startOperation_toUploadAllFilesInContainer_reply___block_invoke;
  v36[3] = &unk_2785014D0;
  v36[4] = self;
  v16 = replyCopy;
  v37 = v16;
  v17 = _brc_ipc_check_applibraries_access(self, 1, v36);

  if (v17)
  {
    session = [(BRCXPCClient *)self session];
    if (containerCopy)
    {
      session2 = [(BRCXPCClient *)self session];
      v20 = [session2 appLibraryByID:containerCopy];

      if (!v20)
      {
        v25 = brc_bread_crumbs();
        v26 = brc_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = [MEMORY[0x277CCA9B8] brc_errorAppLibraryNotFound:containerCopy];
          *buf = 138412802;
          selfCopy2 = self;
          v42 = 2112;
          selfCopy = v27;
          v44 = 2112;
          v45 = v25;
          _os_log_impl(&dword_223E7A000, v26, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
        }

        v23 = [MEMORY[0x277CCA9B8] brc_errorAppLibraryNotFound:containerCopy];
        (*(v16 + 2))(v16, v23);
        goto LABEL_12;
      }

      [(BRCXPCClient *)self addAppLibrary:v20];
      v21 = [BRCUploadAllFilesTrackerOperation alloc];
      v39 = v20;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
      v23 = [(BRCUploadAllFilesTrackerOperation *)v21 initWithSessionContext:session appLibraries:v22];
    }

    else
    {
      v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __76__BRCXPCRegularIPCsClient_startOperation_toUploadAllFilesInContainer_reply___block_invoke_607;
      v34[3] = &unk_2784FF7D8;
      v34[4] = self;
      v20 = v24;
      v35 = v20;
      [session enumerateAppLibraries:v34];
      v23 = [[BRCUploadAllFilesTrackerOperation alloc] initWithSessionContext:session appLibraries:v20];
    }

    [(_BRCFrameworkOperation *)v23 setRemoteClientProxy:operationCopy];
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __76__BRCXPCRegularIPCsClient_startOperation_toUploadAllFilesInContainer_reply___block_invoke_2;
    v31 = &unk_2785024A0;
    selfCopy3 = self;
    v33 = v16;
    [(_BRCOperation *)v23 setFinishBlock:&v28];
    [session addMiscOperation:{v23, v28, v29, v30, v31, selfCopy3}];
    [(_BRCOperation *)v23 schedule];

LABEL_12:
  }

  __brc_leave_section(v38);
}

void __76__BRCXPCRegularIPCsClient_startOperation_toUploadAllFilesInContainer_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __76__BRCXPCRegularIPCsClient_startOperation_toUploadAllFilesInContainer_reply___block_invoke_607(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addAppLibrary:v4];
  [*(a1 + 40) addObject:v4];

  return 1;
}

void __76__BRCXPCRegularIPCsClient_startOperation_toUploadAllFilesInContainer_reply___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v7;
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v8, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)copyCurrentUserIdentifierWithReply:(id)reply
{
  v35 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  session = [(BRCXPCClient *)self session];
  memset(v24, 0, sizeof(v24));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient copyCurrentUserIdentifierWithReply:]", 4203, 0, v24);
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v24[0];
    v9 = qos_class_self();
    v10 = BRCPrettyPrintEnumWithContext(v9, &brc_qos_entries, 0);
    *buf = 134219010;
    v26 = v8;
    v27 = 2112;
    selfCopy = self;
    v29 = 2112;
    v30 = v10;
    v31 = 2080;
    v32 = "[BRCXPCRegularIPCsClient copyCurrentUserIdentifierWithReply:]";
    v33 = 2112;
    v34 = v6;
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  clientPriviledgesDescriptor = [(BRCXPCClient *)self clientPriviledgesDescriptor];
  isSharingPrivateInterfaceEntitled = [clientPriviledgesDescriptor isSharingPrivateInterfaceEntitled];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __62__BRCXPCRegularIPCsClient_copyCurrentUserIdentifierWithReply___block_invoke;
  v22[3] = &unk_2785014D0;
  v22[4] = self;
  v13 = replyCopy;
  v23 = v13;
  v14 = _brc_ipc_check_client_privilege(self, 1, isSharingPrivateInterfaceEntitled, "isSharingPrivateInterfaceEntitled", v22);

  if (v14)
  {
    v15 = [BRCSharingFetchUserRecordIDOperation alloc];
    syncContextProvider = [session syncContextProvider];
    defaultSyncContext = [syncContextProvider defaultSyncContext];
    v18 = [(BRCSharingFetchUserRecordIDOperation *)v15 initWithSyncContext:defaultSyncContext sessionContext:session];

    br_fetchIdentityXPC = [MEMORY[0x277CBC4F8] br_fetchIdentityXPC];
    [(_BRCOperation *)v18 setGroup:br_fetchIdentityXPC];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __62__BRCXPCRegularIPCsClient_copyCurrentUserIdentifierWithReply___block_invoke_609;
    v20[3] = &unk_278507448;
    v20[4] = self;
    v21 = v13;
    [(_BRCOperation *)v18 setFinishBlock:v20];
    [session addMiscOperation:v18];
    [(_BRCOperation *)v18 schedule];
  }

  __brc_leave_section(v24);
}

void __62__BRCXPCRegularIPCsClient_copyCurrentUserIdentifierWithReply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __62__BRCXPCRegularIPCsClient_copyCurrentUserIdentifierWithReply___block_invoke_609(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v10 = [v5 recordName];
    v11 = [v6 brc_wrappedError];
    v15 = 138413058;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v15, 0x2Au);
  }

  v12 = *(a1 + 40);
  v13 = [v5 recordName];
  v14 = [v6 brc_wrappedError];
  (*(v12 + 16))(v12, v13, v14);
}

- (void)copyCurrentUserNameAndDisplayHandleWithReply:(id)reply
{
  v38 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v27, 0, sizeof(v27));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient copyCurrentUserNameAndDisplayHandleWithReply:]", 4222, 0, v27);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v27[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    v29 = v7;
    v30 = 2112;
    selfCopy = self;
    v32 = 2112;
    v33 = v9;
    v34 = 2080;
    v35 = "[BRCXPCRegularIPCsClient copyCurrentUserNameAndDisplayHandleWithReply:]";
    v36 = 2112;
    v37 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  clientPriviledgesDescriptor = [(BRCXPCClient *)self clientPriviledgesDescriptor];
  isSharingProxyEntitled = [clientPriviledgesDescriptor isSharingProxyEntitled];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __72__BRCXPCRegularIPCsClient_copyCurrentUserNameAndDisplayHandleWithReply___block_invoke;
  v25[3] = &unk_2785014D0;
  v25[4] = self;
  v12 = replyCopy;
  v26 = v12;
  v13 = _brc_ipc_check_client_privilege(self, 1, isSharingProxyEntitled, "isSharingProxyEntitled", v25);

  if (v13)
  {
    mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
    currentPersona = [mEMORY[0x277D77BF8] currentPersona];
    br_personaID = [currentPersona br_personaID];

    session = [(BRCXPCClient *)self session];
    syncContextProvider = [session syncContextProvider];
    defaultSyncContext = [syncContextProvider defaultSyncContext];
    ckContainer = [defaultSyncContext ckContainer];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __72__BRCXPCRegularIPCsClient_copyCurrentUserNameAndDisplayHandleWithReply___block_invoke_610;
    v22[3] = &unk_278507498;
    v22[4] = self;
    v21 = br_personaID;
    v23 = v21;
    v24 = v12;
    [ckContainer fetchFullNameAndFormattedUsernameOfAccountWithCompletionHandler:v22];
  }

  __brc_leave_section(v27);
}

void __72__BRCXPCRegularIPCsClient_copyCurrentUserNameAndDisplayHandleWithReply___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413826;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = 0;
    v13 = 2112;
    v14 = 0;
    v15 = 2112;
    v16 = 0;
    v17 = 2112;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %@, %@)%@", &v7, 0x48u);
  }

  (*(*(a1 + 40) + 16))();
}

void __72__BRCXPCRegularIPCsClient_copyCurrentUserNameAndDisplayHandleWithReply___block_invoke_610(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) session];
  v8 = [v7 syncContextProvider];
  v9 = [v8 defaultSyncContext];
  v10 = [v9 ckContainer];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__BRCXPCRegularIPCsClient_copyCurrentUserNameAndDisplayHandleWithReply___block_invoke_2;
  v14[3] = &unk_278507470;
  v11 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v5;
  v16 = v6;
  v17 = v11;
  v18 = *(a1 + 48);
  v12 = v6;
  v13 = v5;
  [v10 fetchFullNameAndPrimaryEmailOnAccountWithCompletionHandler:v14];
}

void __72__BRCXPCRegularIPCsClient_copyCurrentUserNameAndDisplayHandleWithReply___block_invoke_2(void *a1, uint64_t a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    v13 = a1[7];
    v14 = [v7 brc_wrappedError];
    v21 = 138413826;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    v27 = 2112;
    v28 = v6;
    v29 = 2112;
    v30 = v13;
    v31 = 2112;
    v32 = v14;
    v33 = 2112;
    v34 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %@, %@)%@", &v21, 0x48u);
  }

  v15 = a1[5];
  v16 = a1[6];
  v19 = a1 + 7;
  v17 = a1[7];
  v18 = v19[1];
  v20 = [v7 brc_wrappedError];
  (*(v18 + 16))(v18, v15, v16, v6, v17, v20);
}

- (void)copyCollaborationIdentifierForFileObjectID:(id)d reply:(id)reply
{
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  memset(v24, 0, sizeof(v24));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient copyCollaborationIdentifierForFileObjectID:reply:]", 4237, 0, v24);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v24[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    v26 = v10;
    v27 = 2112;
    selfCopy = self;
    v29 = 2112;
    v30 = v12;
    v31 = 2080;
    v32 = "[BRCXPCRegularIPCsClient copyCollaborationIdentifierForFileObjectID:reply:]";
    v33 = 2112;
    v34 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  clientPriviledgesDescriptor = [(BRCXPCClient *)self clientPriviledgesDescriptor];
  isSharingProxyEntitled = [clientPriviledgesDescriptor isSharingProxyEntitled];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __76__BRCXPCRegularIPCsClient_copyCollaborationIdentifierForFileObjectID_reply___block_invoke;
  v22[3] = &unk_2785014D0;
  v22[4] = self;
  v15 = replyCopy;
  v23 = v15;
  v16 = _brc_ipc_check_client_privilege(self, 1, isSharingProxyEntitled, "isSharingProxyEntitled", v22);

  if (v16)
  {
    session = [(BRCXPCClient *)self session];
    clientTruthWorkloop = [session clientTruthWorkloop];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__BRCXPCRegularIPCsClient_copyCollaborationIdentifierForFileObjectID_reply___block_invoke_612;
    v19[3] = &unk_2784FF5B8;
    v19[4] = self;
    v20 = dCopy;
    v21 = v15;
    dispatch_async_and_wait(clientTruthWorkloop, v19);
  }

  __brc_leave_section(v24);
}

void __76__BRCXPCRegularIPCsClient_copyCollaborationIdentifierForFileObjectID_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __76__BRCXPCRegularIPCsClient_copyCollaborationIdentifierForFileObjectID_reply___block_invoke_612(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) session];
  v3 = [v2 itemFetcher];
  v4 = [v3 itemByFileObjectID:*(a1 + 40)];

  if (!v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __76__BRCXPCRegularIPCsClient_copyCollaborationIdentifierForFileObjectID_reply___block_invoke_612_cold_1();
    }

    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) description];
      v12 = [v9 brc_errorItemNotFound:v11];
      v23 = 138413058;
      v24 = v10;
      v25 = 2112;
      v26 = 0;
      v27 = 2112;
      v28 = v12;
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v23, 0x2Au);
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = *(a1 + 48);
    v15 = [*(a1 + 40) description];
    v16 = [v13 brc_errorItemNotFound:v15];
    (*(v14 + 16))(v14, 0, v16);
  }

  v17 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = *(a1 + 32);
    v20 = [v4 collaborationIdentifierIfComputable];
    v23 = 138413058;
    v24 = v19;
    v25 = 2112;
    v26 = v20;
    v27 = 2112;
    v28 = 0;
    v29 = 2112;
    v30 = v17;
    _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v23, 0x2Au);
  }

  v21 = *(a1 + 48);
  v22 = [v4 collaborationIdentifierIfComputable];
  (*(v21 + 16))(v21, v22, 0);
}

- (void)_createSharingInfoForLocalItem:(id)item reply:(id)reply
{
  v53 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  replyCopy = reply;
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [BRCXPCRegularIPCsClient _createSharingInfoForLocalItem:reply:];
  }

  if ([itemCopy isKnownByServer])
  {
    if ([itemCopy isDirectory] && (objc_msgSend(itemCopy, "appLibrary"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "mangledID"), v11 = objc_claimAutoreleasedReturnValue(), +[BRCUserDefaults defaultsForMangledID:](BRCUserDefaults, "defaultsForMangledID:", v11), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isBlacklistedFromFolderSharing"), v12, v11, v10, (v13 & 1) == 0))
    {
      v25 = objc_alloc(MEMORY[0x277CBC5D0]);
      asShareableItem = [itemCopy asShareableItem];
      uploadError = [v25 initShareIDWithShareableItem:asShareableItem];

      asDirectory = [itemCopy asDirectory];
      folderRootStructureRecord = [asDirectory folderRootStructureRecord];

      v29 = [objc_alloc(MEMORY[0x277CBC680]) initWithRootRecord:folderRootStructureRecord shareID:uploadError];
      v30 = [itemCopy st];
      logicalName = [v30 logicalName];
      [v29 brc_updateWithLogicalName:logicalName isFolder:1];

      serverZone = [itemCopy serverZone];
      metadataSyncContext = [serverZone metadataSyncContext];
      ckContainerID = [metadataSyncContext ckContainerID];
      [v29 CKAssignToContainerWithID:ckContainerID];

      v35 = brc_bread_crumbs();
      v36 = brc_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
LABEL_24:
        v45 = 138413058;
        selfCopy4 = self;
        v47 = 2112;
        v48 = v29;
        v49 = 2112;
        v50 = 0;
        v51 = 2112;
        v52 = v35;
        _os_log_impl(&dword_223E7A000, v36, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v45, 0x2Au);
      }
    }

    else
    {
      if (![itemCopy isDocument] || objc_msgSend(itemCopy, "isFinderBookmark"))
      {
        v14 = brc_bread_crumbs();
        v15 = brc_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = [MEMORY[0x277CCA9B8] brc_errorNoDocument:0 underlyingPOSIXError:21];
          v45 = 138413058;
          selfCopy4 = self;
          v47 = 2112;
          v48 = 0;
          v49 = 2112;
          v50 = v16;
          v51 = 2112;
          v52 = v14;
          _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v45, 0x2Au);
        }

        v17 = [MEMORY[0x277CCA9B8] brc_errorNoDocument:0 underlyingPOSIXError:21];
        goto LABEL_19;
      }

      v37 = objc_alloc(MEMORY[0x277CBC5D0]);
      asShareableItem2 = [itemCopy asShareableItem];
      uploadError = [v37 initShareIDWithShareableItem:asShareableItem2];

      asDocument = [itemCopy asDocument];
      folderRootStructureRecord = [asDocument baseRecord];

      v29 = [objc_alloc(MEMORY[0x277CBC680]) initWithRootRecord:folderRootStructureRecord shareID:uploadError];
      v40 = [itemCopy st];
      logicalName2 = [v40 logicalName];
      [v29 brc_updateWithLogicalName:logicalName2 isFolder:0];

      serverZone2 = [itemCopy serverZone];
      metadataSyncContext2 = [serverZone2 metadataSyncContext];
      ckContainerID2 = [metadataSyncContext2 ckContainerID];
      [v29 CKAssignToContainerWithID:ckContainerID2];

      v35 = brc_bread_crumbs();
      v36 = brc_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        goto LABEL_24;
      }
    }

    replyCopy[2](replyCopy, v29, 0);
    goto LABEL_26;
  }

  if ([itemCopy isDocument])
  {
    asDocument2 = [itemCopy asDocument];
    uploadError = [asDocument2 uploadError];

    if (uploadError)
    {
      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v45 = 138413058;
        selfCopy4 = self;
        v47 = 2112;
        v48 = 0;
        v49 = 2112;
        v50 = uploadError;
        v51 = 2112;
        v52 = v20;
        _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v45, 0x2Au);
      }

      goto LABEL_20;
    }
  }

  v22 = brc_bread_crumbs();
  v23 = brc_default_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = [MEMORY[0x277CCA9B8] brc_errorNotInCloud:0];
    v45 = 138413058;
    selfCopy4 = self;
    v47 = 2112;
    v48 = 0;
    v49 = 2112;
    v50 = v24;
    v51 = 2112;
    v52 = v22;
    _os_log_impl(&dword_223E7A000, v23, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v45, 0x2Au);
  }

  v17 = [MEMORY[0x277CCA9B8] brc_errorNotInCloud:0];
LABEL_19:
  uploadError = v17;
LABEL_20:
  (replyCopy)[2](replyCopy, 0, uploadError);
LABEL_26:
}

- (void)createSharingInfoForItemID:(id)d reply:(id)reply
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  memset(v23, 0, sizeof(v23));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient createSharingInfoForItemID:reply:]", 4289, 0, v23);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v23[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    v25 = v10;
    v26 = 2112;
    selfCopy = self;
    v28 = 2112;
    v29 = v12;
    v30 = 2080;
    v31 = "[BRCXPCRegularIPCsClient createSharingInfoForItemID:reply:]";
    v32 = 2112;
    v33 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  clientPriviledgesDescriptor = [(BRCXPCClient *)self clientPriviledgesDescriptor];
  isSharingProxyEntitled = [clientPriviledgesDescriptor isSharingProxyEntitled];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__BRCXPCRegularIPCsClient_createSharingInfoForItemID_reply___block_invoke;
  v21[3] = &unk_2785014D0;
  v21[4] = self;
  v15 = replyCopy;
  v22 = v15;
  v16 = _brc_ipc_check_client_privilege(self, 1, isSharingProxyEntitled, "isSharingProxyEntitled", v21);

  if (v16)
  {
    clientTruthWorkloop = [(BRCAccountSession *)self->super.__session clientTruthWorkloop];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __60__BRCXPCRegularIPCsClient_createSharingInfoForItemID_reply___block_invoke_614;
    v18[3] = &unk_2784FF5B8;
    v18[4] = self;
    v19 = dCopy;
    v20 = v15;
    dispatch_async_and_wait(clientTruthWorkloop, v18);
  }

  __brc_leave_section(v23);
}

void __60__BRCXPCRegularIPCsClient_createSharingInfoForItemID_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __60__BRCXPCRegularIPCsClient_createSharingInfoForItemID_reply___block_invoke_614(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) session];
  v3 = [v2 itemFetcher];
  v4 = [MEMORY[0x277CFAE50] fileObjectIDWithString:*(a1 + 40)];
  v5 = [v3 itemByFileObjectID:v4];

  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __60__BRCXPCRegularIPCsClient_createSharingInfoForItemID_reply___block_invoke_614_cold_1();
  }

  if (v5)
  {
    [*(a1 + 32) _createSharingInfoForLocalItem:v5 reply:*(a1 + 48)];
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v11 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:*(a1 + 40)];
      v14 = 138413058;
      v15 = v10;
      v16 = 2112;
      v17 = 0;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v14, 0x2Au);
    }

    v12 = *(a1 + 48);
    v13 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:*(a1 + 40)];
    (*(v12 + 16))(v12, 0, v13);
  }
}

- (void)startOperation:(id)operation toSaveSharingInfo:(id)info reply:(id)reply
{
  v96 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  infoCopy = info;
  replyCopy = reply;
  memset(v85, 0, sizeof(v85));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient startOperation:toSaveSharingInfo:reply:]", 4304, 0, v85);
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v85[0];
    v13 = qos_class_self();
    v14 = BRCPrettyPrintEnumWithContext(v13, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy6 = v12;
    v88 = 2112;
    selfCopy3 = self;
    v90 = 2112;
    v91 = v14;
    v92 = 2080;
    v93 = "[BRCXPCRegularIPCsClient startOperation:toSaveSharingInfo:reply:]";
    v94 = 2112;
    v95 = v10;
    _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  clientPriviledgesDescriptor = [(BRCXPCClient *)self clientPriviledgesDescriptor];
  isSharingProxyEntitled = [clientPriviledgesDescriptor isSharingProxyEntitled];
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __66__BRCXPCRegularIPCsClient_startOperation_toSaveSharingInfo_reply___block_invoke;
  v83[3] = &unk_2785014D0;
  v83[4] = self;
  v17 = replyCopy;
  v84 = v17;
  v18 = _brc_ipc_check_client_privilege(self, 1, isSharingProxyEntitled, "isSharingProxyEntitled", v83);

  if ((v18 & 1) == 0)
  {
    goto LABEL_48;
  }

  if (!infoCopy)
  {
    v35 = brc_bread_crumbs();
    v36 = brc_default_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"share" value:0];
      *buf = 138413058;
      selfCopy6 = self;
      v88 = 2112;
      selfCopy3 = 0;
      v90 = 2112;
      v91 = v37;
      v92 = 2112;
      v93 = v35;
      _os_log_impl(&dword_223E7A000, v36, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    v38 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"share" value:0];
    (*(v17 + 2))(v17, 0, v38);
    goto LABEL_47;
  }

  v19 = [(BRCXPCRegularIPCsClient *)infoCopy objectForKeyedSubscript:*MEMORY[0x277CBC0A0]];
  v20 = [v19 isEqual:*MEMORY[0x277CFAD00]];

  if (v20)
  {
    memset(v82, 0, sizeof(v82));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient startOperation:toSaveSharingInfo:reply:]", 4315, 0, v82);
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = v82[0];
      v24 = qos_class_self();
      v25 = BRCPrettyPrintEnumWithContext(v24, &brc_qos_entries, 0);
      *buf = 134219010;
      selfCopy6 = v23;
      v88 = 2112;
      selfCopy3 = self;
      v90 = 2112;
      v91 = v25;
      v92 = 2080;
      v93 = "[BRCXPCRegularIPCsClient startOperation:toSaveSharingInfo:reply:]";
      v94 = 2112;
      v95 = v21;
      _os_log_impl(&dword_223E7A000, v22, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
    }

    clientPriviledgesDescriptor2 = [(BRCXPCClient *)self clientPriviledgesDescriptor];
    isFolderSharingProxyEntitled = [clientPriviledgesDescriptor2 isFolderSharingProxyEntitled];
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __66__BRCXPCRegularIPCsClient_startOperation_toSaveSharingInfo_reply___block_invoke_616;
    v80[3] = &unk_2785014D0;
    v80[4] = self;
    v81 = v17;
    v28 = _brc_ipc_check_client_privilege(self, 1, isFolderSharingProxyEntitled, "isFolderSharingProxyEntitled", v80);

    __brc_leave_section(v82);
    if ((v28 & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  if ([(BRCXPCRegularIPCsClient *)infoCopy publicPermission]!= 1)
  {
LABEL_33:
    v46 = brc_bread_crumbs();
    v47 = brc_default_log();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      [BRCXPCRegularIPCsClient startOperation:toSaveSharingInfo:reply:];
    }

    v48 = objc_alloc(MEMORY[0x277CFAE60]);
    recordID = [(BRCXPCRegularIPCsClient *)infoCopy recordID];
    zoneID = [recordID zoneID];
    v38 = [v48 initWithRecordZoneID:zoneID];

    session = [(BRCXPCClient *)self session];
    v52 = [session clientZoneByMangledID:v38];
    if (v52)
    {
      v53 = [BRCSharingSaveShareOperation alloc];
      serverZone = [v52 serverZone];
      appLibraryOrZoneName2 = [(BRCSharingSaveShareOperation *)v53 initWithShare:infoCopy zone:serverZone sessionContext:session];

      [(_BRCFrameworkOperation *)appLibraryOrZoneName2 setRemoteClientProxy:operationCopy];
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __66__BRCXPCRegularIPCsClient_startOperation_toSaveSharingInfo_reply___block_invoke_619;
      v73[3] = &unk_2785074C0;
      v73[4] = self;
      v75 = v17;
      v56 = infoCopy;
      v74 = v56;
      [(_BRCOperation *)appLibraryOrZoneName2 setFinishBlock:v73];
      if (v20)
      {
        asPrivateClientZone = [v52 asPrivateClientZone];
        recordID2 = [(BRCXPCRegularIPCsClient *)v56 recordID];
        brc_shareItemID = [recordID2 brc_shareItemID];
        v60 = [asPrivateClientZone pcsChainOperationForItemID:brc_shareItemID];

        if (v60)
        {
          v61 = brc_bread_crumbs();
          v62 = brc_default_log();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
          {
            [BRCXPCRegularIPCsClient startOperation:toSaveSharingInfo:reply:];
          }

          [(_BRCOperation *)appLibraryOrZoneName2 addDependency:v60];
        }
      }

      [session addMiscOperation:appLibraryOrZoneName2];
      [(_BRCOperation *)appLibraryOrZoneName2 schedule];
    }

    else
    {
      v63 = brc_bread_crumbs();
      v64 = brc_default_log();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        v65 = MEMORY[0x277CCA9B8];
        appLibraryOrZoneName = [v38 appLibraryOrZoneName];
        v67 = [v65 brc_errorAppLibraryNotFound:appLibraryOrZoneName];
        *buf = 138413058;
        selfCopy6 = self;
        v88 = 2112;
        selfCopy3 = 0;
        v90 = 2112;
        v91 = v67;
        v92 = 2112;
        v93 = v63;
        _os_log_impl(&dword_223E7A000, v64, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
      }

      v68 = MEMORY[0x277CCA9B8];
      appLibraryOrZoneName2 = [v38 appLibraryOrZoneName];
      v69 = [v68 brc_errorAppLibraryNotFound:appLibraryOrZoneName2];
      (*(v17 + 2))(v17, 0, v69);
    }

LABEL_47:
    goto LABEL_48;
  }

  v29 = [BRCUserDefaults defaultsForMangledID:0];
  if (![v29 deleteShareOnEmptySave] || (-[BRCXPCRegularIPCsClient allowsAccessRequests](infoCopy, "allowsAccessRequests") & 1) != 0)
  {
LABEL_32:

    goto LABEL_33;
  }

  participants = [(BRCXPCRegularIPCsClient *)infoCopy participants];
  if ([participants count])
  {
    participants2 = [(BRCXPCRegularIPCsClient *)infoCopy participants];
    if ([participants2 count] == 1)
    {
      participants3 = [(BRCXPCRegularIPCsClient *)infoCopy participants];
      firstObject = [participants3 firstObject];
      if ([firstObject isCurrentUser])
      {
        participants4 = [(BRCXPCRegularIPCsClient *)infoCopy participants];
        firstObject2 = [participants4 firstObject];
        v70 = [firstObject2 role] == 1;

        if (!v70)
        {
          goto LABEL_33;
        }

        goto LABEL_21;
      }
    }

    goto LABEL_32;
  }

LABEL_21:
  etag = [(BRCXPCRegularIPCsClient *)infoCopy etag];

  if (etag)
  {
    v40 = brc_bread_crumbs();
    v41 = brc_default_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy6 = infoCopy;
      v88 = 2112;
      selfCopy3 = v40;
      _os_log_impl(&dword_223E7A000, v41, OS_LOG_TYPE_DEFAULT, "[WARNING] Deleting share %@ because we're being asked to save a share with no participants%@", buf, 0x16u);
    }

    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __66__BRCXPCRegularIPCsClient_startOperation_toSaveSharingInfo_reply___block_invoke_617;
    v76[3] = &unk_278501778;
    v77 = infoCopy;
    selfCopy5 = self;
    v79 = v17;
    [(BRCXPCRegularIPCsClient *)self startOperation:operationCopy toUnshareShare:v77 forceDelete:1 reply:v76];

    v38 = v77;
    goto LABEL_47;
  }

  v42 = brc_bread_crumbs();
  v43 = brc_default_log();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    [BRCXPCRegularIPCsClient startOperation:toSaveSharingInfo:reply:];
  }

  v44 = brc_bread_crumbs();
  v45 = brc_default_log();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    selfCopy6 = self;
    v88 = 2112;
    selfCopy3 = infoCopy;
    v90 = 2112;
    v91 = 0;
    v92 = 2112;
    v93 = v44;
    _os_log_impl(&dword_223E7A000, v45, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
  }

  (*(v17 + 2))(v17, infoCopy, 0);
LABEL_48:
  __brc_leave_section(v85);
}

void __66__BRCXPCRegularIPCsClient_startOperation_toSaveSharingInfo_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __66__BRCXPCRegularIPCsClient_startOperation_toSaveSharingInfo_reply___block_invoke_616(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __66__BRCXPCRegularIPCsClient_startOperation_toSaveSharingInfo_reply___block_invoke_617(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    [*(a1 + 32) setEtag:0];
    [*(a1 + 32) setKnownToServer:0];
  }

  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = 138413058;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = 0;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v8, 0x2Au);
  }

  (*(*(a1 + 48) + 16))();
}

void __66__BRCXPCRegularIPCsClient_startOperation_toSaveSharingInfo_reply___block_invoke_619(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [BRCUserDefaults defaultsForMangledID:0];
  v8 = [v7 reportShareSaveErrors];

  if (v8)
  {
    v9 = +[BRCEventsAnalytics sharedAnalytics];
    v10 = [*(a1 + 32) session];
    v11 = [v10 analyticsReporter];
    [v9 registerAndSendShareSaveError:v6 analyticsReporter:v11];
  }

  if (v6)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      v15 = [v6 brc_wrappedError];
      v22 = 138413058;
      v23 = v14;
      v24 = 2112;
      v25 = v5;
      v26 = 2112;
      v27 = v15;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v22, 0x2Au);
    }

    v16 = *(a1 + 48);
    v17 = [v6 brc_wrappedError];
    (*(v16 + 16))(v16, v5, v17);
  }

  else
  {
    v18 = [*(a1 + 40) recordID];
    v17 = [v18 brc_shareItemID];

    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 32);
      v22 = 138413058;
      v23 = v21;
      v24 = 2112;
      v25 = v5;
      v26 = 2112;
      v27 = 0;
      v28 = 2112;
      v29 = v19;
      _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v22, 0x2Au);
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v5, 0);
  }
}

- (void)startOperation:(id)operation toUnshareShare:(id)share forceDelete:(BOOL)delete reply:(id)reply
{
  v74 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  shareCopy = share;
  replyCopy = reply;
  memset(v67, 0, sizeof(v67));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient startOperation:toUnshareShare:forceDelete:reply:]", 4382, 0, v67);
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = v67[0];
    v15 = qos_class_self();
    v16 = BRCPrettyPrintEnumWithContext(v15, &brc_qos_entries, 0);
    *buf = 134219010;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = self;
    *&buf[22] = 2112;
    v69 = v16;
    v70 = 2080;
    v71 = "[BRCXPCRegularIPCsClient startOperation:toUnshareShare:forceDelete:reply:]";
    v72 = 2112;
    v73 = v12;
    _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  clientPriviledgesDescriptor = [(BRCXPCClient *)self clientPriviledgesDescriptor];
  isSharingProxyEntitled = [clientPriviledgesDescriptor isSharingProxyEntitled];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __75__BRCXPCRegularIPCsClient_startOperation_toUnshareShare_forceDelete_reply___block_invoke;
  v65[3] = &unk_2785014D0;
  v65[4] = self;
  v19 = replyCopy;
  v66 = v19;
  v20 = _brc_ipc_check_client_privilege(self, 1, isSharingProxyEntitled, "isSharingProxyEntitled", v65);

  if (v20)
  {
    v21 = [shareCopy objectForKeyedSubscript:*MEMORY[0x277CBC0A0]];
    v22 = [v21 isEqual:*MEMORY[0x277CFAD00]];

    if (!v22)
    {
      goto LABEL_8;
    }

    memset(v64, 0, sizeof(v64));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient startOperation:toUnshareShare:forceDelete:reply:]", 4387, 0, v64);
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = v64[0];
      v26 = qos_class_self();
      v27 = BRCPrettyPrintEnumWithContext(v26, &brc_qos_entries, 0);
      *buf = 134219010;
      *&buf[4] = v25;
      *&buf[12] = 2112;
      *&buf[14] = self;
      *&buf[22] = 2112;
      v69 = v27;
      v70 = 2080;
      v71 = "[BRCXPCRegularIPCsClient startOperation:toUnshareShare:forceDelete:reply:]";
      v72 = 2112;
      v73 = v23;
      _os_log_impl(&dword_223E7A000, v24, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
    }

    clientPriviledgesDescriptor2 = [(BRCXPCClient *)self clientPriviledgesDescriptor];
    isFolderSharingProxyEntitled = [clientPriviledgesDescriptor2 isFolderSharingProxyEntitled];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __75__BRCXPCRegularIPCsClient_startOperation_toUnshareShare_forceDelete_reply___block_invoke_620;
    v62[3] = &unk_2785014D0;
    v62[4] = self;
    v63 = v19;
    v30 = _brc_ipc_check_client_privilege(self, 1, isFolderSharingProxyEntitled, "isFolderSharingProxyEntitled", v62);

    __brc_leave_section(v64);
    if (v30)
    {
LABEL_8:
      v31 = brc_bread_crumbs();
      v32 = brc_default_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        [BRCXPCRegularIPCsClient startOperation:toUnshareShare:forceDelete:reply:];
      }

      session = [(BRCXPCClient *)self session];
      v34 = objc_alloc(MEMORY[0x277CFAE60]);
      recordID = [shareCopy recordID];
      zoneID = [recordID zoneID];
      v37 = [v34 initWithRecordZoneID:zoneID];

      v54 = [session clientZoneByMangledID:v37];
      serverZone = [v54 serverZone];
      if (serverZone)
      {
        v39 = [BRCUserDefaults defaultsForMangledID:v37];
        destroyiWorkShares = [v39 destroyiWorkShares];

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v69) = 1;
        if (!delete && (([serverZone isSharedZone] | destroyiWorkShares) & 1) == 0)
        {
          recordID2 = [shareCopy recordID];
          brc_shareItemID = [recordID2 brc_shareItemID];

          clientTruthWorkloop = [session clientTruthWorkloop];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __75__BRCXPCRegularIPCsClient_startOperation_toUnshareShare_forceDelete_reply___block_invoke_621;
          block[3] = &unk_278502B88;
          v59 = v54;
          v60 = brc_shareItemID;
          v61 = buf;
          v44 = brc_shareItemID;
          dispatch_async_and_wait(clientTruthWorkloop, block);
        }

        v45 = [[BRCSharingDestroyShareOperation alloc] initWithShare:shareCopy zone:serverZone sessionContext:session];
        [(_BRCFrameworkOperation *)v45 setRemoteClientProxy:operationCopy];
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __75__BRCXPCRegularIPCsClient_startOperation_toUnshareShare_forceDelete_reply___block_invoke_2;
        v56[3] = &unk_2785024A0;
        v56[4] = self;
        v57 = v19;
        [(_BRCOperation *)v45 setFinishBlock:v56];
        [session addMiscOperation:v45];
        [(_BRCOperation *)v45 schedule];

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v46 = brc_bread_crumbs();
        v47 = brc_default_log();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          v48 = MEMORY[0x277CCA9B8];
          appLibraryOrZoneName = [v37 appLibraryOrZoneName];
          v50 = [v48 brc_errorAppLibraryNotFound:appLibraryOrZoneName];
          *buf = 138412802;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = v50;
          *&buf[22] = 2112;
          v69 = v46;
          _os_log_impl(&dword_223E7A000, v47, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
        }

        v51 = MEMORY[0x277CCA9B8];
        appLibraryOrZoneName2 = [v37 appLibraryOrZoneName];
        v53 = [v51 brc_errorAppLibraryNotFound:appLibraryOrZoneName2];
        (*(v19 + 2))(v19, v53);
      }
    }
  }

  __brc_leave_section(v67);
}

void __75__BRCXPCRegularIPCsClient_startOperation_toUnshareShare_forceDelete_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __75__BRCXPCRegularIPCsClient_startOperation_toUnshareShare_forceDelete_reply___block_invoke_620(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __75__BRCXPCRegularIPCsClient_startOperation_toUnshareShare_forceDelete_reply___block_invoke_621(uint64_t a1)
{
  v4 = [*(a1 + 32) itemByItemID:*(a1 + 40)];
  v2 = [v4 st];
  v3 = [v2 iWorkShareable];

  if (v3)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void __75__BRCXPCRegularIPCsClient_startOperation_toUnshareShare_forceDelete_reply___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = [v4 brc_wrappedError];
    v11 = 138412802;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v11, 0x20u);
  }

  v9 = *(a1 + 40);
  v10 = [v4 brc_wrappedError];
  (*(v9 + 16))(v9, v10);
}

- (void)startOperation:(id)operation toLookupShareParticipants:(id)participants reply:(id)reply
{
  v39 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  participantsCopy = participants;
  replyCopy = reply;
  memset(v28, 0, sizeof(v28));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient startOperation:toLookupShareParticipants:reply:]", 4428, 0, v28);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v28[0];
    v14 = qos_class_self();
    v15 = BRCPrettyPrintEnumWithContext(v14, &brc_qos_entries, 0);
    *buf = 134219010;
    v30 = v13;
    v31 = 2112;
    selfCopy = self;
    v33 = 2112;
    v34 = v15;
    v35 = 2080;
    v36 = "[BRCXPCRegularIPCsClient startOperation:toLookupShareParticipants:reply:]";
    v37 = 2112;
    v38 = v11;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  clientPriviledgesDescriptor = [(BRCXPCClient *)self clientPriviledgesDescriptor];
  isSharingProxyEntitled = [clientPriviledgesDescriptor isSharingProxyEntitled];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __74__BRCXPCRegularIPCsClient_startOperation_toLookupShareParticipants_reply___block_invoke;
  v26[3] = &unk_2785014D0;
  v26[4] = self;
  v18 = replyCopy;
  v27 = v18;
  v19 = _brc_ipc_check_client_privilege(self, 0, isSharingProxyEntitled, "isSharingProxyEntitled", v26);

  if (v19)
  {
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [BRCXPCRegularIPCsClient startOperation:toLookupShareParticipants:reply:];
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __74__BRCXPCRegularIPCsClient_startOperation_toLookupShareParticipants_reply___block_invoke_623;
    v22[3] = &unk_2785074E8;
    v22[4] = self;
    v25 = v18;
    v23 = participantsCopy;
    v24 = operationCopy;
    [(BRCXPCClient *)self performBlockWithAnySession:v22];
  }

  __brc_leave_section(v28);
}

void __74__BRCXPCRegularIPCsClient_startOperation_toLookupShareParticipants_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __74__BRCXPCRegularIPCsClient_startOperation_toLookupShareParticipants_reply___block_invoke_623(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [[BRCSharingLookupParticipantsOperation alloc] initWithUserIdentities:*(a1 + 40) sessionContext:v3];
    [(_BRCFrameworkOperation *)v4 setRemoteClientProxy:*(a1 + 48)];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __74__BRCXPCRegularIPCsClient_startOperation_toLookupShareParticipants_reply___block_invoke_625;
    v13 = &unk_2785024A0;
    v14 = *(a1 + 32);
    v15 = *(a1 + 56);
    [(_BRCOperation *)v4 setFinishBlock:&v10];
    [v3 addMiscOperation:{v4, v10, v11, v12, v13, v14}];
    [(_BRCOperation *)v4 schedule];
  }

  else
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = [MEMORY[0x277CCA9B8] brc_errorLoggedOut];
      *buf = 138413058;
      v17 = v7;
      v18 = 2112;
      v19 = 0;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    v9 = *(a1 + 56);
    v4 = [MEMORY[0x277CCA9B8] brc_errorLoggedOut];
    (*(v9 + 16))(v9, 0, v4);
  }
}

void __74__BRCXPCRegularIPCsClient_startOperation_toLookupShareParticipants_reply___block_invoke_625(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v10 = [v6 brc_wrappedError];
    v13 = 138413058;
    v14 = v9;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v13, 0x2Au);
  }

  v11 = *(a1 + 40);
  v12 = [v6 brc_wrappedError];
  (*(v11 + 16))(v11, v5, v12);
}

- (void)_startOperation:(id)operation toModifyRecordAccessWithLocalItem:(id)item allowAccess:(BOOL)access reply:(id)reply
{
  accessCopy = access;
  v38 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  itemCopy = item;
  replyCopy = reply;
  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [BRCXPCRegularIPCsClient _startOperation:toModifyRecordAccessWithLocalItem:allowAccess:reply:];
  }

  if ([itemCopy isDocument])
  {
    v15 = [BRCSharingModifyAccessOperation alloc];
    asDocument = [itemCopy asDocument];
    session = [(BRCXPCClient *)self session];
    brc_errorItemNotShareable2 = [(BRCSharingModifyAccessOperation *)v15 initWithItem:asDocument allowAccess:accessCopy sessionContext:session];

    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __95__BRCXPCRegularIPCsClient__startOperation_toModifyRecordAccessWithLocalItem_allowAccess_reply___block_invoke;
    v25 = &unk_278503F30;
    selfCopy = self;
    v27 = replyCopy;
    [(_BRCOperation *)brc_errorItemNotShareable2 setFinishBlock:&v22];
    [(BRCXPCClient *)self _startSharingOperationAfterAcceptation:brc_errorItemNotShareable2 client:operationCopy item:itemCopy, v22, v23, v24, v25, selfCopy];
  }

  else
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      brc_errorItemNotShareable = [MEMORY[0x277CCA9B8] brc_errorItemNotShareable];
      *buf = 138413314;
      selfCopy2 = self;
      v30 = 2112;
      v31 = 0;
      v32 = 2112;
      v33 = 0;
      v34 = 2112;
      v35 = brc_errorItemNotShareable;
      v36 = 2112;
      v37 = v19;
      _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", buf, 0x34u);
    }

    brc_errorItemNotShareable2 = [MEMORY[0x277CCA9B8] brc_errorItemNotShareable];
    (*(replyCopy + 2))(replyCopy, 0, 0, brc_errorItemNotShareable2);
  }
}

void __95__BRCXPCRegularIPCsClient__startOperation_toModifyRecordAccessWithLocalItem_allowAccess_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v10 = [v5 objectForKeyedSubscript:@"accessToken"];
    v11 = [v5 objectForKeyedSubscript:@"referenceIdentifier"];
    v12 = [v6 brc_wrappedError];
    v17 = 138413314;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", &v17, 0x34u);
  }

  v13 = *(a1 + 40);
  v14 = [v5 objectForKeyedSubscript:@"accessToken"];
  v15 = [v5 objectForKeyedSubscript:@"referenceIdentifier"];
  v16 = [v6 brc_wrappedError];
  (*(v13 + 16))(v13, v14, v15, v16);
}

- (void)startOperation:(id)operation toModifyRecordAccessWithItemID:(id)d allowAccess:(BOOL)access reply:(id)reply
{
  v41 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  dCopy = d;
  replyCopy = reply;
  memset(v30, 0, sizeof(v30));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient startOperation:toModifyRecordAccessWithItemID:allowAccess:reply:]", 4464, 0, v30);
  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = v30[0];
    v16 = qos_class_self();
    v17 = BRCPrettyPrintEnumWithContext(v16, &brc_qos_entries, 0);
    *buf = 134219010;
    v32 = v15;
    v33 = 2112;
    selfCopy = self;
    v35 = 2112;
    v36 = v17;
    v37 = 2080;
    v38 = "[BRCXPCRegularIPCsClient startOperation:toModifyRecordAccessWithItemID:allowAccess:reply:]";
    v39 = 2112;
    v40 = v13;
    _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  clientPriviledgesDescriptor = [(BRCXPCClient *)self clientPriviledgesDescriptor];
  isSharingProxyEntitled = [clientPriviledgesDescriptor isSharingProxyEntitled];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __91__BRCXPCRegularIPCsClient_startOperation_toModifyRecordAccessWithItemID_allowAccess_reply___block_invoke;
  v28[3] = &unk_2785014D0;
  v28[4] = self;
  v20 = replyCopy;
  v29 = v20;
  v21 = _brc_ipc_check_client_privilege(self, 1, isSharingProxyEntitled, "isSharingProxyEntitled", v28);

  if (v21)
  {
    clientTruthWorkloop = [(BRCAccountSession *)self->super.__session clientTruthWorkloop];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __91__BRCXPCRegularIPCsClient_startOperation_toModifyRecordAccessWithItemID_allowAccess_reply___block_invoke_634;
    v23[3] = &unk_278507510;
    v23[4] = self;
    v24 = dCopy;
    v26 = v20;
    v25 = operationCopy;
    accessCopy = access;
    dispatch_async_and_wait(clientTruthWorkloop, v23);
  }

  __brc_leave_section(v30);
}

void __91__BRCXPCRegularIPCsClient_startOperation_toModifyRecordAccessWithItemID_allowAccess_reply___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413314;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = 0;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", &v7, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
}

void __91__BRCXPCRegularIPCsClient_startOperation_toModifyRecordAccessWithItemID_allowAccess_reply___block_invoke_634(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) session];
  v3 = [v2 itemFetcher];
  v4 = [MEMORY[0x277CFAE50] fileObjectIDWithString:*(a1 + 40)];
  v5 = [v3 itemByFileObjectID:v4];

  if (v5)
  {
    [*(a1 + 32) _startOperation:*(a1 + 48) toModifyRecordAccessWithLocalItem:v5 allowAccess:*(a1 + 64) reply:*(a1 + 56)];
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:*(a1 + 40)];
      v12 = 138413314;
      v13 = v8;
      v14 = 2112;
      v15 = 0;
      v16 = 2112;
      v17 = 0;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", &v12, 0x34u);
    }

    v10 = *(a1 + 56);
    v11 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:*(a1 + 40)];
    (*(v10 + 16))(v10, 0, 0, v11);
  }
}

- (void)_startOperation:(id)operation toCopyParticipantTokenWithLocalItem:(id)item reply:(id)reply
{
  v36 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  itemCopy = item;
  replyCopy = reply;
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [BRCXPCRegularIPCsClient _startOperation:toCopyParticipantTokenWithLocalItem:reply:];
  }

  if (([itemCopy sharingOptions] & 0x48) != 0)
  {
    v13 = [BRCSharingCopyParticipantTokenOperation alloc];
    asDocument = [itemCopy asDocument];
    session = [(BRCXPCClient *)self session];
    v16 = [(BRCSharingCopyParticipantTokenOperation *)v13 initWithItem:asDocument sessionContext:session];

    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __85__BRCXPCRegularIPCsClient__startOperation_toCopyParticipantTokenWithLocalItem_reply___block_invoke;
    v23 = &unk_2785024A0;
    selfCopy = self;
    v25 = replyCopy;
    [(_BRCOperation *)v16 setFinishBlock:&v20];
    [(BRCXPCClient *)self _startSharingOperationAfterAcceptation:v16 client:operationCopy item:itemCopy, v20, v21, v22, v23, selfCopy];
  }

  else
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [MEMORY[0x277CCA9B8] brc_errorDocumentIsNotSharedAtIdentifier:0];
      *buf = 138413314;
      selfCopy2 = self;
      v28 = 2112;
      v29 = 0;
      v30 = 2112;
      v31 = 0;
      v32 = 2112;
      v33 = v19;
      v34 = 2112;
      v35 = v17;
      _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", buf, 0x34u);
    }

    v16 = [MEMORY[0x277CCA9B8] brc_errorDocumentIsNotSharedAtIdentifier:0];
    (*(replyCopy + 2))(replyCopy, 0, 0, v16);
  }
}

void __85__BRCXPCRegularIPCsClient__startOperation_toCopyParticipantTokenWithLocalItem_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"participantKey"];
  v8 = [v6 objectForKeyedSubscript:@"baseToken"];

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v12 = [v5 brc_wrappedError];
    v15 = 138413314;
    v16 = v11;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", &v15, 0x34u);
  }

  v13 = *(a1 + 40);
  v14 = [v5 brc_wrappedError];
  (*(v13 + 16))(v13, v7, v8, v14);
}

- (void)startOperation:(id)operation toCopyParticipantTokenWithItemID:(id)d reply:(id)reply
{
  v38 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  dCopy = d;
  replyCopy = reply;
  memset(v27, 0, sizeof(v27));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient startOperation:toCopyParticipantTokenWithItemID:reply:]", 4500, 0, v27);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v27[0];
    v14 = qos_class_self();
    v15 = BRCPrettyPrintEnumWithContext(v14, &brc_qos_entries, 0);
    *buf = 134219010;
    v29 = v13;
    v30 = 2112;
    selfCopy = self;
    v32 = 2112;
    v33 = v15;
    v34 = 2080;
    v35 = "[BRCXPCRegularIPCsClient startOperation:toCopyParticipantTokenWithItemID:reply:]";
    v36 = 2112;
    v37 = v11;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  clientPriviledgesDescriptor = [(BRCXPCClient *)self clientPriviledgesDescriptor];
  isSharingPrivateInterfaceEntitled = [clientPriviledgesDescriptor isSharingPrivateInterfaceEntitled];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __81__BRCXPCRegularIPCsClient_startOperation_toCopyParticipantTokenWithItemID_reply___block_invoke;
  v25[3] = &unk_2785014D0;
  v25[4] = self;
  v18 = replyCopy;
  v26 = v18;
  v19 = _brc_ipc_check_client_privilege(self, 1, isSharingPrivateInterfaceEntitled, "isSharingPrivateInterfaceEntitled", v25);

  if (v19)
  {
    clientTruthWorkloop = [(BRCAccountSession *)self->super.__session clientTruthWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__BRCXPCRegularIPCsClient_startOperation_toCopyParticipantTokenWithItemID_reply___block_invoke_642;
    block[3] = &unk_2785003B0;
    block[4] = self;
    v22 = dCopy;
    v24 = v18;
    v23 = operationCopy;
    dispatch_async_and_wait(clientTruthWorkloop, block);
  }

  __brc_leave_section(v27);
}

void __81__BRCXPCRegularIPCsClient_startOperation_toCopyParticipantTokenWithItemID_reply___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413314;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = 0;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", &v7, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
}

void __81__BRCXPCRegularIPCsClient_startOperation_toCopyParticipantTokenWithItemID_reply___block_invoke_642(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) session];
  v3 = [v2 itemFetcher];
  v4 = [MEMORY[0x277CFAE50] fileObjectIDWithString:*(a1 + 40)];
  v5 = [v3 itemByFileObjectID:v4];

  if (v5)
  {
    [*(a1 + 32) _startOperation:*(a1 + 48) toCopyParticipantTokenWithLocalItem:v5 reply:*(a1 + 56)];
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:*(a1 + 40)];
      v12 = 138413314;
      v13 = v8;
      v14 = 2112;
      v15 = 0;
      v16 = 2112;
      v17 = 0;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", &v12, 0x34u);
    }

    v10 = *(a1 + 56);
    v11 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:*(a1 + 40)];
    (*(v10 + 16))(v10, 0, 0, v11);
  }
}

- (void)_startOperation:(id)operation toPrepFolderForSharingWithLocalItem:(id)item reply:(id)reply
{
  v75 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  itemCopy = item;
  replyCopy = reply;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceReferenceDate];
  v10 = v9;

  v68 = v10;
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [BRCXPCRegularIPCsClient _startOperation:toPrepFolderForSharingWithLocalItem:reply:];
  }

  v57 = +[BRCEventsAnalytics sharedAnalytics];
  if (([itemCopy isDirectory] & 1) == 0)
  {
    v18 = [MEMORY[0x277CCA9B8] brc_errorNoDocument:0 underlyingPOSIXError:2];
    v23 = [BRCUserDefaults defaultsForMangledID:0];
    reportXPCErrorOnPCSChain = [v23 reportXPCErrorOnPCSChain];

    if (reportXPCErrorOnPCSChain)
    {
      date2 = [MEMORY[0x277CBEAA8] date];
      [date2 timeIntervalSinceReferenceDate];
      v27 = v26;
      v28 = v66[3];

      clientZone = [itemCopy clientZone];
      mangledID = [clientZone mangledID];
      clientZone2 = [itemCopy clientZone];
      enhancedDrivePrivacyEnabled = [clientZone2 enhancedDrivePrivacyEnabled];
      itemID = [itemCopy itemID];
      itemIDString = [itemID itemIDString];
      session = [(BRCXPCClient *)self session];
      analyticsReporter = [session analyticsReporter];
      [v57 registerAndSendNewFolderSharePCSChainingTime:MEMORY[0x277CBEC28] chainedRecordsCount:mangledID zoneMangledID:enhancedDrivePrivacyEnabled enhancedDrivePrivacyEnabled:itemIDString itemIDString:v18 error:analyticsReporter analyticsReporter:v27 - v28];
    }

    v37 = brc_bread_crumbs();
    v38 = brc_default_log();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v71 = 2112;
      v72 = v18;
      v73 = 2112;
      v74 = v37;
      _os_log_impl(&dword_223E7A000, v38, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    goto LABEL_16;
  }

  if (([itemCopy isKnownByServer] & 1) == 0)
  {
    v18 = [MEMORY[0x277CCA9B8] brc_errorNotInCloud:0];
    v39 = [BRCUserDefaults defaultsForMangledID:0];
    reportXPCErrorOnPCSChain2 = [v39 reportXPCErrorOnPCSChain];

    if (reportXPCErrorOnPCSChain2)
    {
      date3 = [MEMORY[0x277CBEAA8] date];
      [date3 timeIntervalSinceReferenceDate];
      v43 = v42;
      v44 = v66[3];

      clientZone3 = [itemCopy clientZone];
      mangledID2 = [clientZone3 mangledID];
      clientZone4 = [itemCopy clientZone];
      enhancedDrivePrivacyEnabled2 = [clientZone4 enhancedDrivePrivacyEnabled];
      itemID2 = [itemCopy itemID];
      itemIDString2 = [itemID2 itemIDString];
      session2 = [(BRCXPCClient *)self session];
      analyticsReporter2 = [session2 analyticsReporter];
      [v57 registerAndSendNewFolderSharePCSChainingTime:MEMORY[0x277CBEC28] chainedRecordsCount:mangledID2 zoneMangledID:enhancedDrivePrivacyEnabled2 enhancedDrivePrivacyEnabled:itemIDString2 itemIDString:v18 error:analyticsReporter2 analyticsReporter:v43 - v44];
    }

    v37 = brc_bread_crumbs();
    v38 = brc_default_log();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v71 = 2112;
      v72 = v18;
      v73 = 2112;
      v74 = v37;
      _os_log_impl(&dword_223E7A000, v38, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

LABEL_16:

    replyCopy[2](replyCopy, v18);
    goto LABEL_17;
  }

  v13 = [BRCSharingPCSChainFolderOperation alloc];
  asDirectory = [itemCopy asDirectory];
  session3 = [(BRCXPCClient *)self session];
  session4 = [(BRCXPCClient *)self session];
  syncUpScheduler = [session4 syncUpScheduler];
  v18 = [(BRCSharingPCSChainFolderOperation *)v13 initWithItem:asDirectory sessionContext:session3 syncUpCallback:syncUpScheduler];

  [(_BRCFrameworkOperation *)v18 setRemoteClientProxy:operationCopy];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __85__BRCXPCRegularIPCsClient__startOperation_toPrepFolderForSharingWithLocalItem_reply___block_invoke;
  v59[3] = &unk_278507538;
  v64 = &v65;
  v60 = v57;
  v19 = itemCopy;
  v61 = v19;
  selfCopy3 = self;
  v63 = replyCopy;
  [(_BRCOperation *)v18 setFinishBlock:v59];
  clientZone5 = [v19 clientZone];
  LOBYTE(syncUpScheduler) = [clientZone5 isPrivateZone];

  if ((syncUpScheduler & 1) == 0)
  {
    v53 = brc_bread_crumbs();
    v54 = brc_default_log();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
    {
      [BRCXPCRegularIPCsClient _startOperation:toPrepFolderForSharingWithLocalItem:reply:];
    }
  }

  clientZone6 = [v19 clientZone];
  asPrivateClientZone = [clientZone6 asPrivateClientZone];
  [asPrivateClientZone registerPCSChainingOperation:v18];

  [(_BRCOperation *)v18 schedule];
LABEL_17:

  _Block_object_dispose(&v65, 8);
}

void __85__BRCXPCRegularIPCsClient__startOperation_toPrepFolderForSharingWithLocalItem_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v5 = MEMORY[0x277CBEAA8];
  v6 = a2;
  v7 = [v5 date];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8 - *(*(*(a1 + 64) + 8) + 24);

  v24 = *(a1 + 32);
  v10 = [*(a1 + 40) clientZone];
  v11 = [v10 mangledID];
  v12 = [*(a1 + 40) clientZone];
  v13 = [v12 enhancedDrivePrivacyEnabled];
  v14 = [*(a1 + 40) itemID];
  v15 = [v14 itemIDString];
  v16 = [*(a1 + 48) session];
  v17 = [v16 analyticsReporter];
  [v24 registerAndSendNewFolderSharePCSChainingTime:v6 chainedRecordsCount:v11 zoneMangledID:v13 enhancedDrivePrivacyEnabled:v15 itemIDString:v25 error:v17 analyticsReporter:v9];

  v18 = brc_bread_crumbs();
  v19 = brc_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = *(a1 + 48);
    v21 = [v25 brc_wrappedError];
    *buf = 138412802;
    v27 = v20;
    v28 = 2112;
    v29 = v21;
    v30 = 2112;
    v31 = v18;
    _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
  }

  v22 = *(a1 + 56);
  v23 = [v25 brc_wrappedError];
  (*(v22 + 16))(v22, v23);
}

- (void)startOperation:(id)operation toPrepFolderForSharingWithItemID:(id)d reply:(id)reply
{
  v38 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  dCopy = d;
  replyCopy = reply;
  memset(v27, 0, sizeof(v27));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient startOperation:toPrepFolderForSharingWithItemID:reply:]", 4569, 0, v27);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v27[0];
    v14 = qos_class_self();
    v15 = BRCPrettyPrintEnumWithContext(v14, &brc_qos_entries, 0);
    *buf = 134219010;
    v29 = v13;
    v30 = 2112;
    selfCopy = self;
    v32 = 2112;
    v33 = v15;
    v34 = 2080;
    v35 = "[BRCXPCRegularIPCsClient startOperation:toPrepFolderForSharingWithItemID:reply:]";
    v36 = 2112;
    v37 = v11;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  clientPriviledgesDescriptor = [(BRCXPCClient *)self clientPriviledgesDescriptor];
  isSharingPrivateInterfaceEntitled = [clientPriviledgesDescriptor isSharingPrivateInterfaceEntitled];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __81__BRCXPCRegularIPCsClient_startOperation_toPrepFolderForSharingWithItemID_reply___block_invoke;
  v25[3] = &unk_2785014D0;
  v25[4] = self;
  v18 = replyCopy;
  v26 = v18;
  v19 = _brc_ipc_check_client_privilege(self, 1, isSharingPrivateInterfaceEntitled, "isSharingPrivateInterfaceEntitled", v25);

  if (v19)
  {
    clientTruthWorkloop = [(BRCAccountSession *)self->super.__session clientTruthWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__BRCXPCRegularIPCsClient_startOperation_toPrepFolderForSharingWithItemID_reply___block_invoke_644;
    block[3] = &unk_2785003B0;
    block[4] = self;
    v22 = dCopy;
    v24 = v18;
    v23 = operationCopy;
    dispatch_async_and_wait(clientTruthWorkloop, block);
  }

  __brc_leave_section(v27);
}

void __81__BRCXPCRegularIPCsClient_startOperation_toPrepFolderForSharingWithItemID_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __81__BRCXPCRegularIPCsClient_startOperation_toPrepFolderForSharingWithItemID_reply___block_invoke_644(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) session];
  v3 = [v2 itemFetcher];
  v4 = [MEMORY[0x277CFAE50] fileObjectIDWithString:*(a1 + 40)];
  v5 = [v3 itemByFileObjectID:v4];

  if (v5)
  {
    [*(a1 + 32) _startOperation:*(a1 + 48) toPrepFolderForSharingWithLocalItem:v5 reply:*(a1 + 56)];
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:*(a1 + 40)];
      v12 = 138412802;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v12, 0x20u);
    }

    v10 = *(a1 + 56);
    v11 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:*(a1 + 40)];
    (*(v10 + 16))(v10, v11);
  }
}

- (void)_startOperation:(id)operation toProcessSubitemsWithLocalItem:(id)item maxSubsharesFailures:(unint64_t)failures processType:(unint64_t)type reply:(id)reply
{
  v37 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  itemCopy = item;
  replyCopy = reply;
  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [BRCXPCRegularIPCsClient _startOperation:toProcessSubitemsWithLocalItem:maxSubsharesFailures:processType:reply:];
  }

  if ([itemCopy isDirectory])
  {
    v17 = [BRCSharingProcessFolderSubitemsOperation alloc];
    asDirectory = [itemCopy asDirectory];
    session = [(BRCXPCClient *)self session];
    v20 = [(BRCSharingProcessFolderSubitemsOperation *)v17 initWithItem:asDirectory sessionContext:session processType:type maxSubitemsToFail:failures];

    [(_BRCFrameworkOperation *)v20 setRemoteClientProxy:operationCopy];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __113__BRCXPCRegularIPCsClient__startOperation_toProcessSubitemsWithLocalItem_maxSubsharesFailures_processType_reply___block_invoke;
    v28 = &unk_2785024A0;
    selfCopy = self;
    v30 = replyCopy;
    [(_BRCOperation *)v20 setFinishBlock:&v25];
    v21 = [(BRCXPCClient *)self session:v25];
    [v21 addMiscOperation:v20];

    [(_BRCOperation *)v20 schedule];
  }

  else
  {
    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [MEMORY[0x277CCA9B8] brc_errorNoDocument:0 underlyingPOSIXError:2];
      *buf = 138412802;
      selfCopy2 = self;
      v33 = 2112;
      v34 = v24;
      v35 = 2112;
      v36 = v22;
      _os_log_impl(&dword_223E7A000, v23, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    v20 = [MEMORY[0x277CCA9B8] brc_errorNoDocument:0 underlyingPOSIXError:2];
    (*(replyCopy + 2))(replyCopy, v20);
  }
}

void __113__BRCXPCRegularIPCsClient__startOperation_toProcessSubitemsWithLocalItem_maxSubsharesFailures_processType_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = [v4 brc_wrappedError];
    v11 = 138412802;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v11, 0x20u);
  }

  v9 = *(a1 + 40);
  v10 = [v4 brc_wrappedError];
  (*(v9 + 16))(v9, v10);
}

- (void)startOperation:(id)operation toProcessSubitemsWithItemID:(id)d maxSubsharesFailures:(unint64_t)failures processType:(unint64_t)type reply:(id)reply
{
  v49 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  dCopy = d;
  replyCopy = reply;
  memset(v38, 0, sizeof(v38));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient startOperation:toProcessSubitemsWithItemID:maxSubsharesFailures:processType:reply:]", 4606, 0, v38);
  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v29 = replyCopy;
    v17 = dCopy;
    v18 = operationCopy;
    failuresCopy = failures;
    typeCopy = type;
    v21 = v38[0];
    v22 = qos_class_self();
    v23 = BRCPrettyPrintEnumWithContext(v22, &brc_qos_entries, 0);
    *buf = 134219010;
    v40 = v21;
    v41 = 2112;
    selfCopy = self;
    v43 = 2112;
    v44 = v23;
    v45 = 2080;
    v46 = "[BRCXPCRegularIPCsClient startOperation:toProcessSubitemsWithItemID:maxSubsharesFailures:processType:reply:]";
    v47 = 2112;
    v48 = v15;
    _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);

    type = typeCopy;
    failures = failuresCopy;
    operationCopy = v18;
    dCopy = v17;
    replyCopy = v29;
  }

  clientPriviledgesDescriptor = [(BRCXPCClient *)self clientPriviledgesDescriptor];
  isFolderSharingProxyEntitled = [clientPriviledgesDescriptor isFolderSharingProxyEntitled];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __109__BRCXPCRegularIPCsClient_startOperation_toProcessSubitemsWithItemID_maxSubsharesFailures_processType_reply___block_invoke;
  v36[3] = &unk_2785014D0;
  v36[4] = self;
  v26 = replyCopy;
  v37 = v26;
  v27 = _brc_ipc_check_client_privilege(self, 1, isFolderSharingProxyEntitled, "isFolderSharingProxyEntitled", v36);

  if (v27)
  {
    clientTruthWorkloop = [(BRCAccountSession *)self->super.__session clientTruthWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __109__BRCXPCRegularIPCsClient_startOperation_toProcessSubitemsWithItemID_maxSubsharesFailures_processType_reply___block_invoke_646;
    block[3] = &unk_278507560;
    block[4] = self;
    v31 = dCopy;
    v33 = v26;
    v32 = operationCopy;
    failuresCopy2 = failures;
    typeCopy2 = type;
    dispatch_async_and_wait(clientTruthWorkloop, block);
  }

  __brc_leave_section(v38);
}

void __109__BRCXPCRegularIPCsClient_startOperation_toProcessSubitemsWithItemID_maxSubsharesFailures_processType_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __109__BRCXPCRegularIPCsClient_startOperation_toProcessSubitemsWithItemID_maxSubsharesFailures_processType_reply___block_invoke_646(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) session];
  v3 = [v2 itemFetcher];
  v4 = [MEMORY[0x277CFAE50] fileObjectIDWithString:*(a1 + 40)];
  v5 = [v3 itemByFileObjectID:v4];

  if (v5)
  {
    [*(a1 + 32) _startOperation:*(a1 + 48) toProcessSubitemsWithLocalItem:v5 maxSubsharesFailures:*(a1 + 64) processType:*(a1 + 72) reply:*(a1 + 56)];
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:*(a1 + 40)];
      v12 = 138412802;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v12, 0x20u);
    }

    v10 = *(a1 + 56);
    v11 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:*(a1 + 40)];
    (*(v10 + 16))(v10, v11);
  }
}

- (void)startOperation:(id)operation toAcceptShareLink:(id)link skipAcceptDialogs:(BOOL)dialogs reply:(id)reply
{
  dialogsCopy = dialogs;
  v56 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  linkCopy = link;
  replyCopy = reply;
  memset(v45, 0, sizeof(v45));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient startOperation:toAcceptShareLink:skipAcceptDialogs:reply:]", 4623, 0, v45);
  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = v45[0];
    v16 = qos_class_self();
    v17 = BRCPrettyPrintEnumWithContext(v16, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy4 = v15;
    v48 = 2112;
    selfCopy2 = self;
    v50 = 2112;
    v51 = v17;
    v52 = 2080;
    v53 = "[BRCXPCRegularIPCsClient startOperation:toAcceptShareLink:skipAcceptDialogs:reply:]";
    v54 = 2112;
    v55 = v13;
    _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  clientPriviledgesDescriptor = [(BRCXPCClient *)self clientPriviledgesDescriptor];
  isSharingPrivateInterfaceEntitled = [clientPriviledgesDescriptor isSharingPrivateInterfaceEntitled];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __84__BRCXPCRegularIPCsClient_startOperation_toAcceptShareLink_skipAcceptDialogs_reply___block_invoke;
  v43[3] = &unk_2785014D0;
  v43[4] = self;
  v20 = replyCopy;
  v44 = v20;
  v21 = _brc_ipc_check_client_privilege(self, 1, isSharingPrivateInterfaceEntitled, "isSharingPrivateInterfaceEntitled", v43);

  if (v21)
  {
    if (!dialogsCopy)
    {
      goto LABEL_8;
    }

    memset(v42, 0, sizeof(v42));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient startOperation:toAcceptShareLink:skipAcceptDialogs:reply:]", 4628, 0, v42);
    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = v42[0];
      v25 = qos_class_self();
      v26 = BRCPrettyPrintEnumWithContext(v25, &brc_qos_entries, 0);
      *buf = 134219010;
      selfCopy4 = v24;
      v48 = 2112;
      selfCopy2 = self;
      v50 = 2112;
      v51 = v26;
      v52 = 2080;
      v53 = "[BRCXPCRegularIPCsClient startOperation:toAcceptShareLink:skipAcceptDialogs:reply:]";
      v54 = 2112;
      v55 = v22;
      _os_log_impl(&dword_223E7A000, v23, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
    }

    clientPriviledgesDescriptor2 = [(BRCXPCClient *)self clientPriviledgesDescriptor];
    isAutomationEntitled = [clientPriviledgesDescriptor2 isAutomationEntitled];
    v36 = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __84__BRCXPCRegularIPCsClient_startOperation_toAcceptShareLink_skipAcceptDialogs_reply___block_invoke_648;
    v39 = &unk_2785014D0;
    selfCopy3 = self;
    v41 = v20;
    v29 = _brc_ipc_check_client_privilege(self, 1, isAutomationEntitled, "isAutomationEntitled", &v36);

    __brc_leave_section(v42);
    if (v29)
    {
LABEL_8:
      v30 = [BRCDaemon daemon:v36];
      [v30 registerWaiterBlock:v20 forShareURL:linkCopy skipAcceptDialogs:dialogsCopy];

      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      if (([defaultWorkspace openURL:linkCopy withOptions:0] & 1) == 0)
      {
        v32 = brc_bread_crumbs();
        v33 = brc_default_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:22];
          *buf = 138413058;
          selfCopy4 = self;
          v48 = 2112;
          selfCopy2 = 0;
          v50 = 2112;
          v51 = v34;
          v52 = 2112;
          v53 = v32;
          _os_log_impl(&dword_223E7A000, v33, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
        }

        v35 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:22];
        (*(v20 + 2))(v20, 0, v35);
      }
    }
  }

  __brc_leave_section(v45);
}

void __84__BRCXPCRegularIPCsClient_startOperation_toAcceptShareLink_skipAcceptDialogs_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __84__BRCXPCRegularIPCsClient_startOperation_toAcceptShareLink_skipAcceptDialogs_reply___block_invoke_648(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)startOperation:(id)operation toAutoAcceptShareLink:(id)link reply:(id)reply
{
  v58 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  linkCopy = link;
  replyCopy = reply;
  memset(v47, 0, sizeof(v47));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient startOperation:toAutoAcceptShareLink:reply:]", 4664, 0, v47);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v47[0];
    v14 = qos_class_self();
    v15 = BRCPrettyPrintEnumWithContext(v14, &brc_qos_entries, 0);
    *buf = 134219010;
    v49 = v13;
    v50 = 2112;
    selfCopy2 = self;
    v52 = 2112;
    v53 = v15;
    v54 = 2080;
    v55 = "[BRCXPCRegularIPCsClient startOperation:toAutoAcceptShareLink:reply:]";
    v56 = 2112;
    v57 = v11;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  clientPriviledgesDescriptor = [(BRCXPCClient *)self clientPriviledgesDescriptor];
  isSharingPrivateInterfaceEntitled = [clientPriviledgesDescriptor isSharingPrivateInterfaceEntitled];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __70__BRCXPCRegularIPCsClient_startOperation_toAutoAcceptShareLink_reply___block_invoke;
  v45[3] = &unk_2785014D0;
  v45[4] = self;
  v18 = replyCopy;
  v46 = v18;
  v19 = _brc_ipc_check_client_privilege(self, 1, isSharingPrivateInterfaceEntitled, "isSharingPrivateInterfaceEntitled", v45);

  if (v19)
  {
    memset(v44, 0, sizeof(v44));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient startOperation:toAutoAcceptShareLink:reply:]", 4668, 0, v44);
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = linkCopy;
      v23 = operationCopy;
      v24 = v44[0];
      v25 = qos_class_self();
      v26 = BRCPrettyPrintEnumWithContext(v25, &brc_qos_entries, 0);
      *buf = 134219010;
      v49 = v24;
      v50 = 2112;
      selfCopy2 = self;
      v52 = 2112;
      v53 = v26;
      v54 = 2080;
      v55 = "[BRCXPCRegularIPCsClient startOperation:toAutoAcceptShareLink:reply:]";
      v56 = 2112;
      v57 = v20;
      _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);

      operationCopy = v23;
      linkCopy = v22;
    }

    v27 = *MEMORY[0x277CFAC50];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __70__BRCXPCRegularIPCsClient_startOperation_toAutoAcceptShareLink_reply___block_invoke_650;
    v42[3] = &unk_2785014D0;
    v42[4] = self;
    v28 = v18;
    v43 = v28;
    LODWORD(v27) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v27, v42);

    if (v27)
    {
      v29 = [BRCFetchCKShareMetadataOperation alloc];
      session = [(BRCXPCClient *)self session];
      v31 = [(BRCFetchCKShareMetadataOperation *)v29 initWithShareLink:linkCopy sessionContext:session];

      br_fetchCKShareMetadata = [MEMORY[0x277CBC4F8] br_fetchCKShareMetadata];
      [(_BRCOperation *)v31 setGroup:br_fetchCKShareMetadata];

      objc_initWeak(buf, self);
      v34 = MEMORY[0x277D85DD0];
      v35 = 3221225472;
      v36 = __70__BRCXPCRegularIPCsClient_startOperation_toAutoAcceptShareLink_reply___block_invoke_652;
      v37 = &unk_278507588;
      v38 = linkCopy;
      selfCopy3 = self;
      v40 = v28;
      objc_copyWeak(&v41, buf);
      [(_BRCOperation *)v31 setFinishBlock:&v34];
      v33 = [(BRCXPCClient *)self session:v34];
      [v33 addMiscOperation:v31];

      [(_BRCOperation *)v31 schedule];
      objc_destroyWeak(&v41);

      objc_destroyWeak(buf);
    }

    __brc_leave_section(v44);
  }

  __brc_leave_section(v47);
}

void __70__BRCXPCRegularIPCsClient_startOperation_toAutoAcceptShareLink_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __70__BRCXPCRegularIPCsClient_startOperation_toAutoAcceptShareLink_reply___block_invoke_650(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __70__BRCXPCRegularIPCsClient_startOperation_toAutoAcceptShareLink_reply___block_invoke_652(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v25 = *(a1 + 32);
    v26 = 138413058;
    v27 = v25;
    v28 = 2112;
    v29 = v5;
    v30 = 2112;
    v31 = v6;
    v32 = 2112;
    v33 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Fetched CKShareMetadata for link %@, shareMetadata = %@, error = %@%@", &v26, 0x2Au);
  }

  if (v6)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      v26 = 138413058;
      v27 = v11;
      v28 = 2112;
      v29 = 0;
      v30 = 2112;
      v31 = v6;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v26, 0x2Au);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __70__BRCXPCRegularIPCsClient_startOperation_toAutoAcceptShareLink_reply___block_invoke_652_cold_1();
      }

      v15 = +[BRCDaemon daemon];
      v16 = *(a1 + 48);
      v17 = [v5 share];
      v18 = [v17 URL];
      [v15 registerWaiterBlock:v16 forShareURL:v18 skipAcceptDialogs:1];

      [WeakRetained _handleAcceptingCKShareMetadata:v5 reply:&__block_literal_global_655];
    }

    else
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *(a1 + 40);
        v22 = [MEMORY[0x277CCA9B8] brc_errorLoggedOut];
        v26 = 138413058;
        v27 = v21;
        v28 = 2112;
        v29 = 0;
        v30 = 2112;
        v31 = v22;
        v32 = 2112;
        v33 = v19;
        _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v26, 0x2Au);
      }

      v23 = *(a1 + 48);
      v24 = [MEMORY[0x277CCA9B8] brc_errorLoggedOut];
      (*(v23 + 16))(v23, 0, v24);
    }
  }
}

void __70__BRCXPCRegularIPCsClient_startOperation_toAutoAcceptShareLink_reply___block_invoke_653(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, 0x90u))
    {
      __70__BRCXPCRegularIPCsClient_startOperation_toAutoAcceptShareLink_reply___block_invoke_653_cold_1();
    }
  }
}

- (void)startOperation:(id)operation toCopyShareURLForShare:(id)share reply:(id)reply
{
  v46 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  shareCopy = share;
  replyCopy = reply;
  memset(v35, 0, sizeof(v35));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient startOperation:toCopyShareURLForShare:reply:]", 4703, 0, v35);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v35[0];
    v14 = qos_class_self();
    v15 = BRCPrettyPrintEnumWithContext(v14, &brc_qos_entries, 0);
    *buf = 134219010;
    v37 = v13;
    v38 = 2112;
    selfCopy = self;
    v40 = 2112;
    v41 = v15;
    v42 = 2080;
    v43 = "[BRCXPCRegularIPCsClient startOperation:toCopyShareURLForShare:reply:]";
    v44 = 2112;
    v45 = v11;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  clientPriviledgesDescriptor = [(BRCXPCClient *)self clientPriviledgesDescriptor];
  isSharingProxyEntitled = [clientPriviledgesDescriptor isSharingProxyEntitled];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __71__BRCXPCRegularIPCsClient_startOperation_toCopyShareURLForShare_reply___block_invoke;
  v33[3] = &unk_2785014D0;
  v33[4] = self;
  v18 = replyCopy;
  v34 = v18;
  v19 = _brc_ipc_check_client_privilege(self, 1, isSharingProxyEntitled, "isSharingProxyEntitled", v33);

  if (v19)
  {
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [BRCXPCRegularIPCsClient startOperation:toCopyShareURLForShare:reply:];
    }

    session = [(BRCXPCClient *)self session];
    v23 = objc_alloc(MEMORY[0x277CFAE60]);
    recordID = [shareCopy recordID];
    zoneID = [recordID zoneID];
    v26 = [v23 initWithRecordZoneID:zoneID];

    v27 = [session clientZoneByMangledID:v26];
    v28 = [BRCSharingCopyShareURLOperation alloc];
    serverZone = [v27 serverZone];
    v30 = [(BRCSharingCopyShareURLOperation *)v28 initWithShare:shareCopy zone:serverZone sessionContext:session];

    [(_BRCFrameworkOperation *)v30 setRemoteClientProxy:operationCopy];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __71__BRCXPCRegularIPCsClient_startOperation_toCopyShareURLForShare_reply___block_invoke_658;
    v31[3] = &unk_2785024A0;
    v31[4] = self;
    v32 = v18;
    [(_BRCOperation *)v30 setFinishBlock:v31];
    [session addMiscOperation:v30];
    [(_BRCOperation *)v30 schedule];
  }

  __brc_leave_section(v35);
}

void __71__BRCXPCRegularIPCsClient_startOperation_toCopyShareURLForShare_reply___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413314;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = 0;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", &v7, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
}

void __71__BRCXPCRegularIPCsClient_startOperation_toCopyShareURLForShare_reply___block_invoke_658(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v10 = [v5 objectForKeyedSubscript:@"share"];
    v11 = [v5 objectForKeyedSubscript:@"url"];
    v12 = [v6 brc_wrappedError];
    v17 = 138413314;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@)%@", &v17, 0x34u);
  }

  v13 = *(a1 + 40);
  v14 = [v5 objectForKeyedSubscript:@"share"];
  v15 = [v5 objectForKeyedSubscript:@"url"];
  v16 = [v6 brc_wrappedError];
  (*(v13 + 16))(v13, v14, v15, v16);
}

- (void)getShareOptionsOfItemIdentifier:(id)identifier reply:(id)reply
{
  v48 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  memset(v35, 0, sizeof(v35));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient getShareOptionsOfItemIdentifier:reply:]", 4724, 0, v35);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v35[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    v37 = v10;
    v38 = 2112;
    selfCopy2 = self;
    v40 = 2112;
    v41 = v12;
    v42 = 2080;
    v43 = "[BRCXPCRegularIPCsClient getShareOptionsOfItemIdentifier:reply:]";
    v44 = 2112;
    v45 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __65__BRCXPCRegularIPCsClient_getShareOptionsOfItemIdentifier_reply___block_invoke;
  v33[3] = &unk_2785014D0;
  v33[4] = self;
  v13 = replyCopy;
  v34 = v13;
  v14 = _brc_ipc_check_applibrary_proxy(self, 1, v33);

  if (v14)
  {
    memset(v32, 0, sizeof(v32));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient getShareOptionsOfItemIdentifier:reply:]", 4726, 0, v32);
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = v32[0];
      v18 = qos_class_self();
      v19 = BRCPrettyPrintEnumWithContext(v18, &brc_qos_entries, 0);
      v20 = identifierCopy;
      uTF8String = [identifierCopy UTF8String];
      *buf = 134219266;
      v37 = v17;
      v38 = 2112;
      selfCopy2 = self;
      v40 = 2112;
      v41 = v19;
      v42 = 2080;
      v43 = "[BRCXPCRegularIPCsClient getShareOptionsOfItemIdentifier:reply:]";
      v44 = 2080;
      v45 = uTF8String;
      v46 = 2112;
      v47 = v15;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s Getting sharing options for %s%@", buf, 0x3Eu);
    }

    session = [(BRCXPCClient *)self session];
    tracker = self->super._tracker;
    clientDB = [session clientDB];
    serialQueue = [clientDB serialQueue];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __65__BRCXPCRegularIPCsClient_getShareOptionsOfItemIdentifier_reply___block_invoke_662;
    v28[3] = &unk_2784FF5B8;
    v29 = identifierCopy;
    selfCopy3 = self;
    v31 = v13;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __65__BRCXPCRegularIPCsClient_getShareOptionsOfItemIdentifier_reply___block_invoke_663;
    v26[3] = &unk_278500048;
    v26[4] = self;
    v27 = v31;
    brc_task_tracker_async_with_logs(tracker, serialQueue, v28, v26);

    __brc_leave_section(v32);
  }

  __brc_leave_section(v35);
}

void __65__BRCXPCRegularIPCsClient_getShareOptionsOfItemIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413826;
    v8 = v6;
    v9 = 1024;
    v10 = 0;
    v11 = 1024;
    v12 = 0;
    v13 = 1024;
    v14 = 0;
    v15 = 2112;
    v16 = 0;
    v17 = 2112;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %d, %d, %@, %@)%@", &v7, 0x3Cu);
  }

  (*(*(a1 + 40) + 16))();
}

void __65__BRCXPCRegularIPCsClient_getShareOptionsOfItemIdentifier_reply___block_invoke_662(uint64_t a1)
{
  v1 = a1;
  v51 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CFAE50] fileObjectIDWithString:*(a1 + 32)];
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __65__BRCXPCRegularIPCsClient_getShareOptionsOfItemIdentifier_reply___block_invoke_662_cold_1();
  }

  v5 = [*(v1 + 40) session];
  v6 = [v5 itemFetcher];
  v7 = [v6 itemByFileObjectID:v2];

  if (v7)
  {
    v8 = [v7 sharingOptions];
    v9 = v8 & 0x48;
    v10 = [v7 clientZone];
    v11 = [v10 isPrivateZone];

    v12 = 0;
    v13 = v8 & 4;
    if ((v8 & 0x48) != 0 && (v8 & 4) == 0)
    {
      v36 = [MEMORY[0x277CBC5D0] brc_fetchShareIDWithSharedItem:v7];
      v14 = [v36 brc_shareItemID];
      v15 = [v7 clientZone];
      v16 = [v15 itemByItemID:v14];

      v17 = [v16 st];
      [v17 logicalName];
      v18 = v11;
      v19 = v1;
      v21 = v20 = v2;
      v12 = [v21 br_displayFilenameWithExtensionHidden:0];

      v2 = v20;
      v1 = v19;
      v11 = v18;
      v9 = v8 & 0x48;

      v13 = v8 & 4;
    }

    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v1 + 40);
      *buf = 138413826;
      v38 = v24;
      v39 = 1024;
      v40 = v9 != 0;
      v41 = 1024;
      v42 = v11;
      v43 = 1024;
      v44 = v13 >> 2;
      v45 = 2112;
      v46 = v12;
      v47 = 2112;
      v48 = 0;
      v49 = 2112;
      v50 = v22;
      _os_log_impl(&dword_223E7A000, v23, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %d, %d, %@, %@)%@", buf, 0x3Cu);
    }

    (*(*(v1 + 48) + 16))();
  }

  else
  {
    v25 = brc_bread_crumbs();
    v26 = brc_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      __65__BRCXPCRegularIPCsClient_getShareOptionsOfItemIdentifier_reply___block_invoke_662_cold_2();
    }

    v27 = brc_bread_crumbs();
    v28 = brc_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = *(v1 + 40);
      v30 = MEMORY[0x277CCA9B8];
      v31 = [v2 description];
      v32 = [v30 brc_errorItemNotFound:v31];
      *buf = 138413826;
      v38 = v29;
      v39 = 1024;
      v40 = 0;
      v41 = 1024;
      v42 = 0;
      v43 = 1024;
      v44 = 0;
      v45 = 2112;
      v46 = 0;
      v47 = 2112;
      v48 = v32;
      v49 = 2112;
      v50 = v27;
      _os_log_impl(&dword_223E7A000, v28, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %d, %d, %@, %@)%@", buf, 0x3Cu);
    }

    v33 = *(v1 + 48);
    v34 = MEMORY[0x277CCA9B8];
    v12 = [v2 description];
    v35 = [v34 brc_errorItemNotFound:v12];
    (*(v33 + 16))(v33, 0, 0, 0, 0, v35);
  }
}

void __65__BRCXPCRegularIPCsClient_getShareOptionsOfItemIdentifier_reply___block_invoke_663(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
    v8 = 138413826;
    v9 = v4;
    v10 = 1024;
    v11 = 0;
    v12 = 1024;
    v13 = 0;
    v14 = 1024;
    v15 = 0;
    v16 = 2112;
    v17 = 0;
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %d, %d, %@, %@)%@", &v8, 0x3Cu);
  }

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
  (*(v6 + 16))(v6, 0, 0, 0, 0, v7);
}

- (void)_handleAcceptingCKShareMetadata:(id)metadata reply:(id)reply
{
  v43 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  replyCopy = reply;
  session = [(BRCXPCClient *)self session];
  memset(v32, 0, sizeof(v32));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient _handleAcceptingCKShareMetadata:reply:]", 4767, 0, v32);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v32[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v10;
    v35 = 2112;
    selfCopy = self;
    v37 = 2112;
    v38 = v12;
    v39 = 2080;
    v40 = "[BRCXPCRegularIPCsClient _handleAcceptingCKShareMetadata:reply:]";
    v41 = 2112;
    v42 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __65__BRCXPCRegularIPCsClient__handleAcceptingCKShareMetadata_reply___block_invoke;
  v30[3] = &unk_2785014D0;
  v30[4] = self;
  v13 = replyCopy;
  v31 = v13;
  v14 = _brc_ipc_check_logged_status(self, 0, v30);

  if (v14)
  {
    share = [metadataCopy share];
    v16 = [share URL];

    v26 = objc_opt_new();
    v17 = +[BRCUserActionsNavigator defaultNavigator];
    v18 = [[BRCSharingAcceptFlowOperation alloc] initWithShareMetadata:metadataCopy client:self sessionContext:session userNotifier:v26 userActionsNavigator:v17];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __65__BRCXPCRegularIPCsClient__handleAcceptingCKShareMetadata_reply___block_invoke_666;
    v28[3] = &unk_2785024A0;
    v28[4] = self;
    v19 = v13;
    v29 = v19;
    [(_BRCOperation *)v18 setFinishBlock:v28];
    v20 = +[BRCDaemon daemon];
    v21 = [v20 registerShareAcceptOperation:v18 forURL:v16];

    if (v21 != v18)
    {
      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, 0x90u))
      {
        [BRCXPCRegularIPCsClient _handleAcceptingCKShareMetadata:reply:];
      }

      [(BRCSharingAcceptFlowOperation *)v21 moveDialogToFront];
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        selfCopy2 = self;
        v35 = 2112;
        selfCopy = 0;
        v37 = 2112;
        v38 = v24;
        _os_log_impl(&dword_223E7A000, v25, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
      }

      (*(v19 + 2))(v19, 0);
    }
  }

  __brc_leave_section(v32);
}

void __65__BRCXPCRegularIPCsClient__handleAcceptingCKShareMetadata_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __65__BRCXPCRegularIPCsClient__handleAcceptingCKShareMetadata_reply___block_invoke_666(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v6 = 138412802;
    v7 = v4;
    v8 = 2112;
    v9 = 0;
    v10 = 2112;
    v11 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v6, 0x20u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)handleCloudKitShareMetadata:(id)metadata completionHandler:(id)handler
{
  v39 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  handlerCopy = handler;
  memset(v28, 0, sizeof(v28));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient handleCloudKitShareMetadata:completionHandler:]", 4824, 0, v28);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v28[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    v30 = v10;
    v31 = 2112;
    selfCopy = self;
    v33 = 2112;
    v34 = v12;
    v35 = 2080;
    v36 = "[BRCXPCRegularIPCsClient handleCloudKitShareMetadata:completionHandler:]";
    v37 = 2112;
    v38 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __73__BRCXPCRegularIPCsClient_handleCloudKitShareMetadata_completionHandler___block_invoke;
  v24[3] = &unk_278501778;
  v13 = metadataCopy;
  v25 = v13;
  selfCopy2 = self;
  v14 = handlerCopy;
  v27 = v14;
  v15 = _brc_ipc_check_logged_status(self, 0, v24);

  if (v15)
  {
    memset(v23, 0, sizeof(v23));
    __brc_create_section(0, "[BRCXPCRegularIPCsClient handleCloudKitShareMetadata:completionHandler:]", 4826, 0, v23);
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = v23[0];
      share = [v13 share];
      v20 = [share URL];
      *buf = 134218498;
      v30 = v18;
      v31 = 2112;
      selfCopy = v20;
      v33 = 2112;
      v34 = v16;
      _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx handling share at %@%@", buf, 0x20u);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __73__BRCXPCRegularIPCsClient_handleCloudKitShareMetadata_completionHandler___block_invoke_667;
    v21[3] = &unk_2785014D0;
    v21[4] = self;
    v22 = v14;
    [(BRCXPCRegularIPCsClient *)self _handleAcceptingCKShareMetadata:v13 reply:v21];

    __brc_leave_section(v23);
  }

  __brc_leave_section(v28);
}

void __73__BRCXPCRegularIPCsClient_handleCloudKitShareMetadata_completionHandler___block_invoke(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, 0x90u))
  {
    v12 = a1[4];
    v13 = 138412802;
    v14 = v12;
    v15 = 2112;
    v16 = v3;
    v17 = 2112;
    v18 = v4;
    _os_log_error_impl(&dword_223E7A000, v5, 0x90u, "[ERROR] can't handle share %@: %@%@", &v13, 0x20u);
  }

  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = a1[5];
    v9 = [v3 brc_wrappedError];
    v13 = 138412802;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v13, 0x20u);
  }

  v10 = a1[6];
  v11 = [v3 brc_wrappedError];
  (*(v10 + 16))(v10, v11);
}

void __73__BRCXPCRegularIPCsClient_handleCloudKitShareMetadata_completionHandler___block_invoke_667(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v3;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] can't accept the share: %@%@", &v12, 0x16u);
    }
  }

  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = [v3 brc_wrappedError];
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v12, 0x20u);
  }

  v10 = *(a1 + 40);
  v11 = [v3 brc_wrappedError];
  (*(v10 + 16))(v10, v11);
}

- (void)keepDataLocalOnSignOut:(BOOL)out reply:(id)reply
{
  outCopy = out;
  v35 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v24, 0, sizeof(v24));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient keepDataLocalOnSignOut:reply:]", 4839, 0, v24);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v24[0];
    v10 = qos_class_self();
    v11 = BRCPrettyPrintEnumWithContext(v10, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v9;
    v27 = 2112;
    selfCopy = self;
    v29 = 2112;
    v30 = v11;
    v31 = 2080;
    v32 = "[BRCXPCRegularIPCsClient keepDataLocalOnSignOut:reply:]";
    v33 = 2112;
    v34 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __56__BRCXPCRegularIPCsClient_keepDataLocalOnSignOut_reply___block_invoke;
  v22[3] = &unk_2785014D0;
  v22[4] = self;
  v12 = replyCopy;
  v23 = v12;
  v13 = _brc_ipc_check_applibraries_access(self, 3, v22);

  if (v13)
  {
    v14 = +[BRCAccountsManager sharedManager];
    [v14 keepDataLocalOnSignOutForCurrentPersona:outCopy];
    session = [(BRCXPCClient *)self session];

    if (session)
    {
      session2 = [(BRCXPCClient *)self session];
      clientTruthWorkloop = [session2 clientTruthWorkloop];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__BRCXPCRegularIPCsClient_keepDataLocalOnSignOut_reply___block_invoke_668;
      block[3] = &unk_278500EE0;
      v21 = outCopy;
      block[4] = self;
      dispatch_async_and_wait(clientTruthWorkloop, block);
    }

    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v27 = 2112;
      selfCopy = 0;
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(v12 + 2))(v12, 0);
  }

  __brc_leave_section(v24);
}

void __56__BRCXPCRegularIPCsClient_keepDataLocalOnSignOut_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __56__BRCXPCRegularIPCsClient_keepDataLocalOnSignOut_reply___block_invoke_668(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __56__BRCXPCRegularIPCsClient_keepDataLocalOnSignOut_reply___block_invoke_668_cold_1();
  }

  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v5 = [*(a1 + 32) session];
  v6 = [v5 clientState];
  [v6 setObject:v4 forKeyedSubscript:@"kBRCKeepDataLocalOnSignOutStatKey"];

  v7 = [*(a1 + 32) session];
  v8 = [v7 clientDB];
  [v8 forceBatchStart];
}

- (BOOL)_saveOrDeleteContainerMetadataRecordName:(id)name saveRecord:(BOOL)record error:(id *)error
{
  recordCopy = record;
  v31[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__52;
  v28 = __Block_byref_object_dispose__52;
  v29 = 0;
  v9 = objc_alloc(MEMORY[0x277CBC5D0]);
  brc_containerMetadataZoneID = [MEMORY[0x277CBC5F8] brc_containerMetadataZoneID];
  v11 = [v9 initWithRecordName:nameCopy zoneID:brc_containerMetadataZoneID];

  if (recordCopy)
  {
    v12 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"AppContainer" recordID:v11];
    v13 = objc_alloc(MEMORY[0x277CBC4A0]);
    v31[0] = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    v15 = [v13 initWithRecordsToSave:v14 recordIDsToDelete:0];
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x277CBC4A0]);
    v30 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    v15 = [v16 initWithRecordsToSave:0 recordIDsToDelete:v12];
  }

  br_testTrigger = [MEMORY[0x277CBC4F8] br_testTrigger];
  [v15 setGroup:br_testTrigger];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __85__BRCXPCRegularIPCsClient__saveOrDeleteContainerMetadataRecordName_saveRecord_error___block_invoke;
  v23[3] = &unk_2785075B0;
  v23[4] = &v24;
  [v15 setModifyRecordsCompletionBlock:v23];
  session = [(BRCXPCClient *)self session];
  syncContextProvider = [session syncContextProvider];
  defaultSyncContext = [syncContextProvider defaultSyncContext];
  [defaultSyncContext addOperation:v15];

  [v15 waitUntilFinished];
  if (error)
  {
    *error = v25[5];
  }

  v21 = v25[5] == 0;

  _Block_object_dispose(&v24, 8);
  return v21;
}

- (void)_doesAnyRecordExistInContainerMetadataRecordName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v8 = [nameCopy br_transform:&__block_literal_global_677];
  v9 = [objc_alloc(MEMORY[0x277CBC3E0]) initWithRecordIDs:v8];
  br_testTrigger = [MEMORY[0x277CBC4F8] br_testTrigger];
  [v9 setGroup:br_testTrigger];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __94__BRCXPCRegularIPCsClient__doesAnyRecordExistInContainerMetadataRecordName_completionHandler___block_invoke_2;
  v18[3] = &unk_2785075F8;
  v18[4] = v19;
  [v9 setPerRecordCompletionBlock:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __94__BRCXPCRegularIPCsClient__doesAnyRecordExistInContainerMetadataRecordName_completionHandler___block_invoke_680;
  v15[3] = &unk_278507620;
  v11 = handlerCopy;
  v16 = v11;
  v17 = v19;
  [v9 setFetchRecordsCompletionBlock:v15];
  session = [(BRCXPCClient *)self session];
  syncContextProvider = [session syncContextProvider];
  defaultSyncContext = [syncContextProvider defaultSyncContext];
  [defaultSyncContext addOperation:v9];

  _Block_object_dispose(v19, 8);
}

id __94__BRCXPCRegularIPCsClient__doesAnyRecordExistInContainerMetadataRecordName_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBC5D0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [MEMORY[0x277CBC5F8] brc_containerMetadataZoneID];
  v6 = [v4 initWithRecordName:v3 zoneID:v5];

  return v6;
}

void __94__BRCXPCRegularIPCsClient__doesAnyRecordExistInContainerMetadataRecordName_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412802;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] Could not find record %@: %@%@", &v10, 0x20u);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

- (void)_t_createFileAtURL:(id)l reply:(id)reply
{
  v38 = *MEMORY[0x277D85DE8];
  lCopy = l;
  replyCopy = reply;
  memset(v27, 0, sizeof(v27));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient _t_createFileAtURL:reply:]", 4919, 0, v27);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v27[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy3 = v10;
    v30 = 2112;
    selfCopy = self;
    v32 = 2112;
    v33 = v12;
    v34 = 2080;
    v35 = "[BRCXPCRegularIPCsClient _t_createFileAtURL:reply:]";
    v36 = 2112;
    v37 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v13 = *MEMORY[0x277CFAC58];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __52__BRCXPCRegularIPCsClient__t_createFileAtURL_reply___block_invoke;
  v25[3] = &unk_2785014D0;
  v25[4] = self;
  v14 = replyCopy;
  v26 = v14;
  LODWORD(v13) = _brc_ipc_check_entitlement_and_logged_status(self, 2, v13, v25);

  if (v13)
  {
    v24 = 0;
    v15 = [@"testing" writeToFile:lCopy atomically:1 encoding:4 error:&v24];
    v16 = v24;
    if (v15)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [BRCXPCRegularIPCsClient _t_createFileAtURL:reply:];
      }

      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        selfCopy3 = self;
        v30 = 2112;
        selfCopy = 0;
        v32 = 2112;
        v33 = v19;
        _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
      }

      v21 = 0;
    }

    else
    {
      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, 0x90u))
      {
        [BRCXPCRegularIPCsClient _t_createFileAtURL:reply:];
      }

      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        selfCopy3 = self;
        v30 = 2112;
        selfCopy = v16;
        v32 = 2112;
        v33 = v19;
        _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
      }

      v21 = v16;
    }

    (*(v14 + 2))(v14, v21);
  }

  __brc_leave_section(v27);
}

void __52__BRCXPCRegularIPCsClient__t_createFileAtURL_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_t_canReadFileAtURL:(id)l reply:(id)reply
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCACA8];
  v17 = 0;
  replyCopy = reply;
  v8 = [v6 stringWithContentsOfFile:l encoding:4 error:&v17];
  v9 = v17;

  if (v8)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [BRCXPCRegularIPCsClient _t_canReadFileAtURL:reply:];
    }

    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v20 = 2112;
      v21 = 0;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    v14 = 0;
  }

  else
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, 0x90u))
    {
      [BRCXPCRegularIPCsClient _t_canReadFileAtURL:reply:];
    }

    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    v14 = v9;
  }

  (replyCopy)[2](replyCopy, v14);
}

- (void)setEnhancedDrivePrivacyEnabled:(BOOL)enabled forContainer:(id)container onServer:(BOOL)server onClient:(BOOL)client reply:(id)reply
{
  clientCopy = client;
  serverCopy = server;
  v71 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  replyCopy = reply;
  memset(v61, 0, sizeof(v61));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient setEnhancedDrivePrivacyEnabled:forContainer:onServer:onClient:reply:]", 4950, 0, v61);
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v46 = replyCopy;
    v16 = serverCopy;
    v17 = clientCopy;
    v18 = containerCopy;
    enabledCopy = enabled;
    v20 = v61[0];
    v21 = qos_class_self();
    v22 = BRCPrettyPrintEnumWithContext(v21, &brc_qos_entries, 0);
    *buf = 134219010;
    *&buf[4] = v20;
    *&buf[12] = 2112;
    *&buf[14] = self;
    *&buf[22] = 2112;
    v69 = v22;
    *v70 = 2080;
    *&v70[2] = "[BRCXPCRegularIPCsClient setEnhancedDrivePrivacyEnabled:forContainer:onServer:onClient:reply:]";
    *&v70[10] = 2112;
    *&v70[12] = v14;
    _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);

    enabled = enabledCopy;
    containerCopy = v18;
    clientCopy = v17;
    serverCopy = v16;
    replyCopy = v46;
  }

  v23 = *MEMORY[0x277CFAC58];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __95__BRCXPCRegularIPCsClient_setEnhancedDrivePrivacyEnabled_forContainer_onServer_onClient_reply___block_invoke;
  v59[3] = &unk_2785014D0;
  v59[4] = self;
  v24 = replyCopy;
  v60 = v24;
  LODWORD(v23) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v23, v59);

  if (v23)
  {
    v25 = [BRCUserDefaults defaultsForMangledID:0];
    supportsEnhancedDrivePrivacy = [v25 supportsEnhancedDrivePrivacy];

    if ((supportsEnhancedDrivePrivacy & 1) == 0)
    {
      v34 = brc_bread_crumbs();
      v35 = brc_default_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = [MEMORY[0x277CCA9B8] brc_errorPermissionError:@"Enhanced Drive Privacy Not Enabled"];
        *buf = 138412802;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v36;
        *&buf[22] = 2112;
        v69 = v34;
        _os_log_impl(&dword_223E7A000, v35, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
      }

      session = [MEMORY[0x277CCA9B8] brc_errorPermissionError:@"Enhanced Drive Privacy Not Enabled"];
      (*(v24 + 2))(v24, session);
      goto LABEL_29;
    }

    session = [(BRCXPCClient *)self session];
    v28 = [containerCopy isEqualToString:@"all"];
    v29 = [containerCopy isEqualToString:@"all-private"];
    v30 = v29;
    if (serverCopy)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v69 = __Block_byref_object_copy__52;
      *v70 = __Block_byref_object_dispose__52;
      *&v70[8] = 0;
      if (v29)
      {
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __95__BRCXPCRegularIPCsClient_setEnhancedDrivePrivacyEnabled_forContainer_onServer_onClient_reply___block_invoke_693;
        v57[3] = &unk_278507648;
        enabledCopy2 = enabled;
        v57[4] = self;
        v57[5] = buf;
        [session enumeratePrivateClientZones:v57];
        if (*(*&buf[8] + 40))
        {
          v31 = brc_bread_crumbs();
          v32 = brc_default_log();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = *(*&buf[8] + 40);
            *v62 = 138412802;
            selfCopy2 = self;
            v64 = 2112;
            v65 = v33;
            v66 = 2112;
            v67 = v31;
            _os_log_impl(&dword_223E7A000, v32, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", v62, 0x20u);
          }

          (*(v24 + 2))(v24, *(*&buf[8] + 40));
LABEL_28:
          _Block_object_dispose(buf, 8);

LABEL_29:
          goto LABEL_30;
        }
      }

      else
      {
        if (v28)
        {
          v37 = @"com.apple.lobodon.forced";
        }

        else
        {
          v37 = [containerCopy stringByAppendingString:@".lobodon.enabled"];
        }

        v38 = *&buf[8];
        obj = *(*&buf[8] + 40);
        v47 = v37;
        v39 = [BRCXPCRegularIPCsClient _saveOrDeleteContainerMetadataRecordName:"_saveOrDeleteContainerMetadataRecordName:saveRecord:error:" saveRecord:? error:?];
        objc_storeStrong((v38 + 40), obj);
        if (!v39)
        {
          v43 = brc_bread_crumbs();
          v44 = brc_default_log();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            v45 = *(*&buf[8] + 40);
            *v62 = 138412802;
            selfCopy2 = self;
            v64 = 2112;
            v65 = v45;
            v66 = 2112;
            v67 = v43;
            _os_log_impl(&dword_223E7A000, v44, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", v62, 0x20u);
          }

          (*(v24 + 2))(v24, *(*&buf[8] + 40));
          goto LABEL_28;
        }
      }

      _Block_object_dispose(buf, 8);
    }

    if (clientCopy)
    {
      clientTruthWorkloop = [session clientTruthWorkloop];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __95__BRCXPCRegularIPCsClient_setEnhancedDrivePrivacyEnabled_forContainer_onServer_onClient_reply___block_invoke_701;
      block[3] = &unk_2785076B8;
      enabledCopy3 = enabled;
      v54 = v28;
      v49 = session;
      v55 = v30;
      v50 = containerCopy;
      selfCopy3 = self;
      v52 = v24;
      dispatch_async_and_wait(clientTruthWorkloop, block);
    }

    v41 = brc_bread_crumbs();
    v42 = brc_default_log();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = 0;
      *&buf[22] = 2112;
      v69 = v41;
      _os_log_impl(&dword_223E7A000, v42, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(v24 + 2))(v24, 0);
    goto LABEL_29;
  }

LABEL_30:
  __brc_leave_section(v61);
}

void __95__BRCXPCRegularIPCsClient_setEnhancedDrivePrivacyEnabled_forContainer_onServer_onClient_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __95__BRCXPCRegularIPCsClient_setEnhancedDrivePrivacyEnabled_forContainer_onServer_onClient_reply___block_invoke_693(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == [v3 enhancedDrivePrivacyEnabled])
  {
    v4 = 1;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [v3 mangledID];
    v7 = [v6 appLibraryOrZoneName];
    v8 = [v7 stringByAppendingString:@".lobodon.enabled"];
    v9 = *(a1 + 48);
    v10 = *(*(a1 + 40) + 8);
    obj = *(v10 + 40);
    v4 = [v5 _saveOrDeleteContainerMetadataRecordName:v8 saveRecord:v9 error:&obj];
    objc_storeStrong((v10 + 40), obj);
  }

  return v4;
}

void __95__BRCXPCRegularIPCsClient_setEnhancedDrivePrivacyEnabled_forContainer_onServer_onClient_reply___block_invoke_701(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __95__BRCXPCRegularIPCsClient_setEnhancedDrivePrivacyEnabled_forContainer_onServer_onClient_reply___block_invoke_2;
  v18[3] = &__block_descriptor_33_e23_v16__0__BRCClientZone_8l;
  v19 = *(a1 + 64);
  v2 = MEMORY[0x22AA4A310](v18);
  v3 = v2;
  if (*(a1 + 65) == 1)
  {
    v4 = *(a1 + 32);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __95__BRCXPCRegularIPCsClient_setEnhancedDrivePrivacyEnabled_forContainer_onServer_onClient_reply___block_invoke_3;
    v16[3] = &unk_278507690;
    v17 = v2;
    [v4 enumerateClientZones:v16];
    v5 = v17;
LABEL_7:

    v8 = [*(a1 + 32) clientDB];
    [v8 forceBatchStart];
    goto LABEL_8;
  }

  v6 = *(a1 + 32);
  if (*(a1 + 66) == 1)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __95__BRCXPCRegularIPCsClient_setEnhancedDrivePrivacyEnabled_forContainer_onServer_onClient_reply___block_invoke_4;
    v14[3] = &unk_278507690;
    v15 = v2;
    [v6 enumeratePrivateClientZones:v14];
    v5 = v15;
    goto LABEL_7;
  }

  v7 = [*(a1 + 32) appLibraryByID:*(a1 + 40)];
  v5 = [v7 defaultClientZone];

  if (v5)
  {
    (v3)[2](v3, v5);
    goto LABEL_7;
  }

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 48);
    v12 = [MEMORY[0x277CCA9B8] brc_errorAppLibraryNotFound:*(a1 + 40)];
    *buf = 138412802;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
  }

  v13 = *(a1 + 56);
  v8 = [MEMORY[0x277CCA9B8] brc_errorAppLibraryNotFound:*(a1 + 40)];
  (*(v13 + 16))(v13, v8);
LABEL_8:
}

uint64_t __95__BRCXPCRegularIPCsClient_setEnhancedDrivePrivacyEnabled_forContainer_onServer_onClient_reply___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    return [a2 setStateBits:0x400000];
  }

  else
  {
    return [a2 clearStateBits:0x400000];
  }
}

- (void)getEnhancedDrivePrivacyStatusForContainer:(id)container onServer:(BOOL)server reply:(id)reply
{
  serverCopy = server;
  v48 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  replyCopy = reply;
  memset(v40, 0, sizeof(v40));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient getEnhancedDrivePrivacyStatusForContainer:onServer:reply:]", 5024, 0, v40);
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v40[0];
    v13 = qos_class_self();
    v14 = BRCPrettyPrintEnumWithContext(v13, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v12;
    v44 = 2112;
    *v45 = self;
    *&v45[8] = 2112;
    *&v45[10] = v14;
    *&v45[18] = 2080;
    *&v45[20] = "[BRCXPCRegularIPCsClient getEnhancedDrivePrivacyStatusForContainer:onServer:reply:]";
    v46 = 2112;
    v47 = v10;
    _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v15 = *MEMORY[0x277CFAC58];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __84__BRCXPCRegularIPCsClient_getEnhancedDrivePrivacyStatusForContainer_onServer_reply___block_invoke;
  v38[3] = &unk_2785014D0;
  v38[4] = self;
  v16 = replyCopy;
  v39 = v16;
  LODWORD(v15) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v15, v38);

  if (v15)
  {
    v17 = [BRCUserDefaults defaultsForMangledID:0];
    supportsEnhancedDrivePrivacy = [v17 supportsEnhancedDrivePrivacy];

    if ((supportsEnhancedDrivePrivacy & 1) == 0)
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
LABEL_9:
        *buf = 138413058;
        selfCopy2 = self;
        v44 = 1024;
        *v45 = 0;
        *&v45[4] = 2112;
        *&v45[6] = 0;
        *&v45[14] = 2112;
        *&v45[16] = v21;
        _os_log_impl(&dword_223E7A000, v22, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d,%@)%@", buf, 0x26u);
      }

LABEL_10:

      (*(v16 + 2))(v16, 0, 0);
      goto LABEL_20;
    }

    v19 = [BRCUserDefaults defaultsForMangledID:0];
    enhancedDrivePrivacyRolledBack = [v19 enhancedDrivePrivacyRolledBack];

    if (enhancedDrivePrivacyRolledBack)
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    }

    session = [(BRCXPCClient *)self session];
    if (serverCopy)
    {
      v24 = [containerCopy stringByAppendingString:@".lobodon.enabled"];
      v41[0] = @"com.apple.lobodon.forced";
      v41[1] = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __84__BRCXPCRegularIPCsClient_getEnhancedDrivePrivacyStatusForContainer_onServer_reply___block_invoke_704;
      v36[3] = &unk_2785070D8;
      v36[4] = self;
      v37 = v16;
      [(BRCXPCRegularIPCsClient *)self _doesAnyRecordExistInContainerMetadataRecordName:v25 completionHandler:v36];
    }

    else
    {
      v26 = [BRCUserDefaults defaultsForMangledID:0];
      enhancedDrivePrivacyForced = [v26 enhancedDrivePrivacyForced];

      if (enhancedDrivePrivacyForced)
      {
        v28 = brc_bread_crumbs();
        v29 = brc_default_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 138413058;
          selfCopy2 = self;
          v44 = 1024;
          *v45 = 1;
          *&v45[4] = 2112;
          *&v45[6] = 0;
          *&v45[14] = 2112;
          *&v45[16] = v28;
          _os_log_impl(&dword_223E7A000, v29, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d,%@)%@", buf, 0x26u);
        }

        (*(v16 + 2))(v16, 1, 0);
        goto LABEL_19;
      }

      clientTruthWorkloop = [session clientTruthWorkloop];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __84__BRCXPCRegularIPCsClient_getEnhancedDrivePrivacyStatusForContainer_onServer_reply___block_invoke_705;
      block[3] = &unk_278500CE0;
      v32 = session;
      v33 = containerCopy;
      selfCopy3 = self;
      v35 = v16;
      dispatch_async_and_wait(clientTruthWorkloop, block);

      v24 = v32;
    }

LABEL_19:
  }

LABEL_20:
  __brc_leave_section(v40);
}

void __84__BRCXPCRegularIPCsClient_getEnhancedDrivePrivacyStatusForContainer_onServer_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 1024;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d,%@)%@", &v7, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
}

void __84__BRCXPCRegularIPCsClient_getEnhancedDrivePrivacyStatusForContainer_onServer_reply___block_invoke_704(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = 138413058;
    v10 = v8;
    v11 = 1024;
    v12 = a2;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d,%@)%@", &v9, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
}

void __84__BRCXPCRegularIPCsClient_getEnhancedDrivePrivacyStatusForContainer_onServer_reply___block_invoke_705(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) appLibraryByID:*(a1 + 40)];
  v3 = [v2 defaultClientZone];

  if (v3)
  {
    v4 = [v3 state] & 0x400000;
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 48);
      v14 = 138413058;
      v15 = v7;
      v16 = 1024;
      v17 = v4 >> 22;
      v18 = 2112;
      v19 = 0;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d,%@)%@", &v14, 0x26u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 48);
      v11 = [MEMORY[0x277CCA9B8] brc_errorAppLibraryNotFound:*(a1 + 40)];
      v14 = 138413058;
      v15 = v10;
      v16 = 1024;
      v17 = 0;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d,%@)%@", &v14, 0x26u);
    }

    v12 = *(a1 + 56);
    v13 = [MEMORY[0x277CCA9B8] brc_errorAppLibraryNotFound:*(a1 + 40)];
    (*(v12 + 16))(v12, 0, v13);
  }
}

- (void)setEnhancedDrivePrivacySupported:(BOOL)supported forContainer:(id)container reply:(id)reply
{
  supportedCopy = supported;
  v35 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  replyCopy = reply;
  memset(v24, 0, sizeof(v24));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient setEnhancedDrivePrivacySupported:forContainer:reply:]", 5062, 0, v24);
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v24[0];
    v13 = qos_class_self();
    v14 = BRCPrettyPrintEnumWithContext(v13, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v12;
    v27 = 2112;
    selfCopy = self;
    v29 = 2112;
    v30 = v14;
    v31 = 2080;
    v32 = "[BRCXPCRegularIPCsClient setEnhancedDrivePrivacySupported:forContainer:reply:]";
    v33 = 2112;
    v34 = v10;
    _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v15 = *MEMORY[0x277CFAC58];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __79__BRCXPCRegularIPCsClient_setEnhancedDrivePrivacySupported_forContainer_reply___block_invoke;
  v22[3] = &unk_2785014D0;
  v22[4] = self;
  v16 = replyCopy;
  v23 = v16;
  LODWORD(v15) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v15, v22);

  if (v15)
  {
    if ([containerCopy isEqualToString:@"all"])
    {
      v17 = @"com.apple.lobodon.supported";
    }

    else
    {
      v17 = [containerCopy stringByAppendingString:@".lobodon.supported"];
    }

    v21 = 0;
    [(BRCXPCRegularIPCsClient *)self _saveOrDeleteContainerMetadataRecordName:v17 saveRecord:supportedCopy error:&v21];
    v18 = v21;
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v27 = 2112;
      selfCopy = v18;
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(v16 + 2))(v16, v18);
  }

  __brc_leave_section(v24);
}

void __79__BRCXPCRegularIPCsClient_setEnhancedDrivePrivacySupported_forContainer_reply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)verifyAccountLoaded:(id)loaded
{
  v27 = *MEMORY[0x277D85DE8];
  loadedCopy = loaded;
  memset(v16, 0, sizeof(v16));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient verifyAccountLoaded:]", 5079, 0, v16);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v16[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v7;
    v19 = 2112;
    selfCopy = self;
    v21 = 2112;
    v22 = v9;
    v23 = 2080;
    v24 = "[BRCXPCRegularIPCsClient verifyAccountLoaded:]";
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__BRCXPCRegularIPCsClient_verifyAccountLoaded___block_invoke;
  v14[3] = &unk_2785014D0;
  v14[4] = self;
  v10 = loadedCopy;
  v15 = v10;
  v11 = _brc_ipc_check_logged_status(self, 1, v14);

  if (v11)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v19 = 2112;
      selfCopy = 0;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(v10 + 2))(v10, 0);
  }

  __brc_leave_section(v16);
}

void __47__BRCXPCRegularIPCsClient_verifyAccountLoaded___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_t_getEntitlementsForBundleID:(id)d reply:(id)reply
{
  v14 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 138412802;
    selfCopy = self;
    v10 = 2112;
    v11 = 0;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v8, 0x20u);
  }

  replyCopy[2](replyCopy, 0);
}

- (void)_t_getEntitledContainerIDsForBundleID:(id)d reply:(id)reply
{
  v14 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 138412802;
    selfCopy = self;
    v10 = 2112;
    v11 = 0;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v8, 0x20u);
  }

  replyCopy[2](replyCopy, 0);
}

- (void)_t_extractMetadataForAllContainersWithReply:(id)reply
{
  v59 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v48, 0, sizeof(v48));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient _t_extractMetadataForAllContainersWithReply:]", 6005, 0, v48);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v48[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = self;
    *&buf[22] = 2112;
    v57 = v9;
    *v58 = 2080;
    *&v58[2] = "[BRCXPCRegularIPCsClient _t_extractMetadataForAllContainersWithReply:]";
    *&v58[10] = 2112;
    *&v58[12] = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v10 = *MEMORY[0x277CFAC58];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __71__BRCXPCRegularIPCsClient__t_extractMetadataForAllContainersWithReply___block_invoke;
  v46[3] = &unk_2785014D0;
  v46[4] = self;
  v33 = replyCopy;
  v47 = v33;
  v11 = _brc_ipc_check_entitlement_and_logged_status(self, 0, v10, v46);

  if (v11)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v57 = __Block_byref_object_copy__52;
    *v58 = __Block_byref_object_dispose__52;
    *&v58[8] = 0;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    entitledAppLibraryIDs = [(BRCXPCClient *)self entitledAppLibraryIDs];
    v13 = [entitledAppLibraryIDs countByEnumeratingWithState:&v42 objects:v55 count:16];
    if (v13)
    {
      v35 = *v43;
      obj = entitledAppLibraryIDs;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v43 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v42 + 1) + 8 * i);
          bundleID = [(BRCXPCClient *)self bundleID];
          session = [(BRCXPCClient *)self session];
          v18 = [session appLibraryByID:v15];

          if (!v18)
          {
            v28 = brc_bread_crumbs();
            v29 = brc_default_log();
            if (os_log_type_enabled(v29, 0x90u))
            {
              [BRCXPCRegularIPCsClient updateContainerMetadataForID:];
            }

LABEL_17:
            entitledAppLibraryIDs = obj;
            goto LABEL_18;
          }

          v19 = BRCBundleServiceConnection();
          v40[0] = MEMORY[0x277D85DD0];
          v40[1] = 3221225472;
          v40[2] = __71__BRCXPCRegularIPCsClient__t_extractMetadataForAllContainersWithReply___block_invoke_712;
          v40[3] = &unk_2784FF540;
          v20 = v19;
          v41 = v20;
          v21 = [v20 remoteObjectProxyWithErrorHandler:v40];
          containerMetadata = [v18 containerMetadata];
          v23 = [containerMetadata versionNumberForBundleIdentifier:bundleID];

          v24 = dispatch_group_create();
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __71__BRCXPCRegularIPCsClient__t_extractMetadataForAllContainersWithReply___block_invoke_2;
          v36[3] = &unk_2785076E0;
          v36[4] = v15;
          v39 = buf;
          v25 = v20;
          v37 = v25;
          v26 = v24;
          v38 = v26;
          [v21 extractMetadataForContainerID:v15 bundleID:bundleID minimumBundleVersion:v23 reply:v36];
          dispatch_group_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
          v27 = *(*&buf[8] + 40) == 0;

          if (!v27)
          {
            goto LABEL_17;
          }
        }

        entitledAppLibraryIDs = obj;
        v13 = [obj countByEnumeratingWithState:&v42 objects:v55 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    v30 = brc_bread_crumbs();
    v31 = brc_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = *(*&buf[8] + 40);
      *v49 = 138412802;
      selfCopy = self;
      v51 = 2112;
      v52 = v32;
      v53 = 2112;
      v54 = v30;
      _os_log_impl(&dword_223E7A000, v31, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", v49, 0x20u);
    }

    (*(v33 + 2))(v33, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  __brc_leave_section(v48);
}

void __71__BRCXPCRegularIPCsClient__t_extractMetadataForAllContainersWithReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __71__BRCXPCRegularIPCsClient__t_extractMetadataForAllContainersWithReply___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, 0x90u))
    {
      v14 = *(a1 + 32);
      v16 = 138412802;
      v17 = v14;
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      _os_log_error_impl(&dword_223E7A000, v9, 0x90u, "[ERROR] can't extract metadata for %@: %@%@", &v16, 0x20u);
    }

    v10 = *(*(a1 + 56) + 8);
    v11 = v7;
    v12 = *(v10 + 40);
    *(v10 + 40) = v11;
  }

  else
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 32);
      v16 = 138412802;
      v17 = v15;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v12;
      _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] extracted metadata for %@: %@%@", &v16, 0x20u);
    }
  }

  [*(a1 + 40) invalidate];
  dispatch_group_leave(*(a1 + 48));
}

- (void)_t_getContainerMetadataForContainerID:(id)d reply:(id)reply
{
  v41 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  memset(v30, 0, sizeof(v30));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient _t_getContainerMetadataForContainerID:reply:]", 6051, 0, v30);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v30[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy3 = v10;
    v33 = 2112;
    selfCopy = self;
    v35 = 2112;
    v36 = v12;
    v37 = 2080;
    v38 = "[BRCXPCRegularIPCsClient _t_getContainerMetadataForContainerID:reply:]";
    v39 = 2112;
    v40 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v13 = *MEMORY[0x277CFAC58];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __71__BRCXPCRegularIPCsClient__t_getContainerMetadataForContainerID_reply___block_invoke;
  v28[3] = &unk_2785014D0;
  v28[4] = self;
  v14 = replyCopy;
  v29 = v14;
  LODWORD(v13) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v13, v28);

  if (v13)
  {
    session = [(BRCXPCClient *)self session];
    v16 = [session appLibraryByID:dCopy];

    if (v16)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        containerMetadata = [v16 containerMetadata];
        computedProperties = [containerMetadata computedProperties];
        *buf = 138413058;
        selfCopy3 = self;
        v33 = 2112;
        selfCopy = computedProperties;
        v35 = 2112;
        v36 = 0;
        v37 = 2112;
        v38 = v17;
        _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
      }

      containerMetadata2 = [v16 containerMetadata];
      computedProperties2 = [containerMetadata2 computedProperties];
      (*(v14 + 2))(v14, computedProperties2, 0);
    }

    else
    {
      v23 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, 0x90u))
      {
        [BRCXPCRegularIPCsClient updateContainerMetadataForID:];
      }

      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = [MEMORY[0x277CCA9B8] brc_errorAppLibraryNotFound:dCopy];
        *buf = 138413058;
        selfCopy3 = self;
        v33 = 2112;
        selfCopy = 0;
        v35 = 2112;
        v36 = v27;
        v37 = 2112;
        v38 = v25;
        _os_log_impl(&dword_223E7A000, v26, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
      }

      containerMetadata2 = [MEMORY[0x277CCA9B8] brc_errorAppLibraryNotFound:dCopy];
      (*(v14 + 2))(v14, 0, containerMetadata2);
    }
  }

  __brc_leave_section(v30);
}

void __71__BRCXPCRegularIPCsClient__t_getContainerMetadataForContainerID_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)lookupExcludedFilenamesForLogoutWithReply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v18, 0, sizeof(v18));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient lookupExcludedFilenamesForLogoutWithReply:]", 6068, 0, v18);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v18[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v7;
    v21 = 2112;
    selfCopy = self;
    v23 = 2112;
    v24 = v9;
    v25 = 2080;
    v26 = "[BRCXPCRegularIPCsClient lookupExcludedFilenamesForLogoutWithReply:]";
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__BRCXPCRegularIPCsClient_lookupExcludedFilenamesForLogoutWithReply___block_invoke;
  v16[3] = &unk_2785014D0;
  v16[4] = self;
  v10 = replyCopy;
  v17 = v10;
  v11 = _brc_ipc_check_logged_status(self, 1, v16);

  if (v11)
  {
    v12 = [BRCUserDefaults defaultsForMangledID:0];
    excludedFilenamesWorthWarningAtLogout = [v12 excludedFilenamesWorthWarningAtLogout];

    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      selfCopy2 = self;
      v21 = 2112;
      selfCopy = excludedFilenamesWorthWarningAtLogout;
      v23 = 2112;
      v24 = 0;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    (*(v10 + 2))(v10, excludedFilenamesWorthWarningAtLogout, 0);
  }

  __brc_leave_section(v18);
}

void __69__BRCXPCRegularIPCsClient_lookupExcludedFilenamesForLogoutWithReply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)lookupExcludedExtensionsForLogoutWithReply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v18, 0, sizeof(v18));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient lookupExcludedExtensionsForLogoutWithReply:]", 6078, 0, v18);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v18[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v7;
    v21 = 2112;
    selfCopy = self;
    v23 = 2112;
    v24 = v9;
    v25 = 2080;
    v26 = "[BRCXPCRegularIPCsClient lookupExcludedExtensionsForLogoutWithReply:]";
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__BRCXPCRegularIPCsClient_lookupExcludedExtensionsForLogoutWithReply___block_invoke;
  v16[3] = &unk_2785014D0;
  v16[4] = self;
  v10 = replyCopy;
  v17 = v10;
  v11 = _brc_ipc_check_logged_status(self, 1, v16);

  if (v11)
  {
    v12 = [BRCUserDefaults defaultsForMangledID:0];
    excludedExtensionsWorthPreserving = [v12 excludedExtensionsWorthPreserving];

    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      selfCopy2 = self;
      v21 = 2112;
      selfCopy = excludedExtensionsWorthPreserving;
      v23 = 2112;
      v24 = 0;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    (*(v10 + 2))(v10, excludedExtensionsWorthPreserving, 0);
  }

  __brc_leave_section(v18);
}

void __70__BRCXPCRegularIPCsClient_lookupExcludedExtensionsForLogoutWithReply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)lookupMinFileSizeForThumbnailTransferWithReply:(id)reply
{
  v33 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v22, 0, sizeof(v22));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient lookupMinFileSizeForThumbnailTransferWithReply:]", 6088, 0, v22);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v22[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v7;
    v25 = 2112;
    selfCopy = self;
    v27 = 2112;
    v28 = v9;
    v29 = 2080;
    v30 = "[BRCXPCRegularIPCsClient lookupMinFileSizeForThumbnailTransferWithReply:]";
    v31 = 2112;
    v32 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __74__BRCXPCRegularIPCsClient_lookupMinFileSizeForThumbnailTransferWithReply___block_invoke;
  v20[3] = &unk_2785014D0;
  v20[4] = self;
  v10 = replyCopy;
  v21 = v10;
  v11 = _brc_ipc_check_logged_status(self, 1, v20);

  if (v11)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = MEMORY[0x277CCABB0];
      v15 = [BRCUserDefaults defaultsForMangledID:0];
      v16 = [v14 numberWithLongLong:{objc_msgSend(v15, "minFileSizeForThumbnailTransfer")}];
      *buf = 138413058;
      selfCopy2 = self;
      v25 = 2112;
      selfCopy = v16;
      v27 = 2112;
      v28 = 0;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    v17 = MEMORY[0x277CCABB0];
    v18 = [BRCUserDefaults defaultsForMangledID:0];
    v19 = [v17 numberWithLongLong:{objc_msgSend(v18, "minFileSizeForThumbnailTransfer")}];
    (*(v10 + 2))(v10, v19, 0);
  }

  __brc_leave_section(v22);
}

void __74__BRCXPCRegularIPCsClient_lookupMinFileSizeForThumbnailTransferWithReply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)lookupCollectionGathererPacerMinFireInterval:(id)interval
{
  v33 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  memset(v22, 0, sizeof(v22));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient lookupCollectionGathererPacerMinFireInterval:]", 6097, 0, v22);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v22[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v7;
    v25 = 2112;
    selfCopy = self;
    v27 = 2112;
    v28 = v9;
    v29 = 2080;
    v30 = "[BRCXPCRegularIPCsClient lookupCollectionGathererPacerMinFireInterval:]";
    v31 = 2112;
    v32 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __72__BRCXPCRegularIPCsClient_lookupCollectionGathererPacerMinFireInterval___block_invoke;
  v20[3] = &unk_2785014D0;
  v20[4] = self;
  v10 = intervalCopy;
  v21 = v10;
  v11 = _brc_ipc_check_logged_status(self, 1, v20);

  if (v11)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = MEMORY[0x277CCABB0];
      v15 = [BRCUserDefaults defaultsForMangledID:0];
      [v15 collectionGathererPacerMinFireInterval];
      v16 = [v14 numberWithDouble:?];
      *buf = 138413058;
      selfCopy2 = self;
      v25 = 2112;
      selfCopy = v16;
      v27 = 2112;
      v28 = 0;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    v17 = MEMORY[0x277CCABB0];
    v18 = [BRCUserDefaults defaultsForMangledID:0];
    [v18 collectionGathererPacerMinFireInterval];
    v19 = [v17 numberWithDouble:?];
    (*(v10 + 2))(v10, v19, 0);
  }

  __brc_leave_section(v22);
}

void __72__BRCXPCRegularIPCsClient_lookupCollectionGathererPacerMinFireInterval___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)queryTelemetryEnablementWithReply:(id)reply
{
  v25 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v18, 0, sizeof(v18));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient queryTelemetryEnablementWithReply:]", 6113, 0, v18);
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v18[0];
    v9 = qos_class_self();
    v10 = BRCPrettyPrintEnumWithContext(v9, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy = v8;
    v21 = 2112;
    *v22 = self;
    *&v22[8] = 2112;
    *&v22[10] = v10;
    *&v22[18] = 2080;
    *&v22[20] = "[BRCXPCRegularIPCsClient queryTelemetryEnablementWithReply:]";
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__BRCXPCRegularIPCsClient_queryTelemetryEnablementWithReply___block_invoke;
  v16[3] = &unk_2785014D0;
  v16[4] = self;
  v11 = replyCopy;
  v17 = v11;
  v12 = _brc_ipc_spi(self, 1, a2, v16);

  if (v12)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = +[BRCAnalyticsReporter isTelemetryReportingEnabled];
      *buf = 138413058;
      selfCopy = self;
      v21 = 1024;
      *v22 = v15;
      *&v22[4] = 2112;
      *&v22[6] = 0;
      *&v22[14] = 2112;
      *&v22[16] = v13;
      _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", buf, 0x26u);
    }

    (*(v11 + 2))(v11, +[BRCAnalyticsReporter isTelemetryReportingEnabled], 0);
  }

  __brc_leave_section(v18);
}

void __61__BRCXPCRegularIPCsClient_queryTelemetryEnablementWithReply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 1024;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%d, %@)%@", &v7, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)corruptDatabase:(id)database
{
  v29 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  memset(v18, 0, sizeof(v18));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient corruptDatabase:]", 6122, 0, v18);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v18[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v7;
    v21 = 2112;
    selfCopy = self;
    v23 = 2112;
    v24 = v9;
    v25 = 2080;
    v26 = "[BRCXPCRegularIPCsClient corruptDatabase:]";
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v10 = *MEMORY[0x277CFAC58];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __43__BRCXPCRegularIPCsClient_corruptDatabase___block_invoke;
  v16[3] = &unk_2785014D0;
  v16[4] = self;
  v11 = databaseCopy;
  v17 = v11;
  LODWORD(v10) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v10, v16);

  if (v10)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFABD0] code:10000 userInfo:0];
    session = [(BRCXPCClient *)self session];
    [session dbBecameCorruptedWithDescription:@"Testing brctl reset corrupt-db" error:v12];

    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v21 = 2112;
      selfCopy = 0;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(v11 + 2))(v11, 0);
  }

  __brc_leave_section(v18);
}

void __43__BRCXPCRegularIPCsClient_corruptDatabase___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)waitUntilIdle:(id)idle timeout:(id)timeout reply:(id)reply
{
  v90 = *MEMORY[0x277D85DE8];
  idleCopy = idle;
  timeoutCopy = timeout;
  replyCopy = reply;
  memset(v76, 0, sizeof(v76));
  __brc_create_section(1, "[BRCXPCRegularIPCsClient waitUntilIdle:timeout:reply:]", 6135, 0, v76);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v76[0];
    v11 = qos_class_self();
    v12 = BRCPrettyPrintEnumWithContext(v11, &brc_qos_entries, 0);
    *buf = 134219010;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = self;
    *&buf[22] = 2112;
    v88 = v12;
    *v89 = 2080;
    *&v89[2] = "[BRCXPCRegularIPCsClient waitUntilIdle:timeout:reply:]";
    *&v89[10] = 2112;
    *&v89[12] = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v13 = *MEMORY[0x277CFAC58];
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __55__BRCXPCRegularIPCsClient_waitUntilIdle_timeout_reply___block_invoke;
  v74[3] = &unk_2785014D0;
  v74[4] = self;
  v49 = replyCopy;
  v75 = v49;
  LODWORD(v13) = _brc_ipc_check_entitlement_and_logged_status(self, 1, v13, v74);

  if (v13)
  {
    memset(v73, 0, sizeof(v73));
    __brc_create_section(1, "[BRCXPCRegularIPCsClient waitUntilIdle:timeout:reply:]", 6139, 0, v73);
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = v73[0];
      v17 = qos_class_self();
      v18 = BRCPrettyPrintEnumWithContext(v17, &brc_qos_entries, 0);
      *buf = 134219010;
      *&buf[4] = v16;
      *&buf[12] = 2112;
      *&buf[14] = self;
      *&buf[22] = 2112;
      v88 = v18;
      *v89 = 2080;
      *&v89[2] = "[BRCXPCRegularIPCsClient waitUntilIdle:timeout:reply:]";
      *&v89[10] = 2112;
      *&v89[12] = v14;
      _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
    }

    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __55__BRCXPCRegularIPCsClient_waitUntilIdle_timeout_reply___block_invoke_717;
    v71[3] = &unk_2785014D0;
    v71[4] = self;
    v46 = v49;
    v72 = v46;
    v19 = _brc_ipc_check_applibraries_access(self, 1, v71);

    if (v19)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v88 = __Block_byref_object_copy__52;
      *v89 = __Block_byref_object_dispose__52;
      *&v89[8] = MEMORY[0x277CBEC38];
      group = dispatch_group_create();
      session = [(BRCXPCClient *)self session];
      v70 = 0;
      v21 = [session appLibrariesMatchingSearchString:idleCopy error:&v70];
      v44 = v70;

      v22 = objc_opt_new();
      if (v21)
      {
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        obj = v21;
        v23 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
        if (v23)
        {
          v24 = *v67;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v67 != v24)
              {
                objc_enumerationMutation(obj);
              }

              defaultClientZone = [*(*(&v66 + 1) + 8 * i) defaultClientZone];
              [v22 addObject:defaultClientZone];
            }

            v23 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
          }

          while (v23);
        }

        v45 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:60 description:{@"Timed out while waiting for %@ to be idle.", v22}];
        v62 = 0uLL;
        v63 = 0;
        __brc_create_section(0, "[BRCXPCRegularIPCsClient waitUntilIdle:timeout:reply:]", 6173, 0, &v62);
        v27 = brc_bread_crumbs();
        v28 = brc_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *v79 = 134218498;
          selfCopy3 = v62;
          v81 = 2112;
          v82 = v22;
          v83 = 2112;
          v84 = v27;
          _os_log_debug_impl(&dword_223E7A000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx waiting for %@ to be idle%@", v79, 0x20u);
        }

        v64 = v62;
        v65 = v63;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v29 = v22;
        v30 = [v29 countByEnumeratingWithState:&v58 objects:v77 count:16];
        if (v30)
        {
          v31 = *v59;
          do
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v59 != v31)
              {
                objc_enumerationMutation(v29);
              }

              v33 = *(*(&v58 + 1) + 8 * j);
              defaultAppLibrary = [v33 defaultAppLibrary];
              [(BRCXPCClient *)self addAppLibrary:defaultAppLibrary];

              dispatch_group_enter(group);
              v35 = [(BRCXPCClient *)self description];
              v53[0] = MEMORY[0x277D85DD0];
              v53[1] = 3221225472;
              v53[2] = __55__BRCXPCRegularIPCsClient_waitUntilIdle_timeout_reply___block_invoke_721;
              v53[3] = &unk_278507708;
              v56 = v64;
              v57 = v65;
              v55 = buf;
              v53[4] = v33;
              v54 = group;
              [v33 notifyClient:v35 whenIdle:v53];
            }

            v30 = [v29 countByEnumeratingWithState:&v58 objects:v77 count:16];
          }

          while (v30);
        }

        if (timeoutCopy)
        {
          v36 = dispatch_time(0, 1000000000 * [timeoutCopy unsignedLongLongValue]);
        }

        else
        {
          v36 = -1;
        }

        if (dispatch_group_wait(group, v36))
        {
          v39 = brc_bread_crumbs();
          v40 = brc_default_log();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            *v79 = 138413058;
            selfCopy3 = self;
            v81 = 2112;
            v82 = MEMORY[0x277CBEC28];
            v83 = 2112;
            v84 = v45;
            v85 = 2112;
            v86 = v39;
            _os_log_impl(&dword_223E7A000, v40, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", v79, 0x2Au);
          }

          (*(v46 + 2))(v46, MEMORY[0x277CBEC28], v45);
        }

        else
        {
          v41 = brc_bread_crumbs();
          v42 = brc_default_log();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            v43 = *(*&buf[8] + 40);
            *v79 = 138413058;
            selfCopy3 = self;
            v81 = 2112;
            v82 = v43;
            v83 = 2112;
            v84 = 0;
            v85 = 2112;
            v86 = v41;
            _os_log_impl(&dword_223E7A000, v42, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", v79, 0x2Au);
          }

          (*(v46 + 2))(v46, *(*&buf[8] + 40), 0);
        }
      }

      else
      {
        v37 = brc_bread_crumbs();
        v38 = brc_default_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *v79 = 138413058;
          selfCopy3 = self;
          v81 = 2112;
          v82 = 0;
          v83 = 2112;
          v84 = v44;
          v85 = 2112;
          v86 = v37;
          _os_log_impl(&dword_223E7A000, v38, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", v79, 0x2Au);
        }

        (*(v46 + 2))(v46, 0, v44);
        v45 = 0;
      }

      _Block_object_dispose(buf, 8);
    }

    __brc_leave_section(v73);
  }

  __brc_leave_section(v76);
}

void __55__BRCXPCRegularIPCsClient_waitUntilIdle_timeout_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __55__BRCXPCRegularIPCsClient_waitUntilIdle_timeout_reply___block_invoke_717(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __55__BRCXPCRegularIPCsClient_waitUntilIdle_timeout_reply___block_invoke_721(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (([v5 BOOLValue] & 1) == 0)
  {
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = MEMORY[0x277CBEC28];
  }

  v14 = *(a1 + 56);
  v15 = *(a1 + 72);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [v5 BOOLValue];
    v12 = @"now";
    v13 = *(a1 + 32);
    *buf = 134218754;
    if (v11)
    {
      v12 = @"already";
    }

    v17 = v14;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx %@ is %@ idle%@", buf, 0x2Au);
  }

  dispatch_group_leave(*(a1 + 40));
  __brc_leave_section(&v14);
}

void __135__BRCXPCRegularIPCsClient_FPFSAdditions__createItemBasedOnTemplate_fields_contents_options_additionalItemAttributes_completionHandler___block_invoke_49_cold_1(void *a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] Parent item remotely deleted: %@%@", v3, DWORD2(v3));
}

void __87__BRCXPCRegularIPCsClient_FPFSAdditions__listNonLocalVersionsWithItemIdentifier_reply___block_invoke_57_cold_1()
{
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    LODWORD(v8) = 138412290;
    *(&v8 + 4) = v0;
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: localItem && localItem.isDocument%@", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

void __168__BRCXPCRegularIPCsClient_FPFSAdditions___createFileProvidingRequestOperationOfFileObject_existingContents_localItem_etagIfLoser_etagToDownload_progress_options_reply___block_invoke_2_cold_1(void *a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] Scheduling download of %@ again due to a more recent version%@", v3, DWORD2(v3));
}

void __109__BRCXPCRegularIPCsClient_FPFSAdditions__startDownloadFileObject_existingContents_options_etagIfLoser_reply___block_invoke_100_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] Download for thumbnail only was asked, but the file is not small.%@", v1, 0xCu);
}

void __109__BRCXPCRegularIPCsClient_FPFSAdditions__startDownloadFileObject_existingContents_options_etagIfLoser_reply___block_invoke_100_cold_2(void *a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] Waiting for sync down of the item to complete before download for %@%@", v3, DWORD2(v3));
}

void __109__BRCXPCRegularIPCsClient_FPFSAdditions__startDownloadFileObject_existingContents_options_etagIfLoser_reply___block_invoke_104_cold_1(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] Waiting for sync down of the item to complete before download for %@%@", v3, DWORD2(v3));
}

void __109__BRCXPCRegularIPCsClient_FPFSAdditions__startDownloadFileObject_existingContents_options_etagIfLoser_reply___block_invoke_105_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) itemID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v2, v3, "[DEBUG] item with id [%@] still don't exist after sync down --> return with failure%@", v4, v5, v6, v7);
}

void __109__BRCXPCRegularIPCsClient_FPFSAdditions__startDownloadFileObject_existingContents_options_etagIfLoser_reply___block_invoke_107_cold_1(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v2, v3, "[DEBUG] The accept share op [%@] failed --> return with failure%@", v4, v5, v6, v7);
}

void __107__BRCXPCRegularIPCsClient_FPFSAdditions__getPublishedURLForItemIdentifier_forStreaming_requestedTTL_reply___block_invoke_134_cold_1(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] no local item for %@%@", v3, DWORD2(v3));
}

@end