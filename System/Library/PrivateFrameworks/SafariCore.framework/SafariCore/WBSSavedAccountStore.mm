@interface WBSSavedAccountStore
+ (BOOL)getProtectionSpaceAndHighLevelDomainForUserTypedSite:(id)site protectionSpace:(id *)space highLevelDomain:(id *)domain mode:(int64_t)mode;
+ (BOOL)shouldShowServiceNamesForPasswordAndPasskeyItems;
+ (BOOL)userTypedTitleShouldBeTreatedAsAWebsiteWhenAddingNewAccount:(id)account;
+ (WBSSavedAccountStore)sharedStore;
+ (id)protectionSpaceForNewStandalonePassword;
+ (void)removeCredentialTypes:(int64_t)types forSavedAccount:(id)account forGroup:(id)group;
+ (void)setShouldShowServiceNamesForPasswordAndPasskeyItems:(BOOL)items;
- (BOOL)_applyServiceNamesToSavedAccounts:(id)accounts;
- (BOOL)_canChangeSavedAccount:(id)account toUser:(id)user password:(id)password forGroupID:(id)d;
- (BOOL)_canMoveSavedAccount:(id)account toGroupWithID:(id)d;
- (BOOL)_canMoveSavedAccountWithPasskey:(id)passkey toGroup:(id)group;
- (BOOL)_canPerformMaintenanceTasks;
- (BOOL)_copySavedAccount:(id)account toGroup:(id)group;
- (BOOL)_deleteSavedAccountsWithUnknownOriginalContributorParticipantIDsFromSavedAccounts:(id)accounts inGroup:(id)group;
- (BOOL)_hasPersonWithParticipantID:(id)d contributedSavedAccountsToGroupWithID:(id)iD;
- (BOOL)_hasSavedAccountWithSameUserNameOfSavedAccount:(id)account forProtectionSpace:(id)space;
- (BOOL)_isMigratingKeychainItemsWithInvalidAuthenticationTypes;
- (BOOL)_moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID:(id)d isForAlreadyExitedGroup:(BOOL)group;
- (BOOL)_moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupIDOnInternalQueue:(id)queue isForAlreadyExitedGroup:(BOOL)group;
- (BOOL)_moveSignInWithAppleSavedAccount:(id)account toGroupID:(id)d;
- (BOOL)_shareSignInWithAppleAccountWithContext:(id)context withGroupInfo:(id)info savedAccount:(id)account;
- (BOOL)_shouldLoadCredentialRecordWithHostIntoAccountStore:(id)store;
- (BOOL)_shouldUpdateLastUsedDateForSavedAccount:(id)account forProtectionSpace:(id)space inContext:(id)context;
- (BOOL)_unshareSignInWithAppleAccountWithContext:(id)context;
- (BOOL)canChangeSavedAccount:(id)account toUser:(id)user password:(id)password;
- (BOOL)canChangeSavedAccountWithRequest:(id)request;
- (BOOL)canSaveUser:(id)user password:(id)password forProtectionSpace:(id)space highLevelDomain:(id)domain notes:(id)notes customTitle:(id)title groupID:(id)d error:(id *)self0;
- (BOOL)canSaveUser:(id)user password:(id)password forUserTypedSite:(id)site notes:(id)notes customTitle:(id)title groupID:(id)d error:(id *)error;
- (BOOL)shouldShowServiceNamesForPasswordAndPasskeyItems;
- (NSArray)allRecentlyDeletedSavedAccounts;
- (NSArray)recentlyDeletedSavedAccountsInPersonalKeychain;
- (NSArray)savedAccounts;
- (NSArray)savedAccountsExcludingNeverSaveMarkerPasswords;
- (NSArray)savedAccountsInPersonalKeychain;
- (NSArray)savedAccountsInPersonalKeychainExcludingNeverSaveMarkerPasswords;
- (NSArray)savedAccountsWithNeverSaveMarker;
- (NSArray)savedAccountsWithPasswords;
- (NSArray)savedAccountsWithPasswordsExcludingNeverSaveMarkerPasswords;
- (NSArray)savedAccountsWithTOTPGenerators;
- (NSArray)sharedSavedAccountsInRecentlyDeletedToNotifyUserAbout;
- (NSArray)sharingGroupsWithRecentlyDeletedSavedAccounts;
- (NSArray)sharingGroupsWithSavedAccounts;
- (NSSet)highLevelDomainsOfAllSavedAccountsExcludingNeverSaveMarkerPasswords;
- (NSSet)highLevelDomainsOfAllSavedAccountsWithPasswordsExcludingNeverSaveMarkerPasswords;
- (NSSet)highLevelDomainsOfRecentlyDeletedAccounts;
- (WBSSavedAccountStore)initWithAuthenticationServicesAgentProxy:(id)proxy shouldPrewarmSavedAccounts:(BOOL)accounts limitedToDomains:(id)domains forTesting:(BOOL)testing;
- (id)_allInternetPasswordEntriesFromGroupID:(id)d;
- (id)_allInternetPasswordEntriesFromPersonalKeychain;
- (id)_allPersonalSidecarsForGroupID:(id)d fromRecentlyDeleted:(BOOL)deleted;
- (id)_allPersonalSidecarsFromPersonalKeychainFromRecentlyDeleted:(BOOL)deleted;
- (id)_allSharedSidecarsForGroupID:(id)d fromRecentlyDeleted:(BOOL)deleted;
- (id)_allSidecarsFromPersonalKeychain;
- (id)_convertSignInWithAppleAccountsToSavedAccounts:(id)accounts;
- (id)_diagnosticStateDictionary;
- (id)_fetchCurrentAutoFillPasskeysWithCriteria:(id)criteria;
- (id)_getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:(id)queue withCriteria:(id)criteria mergingAutoFillPasskeys:(id)passkeys nearbyDeviceOptions:(id)options;
- (id)_getSavedAccountTreeMatchesWithCriteriaOnInternalQueue:(id)queue relyingPartyURL:(id)l;
- (id)_getSavedAccountsMatchingCriteriaOnInternalQueue:(id)queue;
- (id)_groupIDArrayForUserDefaultsKey:(id)key;
- (id)_loadAndMergeSavedAccountsFromGroupID:(id)d intoAllSavedAccounts:(id)accounts;
- (id)_loadSavedAccounts;
- (id)_loadSavedAccountsAfterSettingTestMode;
- (id)_loadSavedAccountsWithPasskeysFromPasskeyData:(id)data forGroupID:(id)d fromRecentlyDeleted:(BOOL)deleted withDictionaryForSavedAccountsWithPasskeys:(id)passkeys;
- (id)_loadSavedAccountsWithPasswordsFromKeychainData:(id)data forGroupID:(id)d withDictionaryForSavedAccountsWithPasswords:(id)passwords fromRecentlyDeleted:(BOOL)deleted;
- (id)_mergeLoadedSavedAccounts:(id)accounts intoAllSavedAccounts:(id)savedAccounts;
- (id)_mergeSavedAccountsWithPasskeys:(id)passkeys andSavedAccountsWithPasswords:(id)passwords usingDictionaryForSavedAccountsWithPasswords:(id)withPasswords dictionaryForSavedAccountsWithPasskeys:(id)withPasskeys;
- (id)_moveCredentialTypesToRecentlyDeletedOnInternalQueue:(int64_t)queue fromSavedAccount:(id)account;
- (id)_persistentIdentifierForUser:(id)user host:(id)host;
- (id)_relyingPartyURLForPasskeyCredentialIdentifierOnInternalQueue:(id)queue credentialIdentifiersToAutoFillPasskeys:(id)passkeys;
- (id)_saveAccountOnInternalQueueWithUser:(id)user password:(id)password forUserTypedSite:(id)site groupID:(id)d;
- (id)_saveAccountOnInternalQueueWithUser:(id)user password:(id)password protectionSpace:(id)space highLevelDomain:(id)domain groupID:(id)d;
- (id)_saveUser:(id)user passkeyCredential:(id)credential passkeyRelyingPartyID:(id)d;
- (id)_savedAccountForProtectionSpace:(id)space user:(id)user password:(id)password;
- (id)_savedAccounts;
- (id)_savedAccountsWithPasswords;
- (id)duplicateAccountsWithGroupID:(id)d;
- (id)exportPasskeyCredentialWithID:(id)d;
- (id)exportPasskeyCredentialWithIDOnInternalQueue:(id)queue;
- (id)highLevelDomainsOfSavedAccountsExcludingNeverSaveMarkerPasswordsForGroupID:(id)d;
- (id)importPasskeyCredentialOnInternalQueue:(id)queue;
- (id)initAndPrewarmSavedAccounts:(BOOL)accounts forTesting:(BOOL)testing;
- (id)initPartialStoreForDomains:(id)domains forTesting:(BOOL)testing;
- (id)passkeyDataForPasskeyCredentialIDOnInternalQueue:(id)queue;
- (id)persistentIdentifierForCredential:(id)credential protectionSpace:(id)space;
- (id)persistentIdentifierForSavedAccount:(id)account;
- (id)recentlyDeletedSavedAccountsForGroupWithID:(id)d;
- (id)saveUser:(id)user password:(id)password forProtectionSpace:(id)space highLevelDomain:(id)domain groupID:(id)d;
- (id)savedAccountForURL:(id)l user:(id)user password:(id)password;
- (id)savedAccountForURLCredential:(id)credential protectionSpace:(id)space;
- (id)savedAccountForUserTypedSite:(id)site userName:(id)name;
- (id)savedAccountWithAllMetadataForURLCredential:(id)credential protectionSpace:(id)space;
- (id)savedAccountsForGroupID:(id)d;
- (id)savedAccountsForPersistentIdentifiers:(id)identifiers;
- (unint64_t)numberOfSavedAccountsInPersonalKeychainForHighLevelDomain:(id)domain;
- (void)_addAccountHistoryItemOnInternalQueue:(id)queue toSavedAccount:(id)account completionHandler:(id)handler;
- (void)_addGroupID:(id)d toArrayForUserDefaultsKey:(id)key;
- (void)_addNewGroupToCachedSharingGroups:(id)groups;
- (void)_addSavedAccount:(id)account toCachedDictionaryForSavedAccountsWithPasskeysForGroupID:(id)d;
- (void)_addSavedAccount:(id)account toCachedDictionaryForSavedAccountsWithPasswordsForGroupID:(id)d;
- (void)_addSavedAccountToRecentlyDeletedCachedCollections:(id)collections;
- (void)_changeSavedAccountWithRequestOnInternalQueue:(id)queue performPostUpdateActions:(BOOL)actions;
- (void)_cleanUpRedundantCredentialsWithoutUsernames;
- (void)_cleanUpSharedSavedAccountsWithUnknownOriginalContributorParticipantIDsIfNecessaryFromRecentlyDeleted:(BOOL)deleted;
- (void)_clearExpiredRecentlyDeletedNotificationDates;
- (void)_deleteAccountHistoryItemOnInternalQueue:(id)queue fromSavedAccount:(id)account completionHandler:(id)handler;
- (void)_ensureNoRecentlyDeletedSavedAccountsConflictWithSavedAccount:(id)account;
- (void)_ensureRecentlyDeletedSavedAccountsAreLoadedOnInternalQueue;
- (void)_fetchAndFilterAllPasskeysData;
- (void)_fetchAndFilterPasskeysData;
- (void)_fetchAndFilterRecentlyDeletedPasskeysData;
- (void)_fetchSharedAccountsGroups;
- (void)_fetchSignInWithAppleAccounts;
- (void)_identifySharedSavedAccountsWithSameUsernameAndHighLevelDomainPairs;
- (void)_loadRecentlyDeletedSavedAccounts;
- (void)_loadRecentlyDeletedSavedAccountsFromSharedGroupIDs:(id)ds;
- (void)_loadRecentlyDeletedSavedAccountsInPersonalKeychain;
- (void)_matchSidecars:(id)sidecars toSavedAccountsWithPasskeysInDictionary:(id)dictionary unmatchedSidecars:(id)unmatchedSidecars;
- (void)_matchSidecars:(id)sidecars toSavedAccountsWithPasswordsInDictionary:(id)dictionary unmatchedSidecars:(id)unmatchedSidecars;
- (void)_mergeSavedAccountWithPasskey:(id)passkey toSavedAccountWithPassword:(id)password;
- (void)_mergeSavedAccountWithPassword:(id)password toSavedAccountWithPasskey:(id)passkey;
- (void)_migratePasswordsWithInvalidAuthenticationTypes;
- (void)_moveContributedSavedAccountsBackToPersonalKeychainIfNecessary;
- (void)_moveCredentialTypesToRecentlyDeleted:(int64_t)deleted fromSavedAccount:(id)account completionHandler:(id)handler;
- (void)_moveSavedAccount:(id)account toGroupWithID:(id)d completionHandler:(id)handler;
- (void)_notifyClientsAboutWebsiteNamesChanges;
- (void)_performCleanupForExitedGroupsIfNecessary:(id)necessary;
- (void)_performLegacySidecarModificationWithChangeRequest:(id)request toSavedAccount:(id)account;
- (void)_performPostUpdateActionsOnInternalQueue;
- (void)_performRecentlyDeletedMaintenanceIfNecessary;
- (void)_postSavedAccountStoreDidChangeNotification;
- (void)_prewarm;
- (void)_pruneSavedAccountTreeMatchesOnInternalQueue:(id)queue basedOnUsernameAndPasswordCriteria:(id)criteria autoFillPasskeyIdentifiers:(id)identifiers keepAllPasskeyMatches:(BOOL)matches;
- (void)_recordGroupIdentifierForExitCleanup:(id)cleanup completionHandler:(id)handler;
- (void)_recordGroupIdentifierForMovingContributedCredentialsBackToPersonalKeychain:(id)keychain;
- (void)_recoverRecentlyDeletedSavedAccount:(id)account completionHandler:(id)handler;
- (void)_removeCredentialTypes:(int64_t)types forSavedAccount:(id)account;
- (void)_removeGroupID:(id)d fromArrayForUserDefaultsKey:(id)key;
- (void)_removeSavedAccount:(id)account fromCachedCollectionsForCredentialTypes:(int64_t)types;
- (void)_removeSavedAccount:(id)account fromCachedDictionaryForSavedAccountsWithPasskeysForGroupID:(id)d;
- (void)_removeSavedAccount:(id)account fromCachedDictionaryForSavedAccountsWithPasswordsForGroupID:(id)d;
- (void)_removeSavedAccount:(id)account fromGroupID:(id)d;
- (void)_removeSavedAccountFromRecentlyDeletedCachedCollections:(id)collections;
- (void)_reportAccountsWithUnknownContributorIDIfNeeded;
- (void)_reportKeychainItemsWithInvalidAuthenticationTypesIfNeeded;
- (void)_resetOnInternalQueue;
- (void)_saveSidecarObjectsOnInternalQueueForSavedAccount:(id)account withBlock:(id)block;
- (void)_saveSidecarObjectsOnInternalQueueForSavedAccountWithPassword:(id)password withBlock:(id)block;
- (void)_saveSidecarOnInternalQueueForSavedAccountWithPasskey:(id)passkey withBlock:(id)block;
- (void)_setSavedAccountAsDefaultOnInternalQueue:(id)queue forProtectionSpace:(id)space context:(id)context associatedDomainsManager:(id)manager;
- (void)_signInWithApplePushNotificationReceived:(id)received;
- (void)_updateCachedSharedAccountGroupsOnInternalQueue;
- (void)_updateCachedSignInWithAppleAccountsOnInternalQueueWithAccounts:(id)accounts;
- (void)_updateLastOneTimeShareDateforSavedAccountIfNeeded:(id)needed;
- (void)_updateSavedAccountsAndSavedAccountsWithPasswordsDictionary:(id)dictionary withChangeFromOldUser:(id)user oldPassword:(id)password forSavedAccountWithPassword:(id)withPassword;
- (void)_updateShowServiceNamesInPasswordsPreference;
- (void)_verifyGroupsInSync;
- (void)_warmDataStoreAfterResetTimerFired:(id)fired;
- (void)_writeSidecarDataForMergedSavedAccount:(id)account;
- (void)addAccountHistoryItem:(id)item toSavedAccount:(id)account completionHandler:(id)handler;
- (void)addAdditionalSite:(id)site toSavedAccount:(id)account completionHandler:(id)handler;
- (void)changeSavedAccount:(id)account toUser:(id)user password:(id)password;
- (void)changeSavedAccountWithRequest:(id)request completionHandler:(id)handler;
- (void)changeSavedAccountsWithRequests:(id)requests completionHandler:(id)handler;
- (void)clearSavedAccountHistory:(id)history withCompletionHandler:(id)handler;
- (void)dealloc;
- (void)deleteAccountHistoryItem:(id)item fromSavedAccount:(id)account completionHandler:(id)handler;
- (void)deletePasskeyWithIdentifier:(WBSPublicKeyCredentialIdentifier *)identifier completionHandler:(id)handler;
- (void)deletePasskeyWithIdentifierOnInternalQueue:(id)queue;
- (void)getSavedAccountsMatchingCriteria:(id)criteria withSynchronousCompletionHandler:(id)handler;
- (void)knownWebsiteNamesDidChange;
- (void)knownWebsiteNamesDidChangeOnDomains:(id)domains;
- (void)newPasskeysAvailableForApplicationIdentifier:(id)identifier;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performTaskEnsuringAllAccountSourcesAreLoadedOnQueue:(id)queue task:(id)task;
- (void)removeCredentialTypes:(int64_t)types forSavedAccount:(id)account completionHandler:(id)handler;
- (void)removeDontSaveMarkerForProtectionSpace:(id)space;
- (void)removeHideWarningMarkerForSavedAccount:(id)account;
- (void)removeLegacyPlatformCredentialsForDomains:(id)domains;
- (void)removeSite:(id)site fromSavedAccountWithPassword:(id)password withCompletion:(id)completion;
- (void)removeTOTPGeneratorForSavedAccount:(id)account;
- (void)reset;
- (void)resetHiddenSecurityRecommendationsWithCompletionHandler:(id)handler;
- (void)saveAdditionalSites:(id)sites forSavedAccount:(id)account completionHandler:(id)handler;
- (void)saveCustomTitle:(id)title forSavedAccount:(id)account completionHandler:(id)handler;
- (void)saveHideMarker:(id)marker forSavedAccount:(id)account completionHandler:(id)handler;
- (void)saveNotesEntry:(id)entry forSavedAccount:(id)account completionHandler:(id)handler;
- (void)saveTOTPGenerator:(id)generator forSavedAccount:(id)account completionHandler:(id)handler;
- (void)saveUser:(id)user password:(id)password forUserTypedSite:(id)site customTitle:(id)title notesEntry:(id)entry groupID:(id)d completionHandler:(id)handler;
- (void)saveUser:(id)user password:(id)password forUserTypedSite:(id)site groupID:(id)d completionHandler:(id)handler;
- (void)saveUser:(id)user password:(id)password forUserTypedSite:(id)site notesEntry:(id)entry groupID:(id)d completionHandler:(id)handler;
- (void)savedAccountWithAllMetadataForURLCredential:(id)credential protectionSpace:(id)space completion:(id)completion;
- (void)savedAccountsMatchingCriteria:(id)criteria withCompletionHandler:(id)handler;
- (void)setDontSaveMarkerForSavedAccountsWithProtectionSpace:(id)space;
- (void)setSavedAccountAsDefault:(id)default forProtectionSpace:(id)space context:(id)context associatedDomainsManager:(id)manager;
- (void)setSavedAccountAsDefault:(id)default forProtectionSpace:(id)space context:(id)context associatedDomainsManager:(id)manager completionHandler:(id)handler;
- (void)setShouldShowServiceNamesForPasswordAndPasskeyItems:(BOOL)items;
- (void)test_copyPasskeyWithCredentialID:(id)d toGroup:(id)group inRecentlyDeleted:(BOOL)deleted completionHandler:(id)handler;
- (void)test_createLegacyWebAuthnCredentialWithUserName:(id)name displayName:(id)displayName relyingPartyIdentifier:(id)identifier userHandle:(id)handle completionHandler:(id)handler;
- (void)test_createPasskeyWithUserName:(id)name displayName:(id)displayName relyingPartyIdentifier:(id)identifier userHandle:(id)handle groupID:(id)d inRecentlyDeleted:(BOOL)deleted unsafeAllowRealKeychainAccess:(BOOL)access completionHandler:(id)self0;
- (void)test_reloadAllSavedAccounts;
- (void)test_setSharedAccountsGroups:(id)groups;
- (void)updateAllSavedAccountsWithPasswordsWithUser:(id)user protectionSpace:(id)space withNewPassword:(id)password;
- (void)updateUserVisibleName:(NSString *)name forPasskeyWithIdentifier:(WBSPublicKeyCredentialIdentifier *)identifier completionHandler:(id)handler;
- (void)updateUserVisibleNameOnInternalQueue:(id)queue forPasskeyWithIdentifier:(id)identifier;
@end

@implementation WBSSavedAccountStore

+ (WBSSavedAccountStore)sharedStore
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__WBSSavedAccountStore_sharedStore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedStore_onceToken_0 != -1)
  {
    dispatch_once(&sharedStore_onceToken_0, block);
  }

  v2 = sharedStore_store;

  return v2;
}

void __35__WBSSavedAccountStore_sharedStore__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 safari_isPasswordManagerTestMode];

  if (v3)
  {
    [MEMORY[0x1E695AC50] safari_test_setUseTestingAccessGroups:1];
  }

  v4 = [objc_alloc(*(a1 + 32)) initAndPrewarmSavedAccounts:1 forTesting:v3];
  v5 = sharedStore_store;
  sharedStore_store = v4;
}

- (void)_fetchSharedAccountsGroups
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__WBSSavedAccountStore__fetchSharedAccountsGroups__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_updateCachedSharedAccountGroupsOnInternalQueue
{
  v3 = +[WBSOngoingSharingGroupProvider sharedProvider];
  cachedGroups = [v3 cachedGroups];

  if ((WBSIsEqual(cachedGroups, self->_sharedAccountsGroups) & 1) == 0)
  {
    v5 = [cachedGroups copy];
    sharedAccountsGroups = self->_sharedAccountsGroups;
    self->_sharedAccountsGroups = v5;

    [(WBSSavedAccountStore *)self _resetOnInternalQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__WBSSavedAccountStore__updateCachedSharedAccountGroupsOnInternalQueue__block_invoke;
    block[3] = &unk_1E7CF16E0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (BOOL)_canPerformMaintenanceTasks
{
  if (isProcessAllowedToPerformAccountStoreMaintenance_onceToken != -1)
  {
    [WBSSavedAccountStore _canPerformMaintenanceTasks];
  }

  return isProcessAllowedToPerformAccountStoreMaintenance_isAllowedToPerformMaintenance;
}

- (void)_prewarm
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__WBSSavedAccountStore__prewarm__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_moveContributedSavedAccountsBackToPersonalKeychainIfNecessary
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(WBSSavedAccountStore *)self _canPerformMaintenanceTasks])
  {
    v3 = [(WBSSavedAccountStore *)self _groupIDArrayForUserDefaultsKey:@"groupIdentifiersToMoveContributedCredentialsBackToPersonalKeychainFrom"];
    v4 = [v3 count];
    if (v4)
    {
      v6 = WBS_LOG_CHANNEL_PREFIXPasswords(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = v3;
        _os_log_impl(&dword_1B8447000, v6, OS_LOG_TYPE_DEFAULT, "Moving credentials back to personal keychain for group ID's recorded for cleanup: %@", buf, 0xCu);
      }

      queue = self->_queue;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __86__WBSSavedAccountStore__moveContributedSavedAccountsBackToPersonalKeychainIfNecessary__block_invoke;
      v8[3] = &unk_1E7CF1708;
      v8[4] = self;
      v9 = v3;
      dispatch_async(queue, v8);
    }
  }
}

uint64_t __32__WBSSavedAccountStore__prewarm__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _savedAccounts];
  v3 = *(a1 + 32);

  return [v3 _loadRecentlyDeletedSavedAccounts];
}

- (id)_savedAccounts
{
  selfCopy = self;
  v12 = *MEMORY[0x1E69E9840];
  if (!self->_savedAccountsWithPasswords)
  {
    self = [(WBSSavedAccountStore *)self _loadSavedAccounts];
  }

  v3 = WBS_LOG_CHANNEL_PREFIXKeychain(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    savedAccounts = selfCopy->_savedAccounts;
    v5 = v3;
    v8 = 136315394;
    v9 = "[WBSSavedAccountStore _savedAccounts]";
    v10 = 2048;
    v11 = [(NSArray *)savedAccounts count];
    _os_log_impl(&dword_1B8447000, v5, OS_LOG_TYPE_DEFAULT, "%s: Returning %lu saved accounts", &v8, 0x16u);
  }

  v6 = selfCopy->_savedAccounts;

  return v6;
}

- (id)_loadSavedAccounts
{
  if (self->_isForTesting)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__16;
    v9 = __Block_byref_object_dispose__16;
    v10 = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __42__WBSSavedAccountStore__loadSavedAccounts__block_invoke;
    v4[3] = &unk_1E7CF19B0;
    v4[4] = self;
    v4[5] = &v5;
    [MEMORY[0x1E695AC50] safari_performUsingTestingMode:v4];
    _loadSavedAccountsAfterSettingTestMode = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    _loadSavedAccountsAfterSettingTestMode = [(WBSSavedAccountStore *)self _loadSavedAccountsAfterSettingTestMode];
  }

  return _loadSavedAccountsAfterSettingTestMode;
}

- (id)_loadSavedAccountsAfterSettingTestMode
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXPasswords(self, a2);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    *buf = 0;
    _os_log_impl(&dword_1B8447000, v3, OS_LOG_TYPE_DEFAULT, "Beginning saved account store load", buf, 2u);
  }

  v6 = WBS_LOG_CHANNEL_PREFIXPasswords(v4, v5);
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8447000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AccountStoreLoad", "", buf, 2u);
  }

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  v9 = [processName isEqualToString:@"AuthenticationServicesAgent"];

  if (v9)
  {
    v56 = os_transaction_create();
  }

  else
  {
    v56 = 0;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  allSavedAccountsHighLevelDomainToUsernameToCredentialTypesToSavedAccounts = self->_allSavedAccountsHighLevelDomainToUsernameToCredentialTypesToSavedAccounts;
  self->_allSavedAccountsHighLevelDomainToUsernameToCredentialTypesToSavedAccounts = dictionary;

  array = [MEMORY[0x1E695DF70] array];
  [(WBSSavedAccountStore *)self _fetchAndFilterAllPasskeysData];
  v13 = [(WBSSavedAccountStore *)self _loadAndMergeSavedAccountsFromPersonalKeychainIntoAllSavedAccounts:array];
  savedAccountsInPersonalKeychain = self->_savedAccountsInPersonalKeychain;
  self->_savedAccountsInPersonalKeychain = v13;

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  groupIdentifiersToSavedAccounts = self->_groupIdentifiersToSavedAccounts;
  self->_groupIdentifiersToSavedAccounts = dictionary2;

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v17 = self->_sharedAccountsGroups;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v62;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v62 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v61 + 1) + 8 * i);
        groupID = [v22 groupID];
        v24 = [(WBSSavedAccountStore *)self _loadAndMergeSavedAccountsFromGroupID:groupID intoAllSavedAccounts:array];
        v25 = self->_groupIdentifiersToSavedAccounts;
        groupID2 = [v22 groupID];
        [(NSMutableDictionary *)v25 setObject:v24 forKeyedSubscript:groupID2];
      }

      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v19);
  }

  if ([(NSArray *)self->_sharedAccountsGroups count])
  {
    [(WBSSavedAccountStore *)self _identifySharedSavedAccountsWithSameUsernameAndHighLevelDomainPairs];
  }

  processInfo2 = [MEMORY[0x1E696AE30] processInfo];
  safari_isPasswordManagerTestMode = [processInfo2 safari_isPasswordManagerTestMode];

  if ((safari_isPasswordManagerTestMode & 1) == 0)
  {
    [(WBSSavedAccountStore *)self _fetchSignInWithAppleAccounts];
  }

  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v31 = array;
  v32 = [v31 countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v58;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v58 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v57 + 1) + 8 * j);
        if ([v36 userIsNeverSaveMarker])
        {
          v37 = array3;
        }

        else
        {
          v37 = array2;
        }

        [v37 addObject:v36];
      }

      v33 = [v31 countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v33);
  }

  v38 = [array2 sortedArrayUsingSelector:sel_compare_];
  savedAccounts = self->_savedAccounts;
  self->_savedAccounts = v38;

  v40 = [array3 sortedArrayUsingSelector:sel_compare_];
  savedAccountsWithNeverSaveMarker = self->_savedAccountsWithNeverSaveMarker;
  self->_savedAccountsWithNeverSaveMarker = v40;

  v42 = [(NSArray *)self->_savedAccounts safari_filterObjectsUsingBlock:&__block_literal_global_218];
  savedAccountsWithPasswords = self->_savedAccountsWithPasswords;
  self->_savedAccountsWithPasswords = v42;

  v44 = [(NSArray *)self->_savedAccountsWithSignInWithAppleRecords count];
  if (v44)
  {
    v46 = [(NSArray *)self->_savedAccounts arrayByAddingObjectsFromArray:self->_savedAccountsWithSignInWithAppleRecords];
    v47 = [v46 sortedArrayUsingSelector:sel_compare_];
    v48 = self->_savedAccounts;
    self->_savedAccounts = v47;
  }

  v49 = WBS_LOG_CHANNEL_PREFIXPasswords(v44, v45);
  v50 = os_signpost_enabled(v49);
  if (v50)
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8447000, v49, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AccountStoreLoad", "", buf, 2u);
  }

  v52 = WBS_LOG_CHANNEL_PREFIXPasswords(v50, v51);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8447000, v52, OS_LOG_TYPE_DEFAULT, "Completed saved account store load", buf, 2u);
  }

  [(WBSSavedAccountStore *)self _cleanUpRedundantCredentialsWithoutUsernames];
  [(WBSSavedAccountStore *)self _cleanUpSharedSavedAccountsWithUnknownOriginalContributorParticipantIDsIfNecessaryFromRecentlyDeleted:0];
  [(WBSSavedAccountStore *)self _performRecentlyDeletedMaintenanceIfNecessary];
  if (self->_shouldShowServiceNamesForPasswordAndPasskeyItems)
  {
    [(WBSSavedAccountStore *)self _applyServiceNamesToSavedAccounts:self->_savedAccounts];
  }

  v53 = self->_savedAccounts;
  v54 = v53;

  return v53;
}

- (void)_fetchAndFilterAllPasskeysData
{
  [(WBSSavedAccountStore *)self _fetchAndFilterPasskeysData];

  [(WBSSavedAccountStore *)self _fetchAndFilterRecentlyDeletedPasskeysData];
}

- (void)_fetchAndFilterPasskeysData
{
  v48 = *MEMORY[0x1E69E9840];
  passkeysDataOnInternalQueue = [(WBSSavedAccountStore *)self passkeysDataOnInternalQueue];
  array = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  highLevelDomainToLegacyPlatformAuthenticatorCredentials = self->_highLevelDomainToLegacyPlatformAuthenticatorCredentials;
  self->_highLevelDomainToLegacyPlatformAuthenticatorCredentials = dictionary;

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = passkeysDataOnInternalQueue;
  v7 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v40;
    do
    {
      v10 = 0;
      do
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v39 + 1) + 8 * v10);
        v12 = [v11 safari_numberForKey:@"IsSynchronizable"];
        v13 = [v11 safari_numberForKey:@"Test_isLegacyCredential"];
        bOOLValue = [v13 BOOLValue];

        bOOLValue2 = [v12 BOOLValue];
        v16 = [v11 safari_stringForKey:@"GroupID"];
        v17 = v16;
        isForTesting = self->_isForTesting;
        v19 = isForTesting | bOOLValue2;
        if (isForTesting && (bOOLValue2 & 1) == 0)
        {
          v19 = [v16 length] == 0;
          LOBYTE(isForTesting) = self->_isForTesting;
        }

        if (isForTesting)
        {
          v19 &= ~bOOLValue;
        }

        if (v19)
        {
          [array addObject:v11];
LABEL_17:
          self->_hasPasskeysEligibleForAutoFill = 1;
          goto LABEL_18;
        }

        if ([v17 length])
        {
          v20 = [dictionary2 objectForKeyedSubscript:v17];

          if (!v20)
          {
            array2 = [MEMORY[0x1E695DF70] array];
            [dictionary2 setObject:array2 forKeyedSubscript:v17];
          }

          v22 = [dictionary2 objectForKeyedSubscript:v17];
          [v22 addObject:v11];

          goto LABEL_17;
        }

        v23 = [v11 safari_stringForKey:@"CredentialRelyingPartyID"];
        safari_highLevelDomainForPasswordManager = [v23 safari_highLevelDomainForPasswordManager];

        v25 = [(NSMutableDictionary *)self->_highLevelDomainToLegacyPlatformAuthenticatorCredentials safari_mutableArrayForKey:safari_highLevelDomainForPasswordManager];
        if (v25)
        {
          v26 = v25;
          [v25 addObject:v11];
        }

        else
        {
          v26 = [MEMORY[0x1E695DF70] arrayWithObject:v11];
          [(NSMutableDictionary *)self->_highLevelDomainToLegacyPlatformAuthenticatorCredentials setObject:v26 forKeyedSubscript:safari_highLevelDomainForPasswordManager];
        }

LABEL_18:
        ++v10;
      }

      while (v8 != v10);
      v27 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
      v8 = v27;
    }

    while (v27);
  }

  v28 = [array copy];
  passkeysDataInPersonalKeychain = self->_passkeysDataInPersonalKeychain;
  self->_passkeysDataInPersonalKeychain = v28;

  v32 = WBS_LOG_CHANNEL_PREFIXKeychain(v30, v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = v32;
    v34 = [array count];
    *buf = 136315394;
    v44 = "[WBSSavedAccountStore _fetchAndFilterPasskeysData]";
    v45 = 2048;
    v46 = v34;
    _os_log_impl(&dword_1B8447000, v33, OS_LOG_TYPE_DEFAULT, "%s: Loaded %zu passkey keychain records from personal keychain", buf, 0x16u);
  }

  v35 = [dictionary2 copy];
  groupIdentifiersToPasskeysData = self->_groupIdentifiersToPasskeysData;
  self->_groupIdentifiersToPasskeysData = v35;

  [dictionary2 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_243];
}

- (void)_updateShowServiceNamesInPasswordsPreference
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__WBSSavedAccountStore__updateShowServiceNamesInPasswordsPreference__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_fetchAndFilterRecentlyDeletedPasskeysData
{
  v36 = *MEMORY[0x1E69E9840];
  recentlyDeletedPasskeysDataOnInternalQueue = [(WBSSavedAccountStore *)self recentlyDeletedPasskeysDataOnInternalQueue];
  array = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = recentlyDeletedPasskeysDataOnInternalQueue;
  v26 = [v4 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v26)
  {
    v5 = *v28;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(v4);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        v8 = [v7 safari_numberForKey:@"IsSynchronizable"];
        bOOLValue = [v8 BOOLValue];
        v10 = [v7 safari_stringForKey:@"GroupID"];
        v11 = v10;
        if (self->_isForTesting)
        {
          if ((bOOLValue & 1) != 0 || ![v10 length])
          {
LABEL_14:
            [array addObject:v7];
            goto LABEL_15;
          }
        }

        else if (bOOLValue)
        {
          goto LABEL_14;
        }

        if ([v11 length])
        {
          v12 = [dictionary objectForKeyedSubscript:v11];

          if (!v12)
          {
            array2 = [MEMORY[0x1E695DF70] array];
            [dictionary setObject:array2 forKeyedSubscript:v11];
          }

          v14 = [dictionary objectForKeyedSubscript:v11];
          [v14 addObject:v7];
        }

LABEL_15:
      }

      v26 = [v4 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v26);
  }

  v15 = [array copy];
  recentlyDeletedPasskeysDataInPersonalKeychain = self->_recentlyDeletedPasskeysDataInPersonalKeychain;
  self->_recentlyDeletedPasskeysDataInPersonalKeychain = v15;

  v19 = WBS_LOG_CHANNEL_PREFIXKeychain(v17, v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    v21 = [array count];
    *buf = 136315394;
    v32 = "[WBSSavedAccountStore _fetchAndFilterRecentlyDeletedPasskeysData]";
    v33 = 2048;
    v34 = v21;
    _os_log_impl(&dword_1B8447000, v20, OS_LOG_TYPE_DEFAULT, "%s: Loaded %zu recently deleted passkey keychain records from personal keychain", buf, 0x16u);
  }

  v22 = [dictionary copy];
  groupIdentifiersToRecentlyDeletedPasskeysData = self->_groupIdentifiersToRecentlyDeletedPasskeysData;
  self->_groupIdentifiersToRecentlyDeletedPasskeysData = v22;

  [dictionary enumerateKeysAndObjectsUsingBlock:&__block_literal_global_245_0];
}

- (NSArray)savedAccounts
{
  v22 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__16;
  v16 = __Block_byref_object_dispose__16;
  v17 = 0;
  v3 = WBS_LOG_CHANNEL_PREFIXKeychain(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[WBSSavedAccountStore savedAccounts]";
    _os_log_impl(&dword_1B8447000, v3, OS_LOG_TYPE_DEFAULT, "%s: Loading saved accounts", buf, 0xCu);
  }

  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__WBSSavedAccountStore_savedAccounts__block_invoke;
  v11[3] = &unk_1E7CF19B0;
  v11[4] = self;
  v11[5] = &v12;
  dispatch_sync(queue, v11);
  v7 = WBS_LOG_CHANNEL_PREFIXKeychain(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v13[5] count];
    *buf = 136315394;
    v19 = "[WBSSavedAccountStore savedAccounts]";
    v20 = 2048;
    v21 = v8;
    _os_log_impl(&dword_1B8447000, v7, OS_LOG_TYPE_DEFAULT, "%s: Loading completed with %lu saved accounts", buf, 0x16u);
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)_allInternetPasswordEntriesFromPersonalKeychain
{
  mEMORY[0x1E695AC50] = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  safari_allPasswordCredentialItemsInPersonalKeychain = [mEMORY[0x1E695AC50] safari_allPasswordCredentialItemsInPersonalKeychain];

  return safari_allPasswordCredentialItemsInPersonalKeychain;
}

- (id)_allSidecarsFromPersonalKeychain
{
  mEMORY[0x1E695AC50] = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  safari_allPersonalSidecarsInPersonalKeychain = [mEMORY[0x1E695AC50] safari_allPersonalSidecarsInPersonalKeychain];

  return safari_allPersonalSidecarsInPersonalKeychain;
}

- (void)_resetOnInternalQueue
{
  v3 = +[WBSKeyBagLockStatusManager sharedManager];
  keyBagLockStatus = [v3 keyBagLockStatus];

  if (keyBagLockStatus)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXKeychain(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8447000, v7, OS_LOG_TYPE_DEFAULT, "Skipping account store reset because the key bag is locked", buf, 2u);
    }
  }

  else
  {
    savedAccounts = self->_savedAccounts;
    self->_savedAccounts = 0;

    savedAccountsWithPasswords = self->_savedAccountsWithPasswords;
    self->_savedAccountsWithPasswords = 0;

    v10 = self->_savedAccountsWithPasswords;
    self->_savedAccountsWithPasswords = 0;

    savedAccountsWithNeverSaveMarker = self->_savedAccountsWithNeverSaveMarker;
    self->_savedAccountsWithNeverSaveMarker = 0;

    *&self->_hasPasswordsEligibleForAutoFill = 0;
    personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts;
    self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = 0;

    groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts;
    self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts = 0;

    savedAccountsInPersonalKeychain = self->_savedAccountsInPersonalKeychain;
    self->_savedAccountsInPersonalKeychain = 0;

    allRecentlyDeletedSavedAccounts = self->_allRecentlyDeletedSavedAccounts;
    self->_allRecentlyDeletedSavedAccounts = 0;

    recentlyDeletedSavedAccountsInPersonalKeychain = self->_recentlyDeletedSavedAccountsInPersonalKeychain;
    self->_recentlyDeletedSavedAccountsInPersonalKeychain = 0;

    recentlyDeletedPersonalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_recentlyDeletedPersonalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts;
    self->_recentlyDeletedPersonalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = 0;

    recentlyDeletedPersonalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys = self->_recentlyDeletedPersonalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys;
    self->_recentlyDeletedPersonalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys = 0;

    sharedGroupIdentifiersToRecentlyDeletedSavedAccounts = self->_sharedGroupIdentifiersToRecentlyDeletedSavedAccounts;
    self->_sharedGroupIdentifiersToRecentlyDeletedSavedAccounts = 0;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__WBSSavedAccountStore__resetOnInternalQueue__block_invoke;
    block[3] = &unk_1E7CF16E0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_fetchSignInWithAppleAccounts
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_cleanUpRedundantCredentialsWithoutUsernames
{
  if ([(WBSSavedAccountStore *)self _canPerformMaintenanceTasks])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__WBSSavedAccountStore__cleanUpRedundantCredentialsWithoutUsernames__block_invoke;
    block[3] = &unk_1E7CF16E0;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_performRecentlyDeletedMaintenanceIfNecessary
{
  if ([(WBSSavedAccountStore *)self _canPerformMaintenanceTasks])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__WBSSavedAccountStore__performRecentlyDeletedMaintenanceIfNecessary__block_invoke;
    block[3] = &unk_1E7CF16E0;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_loadRecentlyDeletedSavedAccounts
{
  v20 = *MEMORY[0x1E69E9840];
  if (!self->_savedAccountsWithPasswords)
  {
    _loadSavedAccounts = [(WBSSavedAccountStore *)self _loadSavedAccounts];
  }

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  v6 = [processName isEqualToString:@"AuthenticationServicesAgent"];

  if (v6)
  {
    v7 = os_transaction_create();
  }

  else
  {
    v7 = 0;
  }

  [(WBSSavedAccountStore *)self _loadRecentlyDeletedSavedAccountsInPersonalKeychain];
  v8 = [(NSMutableArray *)self->_recentlyDeletedSavedAccountsInPersonalKeychain mutableCopy];
  v9 = [(NSArray *)self->_sharedAccountsGroups safari_mapObjectsUsingBlock:&__block_literal_global_241];
  [(WBSSavedAccountStore *)self _loadRecentlyDeletedSavedAccountsFromSharedGroupIDs:v9];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allValues = [(NSMutableDictionary *)self->_sharedGroupIdentifiersToRecentlyDeletedSavedAccounts allValues];
  v11 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(allValues);
        }

        [v8 addObjectsFromArray:*(*(&v15 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  [v8 sortUsingSelector:sel_compare_];
  objc_storeStrong(&self->_allRecentlyDeletedSavedAccounts, v8);
  if (self->_shouldShowServiceNamesForPasswordAndPasskeyItems)
  {
    [(WBSSavedAccountStore *)self _applyServiceNamesToSavedAccounts:self->_allRecentlyDeletedSavedAccounts];
  }

  [(WBSSavedAccountStore *)self _cleanUpSharedSavedAccountsWithUnknownOriginalContributorParticipantIDsIfNecessaryFromRecentlyDeleted:1];
}

- (void)_loadRecentlyDeletedSavedAccountsInPersonalKeychain
{
  mEMORY[0x1E695AC50] = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  recentlyDeletedPersonalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_recentlyDeletedPersonalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts;
  self->_recentlyDeletedPersonalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = dictionary;
  v5 = dictionary;

  safari_allRecentlyDeletedPasswordCredentialItemsInPersonalKeychain = [mEMORY[0x1E695AC50] safari_allRecentlyDeletedPasswordCredentialItemsInPersonalKeychain];
  v7 = [(WBSSavedAccountStore *)self _loadSavedAccountsWithPasswordsFromKeychainData:safari_allRecentlyDeletedPasswordCredentialItemsInPersonalKeychain forGroupID:&stru_1F3064D08 withDictionaryForSavedAccountsWithPasswords:self->_recentlyDeletedPersonalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts fromRecentlyDeleted:1];

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v9 = [(WBSSavedAccountStore *)self _loadSavedAccountsWithPasskeysFromPasskeyData:self->_recentlyDeletedPasskeysDataInPersonalKeychain forGroupID:&stru_1F3064D08 fromRecentlyDeleted:1 withDictionaryForSavedAccountsWithPasskeys:dictionary2];
  v10 = [(WBSSavedAccountStore *)self _mergeSavedAccountsWithPasskeys:v9 andSavedAccountsWithPasswords:v7 usingDictionaryForSavedAccountsWithPasswords:v5 dictionaryForSavedAccountsWithPasskeys:dictionary2];
  v11 = [v10 mutableCopy];
  recentlyDeletedSavedAccountsInPersonalKeychain = self->_recentlyDeletedSavedAccountsInPersonalKeychain;
  self->_recentlyDeletedSavedAccountsInPersonalKeychain = v11;
}

uint64_t __68__WBSSavedAccountStore__updateShowServiceNamesInPasswordsPreference__block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() shouldShowServiceNamesForPasswordAndPasskeyItems];
  v3 = *(a1 + 32);

  return [v3 setShouldShowServiceNamesForPasswordAndPasskeyItems:v2];
}

+ (BOOL)shouldShowServiceNamesForPasswordAndPasskeyItems
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];

  if ([processName isEqualToString:@"AuthenticationServicesAgent"] & 1) != 0 || (objc_msgSend(processName, "isEqualToString:", @"webbookmarksd"))
  {
    v5 = 0;
  }

  else
  {
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    v7 = [safari_browserDefaults objectForKey:@"ShowServiceNamesInPasswords"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [self setShouldShowServiceNamesForPasswordAndPasskeyItems:{objc_msgSend(v7, "BOOLValue")}];
      [safari_browserDefaults removeObjectForKey:@"ShowServiceNamesInPasswords"];
    }

    pm_defaults = [MEMORY[0x1E695E000] pm_defaults];
    v5 = [pm_defaults safari_BOOLForKey:@"ShowServiceNamesInPasswords" defaultValue:1];
  }

  return v5;
}

void __68__WBSSavedAccountStore__cleanUpRedundantCredentialsWithoutUsernames__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__WBSSavedAccountStore__cleanUpRedundantCredentialsWithoutUsernames__block_invoke_2;
  v13[3] = &unk_1E7CF4788;
  v13[4] = v2;
  v4 = [v3 safari_filterObjectsUsingBlock:v13];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 32) _removeCredentialTypes:1 forSavedAccount:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

void __69__WBSSavedAccountStore__performRecentlyDeletedMaintenanceIfNecessary__block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 168) count])
  {
    v2 = [MEMORY[0x1E695DF00] now];
    v3 = [MEMORY[0x1E695DEE8] currentCalendar];
    v4 = [v3 dateByAddingUnit:16 value:-30 toDate:v2 options:0];

    v5 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v6 = [v5 valueForKey:@"DebugPasswordManagerRecentlyDeletedRecoveryWindowInMinutes"];

    if (v6)
    {
      v7 = [MEMORY[0x1E695E000] safari_browserDefaults];
      v8 = [v7 integerForKey:@"DebugPasswordManagerRecentlyDeletedRecoveryWindowInMinutes"];

      v9 = [MEMORY[0x1E695DEE8] currentCalendar];
      v10 = [v9 dateByAddingUnit:64 value:-v8 toDate:v2 options:0];

      v13 = WBS_LOG_CHANNEL_PREFIXPasswords(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v39 = v8;
        _os_log_impl(&dword_1B8447000, v13, OS_LOG_TYPE_DEFAULT, "Using debug recently deleted limit of %ld minutes", buf, 0xCu);
      }

      v14 = [MEMORY[0x1E695E000] safari_browserDefaults];
      [v14 removeObjectForKey:@"DebugPasswordManagerRecentlyDeletedRecoveryWindowInMinutes"];

      v4 = v10;
    }

    *(*(a1 + 32) + 224) = 1;
    v15 = [*(*(a1 + 32) + 168) copy];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v31 = a1;
      v30 = 0;
      v19 = *v34;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v33 + 1) + 8 * i);
          v22 = [v21 lastModifiedDate];
          v23 = [v22 earlierDate:v4];

          if (v23 != v4)
          {
            v24 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
            v25 = [v24 safari_mostRecentLastModifiedDateForCredentialsOnSavedAccount:v21];

            if (v25)
            {
              v26 = [v4 earlierDate:v25];

              if (v26 != v4)
              {
                v29 = WBS_LOG_CHANNEL_PREFIXPasswords(v27, v28);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134217984;
                  v39 = 30;
                  _os_log_impl(&dword_1B8447000, v29, OS_LOG_TYPE_DEFAULT, "Permanently deleting a saved account from Recently Deleted because it is more than %zu days old.", buf, 0xCu);
                }

                [*(v31 + 32) _removeCredentialTypes:objc_msgSend(v21 forSavedAccount:{"credentialTypes"), v21}];
                v30 = 1;
              }
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v18);

      *(*(v31 + 32) + 224) = 0;
      if (v30)
      {
        [*(v31 + 32) _resetOnInternalQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __69__WBSSavedAccountStore__performRecentlyDeletedMaintenanceIfNecessary__block_invoke_334;
        block[3] = &unk_1E7CF16E0;
        block[4] = *(v31 + 32);
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }
    }

    else
    {

      *(*(a1 + 32) + 224) = 0;
    }
  }
}

- (id)initPartialStoreForDomains:(id)domains forTesting:(BOOL)testing
{
  testingCopy = testing;
  domainsCopy = domains;
  v7 = objc_alloc_init(WBSAuthenticationServicesAgentProxy);
  [(WBSAuthenticationServicesAgentProxy *)v7 setDelegate:self];
  v8 = [(WBSSavedAccountStore *)self initWithAuthenticationServicesAgentProxy:v7 shouldPrewarmSavedAccounts:0 limitedToDomains:domainsCopy forTesting:testingCopy];

  return v8;
}

- (id)initAndPrewarmSavedAccounts:(BOOL)accounts forTesting:(BOOL)testing
{
  testingCopy = testing;
  accountsCopy = accounts;
  v7 = objc_alloc_init(WBSAuthenticationServicesAgentProxy);
  [(WBSAuthenticationServicesAgentProxy *)v7 setDelegate:self];
  v8 = [(WBSSavedAccountStore *)self initWithAuthenticationServicesAgentProxy:v7 shouldPrewarmSavedAccounts:accountsCopy limitedToDomains:0 forTesting:testingCopy];

  return v8;
}

- (WBSSavedAccountStore)initWithAuthenticationServicesAgentProxy:(id)proxy shouldPrewarmSavedAccounts:(BOOL)accounts limitedToDomains:(id)domains forTesting:(BOOL)testing
{
  testingCopy = testing;
  accountsCopy = accounts;
  proxyCopy = proxy;
  domainsCopy = domains;
  v41.receiver = self;
  v41.super_class = WBSSavedAccountStore;
  v13 = [(WBSSavedAccountStore *)&v41 init];
  if (v13)
  {
    objc_initWeak(&location, v13);
    v14 = [domainsCopy copy];
    domainsStoreIsLimitedTo = v13->_domainsStoreIsLimitedTo;
    v13->_domainsStoreIsLimitedTo = v14;

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariCore.WBSSavedAccountStore.%@.%p._queue", objc_opt_class(), v13];
    v17 = dispatch_queue_create([v16 UTF8String], 0);
    queue = v13->_queue;
    v13->_queue = v17;

    v19 = [[_TtC10SafariCore15WBSPasskeyStore alloc] initForTesting:testingCopy queue:v13->_queue];
    passkeyStore = v13->_passkeyStore;
    v13->_passkeyStore = v19;

    v13->_isForTesting = testingCopy;
    v21 = [[WBSKeychainCredentialNotificationMonitor alloc] initWithCoalescingInterval:0.002];
    keychainMonitor = v13->_keychainMonitor;
    v13->_keychainMonitor = v21;

    v23 = v13->_keychainMonitor;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __120__WBSSavedAccountStore_initWithAuthenticationServicesAgentProxy_shouldPrewarmSavedAccounts_limitedToDomains_forTesting___block_invoke;
    v38[3] = &unk_1E7CF15E8;
    objc_copyWeak(&v39, &location);
    v24 = [(WBSKeychainCredentialNotificationMonitor *)v23 addObserverWithBlock:v38];
    keychainNotificationRegistrationToken = v13->_keychainNotificationRegistrationToken;
    v13->_keychainNotificationRegistrationToken = v24;

    v26 = +[WBSOngoingSharingGroupProvider sharedProvider];
    [v26 addSubscriber:v13];

    [(WBSSavedAccountStore *)v13 _fetchSharedAccountsGroups];
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel__signInWithApplePushNotificationReceived_ name:@"com.apple.authkit.siwa-consented-app-list-changed" object:0];

    objc_storeStrong(&v13->_authenticationServicesAgentProxy, proxy);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __120__WBSSavedAccountStore_initWithAuthenticationServicesAgentProxy_shouldPrewarmSavedAccounts_limitedToDomains_forTesting___block_invoke_3;
    v36[3] = &unk_1E7CF4710;
    objc_copyWeak(&v37, &location);
    v28 = [WBSDiagnosticStateCollector registeredStateCollectorWithLogLabel:@"Saved Account Store State" payloadProvider:v36];
    stateCollector = v13->_stateCollector;
    v13->_stateCollector = v28;

    if (accountsCopy)
    {
      websiteNameProvider = [(WBSSavedAccountStore *)v13 websiteNameProvider];
      [websiteNameProvider prewarm];

      [(WBSSavedAccountStore *)v13 _prewarm];
    }

    [(WBSSavedAccountStore *)v13 _moveContributedSavedAccountsBackToPersonalKeychainIfNecessary];
    [(WBSSavedAccountStore *)v13 _performCleanupForExitedGroupsIfNecessary:&__block_literal_global_66];
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];

    if (([processName isEqualToString:@"AuthenticationServicesAgent"] & 1) != 0 || objc_msgSend(processName, "isEqualToString:", @"webbookmarksd"))
    {
      v13->_shouldShowServiceNamesForPasswordAndPasskeyItems = 0;
    }

    else
    {
      pm_defaults = [MEMORY[0x1E695E000] pm_defaults];
      [pm_defaults addObserver:v13 forKeyPath:@"ShowServiceNamesInPasswords" options:0 context:showServiceNamesInPasswordsEnabledKVOContext];

      [(WBSSavedAccountStore *)v13 _updateShowServiceNamesInPasswordsPreference];
    }

    v34 = v13;

    objc_destroyWeak(&v37);
    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __120__WBSSavedAccountStore_initWithAuthenticationServicesAgentProxy_shouldPrewarmSavedAccounts_limitedToDomains_forTesting___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __120__WBSSavedAccountStore_initWithAuthenticationServicesAgentProxy_shouldPrewarmSavedAccounts_limitedToDomains_forTesting___block_invoke_2;
  block[3] = &unk_1E7CF15E8;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __120__WBSSavedAccountStore_initWithAuthenticationServicesAgentProxy_shouldPrewarmSavedAccounts_limitedToDomains_forTesting___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if ((WeakRetained[224] & 1) == 0)
    {
      v4 = WeakRetained;
      v3 = [WeakRetained _isMigratingKeychainItemsWithInvalidAuthenticationTypes];
      v2 = v4;
      if ((v3 & 1) == 0)
      {
        [v4 reset];
        [v4 _postSavedAccountStoreDidChangeNotification];
        v2 = v4;
      }
    }
  }
}

id __120__WBSSavedAccountStore_initWithAuthenticationServicesAgentProxy_shouldPrewarmSavedAccounts_limitedToDomains_forTesting___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _diagnosticStateDictionary];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F8];
  }

  return v3;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (showServiceNamesInPasswordsEnabledKVOContext == context)
  {
    [(WBSSavedAccountStore *)self _updateShowServiceNamesInPasswordsPreference:path];
  }
}

- (id)_diagnosticStateDictionary
{
  v10[4] = *MEMORY[0x1E69E9840];
  v9[0] = @"number of saved accounts";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_savedAccounts, "count")}];
  v10[0] = v3;
  v9[1] = @"number of passkeys in personal keychain";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_passkeysDataInPersonalKeychain, "count")}];
  v10[1] = v4;
  v9[2] = @"number of saved accounts with passwords";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_savedAccountsWithPasswords, "count")}];
  v10[2] = v5;
  v9[3] = @"number of personal keychain high level domains";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableDictionary count](self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts, "count")}];
  v10[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

- (void)dealloc
{
  [(WBSKeychainCredentialNotificationMonitor *)self->_keychainMonitor removeObserverForToken:self->_keychainNotificationRegistrationToken];
  [(NSTimer *)self->_warmDataStoreAfterResetTimer invalidate];
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = WBSSavedAccountStore;
  [(WBSSavedAccountStore *)&v4 dealloc];
}

- (id)savedAccountForURLCredential:(id)credential protectionSpace:(id)space
{
  spaceCopy = space;
  credentialCopy = credential;
  user = [credentialCopy user];
  password = [credentialCopy password];

  v10 = [(WBSSavedAccountStore *)self _savedAccountForProtectionSpace:spaceCopy user:user password:password];

  return v10;
}

- (NSArray)savedAccountsInPersonalKeychain
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__16;
  v10 = __Block_byref_object_dispose__16;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__WBSSavedAccountStore_savedAccountsInPersonalKeychain__block_invoke;
  v5[3] = &unk_1E7CF1FA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __55__WBSSavedAccountStore_savedAccountsInPersonalKeychain__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[16];
  if (!v3)
  {
    v4 = [v2 _loadSavedAccounts];
    v3 = *(*(a1 + 32) + 128);
  }

  v5 = [v3 copy];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (NSArray)savedAccountsInPersonalKeychainExcludingNeverSaveMarkerPasswords
{
  savedAccountsInPersonalKeychain = [(WBSSavedAccountStore *)self savedAccountsInPersonalKeychain];
  v3 = [savedAccountsInPersonalKeychain safari_filterObjectsUsingBlock:&__block_literal_global_167];

  return v3;
}

- (id)savedAccountsForGroupID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__16;
    v19 = __Block_byref_object_dispose__16;
    v20 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__WBSSavedAccountStore_savedAccountsForGroupID___block_invoke;
    block[3] = &unk_1E7CF2D98;
    block[4] = self;
    v14 = &v15;
    v13 = dCopy;
    dispatch_sync(queue, block);
    v8 = v16[5];
    if (v8)
    {
      savedAccountsInPersonalKeychainExcludingNeverSaveMarkerPasswords = v8;
    }

    else
    {
      v10 = WBS_LOG_CHANNEL_PREFIXPasswords(v6, v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [WBSSavedAccountStore savedAccountsForGroupID:];
      }

      savedAccountsInPersonalKeychainExcludingNeverSaveMarkerPasswords = MEMORY[0x1E695E0F0];
    }

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    savedAccountsInPersonalKeychainExcludingNeverSaveMarkerPasswords = [(WBSSavedAccountStore *)self savedAccountsInPersonalKeychainExcludingNeverSaveMarkerPasswords];
  }

  return savedAccountsInPersonalKeychainExcludingNeverSaveMarkerPasswords;
}

void __48__WBSSavedAccountStore_savedAccountsForGroupID___block_invoke(void *a1)
{
  v2 = a1[4];
  if (!*(v2 + 64))
  {
    v3 = [v2 _loadSavedAccounts];
    v2 = a1[4];
  }

  v4 = [*(v2 + 136) objectForKeyedSubscript:a1[5]];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)removeLegacyPlatformCredentialsForDomains:(id)domains
{
  domainsCopy = domains;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__WBSSavedAccountStore_removeLegacyPlatformCredentialsForDomains___block_invoke;
  v7[3] = &unk_1E7CF1708;
  v7[4] = self;
  v8 = domainsCopy;
  v6 = domainsCopy;
  dispatch_async(queue, v7);
}

void __66__WBSSavedAccountStore_removeLegacyPlatformCredentialsForDomains___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2[11])
  {
    v3 = [v2 _loadSavedAccounts];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(a1 + 40);
  v17 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v17)
  {
    v16 = *v25;
    while (2)
    {
      v4 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v5 = [*(*(&v24 + 1) + 8 * v4) safari_highLevelDomainFromHost];
        v6 = [*(*(a1 + 32) + 88) objectForKeyedSubscript:v5];
        if (![v6 count])
        {

          goto LABEL_20;
        }

        v18 = v5;
        v19 = v4;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v21;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v21 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = [*(*(&v20 + 1) + 8 * i) safari_dataForKey:@"CredentialID"];
              v13 = [v12 base64EncodedStringWithOptions:0];

              v14 = [[WBSPublicKeyCredentialIdentifier alloc] initWithCredentialID:v13 groupID:&stru_1F3064D08];
              [*(a1 + 32) deletePasskeyWithIdentifierOnInternalQueue:v14];
            }

            v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v9);
        }

        [*(*(a1 + 32) + 88) removeObjectForKey:v18];
        v4 = v19 + 1;
      }

      while (v19 + 1 != v17);
      v17 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:
}

- (void)savedAccountWithAllMetadataForURLCredential:(id)credential protectionSpace:(id)space completion:(id)completion
{
  credentialCopy = credential;
  spaceCopy = space;
  completionCopy = completion;
  v11 = dispatch_get_global_queue(17, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__WBSSavedAccountStore_savedAccountWithAllMetadataForURLCredential_protectionSpace_completion___block_invoke;
  v15[3] = &unk_1E7CF4738;
  v15[4] = self;
  v16 = credentialCopy;
  v17 = spaceCopy;
  v18 = completionCopy;
  v12 = spaceCopy;
  v13 = credentialCopy;
  v14 = completionCopy;
  dispatch_async(v11, v15);
}

void __95__WBSSavedAccountStore_savedAccountWithAllMetadataForURLCredential_protectionSpace_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = [*(a1 + 32) savedAccountWithAllMetadataForURLCredential:*(a1 + 40) protectionSpace:*(a1 + 48)];
  (*(v1 + 16))(v1, v2);
}

- (id)savedAccountWithAllMetadataForURLCredential:(id)credential protectionSpace:(id)space
{
  v29 = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  spaceCopy = space;
  user = [credentialCopy user];
  password = [credentialCopy password];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  savedAccountsWithPasswords = [(WBSSavedAccountStore *)self savedAccountsWithPasswords];
  v10 = [savedAccountsWithPasswords countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v21 = credentialCopy;
    v11 = *v25;
    while (1)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(savedAccountsWithPasswords);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        if (([v13 userIsNeverSaveMarker] & 1) == 0)
        {
          user2 = [v13 user];
          if (![user2 isEqualToString:user])
          {
            goto LABEL_12;
          }

          password2 = [v13 password];
          if (([password2 isEqualToString:password] & 1) == 0)
          {

LABEL_12:
            continue;
          }

          [v13 protectionSpaces];
          v16 = savedAccountsWithPasswords;
          v17 = user;
          v19 = v18 = password;
          v23 = [v19 containsObject:spaceCopy];

          password = v18;
          user = v17;
          savedAccountsWithPasswords = v16;

          if (v23)
          {
            v10 = v13;
            goto LABEL_15;
          }
        }
      }

      v10 = [savedAccountsWithPasswords countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v10)
      {
LABEL_15:
        credentialCopy = v21;
        break;
      }
    }
  }

  return v10;
}

- (id)savedAccountForURL:(id)l user:(id)user password:(id)password
{
  v8 = MEMORY[0x1E695AC58];
  passwordCopy = password;
  userCopy = user;
  v11 = [v8 safari_HTMLFormProtectionSpaceForURL:l];
  v12 = [(WBSSavedAccountStore *)self _savedAccountForProtectionSpace:v11 user:userCopy password:passwordCopy];

  return v12;
}

- (id)_savedAccountForProtectionSpace:(id)space user:(id)user password:(id)password
{
  v45 = *MEMORY[0x1E69E9840];
  userCopy = user;
  passwordCopy = password;
  host = [space host];
  safari_highLevelDomainForPasswordManager = [host safari_highLevelDomainForPasswordManager];

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  mEMORY[0x1E695AC50] = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  safari_allSafariCredentials = [mEMORY[0x1E695AC50] safari_allSafariCredentials];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __70__WBSSavedAccountStore__savedAccountForProtectionSpace_user_password___block_invoke;
  v38[3] = &unk_1E7CF4760;
  v15 = safari_highLevelDomainForPasswordManager;
  v39 = v15;
  v16 = userCopy;
  v40 = v16;
  v17 = passwordCopy;
  v41 = v17;
  v18 = v11;
  v42 = v18;
  v19 = v12;
  v43 = v19;
  [safari_allSafariCredentials enumerateKeysAndObjectsUsingBlock:v38];

  v32 = v15;
  v33 = v16;
  v31 = v17;
  v20 = [[WBSSavedAccount alloc] _initWithHighLevelDomain:v15 user:v16 password:v17];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = v18;
  v22 = [v21 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v35;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v34 + 1) + 8 * i);
        host2 = [v26 host];
        if ([v19 containsObject:host2])
        {
          safari_addressString = [v26 safari_addressString];
          v29 = [safari_addressString safari_simplifiedUserVisibleURLStringWithSimplifications:135 forDisplayOnly:0 simplifiedStringOffset:0];
        }

        else
        {
          v29 = host2;
        }

        [v20 _addProtectionSpace:v26 forSite:v29 isDefaultCredentialForSite:{objc_msgSend(v20, "isDefaultCredentialForFullyQualifiedHostname:", host2)}];
      }

      v23 = [v21 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v23);
  }

  return v20;
}

void __70__WBSSavedAccountStore__savedAccountForProtectionSpace_user_password___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [v15 host];
  v7 = [v6 safari_highLevelDomainForPasswordManager];
  v8 = [v7 safari_isCaseInsensitiveEqualToString:*(a1 + 32)];

  if (v8)
  {
    v9 = [v5 objectForKeyedSubscript:*(a1 + 40)];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 password];
      v12 = [v11 isEqualToString:*(a1 + 48)];

      if (v12)
      {
        [*(a1 + 56) addObject:v15];
      }

      else
      {
        v13 = *(a1 + 64);
        v14 = [v15 host];
        [v13 addObject:v14];
      }
    }
  }
}

- (id)savedAccountsForPersistentIdentifiers:(id)identifiers
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:identifiers];
  savedAccountsWithPasswords = [(WBSSavedAccountStore *)self savedAccountsWithPasswords];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__WBSSavedAccountStore_savedAccountsForPersistentIdentifiers___block_invoke;
  v9[3] = &unk_1E7CF4788;
  v10 = v4;
  v6 = v4;
  v7 = [savedAccountsWithPasswords safari_filterObjectsUsingBlock:v9];

  return v7;
}

uint64_t __62__WBSSavedAccountStore_savedAccountsForPersistentIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a2 persistentIdentifiersForWarningManager];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(a1 + 32) containsObject:*(*(&v10 + 1) + 8 * v7)])
        {
          v8 = 1;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

+ (void)removeCredentialTypes:(int64_t)types forSavedAccount:(id)account forGroup:(id)group
{
  typesCopy = types;
  accountCopy = account;
  groupCopy = group;
  v8 = groupCopy;
  if (typesCopy)
  {
    groupID = [groupCopy groupID];
    [accountCopy _deletePasswordCredentialsForGroupID:groupID];
  }

  if ((typesCopy & 2) != 0)
  {
    groupID2 = [v8 groupID];
    [accountCopy _deletePasskeyCredentialForGroupID:groupID2];
  }
}

- (id)_allPersonalSidecarsForGroupID:(id)d fromRecentlyDeleted:(BOOL)deleted
{
  deletedCopy = deleted;
  v5 = MEMORY[0x1E695AC50];
  dCopy = d;
  sharedCredentialStorage = [v5 sharedCredentialStorage];
  v8 = [sharedCredentialStorage safari_allPersonalSidecarsForGroupID:dCopy fromRecentlyDeleted:deletedCopy];

  return v8;
}

- (id)_allSharedSidecarsForGroupID:(id)d fromRecentlyDeleted:(BOOL)deleted
{
  deletedCopy = deleted;
  v5 = MEMORY[0x1E695AC50];
  dCopy = d;
  sharedCredentialStorage = [v5 sharedCredentialStorage];
  v8 = [sharedCredentialStorage safari_allSharedSidecarsForGroupID:dCopy fromRecentlyDeleted:deletedCopy];

  return v8;
}

- (NSArray)savedAccountsWithTOTPGenerators
{
  savedAccountsWithPasswords = [(WBSSavedAccountStore *)self savedAccountsWithPasswords];
  v3 = [savedAccountsWithPasswords safari_filterObjectsUsingBlock:&__block_literal_global_179];

  return v3;
}

BOOL __55__WBSSavedAccountStore_savedAccountsWithTOTPGenerators__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 totpGenerators];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)_allPersonalSidecarsFromPersonalKeychainFromRecentlyDeleted:(BOOL)deleted
{
  if (deleted)
  {
    mEMORY[0x1E695AC50] = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    safari_allRecentlyDeletedPersonalSidecarsInPersonalKeychain = [mEMORY[0x1E695AC50] safari_allRecentlyDeletedPersonalSidecarsInPersonalKeychain];
  }

  else
  {
    safari_allRecentlyDeletedPersonalSidecarsInPersonalKeychain = [(WBSSavedAccountStore *)self _allSidecarsFromPersonalKeychain];
  }

  return safari_allRecentlyDeletedPersonalSidecarsInPersonalKeychain;
}

- (NSArray)savedAccountsWithPasswordsExcludingNeverSaveMarkerPasswords
{
  savedAccountsWithPasswords = [(WBSSavedAccountStore *)self savedAccountsWithPasswords];
  v3 = [savedAccountsWithPasswords safari_filterObjectsUsingBlock:&__block_literal_global_181_0];

  return v3;
}

- (NSSet)highLevelDomainsOfAllSavedAccountsWithPasswordsExcludingNeverSaveMarkerPasswords
{
  savedAccountsWithPasswordsExcludingNeverSaveMarkerPasswords = [(WBSSavedAccountStore *)self savedAccountsWithPasswordsExcludingNeverSaveMarkerPasswords];
  v3 = [savedAccountsWithPasswordsExcludingNeverSaveMarkerPasswords safari_setByApplyingBlock:&__block_literal_global_184];

  return v3;
}

- (NSArray)savedAccountsExcludingNeverSaveMarkerPasswords
{
  savedAccounts = [(WBSSavedAccountStore *)self savedAccounts];
  v3 = [savedAccounts safari_filterObjectsUsingBlock:&__block_literal_global_186];

  return v3;
}

- (NSSet)highLevelDomainsOfAllSavedAccountsExcludingNeverSaveMarkerPasswords
{
  savedAccountsExcludingNeverSaveMarkerPasswords = [(WBSSavedAccountStore *)self savedAccountsExcludingNeverSaveMarkerPasswords];
  v3 = [savedAccountsExcludingNeverSaveMarkerPasswords safari_setByApplyingBlock:&__block_literal_global_188_0];

  return v3;
}

- (NSSet)highLevelDomainsOfRecentlyDeletedAccounts
{
  allRecentlyDeletedSavedAccounts = [(WBSSavedAccountStore *)self allRecentlyDeletedSavedAccounts];
  v3 = [allRecentlyDeletedSavedAccounts safari_setByApplyingBlock:&__block_literal_global_190_0];

  return v3;
}

- (id)highLevelDomainsOfSavedAccountsExcludingNeverSaveMarkerPasswordsForGroupID:(id)d
{
  v3 = [(WBSSavedAccountStore *)self savedAccountsForGroupID:d];
  v4 = [v3 safari_setByApplyingBlock:&__block_literal_global_192];

  return v4;
}

id __99__WBSSavedAccountStore_highLevelDomainsOfSavedAccountsExcludingNeverSaveMarkerPasswordsForGroupID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 userIsNeverSaveMarker])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 highLevelDomain];
  }

  return v3;
}

- (void)_warmDataStoreAfterResetTimerFired:(id)fired
{
  [(WBSSavedAccountStore *)self _prewarm];
  [(NSTimer *)self->_warmDataStoreAfterResetTimer invalidate];
  warmDataStoreAfterResetTimer = self->_warmDataStoreAfterResetTimer;
  self->_warmDataStoreAfterResetTimer = 0;
}

- (NSArray)savedAccountsWithPasswords
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__16;
  v10 = __Block_byref_object_dispose__16;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__WBSSavedAccountStore_savedAccountsWithPasswords__block_invoke;
  v5[3] = &unk_1E7CF19B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __50__WBSSavedAccountStore_savedAccountsWithPasswords__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _savedAccountsWithPasswords];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __37__WBSSavedAccountStore_savedAccounts__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _savedAccounts];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)savedAccountsWithNeverSaveMarker
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__16;
  v10 = __Block_byref_object_dispose__16;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__WBSSavedAccountStore_savedAccountsWithNeverSaveMarker__block_invoke;
  v5[3] = &unk_1E7CF1FA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __56__WBSSavedAccountStore_savedAccountsWithNeverSaveMarker__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[7])
  {
    v3 = v2[7];
  }

  else
  {
    v4 = [v2 _loadSavedAccounts];
    v3 = *(*(a1 + 32) + 56);
  }

  v5 = [v3 copy];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)_savedAccountsWithPasswords
{
  savedAccountsWithPasswords = self->_savedAccountsWithPasswords;
  if (!savedAccountsWithPasswords)
  {
    _loadSavedAccounts = [(WBSSavedAccountStore *)self _loadSavedAccounts];
    savedAccountsWithPasswords = self->_savedAccountsWithPasswords;
  }

  v5 = savedAccountsWithPasswords;

  return v5;
}

- (void)_ensureRecentlyDeletedSavedAccountsAreLoadedOnInternalQueue
{
  if (!self->_allRecentlyDeletedSavedAccounts)
  {
    [(WBSSavedAccountStore *)self _loadRecentlyDeletedSavedAccounts];
  }
}

- (NSArray)allRecentlyDeletedSavedAccounts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__16;
  v10 = __Block_byref_object_dispose__16;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__WBSSavedAccountStore_allRecentlyDeletedSavedAccounts__block_invoke;
  v5[3] = &unk_1E7CF1FA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __55__WBSSavedAccountStore_allRecentlyDeletedSavedAccounts__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureRecentlyDeletedSavedAccountsAreLoadedOnInternalQueue];
  v2 = [*(*(a1 + 32) + 168) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)recentlyDeletedSavedAccountsInPersonalKeychain
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__16;
  v10 = __Block_byref_object_dispose__16;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__WBSSavedAccountStore_recentlyDeletedSavedAccountsInPersonalKeychain__block_invoke;
  v5[3] = &unk_1E7CF1FA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __70__WBSSavedAccountStore_recentlyDeletedSavedAccountsInPersonalKeychain__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureRecentlyDeletedSavedAccountsAreLoadedOnInternalQueue];
  v2 = [*(*(a1 + 32) + 176) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)sharingGroupsWithSavedAccounts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__16;
  v10 = __Block_byref_object_dispose__16;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__WBSSavedAccountStore_sharingGroupsWithSavedAccounts__block_invoke;
  v5[3] = &unk_1E7CF1FA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __54__WBSSavedAccountStore_sharingGroupsWithSavedAccounts__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureDomainsToUsersExists];
  v2 = *(a1 + 32);
  v3 = *(v2 + 144);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__WBSSavedAccountStore_sharingGroupsWithSavedAccounts__block_invoke_2;
  v7[3] = &unk_1E7CF2D20;
  v7[4] = v2;
  v4 = [v3 safari_filterObjectsUsingBlock:v7];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

BOOL __54__WBSSavedAccountStore_sharingGroupsWithSavedAccounts__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 136);
  v3 = [a2 groupID];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 count] != 0;

  return v5;
}

- (NSArray)sharingGroupsWithRecentlyDeletedSavedAccounts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__16;
  v10 = __Block_byref_object_dispose__16;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__WBSSavedAccountStore_sharingGroupsWithRecentlyDeletedSavedAccounts__block_invoke;
  v5[3] = &unk_1E7CF1FA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __69__WBSSavedAccountStore_sharingGroupsWithRecentlyDeletedSavedAccounts__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureRecentlyDeletedSavedAccountsAreLoadedOnInternalQueue];
  v2 = *(a1 + 32);
  v3 = *(v2 + 144);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__WBSSavedAccountStore_sharingGroupsWithRecentlyDeletedSavedAccounts__block_invoke_2;
  v7[3] = &unk_1E7CF2D20;
  v7[4] = v2;
  v4 = [v3 safari_filterObjectsUsingBlock:v7];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

BOOL __69__WBSSavedAccountStore_sharingGroupsWithRecentlyDeletedSavedAccounts__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 192);
  v3 = [a2 groupID];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 count] != 0;

  return v5;
}

- (id)recentlyDeletedSavedAccountsForGroupWithID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__16;
  v16 = __Block_byref_object_dispose__16;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__WBSSavedAccountStore_recentlyDeletedSavedAccountsForGroupWithID___block_invoke;
  block[3] = &unk_1E7CF2D98;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __67__WBSSavedAccountStore_recentlyDeletedSavedAccountsForGroupWithID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureRecentlyDeletedSavedAccountsAreLoadedOnInternalQueue];
  v5 = [*(*(a1 + 32) + 192) objectForKeyedSubscript:*(a1 + 40)];
  v2 = [v5 copy];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)_shouldLoadCredentialRecordWithHostIntoAccountStore:(id)store
{
  v15 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  if ([(NSArray *)self->_domainsStoreIsLimitedTo count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_domainsStoreIsLimitedTo;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([storeCopy safari_isHostOrSubdomainOfHost:{*(*(&v10 + 1) + 8 * i), v10}])
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (id)_loadSavedAccountsWithPasswordsFromKeychainData:(id)data forGroupID:(id)d withDictionaryForSavedAccountsWithPasswords:(id)passwords fromRecentlyDeleted:(BOOL)deleted
{
  deletedCopy = deleted;
  v153 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  dCopy = d;
  passwordsCopy = passwords;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v13 = WBS_LOG_CHANNEL_PREFIXKeychain(dictionary, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [dataCopy count];
    v16 = @"NO";
    if (deletedCopy)
    {
      v16 = @"YES";
    }

    v17 = v16;
    *buf = 136315906;
    v146 = "[WBSSavedAccountStore _loadSavedAccountsWithPasswordsFromKeychainData:forGroupID:withDictionaryForSavedAccountsWithPasswords:fromRecentlyDeleted:]";
    v147 = 2048;
    v148 = v15;
    v149 = 2114;
    v150 = dCopy;
    v151 = 2112;
    v152 = v17;
    _os_log_impl(&dword_1B8447000, v14, OS_LOG_TYPE_DEFAULT, "%s: Loaded %zu password keychain records from group: %{public}@ from Recently Deleted: %@", buf, 0x2Au);
  }

  v100 = dCopy;
  v102 = deletedCopy;
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v18 = dataCopy;
  v19 = [v18 countByEnumeratingWithState:&v138 objects:v144 count:16];
  if (v19)
  {
    v20 = v19;
    v119 = 0;
    v104 = 0;
    v21 = *v139;
    v22 = *MEMORY[0x1E697AE00];
    v131 = *MEMORY[0x1E697AC30];
    v130 = *MEMORY[0x1E697AE80];
    v114 = *MEMORY[0x1E697AC50];
    v113 = *MEMORY[0x1E697AC60];
    v103 = *MEMORY[0x1E697ABD0];
    v112 = *MEMORY[0x1E697B3C0];
    v111 = *MEMORY[0x1E697ADF8];
    v110 = *MEMORY[0x1E695AB50];
    v109 = *MEMORY[0x1E697ACD0];
    v108 = *MEMORY[0x1E697ADD0];
    v107 = *MEMORY[0x1E697B3C8];
    v105 = *MEMORY[0x1E697ADC8];
    v106 = *MEMORY[0x1E697ACC8];
    v117 = v18;
    selfCopy = self;
    v115 = *MEMORY[0x1E697AE00];
    v116 = *v139;
    do
    {
      v23 = 0;
      v120 = v20;
      do
      {
        if (*v139 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v138 + 1) + 8 * v23);
        v25 = [v24 objectForKeyedSubscript:{v22, v100}];
        v26 = WBSHTTPProtocolFromSecAttrProtocolValue(v25);

        if (v26)
        {
          v27 = [v24 objectForKeyedSubscript:v131];
          v28 = v27;
          v29 = &stru_1F3064D08;
          if (v27)
          {
            v29 = v27;
          }

          v30 = v29;

          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v33 = [v24 objectForKeyedSubscript:v130];
            if ([v33 length] && -[WBSSavedAccountStore _shouldLoadCredentialRecordWithHostIntoAccountStore:](self, "_shouldLoadCredentialRecordWithHostIntoAccountStore:", v33))
            {
              v34 = [v24 safari_stringForKey:v114];
              if (([v34 isEqualToString:v113] & 1) == 0)
              {
                v35 = v33;
                v36 = [v24 safari_stringForKey:v103];
                v38 = WBS_LOG_CHANNEL_PREFIXKeychain(v36, v37);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v146 = v34;
                  v147 = 2114;
                  v148 = v36;
                  _os_log_error_impl(&dword_1B8447000, v38, OS_LOG_TYPE_ERROR, "Invalid authentication type for keychain item; kSecAttrAuthenticationType: %{public}@, kSecAttrAccessGroup: %{public}@", buf, 0x16u);
                }

                ++v119;

                v33 = v35;
              }

              safari_highLevelDomainForPasswordManager = [v33 safari_highLevelDomainForPasswordManager];
              v40 = v33;
              v41 = safari_highLevelDomainForPasswordManager;
              v42 = v40;
              if (safari_highLevelDomainForPasswordManager)
              {
                v40 = safari_highLevelDomainForPasswordManager;
              }

              v43 = v40;

              dictionary2 = [dictionary objectForKeyedSubscript:v43];
              if (!dictionary2)
              {
                dictionary2 = [MEMORY[0x1E695DF90] dictionary];
                [dictionary setObject:dictionary2 forKeyedSubscript:v43];
              }

              v45 = [v24 objectForKeyedSubscript:v112];
              v125 = v45;
              if (v45)
              {
                v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v45 encoding:4];
                v47 = v46;
                v48 = &stru_1F3064D08;
                if (v46)
                {
                  v48 = v46;
                }

                v49 = v48;
              }

              else
              {
                v49 = &stru_1F3064D08;
              }

              dictionary3 = [dictionary2 objectForKeyedSubscript:v30];
              if (!dictionary3)
              {
                dictionary3 = [MEMORY[0x1E695DF90] dictionary];
                [dictionary2 setObject:dictionary3 forKeyedSubscript:v30];
              }

              v129 = dictionary3;
              v52 = [dictionary3 objectForKeyedSubscript:v49];
              v127 = v43;
              v128 = v34;
              v126 = dictionary2;
              v124 = v49;
              if (v52)
              {
                v53 = v52;
              }

              else
              {
                ++v104;
                v53 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [v129 setObject:v53 forKeyedSubscript:v49];
              }

              v54 = objc_alloc(MEMORY[0x1E695AC58]);
              v55 = [v24 objectForKeyedSubscript:v111];
              v123 = v42;
              v122 = [v54 initWithHost:v42 port:objc_msgSend(v55 protocol:"integerValue") realm:v26 authenticationMethod:{0, v110}];

              v56 = [v24 objectForKeyedSubscript:v109];
              v57 = [v24 objectForKeyedSubscript:v108];
              v58 = v57;
              if (v57)
              {
                v59 = v57;
              }

              else
              {
                v59 = v56;
              }

              v60 = v59;

              v61 = [v24 safari_dataForKey:v107];
              v62 = [v24 objectForKeyedSubscript:v106];
              v63 = [v62 isEqualToString:@"default"];

              v64 = [[_WBSSavedAccountPartialCredential alloc] initWithProtectionSpace:v122 modificationDate:v60 creationDate:v56 persistentIdentifier:v61 isDefaultCredentialForProtectionSpace:v63];
              v65 = [v24 objectForKeyedSubscript:v105];
              [(_WBSSavedAccountPartialCredential *)v64 setRecoveryKeyUniqueIdentifier:v65];

              [v53 addObject:v64];
              v33 = v123;

              v18 = v117;
              self = selfCopy;
              v22 = v115;
              v21 = v116;
              v20 = v120;
            }
          }

          else
          {
            v50 = WBS_LOG_CHANNEL_PREFIXKeychain(isKindOfClass, v32);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              [WBSSavedAccountStore _loadSavedAccountsWithPasswordsFromKeychainData:v142 forGroupID:v50 withDictionaryForSavedAccountsWithPasswords:v30 fromRecentlyDeleted:&v143];
            }
          }
        }

        ++v23;
      }

      while (v20 != v23);
      v20 = [v18 countByEnumeratingWithState:&v138 objects:v144 count:16];
    }

    while (v20);
  }

  else
  {
    v119 = 0;
    v104 = 0;
  }

  v66 = [MEMORY[0x1E695DF70] arrayWithCapacity:v104];
  v132[0] = MEMORY[0x1E69E9820];
  v132[1] = 3221225472;
  v132[2] = __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke;
  v132[3] = &unk_1E7CF4868;
  v67 = v100;
  v133 = v67;
  v137 = v102;
  v68 = v66;
  v134 = v68;
  selfCopy2 = self;
  v69 = passwordsCopy;
  v136 = v69;
  [dictionary enumerateKeysAndObjectsUsingBlock:v132];
  array = [MEMORY[0x1E695DF70] array];
  if ([v67 length])
  {
    v71 = [(WBSSavedAccountStore *)self _allSharedSidecarsForGroupID:v67 fromRecentlyDeleted:v102];
    v72 = [(WBSSavedAccountStore *)self _matchSidecars:v71 toSavedAccountsWithPasswordsInDictionary:v69 unmatchedSidecars:array];
    v74 = WBS_LOG_CHANNEL_PREFIXKeychain(v72, v73);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      v75 = v74;
      v76 = [v71 count];
      *buf = 136315650;
      v146 = "[WBSSavedAccountStore _loadSavedAccountsWithPasswordsFromKeychainData:forGroupID:withDictionaryForSavedAccountsWithPasswords:fromRecentlyDeleted:]";
      v147 = 2048;
      v148 = v76;
      v149 = 2114;
      v150 = v67;
      _os_log_impl(&dword_1B8447000, v75, OS_LOG_TYPE_DEFAULT, "%s: loaded %lu shared sidecar items from group %{public}@", buf, 0x20u);
    }

    v100 = [(WBSSavedAccountStore *)self _allPersonalSidecarsForGroupID:v67 fromRecentlyDeleted:v102, v100];
    v78 = [(WBSSavedAccountStore *)self _matchSidecars:v100 toSavedAccountsWithPasswordsInDictionary:v69 unmatchedSidecars:array];
    v80 = WBS_LOG_CHANNEL_PREFIXKeychain(v78, v79);
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      v81 = v80;
      v82 = [v100 count];
      *buf = 136315650;
      v146 = "[WBSSavedAccountStore _loadSavedAccountsWithPasswordsFromKeychainData:forGroupID:withDictionaryForSavedAccountsWithPasswords:fromRecentlyDeleted:]";
      v147 = 2048;
      v148 = v82;
      v149 = 2114;
      v150 = v67;
      _os_log_impl(&dword_1B8447000, v81, OS_LOG_TYPE_DEFAULT, "%s: loaded %lu personal sidecar items from group %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v71 = [(WBSSavedAccountStore *)self _allPersonalSidecarsFromPersonalKeychainFromRecentlyDeleted:v102];
    v83 = [(WBSSavedAccountStore *)self _matchSidecars:v71 toSavedAccountsWithPasswordsInDictionary:v69 unmatchedSidecars:array];
    v85 = WBS_LOG_CHANNEL_PREFIXKeychain(v83, v84);
    if (!os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_54;
    }

    v100 = v85;
    v86 = [v71 count];
    *buf = 136315394;
    v146 = "[WBSSavedAccountStore _loadSavedAccountsWithPasswordsFromKeychainData:forGroupID:withDictionaryForSavedAccountsWithPasswords:fromRecentlyDeleted:]";
    v147 = 2048;
    v148 = v86;
    _os_log_impl(&dword_1B8447000, v100, OS_LOG_TYPE_DEFAULT, "%s: loaded %lu sidecar items from personal keychain", buf, 0x16u);
  }

LABEL_54:
  v89 = WBS_LOG_CHANNEL_PREFIXKeychain(v87, v88);
  v90 = os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT);
  if (v90)
  {
    v92 = v89;
    v93 = [array count];
    *buf = 134217984;
    v146 = v93;
    _os_log_impl(&dword_1B8447000, v92, OS_LOG_TYPE_DEFAULT, "%ld unmatched sidecars", buf, 0xCu);
  }

  v94 = WBS_LOG_CHANNEL_PREFIXKeychain(v90, v91);
  v95 = os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG);
  if (v95)
  {
    [WBSSavedAccountStore _loadSavedAccountsWithPasswordsFromKeychainData:forGroupID:withDictionaryForSavedAccountsWithPasswords:fromRecentlyDeleted:];
    if (!v119)
    {
      goto LABEL_61;
    }
  }

  else if (!v119)
  {
    goto LABEL_61;
  }

  v97 = WBS_LOG_CHANNEL_PREFIXKeychain(v95, v96);
  if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
  {
    [WBSSavedAccountStore _loadSavedAccountsWithPasswordsFromKeychainData:forGroupID:withDictionaryForSavedAccountsWithPasswords:fromRecentlyDeleted:];
  }

  [(WBSSavedAccountStore *)self _reportKeychainItemsWithInvalidAuthenticationTypesIfNeeded];
LABEL_61:
  v98 = [v68 copy];

  return v98;
}

void __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v6 count] < 2)
  {
    v10 = 0;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_2;
    v61[3] = &unk_1E7CF40F0;
    v9 = v8;
    v62 = v9;
    [v6 enumerateKeysAndObjectsUsingBlock:v61];
    if ([v9 count] == 1)
    {
      v10 = 0;
    }

    else
    {
      v42 = v7;
      v43 = v6;
      v40 = v9;
      v11 = v9;
      v41 = v5;
      v12 = v5;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v63 objects:v69 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v64;
        v17 = &isSearchEvaluationLoggingEnabled_isSearchEvaluationLoggingEnabled;
        while (2)
        {
          v18 = 0;
          do
          {
            if (*v64 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v19 = [*(*(&v63 + 1) + 8 * v18) substringToIndex:{objc_msgSend(*(*(&v63 + 1) + 8 * v18), "length") - objc_msgSend(v12, "length")}];
            if ([v19 length])
            {
              v20 = v19;
              if (*(v17 + 96) != -1)
              {
                __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_cold_1();
              }

              if ([setOfUninterestingSubdomains_set containsObject:v20])
              {
              }

              else
              {
                if (numberedSubdomainRegexp_onceToken != -1)
                {
                  __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_cold_2();
                }

                v21 = numberedSubdomainRegexp_regexp;
                v22 = [v21 firstMatchInString:v20 options:0 range:{0, objc_msgSend(v20, "length")}];

                v17 = &isSearchEvaluationLoggingEnabled_isSearchEvaluationLoggingEnabled;
                if (!v22)
                {

                  v10 = 1;
                  goto LABEL_22;
                }
              }
            }

            ++v18;
          }

          while (v15 != v18);
          v15 = [v13 countByEnumeratingWithState:&v63 objects:v69 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v10 = 0;
LABEL_22:
      v6 = v43;
      v5 = v41;
      v7 = v42;
      v9 = v40;
    }
  }

  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_5;
  v52[3] = &unk_1E7CF4840;
  v59 = v10;
  v23 = v5;
  v53 = v23;
  v54 = *(a1 + 32);
  v60 = *(a1 + 64);
  v55 = *(a1 + 40);
  v24 = v7;
  v25 = *(a1 + 48);
  v26 = *(a1 + 56);
  v56 = v24;
  v57 = v25;
  v58 = v26;
  [v6 enumerateKeysAndObjectsUsingBlock:v52];
  if ([v24 count] >= 2)
  {
    v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v28 = v24;
    v29 = [v28 countByEnumeratingWithState:&v48 objects:v68 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v49;
LABEL_27:
      v32 = 0;
      while (1)
      {
        if (*v49 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v48 + 1) + 8 * v32);
        if (![v33 shouldShowSpecificSubdomainForUserVisibleDomain])
        {
          break;
        }

        v34 = [v33 userVisibleDomain];
        [v27 addObject:v34];

        if (v30 == ++v32)
        {
          v30 = [v28 countByEnumeratingWithState:&v48 objects:v68 count:16];
          if (v30)
          {
            goto LABEL_27;
          }

          goto LABEL_33;
        }
      }
    }

    else
    {
LABEL_33:

      if ([v27 count] != 1)
      {
LABEL_42:

        goto LABEL_43;
      }

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v35 = v28;
      v36 = [v35 countByEnumeratingWithState:&v44 objects:v67 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v45;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v45 != v38)
            {
              objc_enumerationMutation(v35);
            }

            [*(*(&v44 + 1) + 8 * i) setShouldShowSpecificSubdomainForUserVisibleDomain:0];
          }

          v37 = [v35 countByEnumeratingWithState:&v44 objects:v67 count:16];
        }

        while (v37);
      }
    }

    goto LABEL_42;
  }

LABEL_43:
}

void __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_3;
  v4[3] = &unk_1E7CF47D0;
  v5 = *(a1 + 32);
  [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 safari_mapObjectsUsingBlock:&__block_literal_global_201];
  [v3 addObjectsFromArray:v4];
}

id __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 protectionSpace];
  v3 = [v2 host];

  return v3;
}

void __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_6;
  v28[3] = &unk_1E7CF47D0;
  v8 = v7;
  v29 = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:v28];
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v10 = (*(a1 + 80) & 1) != 0 || [v6 count] > 1;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_8;
  v19[3] = &unk_1E7CF4818;
  v20 = *(a1 + 32);
  v11 = v5;
  v21 = v11;
  v12 = v8;
  v22 = v12;
  v13 = v9;
  v23 = v13;
  v14 = *(a1 + 40);
  v26 = *(a1 + 81);
  v15 = *(a1 + 48);
  *&v16 = *(a1 + 56);
  *(&v16 + 1) = *(a1 + 64);
  v27 = v10;
  *&v17 = v14;
  *(&v17 + 1) = v15;
  v24 = v17;
  v25 = v16;
  [v6 enumerateKeysAndObjectsUsingBlock:v19];
  v18 = [*(a1 + 72) objectForKeyedSubscript:*(a1 + 32)];
  if (!v18)
  {
    v18 = [MEMORY[0x1E695DF90] dictionary];
    [*(a1 + 72) setObject:v18 forKeyedSubscript:*(a1 + 32)];
  }

  [v18 setObject:v13 forKeyedSubscript:v11];
}

void __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 safari_mapObjectsUsingBlock:&__block_literal_global_206];
  [v3 addObjectsFromArray:v4];
}

id __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 protectionSpace];
  v3 = [v2 host];

  return v3;
}

void __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v23 = a1;
  v21 = v5;
  v7 = [[WBSSavedAccount alloc] _initWithHighLevelDomain:*(a1 + 32) user:*(a1 + 40) password:v5];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [v12 protectionSpace];
        v14 = [v13 host];
        if ([*(v23 + 48) countForObject:v14] == 1)
        {
          v15 = v14;
        }

        else
        {
          v16 = [v13 safari_addressString];
          v15 = [v16 safari_simplifiedUserVisibleURLStringWithSimplifications:135 forDisplayOnly:0 simplifiedStringOffset:0];
        }

        [v7 _addProtectionSpace:v13 forSite:v15 isDefaultCredentialForSite:{objc_msgSend(v12, "isDefaultCredentialForProtectionSpace")}];
        v17 = [v12 modificationDate];
        [v7 _addPasswordCredentialModificationDate:v17];

        v18 = [v12 creationDate];
        [v7 _addPasswordCredentialCreationDate:v18];

        if ([v14 isEqualToString:@"972A5469-4550-4949-8F8C-5E5E1C5CD33D"])
        {
          v19 = [v12 recoveryKeyUniqueIdentifier];
          [v7 _addFileVaultRecoveryKeyMetadataFromUniqueIdentifier:v19];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v20 = [obj safari_mapObjectsUsingBlock:&__block_literal_global_209];
  [v7 setPersistentIdentifiersForWarningManager:v20];
  [*(v23 + 56) setObject:v7 forKeyedSubscript:v21];
  [v7 setSharedGroupID:*(v23 + 64)];
  [v7 setIsRecentlyDeleted:*(v23 + 96)];
  [*(v23 + 72) addObject:v7];
  [*(v23 + 80) addObject:v7];
  if (*(v23 + 97) == 1)
  {
    [v7 setShouldShowSpecificSubdomainForUserVisibleDomain:1];
  }

  if (([v7 userIsNeverSaveMarker] & 1) == 0)
  {
    *(*(v23 + 88) + 259) = 1;
  }
}

- (void)_matchSidecars:(id)sidecars toSavedAccountsWithPasswordsInDictionary:(id)dictionary unmatchedSidecars:(id)unmatchedSidecars
{
  v61 = *MEMORY[0x1E69E9840];
  sidecarsCopy = sidecars;
  dictionaryCopy = dictionary;
  unmatchedSidecarsCopy = unmatchedSidecars;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = sidecarsCopy;
  v9 = [sidecarsCopy countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v55;
    v36 = *v55;
    selfCopy = self;
    do
    {
      v12 = 0;
      v38 = v10;
      do
      {
        if (*v55 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v54 + 1) + 8 * v12);
        protectionSpace = [v13 protectionSpace];
        host = [protectionSpace host];
        if ([(WBSSavedAccountStore *)self _shouldLoadCredentialRecordWithHostIntoAccountStore:host])
        {
          safari_highLevelDomainForPasswordManager = [host safari_highLevelDomainForPasswordManager];
          v17 = [dictionaryCopy objectForKeyedSubscript:safari_highLevelDomainForPasswordManager];
          v44 = v13;
          [v13 user];
          v19 = v18 = v11;
          [v17 objectForKeyedSubscript:v19];
          v20 = v10;
          v22 = v21 = self;

          v11 = v18;
          v45 = v22;
          v23 = v22;
          self = v21;
          v10 = v20;
          allValues = [v23 allValues];
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v25 = allValues;
          v42 = [v25 countByEnumeratingWithState:&v50 objects:v59 count:16];
          if (v42)
          {
            v26 = *v51;
            v41 = safari_highLevelDomainForPasswordManager;
            v43 = v25;
            do
            {
              for (i = 0; i != v42; ++i)
              {
                if (*v51 != v26)
                {
                  objc_enumerationMutation(v25);
                }

                v28 = *(*(&v50 + 1) + 8 * i);
                v46 = 0u;
                v47 = 0u;
                v48 = 0u;
                v49 = 0u;
                protectionSpaces = [v28 protectionSpaces];
                v30 = [protectionSpaces countByEnumeratingWithState:&v46 objects:v58 count:16];
                if (v30)
                {
                  v31 = v30;
                  v32 = *v47;
                  while (2)
                  {
                    for (j = 0; j != v31; ++j)
                    {
                      if (*v47 != v32)
                      {
                        objc_enumerationMutation(protectionSpaces);
                      }

                      if ([*(*(&v46 + 1) + 8 * j) isEqualToProtectionSpaceForPasswordManager:protectionSpace])
                      {
                        host2 = [protectionSpace host];
                        [v28 _addSidecar:v44 forSite:host2];

                        v25 = v43;
                        v11 = v36;
                        self = selfCopy;
                        v10 = v38;
                        safari_highLevelDomainForPasswordManager = v41;
                        goto LABEL_24;
                      }
                    }

                    v31 = [protectionSpaces countByEnumeratingWithState:&v46 objects:v58 count:16];
                    if (v31)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v25 = v43;
              }

              v11 = v36;
              self = selfCopy;
              v10 = v38;
              safari_highLevelDomainForPasswordManager = v41;
              v42 = [v43 countByEnumeratingWithState:&v50 objects:v59 count:16];
            }

            while (v42);
          }

          [unmatchedSidecarsCopy addObject:v44];
LABEL_24:
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v10);
  }
}

- (void)_reportKeychainItemsWithInvalidAuthenticationTypesIfNeeded
{
  v16 = *MEMORY[0x1E69E9840];
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v4 = [safari_browserDefaults safari_dateForKey:@"LastInvalidAuthTypeMigrationDate"];

  if (!v4)
  {
    goto LABEL_7;
  }

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [MEMORY[0x1E695DF00] now];
  v7 = [currentCalendar dateByAddingUnit:16 value:-7 toDate:v6 options:0];

  v8 = [v7 safari_isEarlierThanDate:v4];
  if (!v8)
  {

LABEL_7:
    v11 = dispatch_get_global_queue(17, 0);
    dispatch_async(v11, &__block_literal_global_213_0);

    [(WBSSavedAccountStore *)self _migratePasswordsWithInvalidAuthenticationTypes];
    safari_browserDefaults2 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v13 = [MEMORY[0x1E695DF00] now];
    [safari_browserDefaults2 safari_setDate:v13 forKey:@"LastInvalidAuthTypeMigrationDate"];

    goto LABEL_8;
  }

  v10 = WBS_LOG_CHANNEL_PREFIXPasswords(v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = 7;
    _os_log_impl(&dword_1B8447000, v10, OS_LOG_TYPE_DEFAULT, "Skipping invalid auth type migration because the migration has already run in the past %lu days.", &v14, 0xCu);
  }

LABEL_8:
}

void __82__WBSSavedAccountStore__reportKeychainItemsWithInvalidAuthenticationTypesIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = WBS_LOG_CHANNEL_PREFIXKeychain(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __82__WBSSavedAccountStore__reportKeychainItemsWithInvalidAuthenticationTypesIfNeeded__block_invoke_cold_1();
  }
}

void __42__WBSSavedAccountStore__loadSavedAccounts__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _loadSavedAccountsAfterSettingTestMode];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __53__WBSSavedAccountStore__fetchSignInWithAppleAccounts__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXPasswords(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __53__WBSSavedAccountStore__fetchSignInWithAppleAccounts__block_invoke_cold_1();
    }
  }

  else
  {
    v10 = *(*(a1 + 32) + 120);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__WBSSavedAccountStore__fetchSignInWithAppleAccounts__block_invoke_226;
    v13[3] = &unk_1E7CF1708;
    v11 = v5;
    v12 = *(a1 + 32);
    v14 = v11;
    v15 = v12;
    dispatch_async(v10, v13);
  }
}

uint64_t __53__WBSSavedAccountStore__fetchSignInWithAppleAccounts__block_invoke_226(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXPasswords(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v7 = 134217984;
    v8 = [v4 count];
    _os_log_impl(&dword_1B8447000, v5, OS_LOG_TYPE_DEFAULT, "Successfully fetched '%lu' Sign in with Apple accounts.", &v7, 0xCu);
  }

  return [*(a1 + 40) _updateCachedSignInWithAppleAccountsOnInternalQueueWithAccounts:*(a1 + 32)];
}

- (void)_updateCachedSignInWithAppleAccountsOnInternalQueueWithAccounts:(id)accounts
{
  v4 = [(WBSSavedAccountStore *)self _convertSignInWithAppleAccountsToSavedAccounts:accounts];
  savedAccounts = self->_savedAccounts;
  if (!savedAccounts)
  {
    savedAccounts = MEMORY[0x1E695E0F0];
  }

  v6 = savedAccounts;
  v7 = [(NSArray *)v6 safari_filterObjectsUsingBlock:&__block_literal_global_229_0];
  v8 = [MEMORY[0x1E695DFD8] setWithArray:v7];
  v9 = [MEMORY[0x1E695DFD8] setWithArray:v4];
  v10 = [v8 isEqualToSet:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [v4 copy];
    savedAccountsWithSignInWithAppleRecords = self->_savedAccountsWithSignInWithAppleRecords;
    self->_savedAccountsWithSignInWithAppleRecords = v11;

    v13 = [(NSArray *)v6 safari_filterObjectsUsingBlock:&__block_literal_global_231];
    if ([(NSArray *)self->_savedAccountsWithSignInWithAppleRecords count])
    {
      v14 = [v13 arrayByAddingObjectsFromArray:self->_savedAccountsWithSignInWithAppleRecords];

      v6 = v14;
    }

    v15 = [(NSArray *)v6 sortedArrayUsingSelector:sel_compare_];
    v16 = self->_savedAccounts;
    self->_savedAccounts = v15;

    v19 = WBS_LOG_CHANNEL_PREFIXPasswords(v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8447000, v19, OS_LOG_TYPE_DEFAULT, "Merging Sign in with Apple accounts into all saved accounts", buf, 2u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__WBSSavedAccountStore__updateCachedSignInWithAppleAccountsOnInternalQueueWithAccounts___block_invoke_232;
    block[3] = &unk_1E7CF16E0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (id)_convertSignInWithAppleAccountsToSavedAccounts:(id)accounts
{
  v26 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = accountsCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        localizedAppName = [v10 localizedAppName];
        v12 = [localizedAppName length];

        if (v12)
        {
          v15 = [[WBSSavedAccount alloc] _initWithSignInWithAppleAccount:v10];
          [v4 addObject:v15];
        }

        else
        {
          v16 = WBS_LOG_CHANNEL_PREFIXPasswords(v13, v14);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [(WBSSavedAccountStore *)&v23 _convertSignInWithAppleAccountsToSavedAccounts:v16, v10, &v24];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  v17 = [v4 copy];

  return v17;
}

- (void)_signInWithApplePushNotificationReceived:(id)received
{
  v4 = WBS_LOG_CHANNEL_PREFIXPasswords(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B8447000, v4, OS_LOG_TYPE_DEFAULT, "Sign in with Apple accounts changed push notification received, reloading accounts", v5, 2u);
  }

  [(WBSSavedAccountStore *)self _fetchSignInWithAppleAccounts];
}

- (BOOL)_moveSignInWithAppleSavedAccount:(id)account toGroupID:(id)d
{
  accountCopy = account;
  dCopy = d;
  v31 = accountCopy;
  signInWithAppleAccount = [accountCopy signInWithAppleAccount];
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  primaryAuthKitAccount = [mEMORY[0x1E698DC80] primaryAuthKitAccount];

  mEMORY[0x1E698DC80]2 = [MEMORY[0x1E698DC80] sharedInstance];
  v10 = [mEMORY[0x1E698DC80]2 altDSIDForAccount:primaryAuthKitAccount];

  v11 = +[WBSOngoingSharingGroupProvider sharedProvider];
  currentUserParticipantID = [v11 currentUserParticipantID];

  v13 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  mEMORY[0x1E698DC80]3 = [MEMORY[0x1E698DC80] sharedInstance];
  v15 = [mEMORY[0x1E698DC80]3 familyNameForAccount:primaryAuthKitAccount];
  [v13 setFamilyName:v15];

  mEMORY[0x1E698DC80]4 = [MEMORY[0x1E698DC80] sharedInstance];
  v29 = primaryAuthKitAccount;
  v17 = [mEMORY[0x1E698DC80]4 givenNameForAccount:primaryAuthKitAccount];
  [v13 setGivenName:v17];

  v18 = objc_alloc_init(MEMORY[0x1E696ADF8]);
  v19 = [v18 stringFromPersonNameComponents:v13];
  v30 = currentUserParticipantID;
  v20 = [objc_alloc(MEMORY[0x1E698DDE0]) initWithGroupID:dCopy participantID:currentUserParticipantID participantName:v19];
  v21 = [objc_alloc(MEMORY[0x1E698DDF0]) initWithAltDSID:v10];
  [v21 setSignInWithAppleAccount:signInWithAppleAccount];
  v33 = signInWithAppleAccount;
  shareInfo = [signInWithAppleAccount shareInfo];
  groupID = [shareInfo groupID];
  [v21 setCurrentGroupID:groupID];

  v24 = [dCopy length];
  if (v24)
  {
    v25 = v31;
    v26 = [(WBSSavedAccountStore *)self _shareSignInWithAppleAccountWithContext:v21 withGroupInfo:v20 savedAccount:v31];
  }

  else
  {
    v26 = [(WBSSavedAccountStore *)self _unshareSignInWithAppleAccountWithContext:v21];
    v25 = v31;
  }

  return v26;
}

- (BOOL)_shareSignInWithAppleAccountWithContext:(id)context withGroupInfo:(id)info savedAccount:(id)account
{
  contextCopy = context;
  infoCopy = info;
  accountCopy = account;
  v10 = objc_alloc_init(MEMORY[0x1E698DDE8]);
  v11 = dispatch_group_create();
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  dispatch_group_enter(v11);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __91__WBSSavedAccountStore__shareSignInWithAppleAccountWithContext_withGroupInfo_savedAccount___block_invoke;
  v17[3] = &unk_1E7CF48B8;
  v20 = &v21;
  v12 = accountCopy;
  v18 = v12;
  v13 = v11;
  v19 = v13;
  [v10 shareAccountWithContext:contextCopy withGroup:infoCopy completion:v17];
  v14 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v13, v14);
  v15 = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
  return v15;
}

void __91__WBSSavedAccountStore__shareSignInWithAppleAccountWithContext_withGroupInfo_savedAccount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = WBS_LOG_CHANNEL_PREFIXPasswords(v6, v7);
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __91__WBSSavedAccountStore__shareSignInWithAppleAccountWithContext_withGroupInfo_savedAccount___block_invoke_cold_1();
    }

    v10 = 0;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1B8447000, v9, OS_LOG_TYPE_DEFAULT, "Successfully shared Sign in with Apple Account.", v11, 2u);
    }

    [*(a1 + 32) setSignInWithAppleAccount:v5];
    v10 = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v10;
  dispatch_group_leave(*(a1 + 40));
}

- (BOOL)_unshareSignInWithAppleAccountWithContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc_init(MEMORY[0x1E698DDE8]);
  v5 = dispatch_group_create();
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  dispatch_group_enter(v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__WBSSavedAccountStore__unshareSignInWithAppleAccountWithContext___block_invoke;
  v10[3] = &unk_1E7CF48E0;
  v12 = &v13;
  v6 = v5;
  v11 = v6;
  [v4 unshareAccountWithContext:contextCopy completion:v10];
  v7 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v6, v7);
  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v8;
}

void __66__WBSSavedAccountStore__unshareSignInWithAppleAccountWithContext___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = WBS_LOG_CHANNEL_PREFIXPasswords(v5, v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __66__WBSSavedAccountStore__unshareSignInWithAppleAccountWithContext___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1B8447000, v8, OS_LOG_TYPE_DEFAULT, "Successfully unshared Sign in with Apple Account.", v9, 2u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (id)exportPasskeyCredentialWithID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__16;
  v16 = __Block_byref_object_dispose__16;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__WBSSavedAccountStore_exportPasskeyCredentialWithID___block_invoke;
  block[3] = &unk_1E7CF1730;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __54__WBSSavedAccountStore_exportPasskeyCredentialWithID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) exportPasskeyCredentialWithIDOnInternalQueue:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_loadRecentlyDeletedSavedAccountsFromSharedGroupIDs:(id)ds
{
  v27 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  mEMORY[0x1E695AC50] = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(dsCopy, "count")}];
  sharedGroupIdentifiersToRecentlyDeletedSavedAccounts = self->_sharedGroupIdentifiersToRecentlyDeletedSavedAccounts;
  self->_sharedGroupIdentifiersToRecentlyDeletedSavedAccounts = v5;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = dsCopy;
  v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v20 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v12 = [mEMORY[0x1E695AC50] safari_allRecentlyDeletedPasswordCredentialItemsInGroupWithID:v10];
        v13 = [(WBSSavedAccountStore *)self _loadSavedAccountsWithPasswordsFromKeychainData:v12 forGroupID:v10 withDictionaryForSavedAccountsWithPasswords:dictionary fromRecentlyDeleted:1];

        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        v15 = [(NSDictionary *)self->_groupIdentifiersToRecentlyDeletedPasskeysData objectForKeyedSubscript:v10];
        v16 = [(WBSSavedAccountStore *)self _loadSavedAccountsWithPasskeysFromPasskeyData:v15 forGroupID:v10 fromRecentlyDeleted:1 withDictionaryForSavedAccountsWithPasskeys:dictionary2];

        v17 = [(WBSSavedAccountStore *)self _mergeSavedAccountsWithPasskeys:v16 andSavedAccountsWithPasswords:v13 usingDictionaryForSavedAccountsWithPasswords:dictionary dictionaryForSavedAccountsWithPasskeys:dictionary2];
        v18 = [v17 mutableCopy];
        [(NSMutableDictionary *)self->_sharedGroupIdentifiersToRecentlyDeletedSavedAccounts setObject:v18 forKeyedSubscript:v10];

        ++v9;
      }

      while (v8 != v9);
      v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }
}

void __51__WBSSavedAccountStore__fetchAndFilterPasskeysData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v7 = WBS_LOG_CHANNEL_PREFIXKeychain(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = 136315650;
    v10 = "[WBSSavedAccountStore _fetchAndFilterPasskeysData]_block_invoke";
    v11 = 2048;
    v12 = [v5 count];
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_1B8447000, v8, OS_LOG_TYPE_DEFAULT, "%s: Loaded %zu passkey keychain records from group %{public}@", &v9, 0x20u);
  }
}

void __66__WBSSavedAccountStore__fetchAndFilterRecentlyDeletedPasskeysData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v7 = WBS_LOG_CHANNEL_PREFIXKeychain(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = 136315650;
    v10 = "[WBSSavedAccountStore _fetchAndFilterRecentlyDeletedPasskeysData]_block_invoke";
    v11 = 2048;
    v12 = [v5 count];
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_1B8447000, v8, OS_LOG_TYPE_DEFAULT, "%s: Loaded %zu recently deleted passkey keychain records from group %{public}@", &v9, 0x20u);
  }
}

- (id)_loadAndMergeSavedAccountsFromGroupID:(id)d intoAllSavedAccounts:(id)accounts
{
  dCopy = d;
  accountsCopy = accounts;
  v8 = [dCopy length];
  if (v8)
  {
    if (!self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts;
      self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts = dictionary;
    }

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [(NSMutableDictionary *)self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts setObject:dictionary2 forKeyedSubscript:dCopy];

    v12 = [(NSMutableDictionary *)self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:dCopy];
  }

  else
  {
    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts;
    self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = dictionary3;

    v12 = self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts;
  }

  v15 = v12;
  dictionary4 = [MEMORY[0x1E695DF90] dictionary];
  if (v8)
  {
    _allInternetPasswordEntriesFromPersonalKeychain = [(WBSSavedAccountStore *)self _allInternetPasswordEntriesFromGroupID:dCopy];
    v18 = [(WBSSavedAccountStore *)self _loadSavedAccountsWithPasswordsFromKeychainData:_allInternetPasswordEntriesFromPersonalKeychain forGroupID:dCopy withDictionaryForSavedAccountsWithPasswords:v15 fromRecentlyDeleted:0];
    v19 = [(NSDictionary *)self->_groupIdentifiersToPasskeysData objectForKeyedSubscript:dCopy];
  }

  else
  {
    _allInternetPasswordEntriesFromPersonalKeychain = [(WBSSavedAccountStore *)self _allInternetPasswordEntriesFromPersonalKeychain];
    v18 = [(WBSSavedAccountStore *)self _loadSavedAccountsWithPasswordsFromKeychainData:_allInternetPasswordEntriesFromPersonalKeychain forGroupID:dCopy withDictionaryForSavedAccountsWithPasswords:v15 fromRecentlyDeleted:0];
    v19 = self->_passkeysDataInPersonalKeychain;
  }

  v20 = v19;
  v21 = [(WBSSavedAccountStore *)self _loadSavedAccountsWithPasskeysFromPasskeyData:v19 forGroupID:dCopy fromRecentlyDeleted:0 withDictionaryForSavedAccountsWithPasskeys:dictionary4];
  v22 = [(WBSSavedAccountStore *)self _mergeSavedAccountsWithPasskeys:v21 andSavedAccountsWithPasswords:v18 usingDictionaryForSavedAccountsWithPasswords:v15 dictionaryForSavedAccountsWithPasskeys:dictionary4];
  v23 = [(WBSSavedAccountStore *)self _mergeLoadedSavedAccounts:v22 intoAllSavedAccounts:accountsCopy];

  return v23;
}

- (id)_loadSavedAccountsWithPasskeysFromPasskeyData:(id)data forGroupID:(id)d fromRecentlyDeleted:(BOOL)deleted withDictionaryForSavedAccountsWithPasskeys:(id)passkeys
{
  deletedCopy = deleted;
  v112 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  dCopy = d;
  passkeysCopy = passkeys;
  v95 = dCopy;
  v13 = [dCopy length];
  v14 = v13;
  v90 = deletedCopy;
  v91 = passkeysCopy;
  v87 = v13;
  if (deletedCopy)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v93 = dictionary;
    if (!v14)
    {
      objc_storeStrong(&self->_recentlyDeletedPersonalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys, dictionary);
    }
  }

  else
  {
    if (v13)
    {
      if (!self->_groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys)
      {
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys = self->_groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys;
        self->_groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys = dictionary2;
      }

      dictionary3 = [MEMORY[0x1E695DF90] dictionary];
      [(NSMutableDictionary *)self->_groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys setObject:dictionary3 forKeyedSubscript:dCopy];

      v19 = [(NSMutableDictionary *)self->_groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys objectForKeyedSubscript:dCopy];
    }

    else
    {
      dictionary4 = [MEMORY[0x1E695DF90] dictionary];
      personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys = self->_personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys;
      self->_personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys = dictionary4;

      v19 = self->_personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys;
    }

    v93 = v19;
  }

  array = [MEMORY[0x1E695DF70] array];
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v22 = dataCopy;
  v23 = [v22 countByEnumeratingWithState:&v103 objects:v111 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v104;
    selfCopy = self;
    v88 = v22;
    v96 = *v104;
    do
    {
      v26 = 0;
      v92 = v24;
      do
      {
        if (*v104 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v103 + 1) + 8 * v26);
        v28 = [v27 objectForKeyedSubscript:@"CredentialRelyingPartyID"];
        if ([(WBSSavedAccountStore *)self _shouldLoadCredentialRecordWithHostIntoAccountStore:v28])
        {
          v99 = [v27 objectForKeyedSubscript:@"CredentialUserVisibleName"];
          v29 = [v27 objectForKeyedSubscript:@"UserHandle"];
          v30 = [v27 objectForKeyedSubscript:@"CredentialID"];
          v31 = [v30 base64EncodedStringWithOptions:0];

          safari_highLevelDomainForPasswordManager = [(__CFString *)v28 safari_highLevelDomainForPasswordManager];
          v100 = safari_highLevelDomainForPasswordManager;
          v98 = v31;
          if (safari_highLevelDomainForPasswordManager)
          {
            if (v31)
            {
              v34 = [v27 safari_stringForKey:@"GroupID"];
              v35 = v34;
              v36 = &stru_1F3064D08;
              if (v34)
              {
                v36 = v34;
              }

              v37 = v36;

              v38 = [(__CFString *)v37 isEqualToString:v95];
              if (v38)
              {
                v94 = v37;
                v40 = [(NSMutableDictionary *)self->_highLevelDomainToLegacyPlatformAuthenticatorCredentials safari_mutableArrayForKey:v100];
                v41 = 0;
                if ([v40 count])
                {
                  v42 = 0;
                  do
                  {
                    v43 = [v40 objectAtIndexedSubscript:v42];
                    v44 = [v43 objectForKeyedSubscript:@"UserHandle"];
                    v45 = [v44 isEqualToString:v29];

                    if (v45)
                    {
                      if (v41)
                      {
                        [v41 addIndex:v42];
                      }

                      else
                      {
                        v41 = [MEMORY[0x1E696AD50] indexSetWithIndex:v42];
                      }

                      v46 = [v43 objectForKeyedSubscript:@"CredentialID"];
                      v47 = [v46 base64EncodedStringWithOptions:0];

                      v50 = WBS_LOG_CHANNEL_PREFIXPasswords(v48, v49);
                      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138543618;
                        v108 = v100;
                        v109 = 2114;
                        v110 = v47;
                        _os_log_impl(&dword_1B8447000, v50, OS_LOG_TYPE_DEFAULT, "Found passkey and legacy credential for %{public}@ with matching userHandle %{public}@. Removing legacy credential.", buf, 0x16u);
                      }

                      v51 = [[WBSPublicKeyCredentialIdentifier alloc] initWithCredentialID:v47 groupID:&stru_1F3064D08];
                      [(WBSSavedAccountStore *)selfCopy deletePasskeyWithIdentifierOnInternalQueue:v51];
                    }

                    ++v42;
                  }

                  while (v42 < [v40 count]);
                  v52 = v98;
                  if (v41)
                  {
                    [v40 removeObjectsAtIndexes:v41];
                  }

                  v53 = v91;
                  v54 = v99;
                }

                else
                {
                  v52 = v98;
                  v54 = v99;
                  v53 = v91;
                }

                v58 = [[WBSSavedAccount alloc] _initWithPasskeyRelyingPartyID:v28 user:v54 passkeyUserHandle:v29 passkeyCredentialID:v52];
                v59 = [v27 objectForKeyedSubscript:@"CreationDate"];
                [v58 setCreationDateForPasskey:v59];

                v60 = [v53 objectForKeyedSubscript:v100];

                if (!v60)
                {
                  dictionary5 = [MEMORY[0x1E695DF90] dictionary];
                  [v53 setObject:dictionary5 forKeyedSubscript:v100];
                }

                v62 = [v53 objectForKeyedSubscript:v100];
                v63 = [v62 objectForKeyedSubscript:v54];

                if (!v63)
                {
                  array2 = [MEMORY[0x1E695DF70] array];
                  v65 = [v53 objectForKeyedSubscript:v100];
                  [v65 setObject:array2 forKeyedSubscript:v99];
                }

                v66 = [v53 objectForKeyedSubscript:v100];
                v67 = [v66 objectForKeyedSubscript:v99];
                [v67 addObject:v58];

                v68 = [MEMORY[0x1E695AC58] safari_passkeySidecarProtectionSpaceForRelyingPartyIdentifier:v28];
                v69 = [[WBSPair alloc] initWithFirst:v29 second:v68];
                array3 = [(NSMutableDictionary *)v93 objectForKeyedSubscript:v69];
                if (!array3)
                {
                  array3 = [MEMORY[0x1E695DF70] array];
                  [(NSMutableDictionary *)v93 setObject:array3 forKeyedSubscript:v69];
                }

                [array3 addObject:v58];
                v71 = [v27 objectForKeyedSubscript:@"LastModifiedDate"];
                [v58 setLastModifiedDateForPasskey:v71];

                lastModifiedDateForPasskey = [v58 lastModifiedDateForPasskey];
                [v58 setLastUsedDateForPasskey:lastModifiedDateForPasskey];

                [v58 setSharedGroupID:v95];
                [v58 setIsRecentlyDeleted:v90];
                [array addObject:v58];

                self = selfCopy;
                v22 = v88;
                v24 = v92;
                v37 = v94;
              }

              else
              {
                v57 = WBS_LOG_CHANNEL_PREFIXPasswords(v38, v39);
                if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138543618;
                  v108 = v37;
                  v109 = 2114;
                  v110 = v95;
                  _os_log_fault_impl(&dword_1B8447000, v57, OS_LOG_TYPE_FAULT, "Given passkey with group %{public}@ does not match expected group %{public}@. Skipping.", buf, 0x16u);
                }
              }
            }

            else
            {
              v56 = WBS_LOG_CHANNEL_PREFIXPasswords(safari_highLevelDomainForPasswordManager, v33);
              if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
              {
                [WBSSavedAccountStore _loadSavedAccountsWithPasskeysFromPasskeyData:v102 forGroupID:v56 fromRecentlyDeleted:? withDictionaryForSavedAccountsWithPasskeys:?];
              }
            }
          }

          else
          {
            v55 = WBS_LOG_CHANNEL_PREFIXPasswords(0, v33);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              *buf = 138739971;
              v108 = v28;
              _os_log_error_impl(&dword_1B8447000, v55, OS_LOG_TYPE_ERROR, "Failed to create high level domain from passkey data relying party ID: %{sensitive}@", buf, 0xCu);
            }
          }

          v25 = v96;
        }

        ++v26;
      }

      while (v26 != v24);
      v24 = [v22 countByEnumeratingWithState:&v103 objects:v111 count:16];
    }

    while (v24);
  }

  array4 = [MEMORY[0x1E695DF70] array];
  if (v87)
  {
    v74 = [(WBSSavedAccountStore *)self _allSharedSidecarsForGroupID:v95 fromRecentlyDeleted:v90];
    v75 = v93;
    [(WBSSavedAccountStore *)self _matchSidecars:v74 toSavedAccountsWithPasskeysInDictionary:v93 unmatchedSidecars:array4];
    v76 = [(WBSSavedAccountStore *)self _allPersonalSidecarsForGroupID:v95 fromRecentlyDeleted:v90];
    [(WBSSavedAccountStore *)self _matchSidecars:v76 toSavedAccountsWithPasskeysInDictionary:v93 unmatchedSidecars:array4];
  }

  else
  {
    v74 = [(WBSSavedAccountStore *)self _allPersonalSidecarsFromPersonalKeychainFromRecentlyDeleted:v90];
    v75 = v93;
    [(WBSSavedAccountStore *)self _matchSidecars:v74 toSavedAccountsWithPasskeysInDictionary:v93 unmatchedSidecars:array4];
  }

  v79 = WBS_LOG_CHANNEL_PREFIXKeychain(v77, v78);
  v80 = os_log_type_enabled(v79, OS_LOG_TYPE_INFO);
  if (v80)
  {
    v82 = v79;
    v83 = [array4 count];
    *buf = 134217984;
    v108 = v83;
    _os_log_impl(&dword_1B8447000, v82, OS_LOG_TYPE_INFO, "%ld unmatched sidecars.", buf, 0xCu);
  }

  v84 = WBS_LOG_CHANNEL_PREFIXKeychain(v80, v81);
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
  {
    [WBSSavedAccountStore _loadSavedAccountsWithPasswordsFromKeychainData:forGroupID:withDictionaryForSavedAccountsWithPasswords:fromRecentlyDeleted:];
  }

  v85 = [array copy];

  return v85;
}

- (void)_matchSidecars:(id)sidecars toSavedAccountsWithPasskeysInDictionary:(id)dictionary unmatchedSidecars:(id)unmatchedSidecars
{
  v36 = *MEMORY[0x1E69E9840];
  sidecarsCopy = sidecars;
  dictionaryCopy = dictionary;
  unmatchedSidecarsCopy = unmatchedSidecars;
  obj = sidecarsCopy;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = [sidecarsCopy countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v14 = [WBSPair alloc];
        user = [v13 user];
        protectionSpace = [v13 protectionSpace];
        v17 = [(WBSPair *)v14 initWithFirst:user second:protectionSpace];

        v18 = [dictionaryCopy objectForKeyedSubscript:v17];
        v19 = v18;
        if (v18)
        {
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v27;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v27 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                [*(*(&v26 + 1) + 8 * j) _addPasskeySidecar:v13];
              }

              v21 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v21);
          }
        }

        else
        {
          [unmatchedSidecarsCopy addObject:v13];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }
}

- (id)_mergeSavedAccountsWithPasskeys:(id)passkeys andSavedAccountsWithPasswords:(id)passwords usingDictionaryForSavedAccountsWithPasswords:(id)withPasswords dictionaryForSavedAccountsWithPasskeys:(id)withPasskeys
{
  v81 = *MEMORY[0x1E69E9840];
  passkeysCopy = passkeys;
  withPasswordsCopy = withPasswords;
  withPasskeysCopy = withPasskeys;
  v51 = [passwords mutableCopy];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = passkeysCopy;
  v55 = [obj countByEnumeratingWithState:&v74 objects:v80 count:16];
  if (v55)
  {
    v52 = *v75;
    v10 = 0x1E695D000uLL;
    do
    {
      for (i = 0; i != v55; ++i)
      {
        if (*v75 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v74 + 1) + 8 * i);
        user = [v12 user];
        highLevelDomain = [v12 highLevelDomain];
        v15 = [withPasswordsCopy objectForKeyedSubscript:highLevelDomain];
        v16 = [v15 objectForKeyedSubscript:user];

        allValues = [v16 allValues];
        v18 = [withPasskeysCopy objectForKeyedSubscript:highLevelDomain];
        v19 = [v18 objectForKeyedSubscript:user];

        v63 = v19;
        v61 = [v19 count];
        if ([allValues count])
        {
          v58 = highLevelDomain;
          v59 = user;
          v60 = i;
          array = [*(v10 + 3952) array];
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v56 = allValues;
          v64 = allValues;
          v20 = [v64 countByEnumeratingWithState:&v70 objects:v79 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v71;
            while (2)
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v71 != v22)
                {
                  objc_enumerationMutation(v64);
                }

                v24 = *(*(&v70 + 1) + 8 * j);
                sites = [v24 sites];
                passkeyRelyingPartyID = [v12 passkeyRelyingPartyID];
                v27 = [sites containsObject:passkeyRelyingPartyID];

                if (v27)
                {
                  [array addObject:v24];
                  goto LABEL_17;
                }
              }

              v21 = [v64 countByEnumeratingWithState:&v70 objects:v79 count:16];
              if (v21)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
          v57 = v16;

          array2 = [*(v10 + 3952) array];
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v29 = v63;
          v30 = [v29 countByEnumeratingWithState:&v66 objects:v78 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v67;
            do
            {
              for (k = 0; k != v31; ++k)
              {
                if (*v67 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                v34 = *(*(&v66 + 1) + 8 * k);
                passkeyRelyingPartyID2 = [v12 passkeyRelyingPartyID];
                passkeyRelyingPartyID3 = [v34 passkeyRelyingPartyID];
                v37 = [passkeyRelyingPartyID2 isEqualToString:passkeyRelyingPartyID3];

                if (v37)
                {
                  [array2 addObject:v34];
                }
              }

              v31 = [v29 countByEnumeratingWithState:&v66 objects:v78 count:16];
            }

            while (v31);
          }

          if ([array count] == 1 && (v38 = objc_msgSend(array2, "count"), v39 = array, v38 == 1) || objc_msgSend(v64, "count") == 1 && (v39 = v64, v61 == 1))
          {
            firstObject = [v39 firstObject];
            v65 = 0;
            v16 = v57;
            highLevelDomain = v58;
            if ([firstObject _canMergeWithSavedAccount:v12 requiresDataCopying:&v65])
            {
              passkeyCredentialID = [v12 passkeyCredentialID];
              [firstObject setPasskeyCredentialID:passkeyCredentialID];

              passkeyUserHandle = [v12 passkeyUserHandle];
              [firstObject setPasskeyUserHandle:passkeyUserHandle];

              passkeyRelyingPartyID4 = [v12 passkeyRelyingPartyID];
              [firstObject setPasskeyRelyingPartyID:passkeyRelyingPartyID4];

              creationDateForPasskey = [v12 creationDateForPasskey];
              [firstObject setCreationDateForPasskey:creationDateForPasskey];

              lastModifiedDate = [v12 lastModifiedDate];
              [firstObject setLastModifiedDateForPasskey:lastModifiedDate];

              lastUsedDateForPasskey = [v12 lastUsedDateForPasskey];
              [firstObject setLastUsedDateForPasskey:lastUsedDateForPasskey];

              [firstObject _mergePasskeySidecarsFromSavedAccount:v12];
              user = v59;
              if (v65 == 1)
              {
                [(WBSSavedAccountStore *)self _writeSidecarDataForMergedSavedAccount:firstObject];
              }
            }

            else
            {
              [v51 addObject:v12];
              user = v59;
            }

            v10 = 0x1E695D000;
          }

          else
          {
            [v51 addObject:v12];
            v10 = 0x1E695D000;
            highLevelDomain = v58;
            user = v59;
            v16 = v57;
          }

          i = v60;
          allValues = v56;
        }

        else
        {
          [v51 addObject:v12];
        }
      }

      v55 = [obj countByEnumeratingWithState:&v74 objects:v80 count:16];
    }

    while (v55);
  }

  v47 = [v51 sortedArrayUsingSelector:sel_compare_];

  return v47;
}

- (id)_mergeLoadedSavedAccounts:(id)accounts intoAllSavedAccounts:(id)savedAccounts
{
  v56 = *MEMORY[0x1E69E9840];
  obj = accounts;
  savedAccountsCopy = savedAccounts;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v39 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v39)
  {
    v38 = *v46;
    *&v6 = 138740227;
    v35 = v6;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v46 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v45 + 1) + 8 * i);
        highLevelDomain = [v8 highLevelDomain];

        if (highLevelDomain)
        {
          v40 = i;
          highLevelDomain2 = [v8 highLevelDomain];
          v50 = highLevelDomain2;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];

          additionalSites = [v8 additionalSites];
          v15 = [additionalSites safari_mapObjectsUsingBlock:&__block_literal_global_251];
          v16 = [v13 arrayByAddingObjectsFromArray:v15];

          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v17 = v16;
          v18 = [v17 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v42;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v42 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v41 + 1) + 8 * j);
                dictionary = [(NSMutableDictionary *)self->_allSavedAccountsHighLevelDomainToUsernameToCredentialTypesToSavedAccounts objectForKeyedSubscript:v22];
                if (!dictionary)
                {
                  dictionary = [MEMORY[0x1E695DF90] dictionary];
                  [(NSMutableDictionary *)self->_allSavedAccountsHighLevelDomainToUsernameToCredentialTypesToSavedAccounts setObject:dictionary forKeyedSubscript:v22];
                }

                user = [v8 user];
                dictionary2 = [dictionary objectForKeyedSubscript:user];

                if (!dictionary2)
                {
                  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
                  user2 = [v8 user];
                  [dictionary setObject:dictionary2 forKeyedSubscript:user2];
                }

                v27 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v8, "credentialTypes")}];
                array = [dictionary2 objectForKeyedSubscript:v27];
                if (!array)
                {
                  array = [MEMORY[0x1E695DF70] array];
                  [dictionary2 setObject:array forKeyedSubscript:v27];
                }

                [array addObject:v8];
              }

              v19 = [v17 countByEnumeratingWithState:&v41 objects:v49 count:16];
            }

            while (v19);
          }

          [savedAccountsCopy addObject:v8];
          i = v40;
        }

        else
        {
          v29 = WBS_LOG_CHANNEL_PREFIXPasswords(v10, v11);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = v29;
            user3 = [v8 user];
            protectionSpaces = [v8 protectionSpaces];
            *buf = v35;
            v52 = user3;
            v53 = 2117;
            v54 = protectionSpaces;
            _os_log_error_impl(&dword_1B8447000, v30, OS_LOG_TYPE_ERROR, "Encountered saved account without high level domain with user: %{sensitive}@ protectionSpaces: %{sensitive}@", buf, 0x16u);
          }
        }
      }

      v39 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
    }

    while (v39);
  }

  v33 = [obj sortedArrayUsingSelector:sel_compare_];

  return v33;
}

- (void)_removeSavedAccount:(id)account fromCachedCollectionsForCredentialTypes:(int64_t)types
{
  accountCopy = account;
  v6 = [(NSArray *)self->_savedAccountsWithPasswords containsObject:?];
  if ((types & 1) != 0 && v6)
  {
    personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts;
    highLevelDomain = [accountCopy highLevelDomain];
    v9 = [(NSMutableDictionary *)personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:highLevelDomain];

    user = [accountCopy user];
    v11 = [v9 objectForKeyedSubscript:user];

    password = [accountCopy password];
    [v11 removeObjectForKey:password];

    v13 = [(NSArray *)self->_savedAccountsWithPasswords mutableCopy];
    [v13 removeObject:accountCopy];
    v14 = [v13 copy];
    savedAccountsWithPasswords = self->_savedAccountsWithPasswords;
    self->_savedAccountsWithPasswords = v14;
  }

  if ([(NSArray *)self->_savedAccounts containsObject:accountCopy])
  {
    credentialTypes = [accountCopy credentialTypes];
    if (credentialTypes == ([accountCopy credentialTypes] & types))
    {
      if ([accountCopy credentialTypes] == 4)
      {
        v17 = [(NSArray *)self->_savedAccountsWithSignInWithAppleRecords mutableCopy];
        [v17 removeObject:accountCopy];
        v18 = [v17 copy];
        savedAccountsWithSignInWithAppleRecords = self->_savedAccountsWithSignInWithAppleRecords;
        self->_savedAccountsWithSignInWithAppleRecords = v18;
      }

      v20 = [(NSArray *)self->_savedAccounts mutableCopy];
      [v20 removeObject:accountCopy];
      v21 = [v20 copy];
      savedAccounts = self->_savedAccounts;
      self->_savedAccounts = v21;
    }
  }
}

- (void)_addSavedAccountToRecentlyDeletedCachedCollections:(id)collections
{
  collectionsCopy = collections;
  [(NSMutableArray *)self->_allRecentlyDeletedSavedAccounts addObject:collectionsCopy];
  [(NSMutableArray *)self->_allRecentlyDeletedSavedAccounts sortUsingSelector:sel_compare_];
  sharedGroupID = [collectionsCopy sharedGroupID];
  if (sharedGroupID)
  {
    v5 = [(NSMutableDictionary *)self->_sharedGroupIdentifiersToRecentlyDeletedSavedAccounts objectForKeyedSubscript:sharedGroupID];
    [v5 addObject:collectionsCopy];
    [v5 sortUsingSelector:sel_compare_];
  }

  else
  {
    [(NSMutableArray *)self->_recentlyDeletedSavedAccountsInPersonalKeychain addObject:collectionsCopy];
    [(NSMutableArray *)self->_recentlyDeletedSavedAccountsInPersonalKeychain sortUsingSelector:sel_compare_];
  }
}

- (void)_removeSavedAccountFromRecentlyDeletedCachedCollections:(id)collections
{
  collectionsCopy = collections;
  [(NSMutableArray *)self->_allRecentlyDeletedSavedAccounts removeObject:collectionsCopy];
  sharedGroupID = [collectionsCopy sharedGroupID];
  if (sharedGroupID)
  {
    v5 = [(NSMutableDictionary *)self->_sharedGroupIdentifiersToRecentlyDeletedSavedAccounts objectForKeyedSubscript:sharedGroupID];
    [v5 removeObject:collectionsCopy];
  }

  else
  {
    [(NSMutableArray *)self->_recentlyDeletedSavedAccountsInPersonalKeychain removeObject:collectionsCopy];
  }
}

- (void)removeCredentialTypes:(int64_t)types forSavedAccount:(id)account completionHandler:(id)handler
{
  accountCopy = account;
  handlerCopy = handler;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__WBSSavedAccountStore_removeCredentialTypes_forSavedAccount_completionHandler___block_invoke;
  v13[3] = &unk_1E7CF4948;
  v13[4] = self;
  v14 = accountCopy;
  v15 = handlerCopy;
  typesCopy = types;
  v11 = handlerCopy;
  v12 = accountCopy;
  dispatch_async(queue, v13);
}

uint64_t __80__WBSSavedAccountStore_removeCredentialTypes_forSavedAccount_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _removeCredentialTypes:*(a1 + 56) forSavedAccount:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)_removeCredentialTypes:(int64_t)types forSavedAccount:(id)account
{
  accountCopy = account;
  if ([accountCopy isRecentlyDeleted])
  {
    [(WBSSavedAccountStore *)self _removeSavedAccountFromRecentlyDeletedCachedCollections:accountCopy];
  }

  else
  {
    [(WBSSavedAccountStore *)self _removeSavedAccount:accountCopy fromCachedCollectionsForCredentialTypes:types];
  }

  [accountCopy _deleteCredentialTypes:types];
}

- (void)removeSite:(id)site fromSavedAccountWithPassword:(id)password withCompletion:(id)completion
{
  siteCopy = site;
  passwordCopy = password;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__WBSSavedAccountStore_removeSite_fromSavedAccountWithPassword_withCompletion___block_invoke;
  v15[3] = &unk_1E7CF4970;
  v16 = passwordCopy;
  v17 = siteCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = siteCopy;
  v14 = passwordCopy;
  dispatch_async(queue, v15);
}

uint64_t __79__WBSSavedAccountStore_removeSite_fromSavedAccountWithPassword_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sites];
  if ([v2 count] == 1)
  {
    v3 = [*(a1 + 32) sites];
    v4 = [v3 firstObject];
    v5 = [v4 isEqualToString:*(a1 + 40)];

    if (v5)
    {
      [*(a1 + 48) _removeSavedAccount:*(a1 + 32) fromCachedCollectionsForCredentialTypes:1];
    }
  }

  else
  {
  }

  [*(a1 + 32) _deletePasswordCredentialsForSite:*(a1 + 40)];
  result = *(a1 + 56);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (BOOL)canChangeSavedAccount:(id)account toUser:(id)user password:(id)password
{
  accountCopy = account;
  userCopy = user;
  passwordCopy = password;
  user = [accountCopy user];
  v12 = [userCopy isEqualToString:user];

  password = [accountCopy password];
  if (v12 && ([passwordCopy isEqualToString:password] & 1) != 0)
  {
    v14 = 1;
  }

  else
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 1;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__WBSSavedAccountStore_canChangeSavedAccount_toUser_password___block_invoke;
    block[3] = &unk_1E7CF4998;
    v22 = &v23;
    v18 = accountCopy;
    selfCopy = self;
    v20 = userCopy;
    v21 = passwordCopy;
    dispatch_sync(queue, block);
    v14 = *(v24 + 24);

    _Block_object_dispose(&v23, 8);
  }

  return v14 & 1;
}

void __62__WBSSavedAccountStore_canChangeSavedAccount_toUser_password___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isSavedInPersonalKeychain])
  {
    *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 40) _canChangeSavedAccountInPersonalKeychain:*(a1 + 32) toUser:*(a1 + 48) password:*(a1 + 56)];
  }

  if ([*(a1 + 32) isSavedInSharedGroup])
  {
    v2 = *(*(a1 + 64) + 8);
    if (*(v2 + 24))
    {
      v4 = *(a1 + 32);
      v3 = *(a1 + 40);
      v5 = *(a1 + 48);
      v6 = *(a1 + 56);
      v7 = [v4 sharedGroupID];
      *(*(*(a1 + 64) + 8) + 24) = [v3 _canChangeSavedAccount:v4 toUser:v5 password:v6 forGroupID:v7];
    }

    else
    {
      *(v2 + 24) = 0;
    }
  }
}

- (BOOL)_canChangeSavedAccount:(id)account toUser:(id)user password:(id)password forGroupID:(id)d
{
  accountCopy = account;
  userCopy = user;
  passwordCopy = password;
  dCopy = d;
  if (dCopy)
  {
    highLevelDomain2 = [(NSMutableDictionary *)self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:dCopy];
    highLevelDomain = [accountCopy highLevelDomain];
    v16 = [highLevelDomain2 objectForKeyedSubscript:highLevelDomain];
  }

  else
  {
    personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts;
    highLevelDomain2 = [accountCopy highLevelDomain];
    v16 = [(NSMutableDictionary *)personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:highLevelDomain2];
  }

  v18 = [v16 objectForKeyedSubscript:userCopy];
  protectionSpaces = [accountCopy protectionSpaces];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 1;
  user = [accountCopy user];
  v21 = [userCopy isEqualToString:user];

  password = [accountCopy password];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __74__WBSSavedAccountStore__canChangeSavedAccount_toUser_password_forGroupID___block_invoke;
  v27[3] = &unk_1E7CF49C0;
  v32 = v21;
  v23 = password;
  v28 = v23;
  v24 = passwordCopy;
  v29 = v24;
  v25 = protectionSpaces;
  v30 = v25;
  v31 = &v33;
  [v18 enumerateKeysAndObjectsUsingBlock:v27];
  LOBYTE(user) = *(v34 + 24);

  _Block_object_dispose(&v33, 8);
  return user;
}

void __74__WBSSavedAccountStore__canChangeSavedAccount_toUser_password_forGroupID___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if ((*(a1 + 64) != 1 || ([v7 isEqualToString:*(a1 + 32)] & 1) == 0) && (objc_msgSend(v7, "isEqualToString:", *(a1 + 40)) & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = *(a1 + 48);
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if ([v8 _containsProtectionSpace:{*(*(&v14 + 1) + 8 * i), v14}])
          {
            *(*(*(a1 + 56) + 8) + 24) = 0;
            *a4 = 1;
            goto LABEL_14;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }
}

- (void)changeSavedAccount:(id)account toUser:(id)user password:(id)password
{
  accountCopy = account;
  userCopy = user;
  passwordCopy = password;
  user = [accountCopy user];
  v12 = [userCopy isEqualToString:user];
  password = [accountCopy password];
  v14 = [passwordCopy isEqualToString:password];
  v15 = v14;
  if (!v12 || (v14 & 1) == 0)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__WBSSavedAccountStore_changeSavedAccount_toUser_password___block_invoke;
    block[3] = &unk_1E7CF49E8;
    v24 = v12;
    v18 = accountCopy;
    selfCopy = self;
    v20 = userCopy;
    v21 = passwordCopy;
    v22 = user;
    v23 = password;
    v25 = v15;
    dispatch_sync(queue, block);
  }
}

uint64_t __59__WBSSavedAccountStore_changeSavedAccount_toUser_password___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) passkeyCredentialID];
  if (v2)
  {
    v3 = *(a1 + 80);

    if ((v3 & 1) == 0)
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v6 = [WBSPublicKeyCredentialIdentifier alloc];
      v7 = [*(a1 + 32) passkeyCredentialID];
      v8 = [*(a1 + 32) sharedGroupID];
      v9 = [(WBSPublicKeyCredentialIdentifier *)v6 initWithCredentialID:v7 groupID:v8];
      [v4 updateUserVisibleNameOnInternalQueue:v5 forPasskeyWithIdentifier:v9];
    }
  }

  [*(a1 + 32) _setUser:*(a1 + 48) password:*(a1 + 56)];
  if ([*(a1 + 32) isSavedInPersonalKeychain])
  {
    [*(a1 + 40) _updateSavedAccountsAndSavedAccountsWithPasswordsDictionary:*(*(a1 + 40) + 8) withChangeFromOldUser:*(a1 + 64) oldPassword:*(a1 + 72) forSavedAccountWithPassword:*(a1 + 32)];
  }

  if ([*(a1 + 32) isSavedInSharedGroup])
  {
    v10 = *(*(a1 + 40) + 24);
    v11 = [*(a1 + 32) sharedGroupID];
    v12 = [v10 objectForKeyedSubscript:v11];

    [*(a1 + 40) _updateSavedAccountsAndSavedAccountsWithPasswordsDictionary:v12 withChangeFromOldUser:*(a1 + 64) oldPassword:*(a1 + 72) forSavedAccountWithPassword:*(a1 + 32)];
  }

  if ((*(a1 + 81) & 1) == 0)
  {
    [*(a1 + 40) _saveSidecarObjectsOnInternalQueueForSavedAccountWithPassword:*(a1 + 32) withBlock:&__block_literal_global_255];
  }

  v13 = *(a1 + 40);

  return [v13 _performPostUpdateActionsOnInternalQueue];
}

void *__59__WBSSavedAccountStore_changeSavedAccount_toUser_password___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    return [a3 setHideWarningMarker:0];
  }

  return result;
}

- (BOOL)canChangeSavedAccountWithRequest:(id)request
{
  v48 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  savedAccount = [requestCopy savedAccount];
  if (([savedAccount hasValidWebsite] & 1) == 0)
  {
    customTitle = [requestCopy customTitle];
    safari_stringByTrimmingWhitespace = [customTitle safari_stringByTrimmingWhitespace];
    v8 = [safari_stringByTrimmingWhitespace length];

    if (!v8)
    {
      v26 = 0;
      goto LABEL_39;
    }
  }

  credentialTypes = [savedAccount credentialTypes];
  v10 = 0;
  if (credentialTypes <= 9)
  {
    if (((1 << credentialTypes) & 0x30A) != 0)
    {
      password = [requestCopy password];
      if (![password length])
      {
        v10 = 0;
        goto LABEL_10;
      }

      user = [requestCopy user];
      password2 = [requestCopy password];
      v10 = [(WBSSavedAccountStore *)self canChangeSavedAccount:savedAccount toUser:user password:password2];
      goto LABEL_7;
    }

    if (credentialTypes == 2)
    {
      password = [requestCopy password];
      v34 = [password length];
      user2 = [requestCopy user];
      user = user2;
      if (v34)
      {
        password2 = [requestCopy password];
        passkeyRelyingPartyID = [savedAccount passkeyRelyingPartyID];
        notesEntry = [requestCopy notesEntry];
        customTitle2 = [requestCopy customTitle];
        sharedGroupID = [savedAccount sharedGroupID];
        v10 = [(WBSSavedAccountStore *)self canSaveUser:user password:password2 forUserTypedSite:passkeyRelyingPartyID notes:notesEntry customTitle:customTitle2 groupID:sharedGroupID error:0];
      }

      else
      {
        if ([user2 length])
        {
          v10 = 1;
          goto LABEL_8;
        }

        password2 = [savedAccount user];
        v10 = [password2 length] == 0;
      }

LABEL_7:

LABEL_8:
LABEL_10:
    }
  }

  notesEntry2 = [requestCopy notesEntry];
  v15 = [notesEntry2 length];
  notesEntry3 = [savedAccount notesEntry];
  v17 = [notesEntry3 length];

  if (v17 <= 0x1000)
  {
    v18 = 4096;
  }

  else
  {
    v18 = v17;
  }

  customTitle3 = [requestCopy customTitle];
  v20 = [customTitle3 length];
  customTitle4 = [savedAccount customTitle];
  v22 = [customTitle4 length];

  if (v22 <= 0x80)
  {
    v23 = 128;
  }

  else
  {
    v23 = v22;
  }

  v25 = v20 <= v23 && v15 <= v18;
  v26 = v25 && v10;
  if ([requestCopy hasAdditionalSitesChange])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    additionalSites = [requestCopy additionalSites];
    v28 = [additionalSites countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v44;
      while (2)
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v44 != v30)
          {
            objc_enumerationMutation(additionalSites);
          }

          v32 = *(*(&v43 + 1) + 8 * i);
          v33 = objc_opt_class();
          v41 = 0;
          v42 = 0;
          LODWORD(v32) = [v33 getProtectionSpaceAndHighLevelDomainForUserTypedSite:v32 protectionSpace:&v42 highLevelDomain:&v41 mode:1];

          if (!v32)
          {
            v26 = 0;
            goto LABEL_34;
          }
        }

        v29 = [additionalSites countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }
    }

LABEL_34:
  }

LABEL_39:

  return v26;
}

- (void)changeSavedAccountWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if ([requestCopy hasChanges])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__WBSSavedAccountStore_changeSavedAccountWithRequest_completionHandler___block_invoke;
    block[3] = &unk_1E7CF1908;
    block[4] = self;
    v10 = requestCopy;
    v11 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

uint64_t __72__WBSSavedAccountStore_changeSavedAccountWithRequest_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _changeSavedAccountWithRequestOnInternalQueue:*(a1 + 40) performPostUpdateActions:1];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)changeSavedAccountsWithRequests:(id)requests completionHandler:(id)handler
{
  requestsCopy = requests;
  handlerCopy = handler;
  if ([requestsCopy safari_containsObjectPassingTest:&__block_literal_global_262])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__WBSSavedAccountStore_changeSavedAccountsWithRequests_completionHandler___block_invoke_2;
    block[3] = &unk_1E7CF1908;
    v10 = requestsCopy;
    selfCopy = self;
    v12 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

uint64_t __74__WBSSavedAccountStore_changeSavedAccountsWithRequests_completionHandler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
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

        [*(a1 + 40) _changeSavedAccountWithRequestOnInternalQueue:*(*(&v8 + 1) + 8 * v6++) performPostUpdateActions:{0, v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [*(a1 + 40) _performPostUpdateActionsOnInternalQueue];
  return (*(*(a1 + 48) + 16))();
}

- (void)_changeSavedAccountWithRequestOnInternalQueue:(id)queue performPostUpdateActions:(BOOL)actions
{
  actionsCopy = actions;
  v69 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  savedAccount = [queueCopy savedAccount];
  if (![queueCopy hasChanges])
  {
    goto LABEL_46;
  }

  v51 = actionsCopy;
  user = [queueCopy user];
  password = [queueCopy password];
  user2 = [savedAccount user];
  password2 = [savedAccount password];
  credentialTypes = [savedAccount credentialTypes];
  hasPasswordChange = [queueCopy hasPasswordChange];
  shouldClearHistory = [queueCopy shouldClearHistory];
  v53 = user;
  if (([queueCopy hasUserChange] & 1) != 0 || hasPasswordChange)
  {
    passkeyCredentialID = [savedAccount passkeyCredentialID];
    if (passkeyCredentialID)
    {
      v13 = passkeyCredentialID;
      hasUserChange = [queueCopy hasUserChange];

      if (hasUserChange)
      {
        v15 = [WBSPublicKeyCredentialIdentifier alloc];
        passkeyCredentialID2 = [savedAccount passkeyCredentialID];
        sharedGroupID = [savedAccount sharedGroupID];
        v18 = [(WBSPublicKeyCredentialIdentifier *)v15 initWithCredentialID:passkeyCredentialID2 groupID:sharedGroupID];
        [(WBSSavedAccountStore *)self updateUserVisibleNameOnInternalQueue:user forPasskeyWithIdentifier:v18];
      }
    }

    [savedAccount _setUser:user password:password];
    if (hasPasswordChange)
    {
      v19 = +[WBSGeneratedPasswordStore sharedStore];
      [v19 removeGeneratedPasswordMatchingSavedAccount:savedAccount];
    }
  }

  v50 = password;
  sites = [queueCopy sites];

  if (sites)
  {
    v21 = MEMORY[0x1E695DFA8];
    sites2 = [savedAccount sites];
    v23 = [v21 setWithArray:sites2];

    v24 = MEMORY[0x1E695DFD8];
    sites3 = [queueCopy sites];
    v26 = [v24 setWithArray:sites3];
    [v23 minusSet:v26];

    allObjects = [v23 allObjects];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v28 = [allObjects countByEnumeratingWithState:&v64 objects:v68 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v65;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v65 != v30)
          {
            objc_enumerationMutation(allObjects);
          }

          [savedAccount _deletePasswordCredentialsForSite:*(*(&v64 + 1) + 8 * i)];
        }

        v29 = [allObjects countByEnumeratingWithState:&v64 objects:v68 count:16];
      }

      while (v29);
    }
  }

  if (credentialTypes)
  {
    if ([savedAccount isSavedInPersonalKeychain])
    {
      [(WBSSavedAccountStore *)self _updateSavedAccountsAndSavedAccountsWithPasswordsDictionary:self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts withChangeFromOldUser:user2 oldPassword:password2 forSavedAccountWithPassword:savedAccount];
    }

    if ([savedAccount isSavedInSharedGroup])
    {
      groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts;
      sharedGroupID2 = [savedAccount sharedGroupID];
      v34 = [(NSMutableDictionary *)groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:sharedGroupID2];

      [(WBSSavedAccountStore *)self _updateSavedAccountsAndSavedAccountsWithPasswordsDictionary:v34 withChangeFromOldUser:user2 oldPassword:password2 forSavedAccountWithPassword:savedAccount];
    }
  }

  hasTOTPGeneratorChange = [queueCopy hasTOTPGeneratorChange];
  hasNotesEntryChange = [queueCopy hasNotesEntryChange];
  hasCustomTitleChange = [queueCopy hasCustomTitleChange];
  hasAdditionalSitesChange = [queueCopy hasAdditionalSitesChange];
  v39 = hasAdditionalSitesChange;
  if ((hasTOTPGeneratorChange & 1) != 0 || (hasNotesEntryChange & 1) != 0 || (hasPasswordChange & 1) != 0 || (hasCustomTitleChange & 1) != 0 || (shouldClearHistory & 1) != 0 || hasAdditionalSitesChange)
  {
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    v41 = [safari_browserDefaults valueForKey:@"safariUseLegacySidecarModificationPath"];

    if (!v41)
    {
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __95__WBSSavedAccountStore__changeSavedAccountWithRequestOnInternalQueue_performPostUpdateActions___block_invoke;
      v56[3] = &unk_1E7CF4A30;
      v58 = hasTOTPGeneratorChange;
      v57 = queueCopy;
      v59 = hasNotesEntryChange;
      v60 = hasCustomTitleChange;
      v61 = hasPasswordChange;
      v62 = v39;
      v63 = shouldClearHistory;
      [(WBSSavedAccountStore *)self _saveSidecarObjectsOnInternalQueueForSavedAccount:savedAccount withBlock:v56];

      if (!hasCustomTitleChange)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    [(WBSSavedAccountStore *)self _performLegacySidecarModificationWithChangeRequest:queueCopy toSavedAccount:savedAccount];
    if (hasCustomTitleChange)
    {
LABEL_31:
      customTitle = [queueCopy customTitle];
      [savedAccount setCustomTitle:customTitle performSidecarUpdate:0];
    }
  }

LABEL_32:
  if ([queueCopy isAddingPasswordToAccountWithPasskey])
  {
    passkeyRelyingPartyID = [savedAccount passkeyRelyingPartyID];
    sharedGroupID3 = [savedAccount sharedGroupID];
    v45 = [(WBSSavedAccountStore *)self _saveAccountOnInternalQueueWithUser:v53 password:v50 forUserTypedSite:passkeyRelyingPartyID groupID:sharedGroupID3];

    if (v45)
    {
      [(WBSSavedAccountStore *)self _mergeSavedAccountWithPassword:v45 toSavedAccountWithPasskey:savedAccount];
    }

    else
    {
      v48 = WBS_LOG_CHANNEL_PREFIXPasswords(v46, v47);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        [WBSSavedAccountStore _changeSavedAccountWithRequestOnInternalQueue:performPostUpdateActions:];
      }
    }
  }

  if (hasPasswordChange && +[WBSFeatureAvailability isSavedAccountHistoryEnabled])
  {
    v49 = [[WBSSavedAccountPasswordHistoryItem alloc] initWithPassword:v50 oldPassword:password2];
    [(WBSSavedAccountStore *)self _addAccountHistoryItemOnInternalQueue:v49 toSavedAccount:savedAccount completionHandler:&__block_literal_global_272];
  }

  if (v51)
  {
    [(WBSSavedAccountStore *)self _performPostUpdateActionsOnInternalQueue];
  }

LABEL_46:
}

void __95__WBSSavedAccountStore__changeSavedAccountWithRequestOnInternalQueue_performPostUpdateActions___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = a3;
  if (*(a1 + 40) == 1)
  {
    v5 = [*(a1 + 32) totpGenerator];
    [v20 setTotpGenerator:v5];
  }

  if (*(a1 + 41) == 1)
  {
    v6 = [*(a1 + 32) notesEntry];
    [v20 setNotesEntry:v6];
  }

  if (*(a1 + 42) == 1)
  {
    v7 = [*(a1 + 32) customTitle];
    [v20 setCustomTitle:v7];
  }

  if (!a2 && (*(a1 + 43) & 1) != 0)
  {
    [v20 setHideWarningMarker:0];
  }

  if (*(a1 + 44) == 1)
  {
    v8 = objc_alloc(MEMORY[0x1E695DF70]);
    v9 = [*(a1 + 32) additionalSites];
    v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = [*(a1 + 32) additionalSites];
    v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [v20 additionalSites];
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __95__WBSSavedAccountStore__changeSavedAccountWithRequestOnInternalQueue_performPostUpdateActions___block_invoke_2;
          v21[3] = &unk_1E7CF4220;
          v21[4] = v15;
          v17 = [v16 safari_firstObjectPassingTest:v21];

          if (v17)
          {
            [v10 addObject:v17];
          }

          else
          {
            v18 = [[WBSSavedAccountAdditionalSite alloc] initWithSite:v15];
            [v10 addObject:v18];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    [v20 setAdditionalSites:v10];
  }

  if (*(a1 + 45) == 1)
  {
    [v20 setHistoryItems:MEMORY[0x1E695E0F0]];
  }
}

uint64_t __95__WBSSavedAccountStore__changeSavedAccountWithRequestOnInternalQueue_performPostUpdateActions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 site];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_performPostUpdateActionsOnInternalQueue
{
  v3 = [(NSArray *)self->_savedAccounts sortedArrayUsingSelector:sel_compare_];
  savedAccounts = self->_savedAccounts;
  self->_savedAccounts = v3;

  v5 = [(NSArray *)self->_savedAccountsWithPasswords sortedArrayUsingSelector:sel_compare_];
  savedAccountsWithPasswords = self->_savedAccountsWithPasswords;
  self->_savedAccountsWithPasswords = v5;

  v7 = +[WBSKeychainSyncingMonitor sharedMonitor];
  keychainSyncSettingValue = [v7 keychainSyncSettingValue];

  if (keychainSyncSettingValue == 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__WBSSavedAccountStore__performPostUpdateActionsOnInternalQueue__block_invoke;
    block[3] = &unk_1E7CF16E0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_performLegacySidecarModificationWithChangeRequest:(id)request toSavedAccount:(id)account
{
  requestCopy = request;
  accountCopy = account;
  if ([requestCopy hasTOTPGeneratorChange])
  {
    totpGenerators = [accountCopy totpGenerators];
    firstObject = [totpGenerators firstObject];
    v10 = firstObject != 0;
  }

  else
  {
    v10 = 0;
  }

  if ([requestCopy hasNotesEntryChange])
  {
    notesEntry = [accountCopy notesEntry];
    v12 = notesEntry != 0;
  }

  else
  {
    v12 = 0;
  }

  if ([requestCopy hasCustomTitleChange])
  {
    customTitle = [accountCopy customTitle];
    v14 = customTitle != 0;
  }

  else
  {
    v14 = 0;
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __90__WBSSavedAccountStore__performLegacySidecarModificationWithChangeRequest_toSavedAccount___block_invoke;
  v33[3] = &unk_1E7CF4A58;
  v36 = v10;
  v37 = v12;
  v38 = v14;
  v15 = accountCopy;
  v34 = v15;
  v16 = requestCopy;
  v35 = v16;
  [(WBSSavedAccountStore *)self _saveSidecarObjectsOnInternalQueueForSavedAccount:v15 withBlock:v33];
  if ([v16 hasTOTPGeneratorChange])
  {
    totpGenerator = [v16 totpGenerator];
    v18 = totpGenerator != 0;
  }

  else
  {
    v18 = 0;
  }

  if ([v16 hasNotesEntryChange])
  {
    notesEntry2 = [v16 notesEntry];
    v20 = [notesEntry2 length] != 0;
  }

  else
  {
    v20 = 0;
  }

  if ([v16 hasCustomTitleChange])
  {
    customTitle2 = [v16 customTitle];
    if ([customTitle2 length])
    {
      customTitle3 = [v16 customTitle];
      userVisibleDomain = [v15 userVisibleDomain];
      v24 = WBSIsEqual(customTitle3, userVisibleDomain) ^ 1;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __90__WBSSavedAccountStore__performLegacySidecarModificationWithChangeRequest_toSavedAccount___block_invoke_2;
  v27[3] = &unk_1E7CF4A58;
  v30 = v18;
  v31 = v20;
  v32 = v24;
  v28 = v16;
  v29 = v15;
  v25 = v15;
  v26 = v16;
  [(WBSSavedAccountStore *)self _saveSidecarObjectsOnInternalQueueForSavedAccount:v25 withBlock:v27];
}

void __90__WBSSavedAccountStore__performLegacySidecarModificationWithChangeRequest_toSavedAccount___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (*(a1 + 48) == 1)
  {
    [v6 setTotpGenerator:0];
  }

  if (*(a1 + 49) == 1)
  {
    [v6 setNotesEntry:0];
  }

  if (*(a1 + 50) == 1)
  {
    [*(a1 + 32) setCustomTitle:0 performSidecarUpdate:0];
  }

  v5 = [*(a1 + 40) hasPasswordChange];
  if (!a2 && v5)
  {
    [v6 setHideWarningMarker:0];
  }
}

void __90__WBSSavedAccountStore__performLegacySidecarModificationWithChangeRequest_toSavedAccount___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if (*(a1 + 48) == 1)
  {
    v4 = [*(a1 + 32) totpGenerator];
    [v8 setTotpGenerator:v4];
  }

  if (*(a1 + 49) == 1)
  {
    v5 = [*(a1 + 32) notesEntry];
    [v8 setNotesEntry:v5];
  }

  if (*(a1 + 50) == 1)
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) customTitle];
    [v6 setCustomTitle:v7 performSidecarUpdate:0];
  }
}

- (void)_updateSavedAccountsAndSavedAccountsWithPasswordsDictionary:(id)dictionary withChangeFromOldUser:(id)user oldPassword:(id)password forSavedAccountWithPassword:(id)withPassword
{
  userCopy = user;
  passwordCopy = password;
  withPasswordCopy = withPassword;
  dictionaryCopy = dictionary;
  highLevelDomain = [withPasswordCopy highLevelDomain];
  v14 = [dictionaryCopy objectForKeyedSubscript:highLevelDomain];

  dictionary = [v14 objectForKeyedSubscript:userCopy];
  user = [withPasswordCopy user];
  password = [withPasswordCopy password];
  user2 = [withPasswordCopy user];
  v19 = [userCopy isEqualToString:user2];

  if ((v19 & 1) == 0)
  {
    v20 = [v14 objectForKeyedSubscript:userCopy];

    [v20 removeObjectForKey:passwordCopy];
    if (![v20 count])
    {
      [v14 removeObjectForKey:userCopy];
    }

    dictionary = [v14 objectForKeyedSubscript:user];

    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [v14 setObject:dictionary forKeyedSubscript:user];
    }
  }

  v21 = [dictionary objectForKeyedSubscript:password];
  if (v21)
  {
    [withPasswordCopy _adoptSitesFromSavedAccount:v21];
    v22 = [(NSArray *)self->_savedAccountsWithPasswords mutableCopy];
    [v22 removeObject:v21];
    [v22 addObject:withPasswordCopy];
    objc_storeStrong(&self->_savedAccountsWithPasswords, v22);
    if ([(NSArray *)self->_savedAccounts containsObject:v21])
    {
      v23 = [(NSArray *)self->_savedAccounts mutableCopy];
      [(NSArray *)v23 removeObject:v21];
      [(NSArray *)v23 addObject:withPasswordCopy];
      savedAccounts = self->_savedAccounts;
      self->_savedAccounts = v23;
    }
  }

  else
  {
    [dictionary setObject:withPasswordCopy forKeyedSubscript:password];
  }
}

+ (id)protectionSpaceForNewStandalonePassword
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v3 = objc_alloc(MEMORY[0x1E695AC58]);
  uUIDString = [uUID UUIDString];
  v5 = [v3 initWithHost:uUIDString port:0 protocol:@"https" realm:0 authenticationMethod:*MEMORY[0x1E695AB50]];

  return v5;
}

+ (BOOL)getProtectionSpaceAndHighLevelDomainForUserTypedSite:(id)site protectionSpace:(id *)space highLevelDomain:(id *)domain mode:(int64_t)mode
{
  siteCopy = site;
  safari_bestURLForUserTypedString = [siteCopy safari_bestURLForUserTypedString];
  if (safari_bestURLForUserTypedString)
  {
    v11 = [MEMORY[0x1E695AC58] safari_HTMLFormProtectionSpaceForURL:safari_bestURLForUserTypedString];
    protocol = [v11 protocol];
    if ([protocol isEqualToString:*MEMORY[0x1E695AB98]])
    {
      safari_stringByTrimmingWhitespace = [siteCopy safari_stringByTrimmingWhitespace];
      v14 = [safari_stringByTrimmingWhitespace safari_hasCaseInsensitivePrefix:@"http:"];

      if (v14)
      {
        goto LABEL_6;
      }

      v29 = objc_alloc(MEMORY[0x1E695AC58]);
      protocol = [v11 host];
      port = [v11 port];
      v15 = *MEMORY[0x1E695ABA0];
      realm = [v11 realm];
      authenticationMethod = [v11 authenticationMethod];
      v18 = [v29 initWithHost:protocol port:port protocol:v15 realm:realm authenticationMethod:authenticationMethod];

      v11 = v18;
    }

LABEL_6:
    if (space)
    {
      v19 = v11;
      *space = v11;
    }

    host = [v11 host];
    v21 = [host safari_isCaseInsensitiveEqualToString:@"localhost"];

    if (v21)
    {
      v22 = @"localhost";
      if (domain)
      {
        *domain = @"localhost";
      }

      v23 = 1;
      goto LABEL_20;
    }

    if (mode == 1)
    {
      host2 = [v11 host];
      safari_highLevelDomainForPasswordManager = [host2 safari_highLevelDomainForPasswordManager];
    }

    else
    {
      if (mode)
      {
        v22 = 0;
        if (!domain)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      host2 = [v11 host];
      safari_highLevelDomainForPasswordManager = [host2 safari_highLevelDomainForUserTypedStringWhenAddingPasswordInPasswordManager];
    }

    v22 = safari_highLevelDomainForPasswordManager;

    if (!domain)
    {
LABEL_19:
      v23 = v22 != 0;
LABEL_20:

      goto LABEL_21;
    }

LABEL_18:
    v26 = v22;
    *domain = v22;
    goto LABEL_19;
  }

  v23 = 0;
LABEL_21:

  return v23;
}

- (BOOL)canSaveUser:(id)user password:(id)password forUserTypedSite:(id)site notes:(id)notes customTitle:(id)title groupID:(id)d error:(id *)error
{
  userCopy = user;
  passwordCopy = password;
  siteCopy = site;
  notesCopy = notes;
  titleCopy = title;
  dCopy = d;
  if ([passwordCopy length])
  {
    if ([siteCopy length])
    {
      v26 = userCopy;
      v27 = 0;
      v28 = 0;
      v21 = [objc_opt_class() getProtectionSpaceAndHighLevelDomainForUserTypedSite:siteCopy protectionSpace:&v28 highLevelDomain:&v27];
      v22 = v28;
      v23 = v27;
      if (v21)
      {
        [titleCopy length];
        userCopy = v26;
        v24 = [(WBSSavedAccountStore *)self canSaveUser:v26 password:passwordCopy forProtectionSpace:v22 highLevelDomain:v23 notes:notesCopy customTitle:titleCopy groupID:dCopy error:error];
      }

      else
      {
        if (error)
        {
          [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"com.apple.AuthenticationServices.SaveUserErrorDomain" code:1 privacyPreservingDescription:@"userTypedSite does not have a valid format."];
          *error = v24 = 0;
        }

        else
        {
          v24 = 0;
        }

        userCopy = v26;
      }
    }

    else if ([titleCopy length])
    {
      v23 = 0;
      v22 = 0;
      v24 = 1;
    }

    else if (error)
    {
      [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"com.apple.AuthenticationServices.SaveUserErrorDomain" code:4 privacyPreservingDescription:@"Must provide either a website or a custom title"];
      v23 = 0;
      v22 = 0;
      *error = v24 = 0;
    }

    else
    {
      v23 = 0;
      v22 = 0;
      v24 = 0;
    }
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"com.apple.AuthenticationServices.SaveUserErrorDomain" code:4 privacyPreservingDescription:@"Account details provided are incomplete."];
    *error = v24 = 0;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)saveUser:(id)user password:(id)password forUserTypedSite:(id)site groupID:(id)d completionHandler:(id)handler
{
  userCopy = user;
  passwordCopy = password;
  siteCopy = site;
  dCopy = d;
  handlerCopy = handler;
  queue = self->_queue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __85__WBSSavedAccountStore_saveUser_password_forUserTypedSite_groupID_completionHandler___block_invoke;
  v23[3] = &unk_1E7CF4A80;
  v23[4] = self;
  v24 = userCopy;
  v25 = passwordCopy;
  v26 = siteCopy;
  v27 = dCopy;
  v28 = handlerCopy;
  v18 = dCopy;
  v19 = siteCopy;
  v20 = passwordCopy;
  v21 = userCopy;
  v22 = handlerCopy;
  dispatch_async(queue, v23);
}

void __85__WBSSavedAccountStore_saveUser_password_forUserTypedSite_groupID_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = [*(a1 + 32) _saveAccountOnInternalQueueWithUser:*(a1 + 40) password:*(a1 + 48) forUserTypedSite:*(a1 + 56) groupID:*(a1 + 64)];
  (*(v1 + 16))(v1, v2);
}

- (id)_saveAccountOnInternalQueueWithUser:(id)user password:(id)password forUserTypedSite:(id)site groupID:(id)d
{
  userCopy = user;
  passwordCopy = password;
  siteCopy = site;
  dCopy = d;
  v14 = [siteCopy length];
  v15 = objc_opt_class();
  if (!v14)
  {
    protectionSpaceForNewStandalonePassword = [v15 protectionSpaceForNewStandalonePassword];
    host = [protectionSpaceForNewStandalonePassword host];
    goto LABEL_6;
  }

  v23 = 0;
  v24 = 0;
  v16 = [v15 getProtectionSpaceAndHighLevelDomainForUserTypedSite:siteCopy protectionSpace:&v24 highLevelDomain:&v23];
  protectionSpaceForNewStandalonePassword = v24;
  host = v23;
  v19 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:siteCopy];

  if (v19)
  {
    v20 = siteCopy;

    host = v20;
LABEL_6:
    v21 = [(WBSSavedAccountStore *)self _saveAccountOnInternalQueueWithUser:userCopy password:passwordCopy protectionSpace:protectionSpaceForNewStandalonePassword highLevelDomain:host groupID:dCopy];
    goto LABEL_7;
  }

  if (v16)
  {
    goto LABEL_6;
  }

  v21 = 0;
LABEL_7:

  return v21;
}

- (void)saveUser:(id)user password:(id)password forUserTypedSite:(id)site notesEntry:(id)entry groupID:(id)d completionHandler:(id)handler
{
  entryCopy = entry;
  handlerCopy = handler;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96__WBSSavedAccountStore_saveUser_password_forUserTypedSite_notesEntry_groupID_completionHandler___block_invoke;
  v18[3] = &unk_1E7CF4AA8;
  v18[4] = self;
  v19 = entryCopy;
  v20 = handlerCopy;
  v16 = handlerCopy;
  v17 = entryCopy;
  [(WBSSavedAccountStore *)self saveUser:user password:password forUserTypedSite:site groupID:d completionHandler:v18];
}

void __96__WBSSavedAccountStore_saveUser_password_forUserTypedSite_notesEntry_groupID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __96__WBSSavedAccountStore_saveUser_password_forUserTypedSite_notesEntry_groupID_completionHandler___block_invoke_2;
  v8[3] = &unk_1E7CF1888;
  v6 = *(a1 + 48);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v4 saveNotesEntry:v5 forSavedAccount:v7 completionHandler:v8];
}

- (void)saveUser:(id)user password:(id)password forUserTypedSite:(id)site customTitle:(id)title notesEntry:(id)entry groupID:(id)d completionHandler:(id)handler
{
  titleCopy = title;
  entryCopy = entry;
  handlerCopy = handler;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __108__WBSSavedAccountStore_saveUser_password_forUserTypedSite_customTitle_notesEntry_groupID_completionHandler___block_invoke;
  v21[3] = &unk_1E7CF4AD0;
  v21[4] = self;
  v22 = titleCopy;
  v23 = entryCopy;
  v24 = handlerCopy;
  v18 = handlerCopy;
  v19 = entryCopy;
  v20 = titleCopy;
  [(WBSSavedAccountStore *)self saveUser:user password:password forUserTypedSite:site groupID:d completionHandler:v21];
}

void __108__WBSSavedAccountStore_saveUser_password_forUserTypedSite_customTitle_notesEntry_groupID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) saveCustomTitle:*(a1 + 40) forSavedAccount:v3 completionHandler:&__block_literal_global_296];
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __108__WBSSavedAccountStore_saveUser_password_forUserTypedSite_customTitle_notesEntry_groupID_completionHandler___block_invoke_3;
  v8[3] = &unk_1E7CF1888;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v4 saveNotesEntry:v5 forSavedAccount:v7 completionHandler:v8];
}

- (BOOL)canSaveUser:(id)user password:(id)password forProtectionSpace:(id)space highLevelDomain:(id)domain notes:(id)notes customTitle:(id)title groupID:(id)d error:(id *)self0
{
  userCopy = user;
  passwordCopy = password;
  spaceCopy = space;
  domainCopy = domain;
  notesCopy = notes;
  titleCopy = title;
  dCopy = d;
  if (userCopy && (v23 = [passwordCopy length], spaceCopy) && v23 && objc_msgSend(domainCopy, "length"))
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__16;
    v41 = __Block_byref_object_dispose__16;
    v42 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __112__WBSSavedAccountStore_canSaveUser_password_forProtectionSpace_highLevelDomain_notes_customTitle_groupID_error___block_invoke;
    block[3] = &unk_1E7CF4B20;
    block[4] = self;
    v29 = dCopy;
    v35 = &v37;
    v36 = &v43;
    v30 = domainCopy;
    v31 = userCopy;
    v32 = spaceCopy;
    v33 = passwordCopy;
    v34 = notesCopy;
    dispatch_sync(queue, block);
    if (error)
    {
      v24 = v38[5];
      if (v24)
      {
        *error = v24;
      }
    }

    v25 = *(v44 + 24);

    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v43, 8);
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"com.apple.AuthenticationServices.SaveUserErrorDomain" code:4 privacyPreservingDescription:@"Account details provided are incomplete."];
    *error = v25 = 0;
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

void __112__WBSSavedAccountStore_canSaveUser_password_forProtectionSpace_highLevelDomain_notes_customTitle_groupID_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureDomainsToUsersExists];
  v2 = [*(a1 + 40) length];
  v3 = *(a1 + 32);
  if (!v2)
  {
    v7 = [*(v3 + 8) objectForKeyedSubscript:*(a1 + 48)];
    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v4 = [*(v3 + 24) objectForKeyedSubscript:*(a1 + 40)];
  if (v4)
  {
    v6 = v4;
    v7 = [v4 objectForKeyedSubscript:*(a1 + 48)];

    if (v7)
    {
LABEL_4:
      v8 = [v7 objectForKeyedSubscript:*(a1 + 56)];
      *(*(*(a1 + 96) + 8) + 24) = 1;
      if (v8)
      {
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __112__WBSSavedAccountStore_canSaveUser_password_forProtectionSpace_highLevelDomain_notes_customTitle_groupID_error___block_invoke_300;
        v13[3] = &unk_1E7CF4AF8;
        v14 = *(a1 + 64);
        v18 = *(a1 + 88);
        v15 = *(a1 + 72);
        v16 = *(a1 + 48);
        v17 = *(a1 + 80);
        [v8 enumerateKeysAndObjectsUsingBlock:v13];
      }

      return;
    }

LABEL_8:
    *(*(*(a1 + 96) + 8) + 24) = 1;
    return;
  }

  v9 = WBS_LOG_CHANNEL_PREFIXPasswords(0, v5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __112__WBSSavedAccountStore_canSaveUser_password_forProtectionSpace_highLevelDomain_notes_customTitle_groupID_error___block_invoke_cold_1();
  }

  v10 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"com.apple.AuthenticationServices.SaveUserErrorDomain" code:5 privacyPreservingDescription:@"Adding password to unknown group."];
  v11 = *(*(a1 + 88) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  *(*(*(a1 + 96) + 8) + 24) = 0;
}

void __112__WBSSavedAccountStore_canSaveUser_password_forProtectionSpace_highLevelDomain_notes_customTitle_groupID_error___block_invoke_300(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v18 = a3;
  if ([v18 _containsProtectionSpace:*(a1 + 32)])
  {
    v6 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"com.apple.AuthenticationServices.SaveUserErrorDomain" code:2 privacyPreservingDescription:@"Account details provided already exist."];
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *(*(*(a1 + 72) + 8) + 24) = 0;
    *a4 = 1;
  }

  v9 = [v18 password];
  v10 = [v9 isEqualToString:*(a1 + 40)];

  v11 = v18;
  if (v10)
  {
    v12 = [v18 notesEntry];
    v13 = [v18 highLevelDomain];
    if ([v13 isEqualToString:*(a1 + 48)] && objc_msgSend(*(a1 + 56), "length") && objc_msgSend(v12, "length"))
    {
      v14 = [v12 isEqualToString:*(a1 + 56)];

      if ((v14 & 1) == 0)
      {
        v15 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"com.apple.AuthenticationServices.SaveUserErrorDomain" code:3 privacyPreservingDescription:{@"An account with the same username/password of this highLevelDomain exists, with different notes."}];
        v16 = *(*(a1 + 64) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;

        *(*(*(a1 + 72) + 8) + 24) = 0;
        *a4 = 1;
      }
    }

    else
    {
    }

    v11 = v18;
  }
}

- (id)saveUser:(id)user password:(id)password forProtectionSpace:(id)space highLevelDomain:(id)domain groupID:(id)d
{
  userCopy = user;
  passwordCopy = password;
  spaceCopy = space;
  domainCopy = domain;
  dCopy = d;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__16;
  v36 = __Block_byref_object_dispose__16;
  v37 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__WBSSavedAccountStore_saveUser_password_forProtectionSpace_highLevelDomain_groupID___block_invoke;
  block[3] = &unk_1E7CF4B48;
  v30 = dCopy;
  v31 = &v32;
  block[4] = self;
  v26 = userCopy;
  v27 = passwordCopy;
  v28 = spaceCopy;
  v29 = domainCopy;
  v18 = dCopy;
  v19 = domainCopy;
  v20 = spaceCopy;
  v21 = passwordCopy;
  v22 = userCopy;
  dispatch_sync(queue, block);
  v23 = v33[5];

  _Block_object_dispose(&v32, 8);

  return v23;
}

void __85__WBSSavedAccountStore_saveUser_password_forProtectionSpace_highLevelDomain_groupID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _saveAccountOnInternalQueueWithUser:*(a1 + 40) password:*(a1 + 48) protectionSpace:*(a1 + 56) highLevelDomain:*(a1 + 64) groupID:*(a1 + 72)];
  v3 = *(*(a1 + 80) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)_canMoveSavedAccountWithPasskey:(id)passkey toGroup:(id)group
{
  passkeyCopy = passkey;
  groupCopy = group;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__WBSSavedAccountStore__canMoveSavedAccountWithPasskey_toGroup___block_invoke;
  v12[3] = &unk_1E7CF4B70;
  v12[4] = self;
  v13 = passkeyCopy;
  v14 = groupCopy;
  v15 = &v16;
  v9 = groupCopy;
  v10 = passkeyCopy;
  dispatch_sync(queue, v12);
  LOBYTE(queue) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return queue;
}

void __64__WBSSavedAccountStore__canMoveSavedAccountWithPasskey_toGroup___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureDomainsToUsersExists];
  v2 = MEMORY[0x1E695AC58];
  v3 = [*(a1 + 40) passkeyRelyingPartyID];
  v4 = [v2 safari_passkeySidecarProtectionSpaceForRelyingPartyIdentifier:v3];

  v5 = [WBSPair alloc];
  v6 = [*(a1 + 40) passkeyUserHandle];
  v7 = [(WBSPair *)v5 initWithFirst:v6 second:v4];

  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  if (!v8)
  {
    v12 = [*(v9 + 16) objectForKeyedSubscript:v7];
    v16 = [v12 firstObject];
    goto LABEL_5;
  }

  v10 = *(v9 + 32);
  v11 = [v8 groupID];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (v12)
  {
    v15 = [v12 objectForKeyedSubscript:v7];
    v16 = [v15 firstObject];

LABEL_5:
    *(*(*(a1 + 56) + 8) + 24) = v16 == 0;

    goto LABEL_9;
  }

  v17 = WBS_LOG_CHANNEL_PREFIXPasswords(v13, v14);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    __64__WBSSavedAccountStore__canMoveSavedAccountWithPasskey_toGroup___block_invoke_cold_1();
  }

  *(*(*(a1 + 56) + 8) + 24) = 0;
LABEL_9:
}

- (id)_saveAccountOnInternalQueueWithUser:(id)user password:(id)password protectionSpace:(id)space highLevelDomain:(id)domain groupID:(id)d
{
  userCopy = user;
  passwordCopy = password;
  spaceCopy = space;
  domainCopy = domain;
  dCopy = d;
  v17 = 0;
  if (!userCopy || !spaceCopy)
  {
    goto LABEL_32;
  }

  if (![domainCopy length])
  {
    goto LABEL_18;
  }

  if (!passwordCopy)
  {
    passwordCopy = &stru_1F3064D08;
  }

  if ([dCopy length])
  {
    v18 = +[WBSOngoingSharingGroupProvider sharedProvider];
    currentUserParticipantID = [v18 currentUserParticipantID];

    if (currentUserParticipantID)
    {
      groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts;
      if (!groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v24 = self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts;
        self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts = dictionary;

        groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts;
      }

      v25 = [(NSMutableDictionary *)groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:dCopy];

      if (!v25)
      {
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        [(NSMutableDictionary *)self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts setObject:dictionary2 forKeyedSubscript:dCopy];
      }

      v27 = [(NSMutableDictionary *)self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:dCopy];
      dictionary3 = [v27 objectForKeyedSubscript:domainCopy];

      if (!dictionary3)
      {
        dictionary3 = [MEMORY[0x1E695DF90] dictionary];
        v29 = [(NSMutableDictionary *)self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:dCopy];
        [v29 setObject:dictionary3 forKeyedSubscript:domainCopy];
      }

      goto LABEL_20;
    }

    v31 = WBS_LOG_CHANNEL_PREFIXPasswords(v20, v21);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [WBSSavedAccountStore _saveAccountOnInternalQueueWithUser:password:protectionSpace:highLevelDomain:groupID:];
    }

LABEL_18:
    v17 = 0;
    goto LABEL_32;
  }

  v30 = [(NSMutableDictionary *)self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:domainCopy];
  if (v30)
  {
    dictionary3 = v30;
  }

  else
  {
    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    [(NSMutableDictionary *)self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts setObject:dictionary3 forKeyedSubscript:domainCopy];
  }

LABEL_20:
  dictionary4 = [dictionary3 objectForKeyedSubscript:userCopy];
  if (!dictionary4)
  {
    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary3 setObject:dictionary4 forKeyedSubscript:userCopy];
  }

  v50 = dictionary3;
  v51 = dictionary4;
  v33 = [dictionary4 objectForKeyedSubscript:passwordCopy];
  v34 = v33;
  if (!v33)
  {
    v34 = [[WBSSavedAccount alloc] _initWithHighLevelDomain:domainCopy user:userCopy password:passwordCopy];
    [dictionary4 setObject:v34 forKeyedSubscript:passwordCopy];
    v35 = [(NSArray *)self->_savedAccountsWithPasswords mutableCopy];
    [(NSArray *)v35 safari_insertObject:v34 inSortedOrderUsingComparator:&__block_literal_global_309_0];
    savedAccountsWithPasswords = self->_savedAccountsWithPasswords;
    self->_savedAccountsWithPasswords = v35;
  }

  mEMORY[0x1E695AC50] = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  v38 = [MEMORY[0x1E695AC48] safari_credentialWithUser:userCopy password:passwordCopy persistence:3];
  [mEMORY[0x1E695AC50] safari_setCredential:v38 forHTMLFormProtectionSpace:spaceCopy forGroupID:dCopy];

  if ([dCopy length])
  {
    sharedAccountsGroups = self->_sharedAccountsGroups;
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __109__WBSSavedAccountStore__saveAccountOnInternalQueueWithUser_password_protectionSpace_highLevelDomain_groupID___block_invoke_2;
    v52[3] = &unk_1E7CF2D20;
    v53 = dCopy;
    v41 = [(NSArray *)sharedAccountsGroups safari_firstObjectPassingTest:v52];
    if (!v41)
    {
      v49 = WBS_LOG_CHANNEL_PREFIXPasswords(0, v40);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        [WBSSavedAccountStore _saveAccountOnInternalQueueWithUser:password:protectionSpace:highLevelDomain:groupID:];
      }
    }

    groupID = [v41 groupID];
    [v34 setSharedGroupID:groupID];
  }

  else
  {
    [v34 setSharedGroupID:&stru_1F3064D08];
  }

  [v34 _createSidecarsForProtectionSpaceIfNecessary:spaceCopy];
  host = [spaceCopy host];
  [v34 _addProtectionSpace:spaceCopy forSite:host isDefaultCredentialForSite:v33 == 0];

  if (!v33)
  {
    if (!self->_shouldSkipHistoryEvents)
    {
      v45 = [[WBSSavedAccountPasswordHistoryItem alloc] initWithPassword:passwordCopy type:@"pwcr"];
      [v34 addItemToAccountHistory:v45];
    }

    if ([dCopy length])
    {
      markOriginalContributorParticipantID = [v34 markOriginalContributorParticipantID];
      if ((markOriginalContributorParticipantID & 1) == 0)
      {
        v48 = WBS_LOG_CHANNEL_PREFIXPasswords(markOriginalContributorParticipantID, v47);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          [WBSSavedAccountStore _saveAccountOnInternalQueueWithUser:password:protectionSpace:highLevelDomain:groupID:];
        }
      }
    }
  }

  v17 = v34;

LABEL_32:

  return v17;
}

uint64_t __109__WBSSavedAccountStore__saveAccountOnInternalQueueWithUser_password_protectionSpace_highLevelDomain_groupID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 groupID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_saveSidecarObjectsOnInternalQueueForSavedAccount:(id)account withBlock:(id)block
{
  blockCopy = block;
  accountCopy = account;
  [(WBSSavedAccountStore *)self _saveSidecarObjectsOnInternalQueueForSavedAccountWithPassword:accountCopy withBlock:blockCopy];
  [(WBSSavedAccountStore *)self _saveSidecarOnInternalQueueForSavedAccountWithPasskey:accountCopy withBlock:blockCopy];
}

- (void)_saveSidecarObjectsOnInternalQueueForSavedAccountWithPassword:(id)password withBlock:(id)block
{
  passwordCopy = password;
  blockCopy = block;
  password = [passwordCopy password];

  if (password)
  {
    [passwordCopy _updatePasswordSidecarsIfNecessaryWithBlock:blockCopy];
  }
}

- (void)_saveSidecarOnInternalQueueForSavedAccountWithPasskey:(id)passkey withBlock:(id)block
{
  passkeyCopy = passkey;
  blockCopy = block;
  passkeyCredentialID = [passkeyCopy passkeyCredentialID];

  if (passkeyCredentialID)
  {
    [passkeyCopy _updatePasskeySidecarsIfNecessaryWithBlock:blockCopy];
  }
}

- (void)_writeSidecarDataForMergedSavedAccount:(id)account
{
  accountCopy = account;
  notesEntry = [accountCopy notesEntry];
  if ([notesEntry length])
  {
    [accountCopy setNotesEntry:notesEntry];
  }

  customTitle = [accountCopy customTitle];
  if ([customTitle length])
  {
    [accountCopy setCustomTitle:customTitle performSidecarUpdate:1];
  }
}

- (void)saveAdditionalSites:(id)sites forSavedAccount:(id)account completionHandler:(id)handler
{
  sitesCopy = sites;
  accountCopy = account;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__WBSSavedAccountStore_saveAdditionalSites_forSavedAccount_completionHandler___block_invoke;
  block[3] = &unk_1E7CF1908;
  v16 = accountCopy;
  v17 = sitesCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = sitesCopy;
  v14 = accountCopy;
  dispatch_async(queue, block);
}

uint64_t __78__WBSSavedAccountStore_saveAdditionalSites_forSavedAccount_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAdditionalSites:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)addAdditionalSite:(id)site toSavedAccount:(id)account completionHandler:(id)handler
{
  siteCopy = site;
  accountCopy = account;
  handlerCopy = handler;
  additionalSites = [accountCopy additionalSites];
  v11 = [additionalSites containsObject:siteCopy];

  if (v11)
  {
    handlerCopy[2](handlerCopy);
  }

  else
  {
    additionalSites2 = [accountCopy additionalSites];
    v13 = [additionalSites2 arrayByAddingObject:siteCopy];
    [(WBSSavedAccountStore *)self saveAdditionalSites:v13 forSavedAccount:accountCopy completionHandler:handlerCopy];
  }
}

- (void)addAccountHistoryItem:(id)item toSavedAccount:(id)account completionHandler:(id)handler
{
  itemCopy = item;
  accountCopy = account;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__WBSSavedAccountStore_addAccountHistoryItem_toSavedAccount_completionHandler___block_invoke;
  v15[3] = &unk_1E7CF4BB8;
  v16 = accountCopy;
  v17 = itemCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = itemCopy;
  v14 = accountCopy;
  dispatch_async(queue, v15);
}

uint64_t __79__WBSSavedAccountStore_addAccountHistoryItem_toSavedAccount_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) historyItems];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = *(*(a1 + 56) + 16);

    return v4();
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);

    return [v8 _addAccountHistoryItemOnInternalQueue:v6 toSavedAccount:v7 completionHandler:v9];
  }
}

- (void)_addAccountHistoryItemOnInternalQueue:(id)queue toSavedAccount:(id)account completionHandler:(id)handler
{
  handlerCopy = handler;
  if (!self->_shouldSkipHistoryEvents)
  {
    [account addItemToAccountHistory:queue];
  }

  handlerCopy[2]();
}

- (void)deleteAccountHistoryItem:(id)item fromSavedAccount:(id)account completionHandler:(id)handler
{
  itemCopy = item;
  accountCopy = account;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__WBSSavedAccountStore_deleteAccountHistoryItem_fromSavedAccount_completionHandler___block_invoke;
  v15[3] = &unk_1E7CF4BB8;
  v16 = accountCopy;
  v17 = itemCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = itemCopy;
  v14 = accountCopy;
  dispatch_async(queue, v15);
}

uint64_t __84__WBSSavedAccountStore_deleteAccountHistoryItem_fromSavedAccount_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) historyItems];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);

    return [v6 _deleteAccountHistoryItemOnInternalQueue:v4 fromSavedAccount:v5 completionHandler:v7];
  }

  else
  {
    v9 = *(*(a1 + 56) + 16);

    return v9();
  }
}

- (void)_deleteAccountHistoryItemOnInternalQueue:(id)queue fromSavedAccount:(id)account completionHandler:(id)handler
{
  handlerCopy = handler;
  [account deleteItemFromAccountHistory:queue];
  handlerCopy[2]();
}

- (void)clearSavedAccountHistory:(id)history withCompletionHandler:(id)handler
{
  historyCopy = history;
  handlerCopy = handler;
  isCurrentUserOriginalContributor = [historyCopy isCurrentUserOriginalContributor];
  if (isCurrentUserOriginalContributor)
  {
    v10 = objc_alloc_init(WBSSavedAccountChangeRequest);
    [(WBSSavedAccountChangeRequest *)v10 setSavedAccount:historyCopy];
    [(WBSSavedAccountChangeRequest *)v10 setShouldClearHistory:1];
    v11 = dispatch_group_create();
    dispatch_group_enter(v11);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__WBSSavedAccountStore_clearSavedAccountHistory_withCompletionHandler___block_invoke;
    v17[3] = &unk_1E7CF16E0;
    v12 = v11;
    v18 = v12;
    [(WBSSavedAccountStore *)self changeSavedAccountWithRequest:v10 completionHandler:v17];
    dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    v13 = [WBSSavedAccountPasswordHistoryItem alloc];
    password = [historyCopy password];
    v15 = [(WBSSavedAccountPasswordHistoryItem *)v13 initWithPassword:password type:@"pw"];

    if (!self->_shouldSkipHistoryEvents)
    {
      [historyCopy addItemToAccountHistory:v15];
    }

    handlerCopy[2](handlerCopy);
  }

  else
  {
    v16 = WBS_LOG_CHANNEL_PREFIXPasswords(isCurrentUserOriginalContributor, v9);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [WBSSavedAccountStore clearSavedAccountHistory:withCompletionHandler:];
    }

    handlerCopy[2](handlerCopy);
  }
}

- (void)saveTOTPGenerator:(id)generator forSavedAccount:(id)account completionHandler:(id)handler
{
  generatorCopy = generator;
  accountCopy = account;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__WBSSavedAccountStore_saveTOTPGenerator_forSavedAccount_completionHandler___block_invoke;
  block[3] = &unk_1E7CF1908;
  v16 = accountCopy;
  v17 = generatorCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = generatorCopy;
  v14 = accountCopy;
  dispatch_async(queue, block);
}

uint64_t __76__WBSSavedAccountStore_saveTOTPGenerator_forSavedAccount_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTOTPGenerator:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)removeTOTPGeneratorForSavedAccount:(id)account
{
  accountCopy = account;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__WBSSavedAccountStore_removeTOTPGeneratorForSavedAccount___block_invoke;
  block[3] = &unk_1E7CF16E0;
  v8 = accountCopy;
  v6 = accountCopy;
  dispatch_sync(queue, block);
}

- (void)saveNotesEntry:(id)entry forSavedAccount:(id)account completionHandler:(id)handler
{
  entryCopy = entry;
  accountCopy = account;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__WBSSavedAccountStore_saveNotesEntry_forSavedAccount_completionHandler___block_invoke;
  block[3] = &unk_1E7CF1A28;
  v17 = accountCopy;
  v18 = handlerCopy;
  v16 = entryCopy;
  v12 = accountCopy;
  v13 = handlerCopy;
  v14 = entryCopy;
  dispatch_async(queue, block);
}

uint64_t __73__WBSSavedAccountStore_saveNotesEntry_forSavedAccount_completionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) length])
  {
    [*(a1 + 40) setNotesEntry:*(a1 + 32)];
  }

  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)saveCustomTitle:(id)title forSavedAccount:(id)account completionHandler:(id)handler
{
  titleCopy = title;
  accountCopy = account;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__WBSSavedAccountStore_saveCustomTitle_forSavedAccount_completionHandler___block_invoke;
  v15[3] = &unk_1E7CF4BB8;
  v16 = titleCopy;
  v17 = accountCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = accountCopy;
  v14 = titleCopy;
  dispatch_async(queue, v15);
}

void __74__WBSSavedAccountStore_saveCustomTitle_forSavedAccount_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) userVisibleDomain];
  LODWORD(v2) = WBSIsEqual(v2, v3);

  if (v2)
  {
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else
  {
    [*(a1 + 40) setCustomTitle:*(a1 + 32) performSidecarUpdate:0];
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74__WBSSavedAccountStore_saveCustomTitle_forSavedAccount_completionHandler___block_invoke_2;
    v7[3] = &unk_1E7CF3FC0;
    v8 = *(a1 + 32);
    [v5 _saveSidecarObjectsOnInternalQueueForSavedAccount:v6 withBlock:v7];
    (*(*(a1 + 56) + 16))();
  }
}

- (void)saveHideMarker:(id)marker forSavedAccount:(id)account completionHandler:(id)handler
{
  markerCopy = marker;
  accountCopy = account;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__WBSSavedAccountStore_saveHideMarker_forSavedAccount_completionHandler___block_invoke;
  v15[3] = &unk_1E7CF4970;
  v15[4] = self;
  v16 = accountCopy;
  v17 = markerCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = markerCopy;
  v14 = accountCopy;
  dispatch_async(queue, v15);
}

void __73__WBSSavedAccountStore_saveHideMarker_forSavedAccount_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__WBSSavedAccountStore_saveHideMarker_forSavedAccount_completionHandler___block_invoke_2;
  v4[3] = &unk_1E7CF3FC0;
  v5 = *(a1 + 48);
  [v2 _saveSidecarObjectsOnInternalQueueForSavedAccount:v3 withBlock:v4];
  (*(*(a1 + 56) + 16))();
}

void __73__WBSSavedAccountStore_saveHideMarker_forSavedAccount_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    v6 = v5;
    [v5 setHideWarningMarker:*(a1 + 32)];
    v5 = v6;
  }
}

- (void)removeHideWarningMarkerForSavedAccount:(id)account
{
  accountCopy = account;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__WBSSavedAccountStore_removeHideWarningMarkerForSavedAccount___block_invoke;
  v7[3] = &unk_1E7CF1708;
  v7[4] = self;
  v8 = accountCopy;
  v6 = accountCopy;
  dispatch_sync(queue, v7);
}

void __63__WBSSavedAccountStore_removeHideWarningMarkerForSavedAccount___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!a2)
  {
    v5 = v4;
    [v4 setHideWarningMarker:0];
    v4 = v5;
  }
}

- (void)resetHiddenSecurityRecommendationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__WBSSavedAccountStore_resetHiddenSecurityRecommendationsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CF16B8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __80__WBSSavedAccountStore_resetHiddenSecurityRecommendationsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 72);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 hideWarningMarker];

        if (v8)
        {
          [*(a1 + 32) _saveSidecarObjectsOnInternalQueueForSavedAccount:v7 withBlock:&__block_literal_global_315];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return (*(*(a1 + 40) + 16))();
}

void __80__WBSSavedAccountStore_resetHiddenSecurityRecommendationsWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!a2)
  {
    v5 = v4;
    [v4 setHideWarningMarker:0];
    v4 = v5;
  }
}

- (void)_postSavedAccountStoreDidChangeNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"WBSSavedAccountStoreDidChangeNotification" object:self];
}

- (unint64_t)numberOfSavedAccountsInPersonalKeychainForHighLevelDomain:(id)domain
{
  domainCopy = domain;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__WBSSavedAccountStore_numberOfSavedAccountsInPersonalKeychainForHighLevelDomain___block_invoke;
  block[3] = &unk_1E7CF1730;
  v10 = domainCopy;
  v11 = &v12;
  block[4] = self;
  v6 = domainCopy;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __82__WBSSavedAccountStore_numberOfSavedAccountsInPersonalKeychainForHighLevelDomain___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 count];
}

- (void)reset
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__WBSSavedAccountStore_reset__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_async(queue, block);
}

void *__45__WBSSavedAccountStore__resetOnInternalQueue__block_invoke(void *result)
{
  v2 = result[4];
  if (*(v2 + 262) == 1)
  {
    v3 = result;
    [*(v2 + 232) invalidate];
    v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:v3[4] target:sel__warmDataStoreAfterResetTimerFired_ selector:0 userInfo:0 repeats:3.0];
    v5 = v3[4];
    v6 = *(v5 + 232);
    *(v5 + 232) = v4;

    v7 = *(v3[4] + 232);

    return [v7 setTolerance:0.3];
  }

  return result;
}

uint64_t __68__WBSSavedAccountStore__cleanUpRedundantCredentialsWithoutUsernames__block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 user];
  v5 = [v4 length];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = *(*(a1 + 32) + 64);
    v6 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v7);
          }

          if ([v3 isDuplicateWithoutUserNameOfSavedAccount:{*(*(&v11 + 1) + 8 * i), v11}])
          {
            v6 = 1;
            goto LABEL_13;
          }
        }

        v6 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v6;
}

- (BOOL)_deleteSavedAccountsWithUnknownOriginalContributorParticipantIDsFromSavedAccounts:(id)accounts inGroup:(id)group
{
  v50 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  groupCopy = group;
  if ([accountsCopy count] && (objc_msgSend(groupCopy, "participants"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8))
  {
    v9 = +[WBSOngoingSharingGroupProvider sharedProvider];
    currentUserParticipantID = [v9 currentUserParticipantID];

    if (currentUserParticipantID)
    {
      v13 = MEMORY[0x1E695DFD8];
      participants = [groupCopy participants];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __114__WBSSavedAccountStore__deleteSavedAccountsWithUnknownOriginalContributorParticipantIDsFromSavedAccounts_inGroup___block_invoke;
      v41[3] = &unk_1E7CF4BE0;
      v34 = currentUserParticipantID;
      v42 = currentUserParticipantID;
      v15 = [participants safari_mapObjectsUsingBlock:v41];
      v16 = [v13 setWithArray:v15];

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = accountsCopy;
      v17 = [accountsCopy copy];
      v18 = [v17 countByEnumeratingWithState:&v37 objects:v49 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = 0;
        v21 = *v38;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v38 != v21)
            {
              objc_enumerationMutation(v17);
            }

            v23 = *(*(&v37 + 1) + 8 * i);
            groupID = [groupCopy groupID];
            originalContributorParticipantID = [v23 originalContributorParticipantID];
            if (originalContributorParticipantID)
            {
              v27 = [v16 containsObject:originalContributorParticipantID];
              if ((v27 & 1) == 0)
              {
                v29 = WBS_LOG_CHANNEL_PREFIXPasswords(v27, v28);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138478339;
                  v44 = groupID;
                  v45 = 2113;
                  v46 = originalContributorParticipantID;
                  v47 = 2113;
                  v48 = v16;
                  _os_log_impl(&dword_1B8447000, v29, OS_LOG_TYPE_DEFAULT, "Deleting a shared saved account with a contributor ID that does not map to a participant in group ID: %{private}@, saved account original contributor ID: %{private}@, group participant IDs: %{private}@", buf, 0x20u);
                }

                groupID2 = [groupCopy groupID];
                [(WBSSavedAccountStore *)self _removeSavedAccount:v23 fromGroupID:groupID2];

                v20 = 1;
              }
            }

            else
            {
              v31 = WBS_LOG_CHANNEL_PREFIXPasswords(0, v25);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                *buf = 138477827;
                v44 = groupID;
                _os_log_error_impl(&dword_1B8447000, v31, OS_LOG_TYPE_ERROR, "Found a shared saved account without an original contributor participant ID in group ID: %{private}@", buf, 0xCu);
              }

              [(WBSSavedAccountStore *)self _reportAccountsWithUnknownContributorIDIfNeeded];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v37 objects:v49 count:16];
        }

        while (v19);
      }

      else
      {
        v20 = 0;
      }

      currentUserParticipantID = v34;
      accountsCopy = v35;
    }

    else
    {
      v32 = WBS_LOG_CHANNEL_PREFIXPasswords(v11, v12);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [WBSSavedAccountStore _deleteSavedAccountsWithUnknownOriginalContributorParticipantIDsFromSavedAccounts:inGroup:];
      }

      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

id __114__WBSSavedAccountStore__deleteSavedAccountsWithUnknownOriginalContributorParticipantIDsFromSavedAccounts_inGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isCurrentUser])
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = [v3 participantID];
  }

  v5 = v4;

  return v5;
}

- (void)_reportAccountsWithUnknownContributorIDIfNeeded
{
  if ((atomic_exchange(&self->_didReportAccountsWithUnknownContributorID._Value, 1u) & 1) == 0)
  {
    v3 = dispatch_get_global_queue(17, 0);
    dispatch_async(v3, &__block_literal_global_323);
  }
}

void __71__WBSSavedAccountStore__reportAccountsWithUnknownContributorIDIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = WBS_LOG_CHANNEL_PREFIXPasswords(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __71__WBSSavedAccountStore__reportAccountsWithUnknownContributorIDIfNeeded__block_invoke_cold_1();
  }
}

- (void)_cleanUpSharedSavedAccountsWithUnknownOriginalContributorParticipantIDsIfNecessaryFromRecentlyDeleted:(BOOL)deleted
{
  if ([(WBSSavedAccountStore *)self _canPerformMaintenanceTasks])
  {
    v4 = [(NSArray *)self->_sharedAccountsGroups copy];
    objc_initWeak(&location, self);
    v5 = +[WBSOngoingSharingGroupProvider sharedProvider];
    queue = self->_queue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __126__WBSSavedAccountStore__cleanUpSharedSavedAccountsWithUnknownOriginalContributorParticipantIDsIfNecessaryFromRecentlyDeleted___block_invoke;
    v8[3] = &unk_1E7CF4C08;
    objc_copyWeak(&v10, &location);
    v7 = v4;
    v9 = v7;
    [v5 performTaskOnQueueAfterFetchingGroups:queue task:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __126__WBSSavedAccountStore__cleanUpSharedSavedAccountsWithUnknownOriginalContributorParticipantIDsIfNecessaryFromRecentlyDeleted___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v7 = WBS_LOG_CHANNEL_PREFIXPasswords(WeakRetained, v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __126__WBSSavedAccountStore__cleanUpSharedSavedAccountsWithUnknownOriginalContributorParticipantIDsIfNecessaryFromRecentlyDeleted___block_invoke_cold_1(v7);
      }
    }

    else
    {
      v8 = +[WBSOngoingSharingGroupProvider sharedProvider];
      v9 = [v8 cachedGroups];

      v10 = [v9 isEqual:*(a1 + 32)];
      if (v10)
      {
        *(v6 + 224) = 1;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v12 = *(v6 + 18);
        v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v13)
        {
          v14 = v13;
          v23 = v9;
          LOBYTE(v15) = 0;
          v16 = *v26;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(v12);
              }

              v18 = *(*(&v25 + 1) + 8 * i);
              v19 = *(v6 + 17);
              v20 = [v18 groupID];
              v21 = [v19 objectForKeyedSubscript:v20];

              if (v15)
              {
                v15 = 1;
              }

              else
              {
                v15 = [v6 _deleteSavedAccountsWithUnknownOriginalContributorParticipantIDsFromSavedAccounts:v21 inGroup:v18];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
          }

          while (v14);

          *(v6 + 224) = 0;
          v9 = v23;
          if (v15)
          {
            [v6 _resetOnInternalQueue];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __126__WBSSavedAccountStore__cleanUpSharedSavedAccountsWithUnknownOriginalContributorParticipantIDsIfNecessaryFromRecentlyDeleted___block_invoke_324;
            block[3] = &unk_1E7CF16E0;
            block[4] = v6;
            dispatch_async(MEMORY[0x1E69E96A0], block);
          }
        }

        else
        {

          *(v6 + 224) = 0;
        }
      }

      else
      {
        v22 = WBS_LOG_CHANNEL_PREFIXPasswords(v10, v11);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B8447000, v22, OS_LOG_TYPE_DEFAULT, "Aborting clean up for passwords with unmatchable contributor ID because groups have changed since the account store was loaded.", buf, 2u);
        }

        [v6 _updateCachedSharedAccountGroupsOnInternalQueue];
      }
    }
  }
}

- (void)_identifySharedSavedAccountsWithSameUsernameAndHighLevelDomainPairs
{
  v42 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  allValues = [(NSMutableDictionary *)self->_groupIdentifiersToSavedAccounts allValues];
  safari_flattenedArray = [allValues safari_flattenedArray];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = safari_flattenedArray;
  v7 = [v6 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    do
    {
      v10 = 0;
      do
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v36 + 1) + 8 * v10);
        v12 = [WBSPair alloc];
        highLevelDomain = [v11 highLevelDomain];
        user = [v11 user];
        v15 = [(WBSPair *)v12 initWithFirst:highLevelDomain second:user];

        v16 = [dictionary objectForKeyedSubscript:v15];

        if (!v16)
        {
          v17 = [MEMORY[0x1E695DFA8] set];
          [dictionary setObject:v17 forKeyedSubscript:v15];
        }

        v18 = [dictionary objectForKeyedSubscript:v15];
        sharedGroupID = [v11 sharedGroupID];
        [v18 addObject:sharedGroupID];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v8);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = v6;
  v21 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v33;
    do
    {
      v24 = 0;
      do
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v32 + 1) + 8 * v24);
        v26 = [WBSPair alloc];
        highLevelDomain2 = [v25 highLevelDomain];
        user2 = [v25 user];
        v29 = [(WBSPair *)v26 initWithFirst:highLevelDomain2 second:user2];

        v30 = [dictionary objectForKeyedSubscript:v29];
        v31 = [v30 count];

        if (v31 >= 2)
        {
          [v25 setHasSameUsernameAndHighLevelDomainAsOtherSharedSavedAccounts:1];
        }

        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v22);
  }
}

- (void)_mergeSavedAccountWithPassword:(id)password toSavedAccountWithPasskey:(id)passkey
{
  v41 = *MEMORY[0x1E69E9840];
  passwordCopy = password;
  passkeyCopy = passkey;
  password = [passwordCopy password];
  [passkeyCopy setPassword:password];

  protectionSpaces = [passwordCopy protectionSpaces];
  firstObject = [protectionSpaces firstObject];

  host = [firstObject host];
  v11 = firstObject;
  [passkeyCopy _addProtectionSpace:firstObject forSite:host isDefaultCredentialForSite:{objc_msgSend(passwordCopy, "isDefaultCredentialForFullyQualifiedHostname:", host)}];
  if ([passkeyCopy hasPasskeySidecars])
  {
    v32 = host;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v12 = passkeyCopy;
    passkeyCredentialSidecarsDictionary = [passkeyCopy passkeyCredentialSidecarsDictionary];
    allValues = [passkeyCredentialSidecarsDictionary allValues];

    obj = allValues;
    v15 = [allValues countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v37;
      do
      {
        v18 = 0;
        do
        {
          if (*v37 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v36 + 1) + 8 * v18);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v21 = off_1E7CEFB18;
          if (isKindOfClass & 1) != 0 || (objc_opt_class(), v22 = objc_opt_isKindOfClass(), v21 = off_1E7CEFB10, (v22))
          {
            v24 = objc_alloc(*v21);
            user = [passwordCopy user];
            dictionaryRepresentation = [v19 dictionaryRepresentation];
            v27 = [v24 initWithUser:user protectionSpace:v11 dictionaryRepresentation:dictionaryRepresentation];

            v28 = v19;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v28 setLastOneTimeShareDateForPasskey:0];
            }

            protectionSpace = [v27 protectionSpace];
            host2 = [protectionSpace host];
            [v12 _addSidecar:v27 forSite:host2];
          }

          else
          {
            v31 = WBS_LOG_CHANNEL_PREFIXPasswords(v22, v23);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [(WBSSavedAccountStore *)&buf _mergeSavedAccountWithPassword:v35 toSavedAccountWithPasskey:v31];
            }
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v16);
    }

    passkeyCopy = v12;
    [v12 _updatePasswordSidecarsIfNecessaryWithBlock:0];
    host = v32;
  }
}

- (void)_mergeSavedAccountWithPasskey:(id)passkey toSavedAccountWithPassword:(id)password
{
  passkeyCopy = passkey;
  passwordCopy = password;
  passkeyUserHandle = [passkeyCopy passkeyUserHandle];
  [passwordCopy setPasskeyUserHandle:passkeyUserHandle];

  passkeyCredentialID = [passkeyCopy passkeyCredentialID];
  [passwordCopy setPasskeyCredentialID:passkeyCredentialID];

  passkeyRelyingPartyID = [passkeyCopy passkeyRelyingPartyID];
  [passwordCopy setPasskeyRelyingPartyID:passkeyRelyingPartyID];

  creationDateForPasskey = [passkeyCopy creationDateForPasskey];
  [passwordCopy setCreationDateForPasskey:creationDateForPasskey];

  lastModifiedDateForPasskey = [passkeyCopy lastModifiedDateForPasskey];
  [passwordCopy setLastModifiedDateForPasskey:lastModifiedDateForPasskey];

  lastUsedDateForPasskey = [passkeyCopy lastUsedDateForPasskey];
  [passwordCopy setLastUsedDateForPasskey:lastUsedDateForPasskey];

  if ([passwordCopy hasPasswordSidecars])
  {
    allPasswordSidecars = [passwordCopy allPasswordSidecars];
    firstObject = [allPasswordSidecars firstObject];

    v14 = [firstObject copy];
    passkeyUserHandle2 = [passkeyCopy passkeyUserHandle];
    [v14 setUser:passkeyUserHandle2];

    [passwordCopy _addPasskeySidecar:v14];
    v16 = MEMORY[0x1E695AC58];
    passkeyRelyingPartyID2 = [passkeyCopy passkeyRelyingPartyID];
    v18 = [v16 safari_passkeySidecarProtectionSpaceForRelyingPartyIdentifier:passkeyRelyingPartyID2];

    v19 = MEMORY[0x1E695AC48];
    passkeyUserHandle3 = [passkeyCopy passkeyUserHandle];
    v21 = [v19 safari_credentialWithUser:passkeyUserHandle3 password:&stru_1F3064D08 persistence:3];

    if ([passwordCopy isSavedInPersonalKeychain])
    {
      mEMORY[0x1E695AC50] = [MEMORY[0x1E695AC50] sharedCredentialStorage];
      [mEMORY[0x1E695AC50] safari_setSidecar:firstObject credential:v21 htmlFormProtectionSpace:v18 forGroupID:&stru_1F3064D08 fromRecentlyDeleted:{objc_msgSend(passwordCopy, "isRecentlyDeleted")}];
    }

    if ([passwordCopy isSavedInSharedGroup])
    {
      mEMORY[0x1E695AC50]2 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
      sharedGroupID = [passwordCopy sharedGroupID];
      [mEMORY[0x1E695AC50]2 safari_setSidecar:firstObject credential:v21 htmlFormProtectionSpace:v18 forGroupID:sharedGroupID fromRecentlyDeleted:{objc_msgSend(passwordCopy, "isRecentlyDeleted")}];
    }
  }
}

- (id)_saveUser:(id)user passkeyCredential:(id)credential passkeyRelyingPartyID:(id)d
{
  userCopy = user;
  credentialCopy = credential;
  dCopy = d;
  if (!userCopy)
  {
    goto LABEL_9;
  }

  first = [credentialCopy first];
  if (![first length])
  {
    goto LABEL_8;
  }

  second = [credentialCopy second];
  if (![second length])
  {

LABEL_8:
    goto LABEL_9;
  }

  v13 = [dCopy length];

  if (v13)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__16;
    v37 = __Block_byref_object_dispose__16;
    v38 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__16;
    v31 = __Block_byref_object_dispose__16;
    v32 = 0;
    queue = self->_queue;
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __74__WBSSavedAccountStore__saveUser_passkeyCredential_passkeyRelyingPartyID___block_invoke;
    v22 = &unk_1E7CF4C30;
    v25 = &v33;
    selfCopy = self;
    v24 = credentialCopy;
    v26 = &v27;
    dispatch_sync(queue, &v19);
    if ([v28[5] length])
    {
      v15 = [WBSSavedAccount alloc];
      v16 = [(WBSSavedAccount *)v15 _initWithPasskeyRelyingPartyID:dCopy user:userCopy passkeyUserHandle:v28[5] passkeyCredentialID:v34[5]];
      date = [MEMORY[0x1E695DF00] date];
      [v16 setCreationDateForPasskey:date];
      [v16 setLastModifiedDateForPasskey:date];
    }

    else
    {
      v16 = 0;
    }

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v33, 8);

    goto LABEL_10;
  }

LABEL_9:
  v16 = 0;
LABEL_10:

  return v16;
}

void __74__WBSSavedAccountStore__saveUser_passkeyCredential_passkeyRelyingPartyID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) importPasskeyCredentialOnInternalQueue:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if ([*(*(*(a1 + 48) + 8) + 40) length])
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) first];
    v7 = [v5 passkeyDataForPasskeyCredentialIDOnInternalQueue:v6];
    v11 = [v7 firstObject];

    v8 = [v11 objectForKeyedSubscript:@"UserHandle"];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (void)setSavedAccountAsDefault:(id)default forProtectionSpace:(id)space context:(id)context associatedDomainsManager:(id)manager
{
  defaultCopy = default;
  spaceCopy = space;
  contextCopy = context;
  managerCopy = manager;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__WBSSavedAccountStore_setSavedAccountAsDefault_forProtectionSpace_context_associatedDomainsManager___block_invoke;
  block[3] = &unk_1E7CF4C58;
  block[4] = self;
  v20 = defaultCopy;
  v21 = spaceCopy;
  v22 = contextCopy;
  v23 = managerCopy;
  v15 = managerCopy;
  v16 = contextCopy;
  v17 = spaceCopy;
  v18 = defaultCopy;
  dispatch_sync(queue, block);
}

- (void)setSavedAccountAsDefault:(id)default forProtectionSpace:(id)space context:(id)context associatedDomainsManager:(id)manager completionHandler:(id)handler
{
  defaultCopy = default;
  spaceCopy = space;
  contextCopy = context;
  managerCopy = manager;
  handlerCopy = handler;
  queue = self->_queue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __119__WBSSavedAccountStore_setSavedAccountAsDefault_forProtectionSpace_context_associatedDomainsManager_completionHandler___block_invoke;
  v23[3] = &unk_1E7CF4C80;
  v23[4] = self;
  v24 = defaultCopy;
  v25 = spaceCopy;
  v26 = contextCopy;
  v27 = managerCopy;
  v28 = handlerCopy;
  v18 = handlerCopy;
  v19 = managerCopy;
  v20 = contextCopy;
  v21 = spaceCopy;
  v22 = defaultCopy;
  dispatch_async(queue, v23);
}

uint64_t __119__WBSSavedAccountStore_setSavedAccountAsDefault_forProtectionSpace_context_associatedDomainsManager_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setSavedAccountAsDefaultOnInternalQueue:*(a1 + 40) forProtectionSpace:*(a1 + 48) context:*(a1 + 56) associatedDomainsManager:*(a1 + 64)];
  v2 = *(*(a1 + 72) + 16);

  return v2();
}

- (void)_setSavedAccountAsDefaultOnInternalQueue:(id)queue forProtectionSpace:(id)space context:(id)context associatedDomainsManager:(id)manager
{
  v91 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  spaceCopy = space;
  contextCopy = context;
  managerCopy = manager;
  safari_protectionSpaceBySimplifyingHost = [spaceCopy safari_protectionSpaceBySimplifyingHost];
  v16 = safari_protectionSpaceBySimplifyingHost;
  if (safari_protectionSpaceBySimplifyingHost != spaceCopy)
  {
    v17 = WBS_LOG_CHANNEL_PREFIXKeychain(safari_protectionSpaceBySimplifyingHost, v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      host = [spaceCopy host];
      host2 = [v16 host];
      *buf = 138740227;
      v88 = host;
      v89 = 2117;
      v90 = host2;
      _os_log_impl(&dword_1B8447000, v18, OS_LOG_TYPE_DEFAULT, "Simplified protection space from %{sensitive}@ to %{sensitive}@ before setting saved account as default", buf, 0x16u);
    }

    v21 = v16;

    spaceCopy = v21;
  }

  if ([(WBSSavedAccountStore *)self _hasSavedAccountWithSameUserNameOfSavedAccount:queueCopy forProtectionSpace:spaceCopy])
  {
    v22 = [(WBSSavedAccountStore *)self _shouldUpdateLastUsedDateForSavedAccount:queueCopy forProtectionSpace:spaceCopy inContext:contextCopy];
    v23 = v22;
    v25 = WBS_LOG_CHANNEL_PREFIXKeychain(v22, v24);
    v26 = v25;
    if (v23)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
        user = [queueCopy user];
        host3 = [spaceCopy host];
        *buf = 138740227;
        v88 = user;
        v89 = 2117;
        v90 = host3;
        _os_log_impl(&dword_1B8447000, v27, OS_LOG_TYPE_DEFAULT, "Setting last used date on account for user '%{sensitive}@' and host '%{sensitive}@'", buf, 0x16u);
      }

      v30 = [MEMORY[0x1E695DF00] now];
      host4 = [spaceCopy host];
      [queueCopy setLastUsedDate:v30 forSite:host4 inContext:contextCopy];
    }

    else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [WBSSavedAccountStore _setSavedAccountAsDefaultOnInternalQueue:forProtectionSpace:context:associatedDomainsManager:];
    }

    goto LABEL_40;
  }

  protectionSpaces = [queueCopy protectionSpaces];
  v33 = [protectionSpaces count];

  if (!v33)
  {
    v86 = managerCopy;
    goto LABEL_25;
  }

  v85 = contextCopy;
  v34 = [queueCopy hasProtectionSpace:spaceCopy];
  v35 = [queueCopy hasProtectionSpaceWithHighLevelDomainMatchingProtectionSpace:spaceCopy];
  highLevelDomain = [queueCopy highLevelDomain];
  v37 = [managerCopy domainsWithAssociatedCredentialsForDomain:highLevelDomain];
  allObjects = [v37 allObjects];

  host5 = [spaceCopy host];
  v40 = [allObjects containsObject:host5];

  if ((v34 & 1) == 0 && v35)
  {
    v84 = allObjects;
    v86 = managerCopy;
    v43 = WBS_LOG_CHANNEL_PREFIXKeychain(v41, v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = v43;
      user2 = [queueCopy user];
      host6 = [spaceCopy host];
      *buf = 138740227;
      v88 = user2;
      v89 = 2117;
      v90 = host6;
      _os_log_impl(&dword_1B8447000, v44, OS_LOG_TYPE_INFO, "While setting the account for '%{sensitive}@' as default for host '%{sensitive}@', adding high-level domain to the account's sites list", buf, 0x16u);
    }

    user3 = [queueCopy user];
    password = [queueCopy password];
    host7 = [spaceCopy host];
    safari_highLevelDomainFromHost = [host7 safari_highLevelDomainFromHost];
    sharedGroupID = [queueCopy sharedGroupID];
    v52 = [(WBSSavedAccountStore *)self _saveAccountOnInternalQueueWithUser:user3 password:password protectionSpace:spaceCopy highLevelDomain:safari_highLevelDomainFromHost groupID:sharedGroupID];

    if (v52 != queueCopy)
    {
      v55 = WBS_LOG_CHANNEL_PREFIXKeychain(v53, v54);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        [WBSSavedAccountStore _setSavedAccountAsDefaultOnInternalQueue:forProtectionSpace:context:associatedDomainsManager:];
      }
    }

    queueCopy = v52;
    allObjects = v84;
    contextCopy = v85;
    goto LABEL_24;
  }

  if ((v40 | v34))
  {
    v86 = managerCopy;
    contextCopy = v85;
LABEL_24:

LABEL_25:
    authenticationMethod = [spaceCopy authenticationMethod];
    v57 = [authenticationMethod isEqualToString:*MEMORY[0x1E695AB50]];

    if (v57)
    {
      if ([(WBSSavedAccountStore *)self _shouldUpdateLastUsedDateForSavedAccount:queueCopy forProtectionSpace:spaceCopy inContext:contextCopy])
      {
        v60 = MEMORY[0x1E695AC58];
        safari_URL = [spaceCopy safari_URL];
        v62 = [v60 safari_HTMLFormProtectionSpaceForURL:safari_URL];

        v65 = WBS_LOG_CHANNEL_PREFIXKeychain(v63, v64);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          v66 = v65;
          user4 = [queueCopy user];
          host8 = [v62 host];
          *buf = 138740227;
          v88 = user4;
          v89 = 2117;
          v90 = host8;
          _os_log_impl(&dword_1B8447000, v66, OS_LOG_TYPE_DEFAULT, "Setting last used date on account for user '%{sensitive}@' and host '%{sensitive}@'", buf, 0x16u);
        }

        v69 = [MEMORY[0x1E695DF00] now];
        host9 = [v62 host];
        [queueCopy setLastUsedDate:v69 forSite:host9 inContext:contextCopy];
      }

      managerCopy = v86;
      if ([queueCopy isSavedInPersonalKeychain])
      {
        v71 = [queueCopy hasProtectionSpaceWithHighLevelDomainMatchingProtectionSpace:spaceCopy];
        if (v71)
        {
          v73 = WBS_LOG_CHANNEL_PREFIXKeychain(v71, v72);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            v74 = v73;
            user5 = [queueCopy user];
            host10 = [spaceCopy host];
            *buf = 138740227;
            v88 = user5;
            v89 = 2117;
            v90 = host10;
            _os_log_impl(&dword_1B8447000, v74, OS_LOG_TYPE_DEFAULT, "Setting account for user '%{sensitive}@' as default for host '%{sensitive}@'", buf, 0x16u);
          }

          v77 = objc_alloc(MEMORY[0x1E695AC48]);
          user6 = [queueCopy user];
          password2 = [queueCopy password];
          v80 = [v77 initWithUser:user6 password:password2 persistence:3];

          mEMORY[0x1E695AC50] = [MEMORY[0x1E695AC50] sharedCredentialStorage];
          [mEMORY[0x1E695AC50] safari_setDefaultCredential:v80 forHTMLFormProtectionSpace:spaceCopy];

          managerCopy = v86;
        }
      }
    }

    else
    {
      v82 = WBS_LOG_CHANNEL_PREFIXKeychain(v58, v59);
      managerCopy = v86;
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        [WBSSavedAccountStore _setSavedAccountAsDefaultOnInternalQueue:forProtectionSpace:context:associatedDomainsManager:];
      }
    }

    goto LABEL_40;
  }

  v83 = WBS_LOG_CHANNEL_PREFIXKeychain(v41, v42);
  contextCopy = v85;
  if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
  {
    [WBSSavedAccountStore _setSavedAccountAsDefaultOnInternalQueue:forProtectionSpace:context:associatedDomainsManager:];
  }

LABEL_40:
}

- (BOOL)_hasSavedAccountWithSameUserNameOfSavedAccount:(id)account forProtectionSpace:(id)space
{
  accountCopy = account;
  spaceCopy = space;
  v8 = [WBSStringQuery alloc];
  user = [accountCopy user];
  v10 = [(WBSStringQuery *)v8 initWithString:user matchingType:1];

  v11 = [WBSSavedAccountMatchCriteria alloc];
  safari_URL = [spaceCopy safari_URL];

  v13 = [(WBSSavedAccountMatchCriteria *)v11 initWithURL:safari_URL options:16 userNameQuery:v10 associatedDomainsManager:0 webFrameIdentifier:0];
  v14 = [(WBSSavedAccountStore *)self _getSavedAccountsMatchingCriteriaOnInternalQueue:v13];
  matchesForPasswordAutoFill = [v14 matchesForPasswordAutoFill];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __90__WBSSavedAccountStore__hasSavedAccountWithSameUserNameOfSavedAccount_forProtectionSpace___block_invoke;
  v19[3] = &unk_1E7CF4428;
  v20 = accountCopy;
  v16 = accountCopy;
  v17 = [matchesForPasswordAutoFill safari_firstObjectPassingTest:v19];
  LOBYTE(safari_URL) = v17 != 0;

  return safari_URL;
}

uint64_t __90__WBSSavedAccountStore__hasSavedAccountWithSameUserNameOfSavedAccount_forProtectionSpace___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 savedAccount];
  LODWORD(a1) = [v3 isEqual:*(a1 + 32)];

  return a1 ^ 1;
}

- (void)updateAllSavedAccountsWithPasswordsWithUser:(id)user protectionSpace:(id)space withNewPassword:(id)password
{
  userCopy = user;
  spaceCopy = space;
  passwordCopy = password;
  v10 = [[WBSStringQuery alloc] initWithString:userCopy matchingType:1];
  v11 = [WBSSavedAccountMatchCriteria alloc];
  safari_URL = [spaceCopy safari_URL];
  v13 = [(WBSSavedAccountMatchCriteria *)v11 initWithURL:safari_URL options:16 userNameQuery:v10 associatedDomainsManager:0 webFrameIdentifier:0];

  v14 = +[WBSSavedAccountStore sharedStore];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __100__WBSSavedAccountStore_updateAllSavedAccountsWithPasswordsWithUser_protectionSpace_withNewPassword___block_invoke;
  v18[3] = &unk_1E7CF4CA8;
  v19 = userCopy;
  v20 = passwordCopy;
  v21 = spaceCopy;
  v15 = spaceCopy;
  v16 = passwordCopy;
  v17 = userCopy;
  [v14 getSavedAccountsMatchingCriteria:v13 withSynchronousCompletionHandler:v18];
}

void __100__WBSSavedAccountStore_updateAllSavedAccountsWithPasswordsWithUser_protectionSpace_withNewPassword___block_invoke(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [a2 exactMatches];
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v16 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v17 + 1) + 8 * i);
        v7 = +[WBSSavedAccountStore sharedStore];
        v8 = a1[4];
        v9 = a1[5];
        v10 = a1[6];
        v11 = [v10 host];
        v12 = [v6 savedAccount];
        v13 = [v12 sharedGroupID];
        v14 = [v7 saveUser:v8 password:v9 forProtectionSpace:v10 highLevelDomain:v11 groupID:v13];
      }

      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }
}

- (BOOL)_shouldUpdateLastUsedDateForSavedAccount:(id)account forProtectionSpace:(id)space inContext:(id)context
{
  accountCopy = account;
  spaceCopy = space;
  contextCopy = context;
  host = [spaceCopy host];
  v12 = [accountCopy lastUsedDateForSite:host inContext:contextCopy];

  if (v12)
  {
    safari_URL = [spaceCopy safari_URL];
    v16 = [WBSSavedAccountMatchCriteria criteriaForExactFQDNPasswordMatchesOfURL:safari_URL];

    [v16 setOptions:{objc_msgSend(v16, "options") | 0x21}];
    [v16 setContext:contextCopy];
    v17 = [(WBSSavedAccountStore *)self _getSavedAccountsMatchingCriteriaOnInternalQueue:v16];
    matchesForPasswordAutoFill = [v17 matchesForPasswordAutoFill];
    firstObject = [matchesForPasswordAutoFill firstObject];
    savedAccount = [firstObject savedAccount];

    v21 = [savedAccount isEqual:accountCopy];
    v23 = WBS_LOG_CHANNEL_PREFIXAutoFill(v21, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [(WBSSavedAccountStore *)v21 _shouldUpdateLastUsedDateForSavedAccount:v23 forProtectionSpace:v24 inContext:v25, v26, v27, v28, v29];
    }

    v30 = v21 ^ 1;
  }

  else
  {
    v31 = WBS_LOG_CHANNEL_PREFIXAutoFill(v13, v14);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [WBSSavedAccountStore _shouldUpdateLastUsedDateForSavedAccount:forProtectionSpace:inContext:];
    }

    v30 = 1;
  }

  return v30;
}

- (id)savedAccountForUserTypedSite:(id)site userName:(id)name
{
  v32 = *MEMORY[0x1E69E9840];
  siteCopy = site;
  nameCopy = name;
  savedAccounts = [(WBSSavedAccountStore *)self savedAccounts];
  v29 = 0;
  v30 = 0;
  v23 = siteCopy;
  LODWORD(self) = [objc_opt_class() getProtectionSpaceAndHighLevelDomainForUserTypedSite:siteCopy protectionSpace:&v30 highLevelDomain:&v29];
  v9 = v30;
  v10 = v29;
  v11 = 0;
  if (self)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = savedAccounts;
    v11 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v11)
    {
      v20 = v10;
      v21 = savedAccounts;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          protectionSpaces = [v14 protectionSpaces];
          v16 = [protectionSpaces containsObject:v9];
          if (v16 & 1) != 0 || ([v14 passkeyRelyingPartyID], v4 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v23, "isEqualToString:", v4)))
          {
            user = [v14 user];
            v18 = [user isEqualToString:nameCopy];

            if ((v16 & 1) == 0)
            {
            }

            if (v18)
            {
              v11 = v14;
              goto LABEL_16;
            }
          }

          else
          {
          }
        }

        v11 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v11);
LABEL_16:
      v10 = v20;
      savedAccounts = v21;
    }
  }

  return v11;
}

- (void)_migratePasswordsWithInvalidAuthenticationTypes
{
  v4 = 0;
  atomic_compare_exchange_strong(&self->_isMigratingKeychainItemsWithInvalidAuthenticationTypes, &v4, 1u);
  if (!v4)
  {
    v7[7] = v2;
    v7[8] = v3;
    mEMORY[0x1E695AC50] = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __71__WBSSavedAccountStore__migratePasswordsWithInvalidAuthenticationTypes__block_invoke;
    v7[3] = &unk_1E7CF16E0;
    v7[4] = self;
    [mEMORY[0x1E695AC50] safari_migrateKeychainItemsWithInvalidAuthenticationTypesWithCompletionHandler:v7];
  }
}

void __71__WBSSavedAccountStore__migratePasswordsWithInvalidAuthenticationTypes__block_invoke(uint64_t a1)
{
  v2 = 1;
  atomic_compare_exchange_strong((*(a1 + 32) + 240), &v2, 0);
  [*(a1 + 32) reset];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__WBSSavedAccountStore__migratePasswordsWithInvalidAuthenticationTypes__block_invoke_2;
  block[3] = &unk_1E7CF16E0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (BOOL)_isMigratingKeychainItemsWithInvalidAuthenticationTypes
{
  v2 = 1;
  atomic_compare_exchange_strong(&self->_isMigratingKeychainItemsWithInvalidAuthenticationTypes, &v2, v2);
  return v2 == 1;
}

- (void)_moveSavedAccount:(id)account toGroupWithID:(id)d completionHandler:(id)handler
{
  accountCopy = account;
  dCopy = d;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke;
  v15[3] = &unk_1E7CF4BB8;
  v16 = dCopy;
  selfCopy = self;
  v18 = accountCopy;
  v19 = handlerCopy;
  v12 = accountCopy;
  v13 = handlerCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

void __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) length])
  {
    v3 = *(*(a1 + 40) + 144);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_2;
    v43[3] = &unk_1E7CF2D20;
    v44 = *(a1 + 32);
    v4 = [v3 safari_firstObjectPassingTest:v43];
    if (!v4)
    {
      v25 = WBS_LOG_CHANNEL_PREFIXPasswords(0, v5);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_cold_1();
      }

      (*(*(a1 + 56) + 16))();
      v6 = v44;
      goto LABEL_36;
    }

    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(a1 + 48) sharedGroupID];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXPasswords(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_cold_5();
    }

LABEL_8:
    (*(*(a1 + 56) + 16))();
    goto LABEL_36;
  }

  if ([*v2 length])
  {
    v12 = +[WBSOngoingSharingGroupProvider sharedProvider];
    v13 = [v12 currentUserParticipantID];

    if (!v13)
    {
      v36 = WBS_LOG_CHANNEL_PREFIXPasswords(v14, v15);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_cold_2();
      }

      goto LABEL_8;
    }
  }

  v16 = [*(a1 + 48) sharedGroupID];
  v17 = [*(a1 + 48) credentialTypes];
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  if (v17 == 4)
  {
    v20 = [v18 _moveSignInWithAppleSavedAccount:v19 toGroupID:*v2];
    v22 = v20;
    if (v20 && (v20 = [*(a1 + 40) _copySavedAccount:*(a1 + 48) toGroup:v6], v20))
    {
      [*(a1 + 40) _removeSavedAccount:*(a1 + 48) fromGroupID:v16];
    }

    else
    {
      v35 = WBS_LOG_CHANNEL_PREFIXPasswords(v20, v21);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_cold_3(v16, v35, v6);
      }
    }
  }

  else
  {
    v26 = [v18 _copySavedAccount:v19 toGroup:v6];
    if (v26)
    {
      if (![v16 length])
      {
        v28 = [v6 groupID];
        v29 = [v28 length];

        if (v29)
        {
          [*(a1 + 48) _removeSharableDataFromPersonalPasswordSidecars];
          [*(a1 + 48) _removeSharableDataFromPersonalPasskeySidecars];
          [*(a1 + 48) _updatePasswordSidecarsIfNecessaryWithBlock:0];
          [*(a1 + 48) _updatePasskeySidecarsIfNecessaryWithBlock:0];
        }
      }

      [*(a1 + 40) _removeSavedAccount:*(a1 + 48) fromGroupID:v16];
      if ([*(a1 + 32) length])
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_335;
        aBlock[3] = &unk_1E7CF1708;
        v41 = *(a1 + 48);
        v42 = *(a1 + 32);
        v30 = _Block_copy(aBlock);
        v31 = [MEMORY[0x1E695E000] safari_browserDefaults];
        v32 = [v31 BOOLForKey:@"useOriginalContributorWorkaround"];

        if (v32)
        {
          v33 = dispatch_time(0, 1000000000);
          v34 = *(*(a1 + 40) + 120);
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_339;
          v38[3] = &unk_1E7CF1630;
          v39 = v30;
          dispatch_after(v33, v34, v38);
        }

        else
        {
          v30[2](v30);
        }
      }

      v22 = 1;
    }

    else
    {
      v37 = WBS_LOG_CHANNEL_PREFIXPasswords(v26, v27);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_cold_3(v16, v37, v6);
      }

      v22 = 0;
    }
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), v22, v23, v24);

LABEL_36:
}

uint64_t __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 groupID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_335(uint64_t a1)
{
  v1 = [*(a1 + 32) markOriginalContributorParticipantID];
  if ((v1 & 1) == 0)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXPasswords(v1, v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_335_cold_1();
    }
  }
}

- (BOOL)_copySavedAccount:(id)account toGroup:(id)group
{
  accountCopy = account;
  groupCopy = group;
  credentialTypes = [accountCopy credentialTypes];
  groupID = [groupCopy groupID];
  if (credentialTypes)
  {
    mEMORY[0x1E695AC50] = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    v11 = mEMORY[0x1E695AC50];
    if (groupCopy)
    {
      v12 = [mEMORY[0x1E695AC50] safari_copySavedAccountWithPassword:accountCopy toGroupWithID:groupID];
    }

    else
    {
      v12 = [mEMORY[0x1E695AC50] safari_copySavedAccountWithPasswordToPersonalKeychain:accountCopy];
    }

    v13 = v12;

    if ((v13 & 1) == 0)
    {
      v19 = WBS_LOG_CHANNEL_PREFIXPasswords(v14, v15);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [WBSSavedAccountStore _copySavedAccount:toGroup:];
      }

      goto LABEL_21;
    }

    [(WBSSavedAccountStore *)self _addSavedAccount:accountCopy toCachedDictionaryForSavedAccountsWithPasswordsForGroupID:groupID];
  }

  if ((credentialTypes & 2) != 0)
  {
    mEMORY[0x1E695AC50]2 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    v17 = mEMORY[0x1E695AC50]2;
    if (groupCopy)
    {
      v18 = [mEMORY[0x1E695AC50]2 safari_copySavedAccountWithPasskey:accountCopy toGroupWithID:groupID];
    }

    else
    {
      v18 = [mEMORY[0x1E695AC50]2 safari_copySavedAccountWithPasskeyToPersonalKeychain:accountCopy];
    }

    v20 = v18;

    if (v20)
    {
      [(WBSSavedAccountStore *)self _addSavedAccount:accountCopy toCachedDictionaryForSavedAccountsWithPasskeysForGroupID:groupID];
      goto LABEL_15;
    }

    v32 = WBS_LOG_CHANNEL_PREFIXPasswords(v21, v22);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [WBSSavedAccountStore _copySavedAccount:toGroup:];
    }

LABEL_21:
    v33 = 0;
    goto LABEL_25;
  }

LABEL_15:
  groupID2 = [groupCopy groupID];
  [accountCopy setSharedGroupID:groupID2];

  if (groupCopy)
  {
    groupIdentifiersToSavedAccounts = self->_groupIdentifiersToSavedAccounts;
    groupID3 = [groupCopy groupID];
    v26 = [(NSMutableDictionary *)groupIdentifiersToSavedAccounts objectForKeyedSubscript:groupID3];
    v27 = [v26 mutableCopy];
    v28 = v27;
    if (v27)
    {
      array = v27;
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    v34 = array;

    [v34 addObject:accountCopy];
    [v34 sortUsingSelector:sel_compare_];
    v35 = self->_groupIdentifiersToSavedAccounts;
    groupID4 = [groupCopy groupID];
    [(NSMutableDictionary *)v35 setObject:v34 forKeyedSubscript:groupID4];
  }

  else
  {
    v30 = [(NSArray *)self->_savedAccountsInPersonalKeychain mutableCopy];
    [(NSArray *)v30 addObject:accountCopy];
    [(NSArray *)v30 sortUsingSelector:sel_compare_];
    savedAccountsInPersonalKeychain = self->_savedAccountsInPersonalKeychain;
    self->_savedAccountsInPersonalKeychain = v30;
  }

  v33 = 1;
LABEL_25:

  return v33;
}

- (void)_removeSavedAccount:(id)account fromGroupID:(id)d
{
  accountCopy = account;
  dCopy = d;
  if ([accountCopy credentialTypes])
  {
    [accountCopy _deletePasswordCredentialsForGroupID:dCopy];
    [(WBSSavedAccountStore *)self _removeSavedAccount:accountCopy fromCachedDictionaryForSavedAccountsWithPasswordsForGroupID:dCopy];
  }

  if (([accountCopy credentialTypes] & 2) != 0)
  {
    [accountCopy _deletePasskeyCredentialForGroupID:dCopy];
    [(WBSSavedAccountStore *)self _removeSavedAccount:accountCopy fromCachedDictionaryForSavedAccountsWithPasskeysForGroupID:dCopy];
  }

  if ([dCopy length])
  {
    v7 = [(NSMutableDictionary *)self->_groupIdentifiersToSavedAccounts objectForKeyedSubscript:dCopy];
    v8 = [v7 mutableCopy];
    v9 = v8;
    if (v8)
    {
      array = v8;
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    v11 = array;

    [v11 removeObject:accountCopy];
    savedAccountsInPersonalKeychain = [v11 copy];
    [(NSMutableDictionary *)self->_groupIdentifiersToSavedAccounts setObject:savedAccountsInPersonalKeychain forKeyedSubscript:dCopy];
  }

  else
  {
    v11 = [(NSArray *)self->_savedAccountsInPersonalKeychain mutableCopy];
    [v11 removeObject:accountCopy];
    v12 = [v11 copy];
    savedAccountsInPersonalKeychain = self->_savedAccountsInPersonalKeychain;
    self->_savedAccountsInPersonalKeychain = v12;
  }
}

- (BOOL)_canMoveSavedAccount:(id)account toGroupWithID:(id)d
{
  v37 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  dCopy = d;
  if ([accountCopy isCurrentUserOriginalContributor] && objc_msgSend(accountCopy, "canUserEditSavedAccount"))
  {
    if ([dCopy length])
    {
      sharedAccountsGroups = self->_sharedAccountsGroups;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __59__WBSSavedAccountStore__canMoveSavedAccount_toGroupWithID___block_invoke;
      v34[3] = &unk_1E7CF2D20;
      v35 = dCopy;
      v9 = [(NSArray *)sharedAccountsGroups safari_firstObjectPassingTest:v34];
      v10 = v9;
      if (v9)
      {
        participants = [v9 participants];
        v12 = [participants safari_firstObjectPassingTest:&__block_literal_global_342];

        if (!v12 || [v12 permissionLevel])
        {

LABEL_10:
          sharedGroupID = [accountCopy sharedGroupID];
          v15 = WBSIsEqual(sharedGroupID, dCopy);

          if ((v15 & 1) == 0)
          {
            if ([accountCopy credentialTypes])
            {
              user = [accountCopy user];
              password = [accountCopy password];
              highLevelDomain = [accountCopy highLevelDomain];
              notesEntry = [accountCopy notesEntry];
              customTitle = [accountCopy customTitle];
              v30 = 0u;
              v31 = 0u;
              v32 = 0u;
              v33 = 0u;
              obj = [accountCopy protectionSpaces];
              v17 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v31;
                while (2)
                {
                  for (i = 0; i != v18; ++i)
                  {
                    if (*v31 != v19)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v21 = *(*(&v30 + 1) + 8 * i);
                    v22 = v10;
                    groupID = [v10 groupID];
                    LODWORD(v21) = [(WBSSavedAccountStore *)self canSaveUser:user password:password forProtectionSpace:v21 highLevelDomain:highLevelDomain notes:notesEntry customTitle:customTitle groupID:groupID error:0];

                    if (!v21)
                    {

                      v13 = 0;
                      v10 = v22;
                      goto LABEL_28;
                    }

                    v10 = v22;
                  }

                  v18 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
                  if (v18)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

            if (([accountCopy credentialTypes] & 2) == 0 || -[WBSSavedAccountStore _canMoveSavedAccountWithPasskey:toGroup:](self, "_canMoveSavedAccountWithPasskey:toGroup:", accountCopy, v10))
            {
              v13 = 1;
LABEL_28:

              goto LABEL_29;
            }
          }

LABEL_27:
          v13 = 0;
          goto LABEL_28;
        }
      }

      goto LABEL_27;
    }

    v10 = 0;
    goto LABEL_10;
  }

  v13 = 0;
LABEL_29:

  return v13;
}

uint64_t __59__WBSSavedAccountStore__canMoveSavedAccount_toGroupWithID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 groupID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)_moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID:(id)d isForAlreadyExitedGroup:(BOOL)group
{
  groupCopy = group;
  dCopy = d;
  if (groupCopy)
  {
    [(WBSSavedAccountStore *)self _recordGroupIdentifierForMovingContributedCredentialsBackToPersonalKeychain:dCopy];
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __130__WBSSavedAccountStore__moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID_isForAlreadyExitedGroup___block_invoke;
  v13[3] = &unk_1E7CF4CF0;
  v16 = &v18;
  v13[4] = self;
  v9 = dCopy;
  v14 = v9;
  v17 = groupCopy;
  v10 = v7;
  v15 = v10;
  [(WBSSavedAccountStore *)self performTaskEnsuringAllAccountSourcesAreLoadedOnQueue:queue task:v13];
  dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v11 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v11;
}

void __130__WBSSavedAccountStore__moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID_isForAlreadyExitedGroup___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupIDOnInternalQueue:*(a1 + 40) isForAlreadyExitedGroup:*(a1 + 64)];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

- (BOOL)_moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupIDOnInternalQueue:(id)queue isForAlreadyExitedGroup:(BOOL)group
{
  groupCopy = group;
  v119 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  v6 = WBS_LOG_CHANNEL_PREFIXPasswords(queueCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v118 = queueCopy;
    _os_log_impl(&dword_1B8447000, v6, OS_LOG_TYPE_DEFAULT, "Beginning sweep to move contributed credentials back to personal keychain from groupID: %{private}@", buf, 0xCu);
  }

  self->_shouldIgnoreKeychainUpdates = 1;
  if (groupCopy)
  {
    v7 = [(WBSSavedAccountStore *)self _loadAndMergeSavedAccountsFromGroupID:queueCopy intoAllSavedAccounts:0];
    v8 = [v7 safari_filterObjectsUsingBlock:&__block_literal_global_344];
    v116 = queueCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v116 count:1];
    [(WBSSavedAccountStore *)self _loadRecentlyDeletedSavedAccountsFromSharedGroupIDs:v9];

    v10 = [(NSMutableDictionary *)self->_sharedGroupIdentifiersToRecentlyDeletedSavedAccounts objectForKeyedSubscript:queueCopy];
    v11 = [v10 safari_filterObjectsUsingBlock:&__block_literal_global_344];
    v12 = v8;
    v13 = v11;
  }

  else
  {
    v7 = [(NSMutableDictionary *)self->_groupIdentifiersToSavedAccounts objectForKeyedSubscript:queueCopy];
    v10 = [v7 safari_filterObjectsUsingBlock:&__block_literal_global_344];
    v11 = [(NSMutableDictionary *)self->_sharedGroupIdentifiersToRecentlyDeletedSavedAccounts objectForKeyedSubscript:queueCopy];
    v8 = [v11 safari_filterObjectsUsingBlock:&__block_literal_global_344];
    v12 = v10;
    v13 = v8;
  }

  v14 = [v12 arrayByAddingObjectsFromArray:v13];

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = v14;
  v15 = [obj countByEnumeratingWithState:&v109 objects:v115 count:16];
  if (!v15)
  {
    LOBYTE(v104) = 1;
    goto LABEL_93;
  }

  v16 = v15;
  v104 = 1;
  v17 = *v110;
  v98 = *v110;
  do
  {
    v18 = 0;
    v100 = v16;
    do
    {
      if (*v110 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v109 + 1) + 8 * v18);
      credentialTypes = [v19 credentialTypes];
      if ((credentialTypes & 1) == 0)
      {
        v21 = 0;
        if ((credentialTypes & 2) != 0)
        {
          goto LABEL_49;
        }

        goto LABEL_74;
      }

      v102 = credentialTypes;
      v105 = v18;
      user = [v19 user];
      v106 = 0;
      v23 = 0;
      for (i = 0; i != 10; ++i)
      {
        if (i)
        {
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%ld)", user, i];
        }

        else
        {
          v25 = user;
        }

        v26 = v25;
        isRecentlyDeleted = [v19 isRecentlyDeleted];
        v28 = 8;
        if (isRecentlyDeleted)
        {
          v28 = 40;
        }

        selfCopy = self;
        v30 = *(&self->super.isa + v28);
        highLevelDomain = [v19 highLevelDomain];
        v32 = [v30 objectForKeyedSubscript:highLevelDomain];
        v33 = [v32 objectForKeyedSubscript:v26];
        allValues = [v33 allValues];

        v108[0] = MEMORY[0x1E69E9820];
        v108[1] = 3221225472;
        v108[2] = __145__WBSSavedAccountStore__moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupIDOnInternalQueue_isForAlreadyExitedGroup___block_invoke_2;
        v108[3] = &unk_1E7CF4788;
        v108[4] = v19;
        v35 = [allValues safari_firstObjectPassingTest:v108];
        v37 = v35;
        if (v35)
        {
          v38 = WBS_LOG_CHANNEL_PREFIXPasswords(v35, v36);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B8447000, v38, OS_LOG_TYPE_DEFAULT, "Skipping moving saved account from group to personal keychain because there is already an identical copy in personal keychain.", buf, 2u);
          }

          v39 = 1;
          [v37 _writeFormerlySharedSavedAccountMarkerForCredentialTypes:1];
          v23 = 1;
        }

        else if ([allValues count])
        {
          v39 = 0;
        }

        else
        {
          if (i)
          {
            v40 = v26;
          }

          else
          {
            v40 = v106;
          }

          mEMORY[0x1E695AC50] = [MEMORY[0x1E695AC50] sharedCredentialStorage];
          v42 = [mEMORY[0x1E695AC50] safari_copySavedAccountWithPasswordToPersonalKeychain:v19 withNewUsername:v40];

          v106 = v40;
          if (v42)
          {
            self = selfCopy;
            [(WBSSavedAccountStore *)selfCopy _addSavedAccount:v19 toCachedDictionaryForSavedAccountsWithPasswordsForGroupID:&stru_1F3064D08];
            v39 = 1;
            v23 = 1;
            goto LABEL_35;
          }

          v45 = WBS_LOG_CHANNEL_PREFIXPasswords(v43, v44);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            *buf = 138477827;
            v118 = queueCopy;
            _os_log_error_impl(&dword_1B8447000, v45, OS_LOG_TYPE_ERROR, "Failed to copy saved account with password back to personal keychain on exit from group %{private}@.", buf, 0xCu);
          }

          v39 = 0;
          v23 = 0;
          v104 = 0;
        }

        self = selfCopy;
LABEL_35:

        if (v39)
        {
          if (v23)
          {
            goto LABEL_41;
          }

LABEL_46:

          v104 = 0;
          v16 = v100;
          v17 = v98;
          goto LABEL_85;
        }
      }

      if ((v23 & 1) == 0)
      {
        v52 = WBS_LOG_CHANNEL_PREFIXPasswords(v46, v47);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          [(WBSSavedAccountStore *)v113 _moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupIDOnInternalQueue:v52 isForAlreadyExitedGroup:?];
        }

        goto LABEL_46;
      }

LABEL_41:

      v16 = v100;
      v17 = v98;
      if ((v102 & 2) == 0)
      {
        goto LABEL_73;
      }

      if (v106)
      {
        v48 = [WBSPublicKeyCredentialIdentifier alloc];
        passkeyCredentialID = [v19 passkeyCredentialID];
        sharedGroupID = [v19 sharedGroupID];
        v51 = [(WBSPublicKeyCredentialIdentifier *)v48 initWithCredentialID:passkeyCredentialID groupID:sharedGroupID];
        [(WBSSavedAccountStore *)self updateUserVisibleNameOnInternalQueue:v106 forPasskeyWithIdentifier:v51];

        v21 = v106;
      }

      else
      {
        v21 = 0;
      }

      v18 = v105;
LABEL_49:
      v105 = v18;
      v106 = v21;
      v53 = MEMORY[0x1E695AC58];
      passkeyRelyingPartyID = [v19 passkeyRelyingPartyID];
      v55 = [v53 safari_passkeySidecarProtectionSpaceForRelyingPartyIdentifier:passkeyRelyingPartyID];

      v56 = [WBSPair alloc];
      passkeyUserHandle = [v19 passkeyUserHandle];
      v58 = [(WBSPair *)v56 initWithFirst:passkeyUserHandle second:v55];

      isRecentlyDeleted2 = [v19 isRecentlyDeleted];
      v60 = 16;
      if (isRecentlyDeleted2)
      {
        v60 = 48;
      }

      v61 = [*(&self->super.isa + v60) objectForKeyedSubscript:v58];
      firstObject = [v61 firstObject];

      if (!firstObject)
      {
        goto LABEL_71;
      }

      v63 = [firstObject isEqualForMovingSharedSavedAccountsBackToPersonalKeychainOnGroupExit:v19];
      if (v63)
      {
        v65 = WBS_LOG_CHANNEL_PREFIXPasswords(v63, v64);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B8447000, v65, OS_LOG_TYPE_DEFAULT, "Skipping moving saved account from group to personal keychain because there is already an identical copy in personal keychain.", buf, 2u);
        }

        [firstObject _writeFormerlySharedSavedAccountMarkerForCredentialTypes:2];
        [(WBSSavedAccountStore *)self _removeSavedAccount:v19 fromGroupID:queueCopy];
        v66 = v104;
        goto LABEL_84;
      }

      if ([v19 isRecentlyDeleted])
      {
        [(WBSSavedAccountStore *)self _removeSavedAccount:firstObject fromGroupID:&stru_1F3064D08];
        mEMORY[0x1E695AC50]2 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
        v68 = [mEMORY[0x1E695AC50]2 safari_copySavedAccountWithPasskeyToPersonalKeychain:v19];

        v66 = v68 & v104;
        if (v68 && !groupCopy)
        {
          v66 = v104;
          [(WBSSavedAccountStore *)self _removeSavedAccount:v19 fromGroupID:queueCopy];
        }

        goto LABEL_84;
      }

      lastModifiedDate = [v19 lastModifiedDate];
      lastModifiedDate2 = [firstObject lastModifiedDate];
      v71 = [lastModifiedDate earlierDate:lastModifiedDate2];
      v103 = lastModifiedDate;
      LODWORD(lastModifiedDate) = [v71 isEqual:lastModifiedDate];

      v74 = WBS_LOG_CHANNEL_PREFIXPasswords(v72, v73);
      v75 = os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT);
      if (!lastModifiedDate)
      {
        if (v75)
        {
          *buf = 0;
          _os_log_impl(&dword_1B8447000, v74, OS_LOG_TYPE_DEFAULT, "Moving passkey already in personal keychain into Recently Deleted because there is a more recently modified conflicting passkey being moved to the personal keychain from a group.", buf, 2u);
        }

        v82 = [(WBSSavedAccountStore *)self _moveCredentialTypesToRecentlyDeletedOnInternalQueue:2 fromSavedAccount:firstObject];

LABEL_71:
        mEMORY[0x1E695AC50]3 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
        v84 = [mEMORY[0x1E695AC50]3 safari_copySavedAccountWithPasskeyToPersonalKeychain:v19];

        if ((v84 & 1) == 0)
        {
          v87 = WBS_LOG_CHANNEL_PREFIXPasswords(v85, v86);
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            *buf = 138477827;
            v118 = queueCopy;
            _os_log_error_impl(&dword_1B8447000, v87, OS_LOG_TYPE_ERROR, "Failed to copy saved account with passkey back to personal keychain on exit from group %{private}@.", buf, 0xCu);
          }

          v66 = 0;
          goto LABEL_84;
        }

        [(WBSSavedAccountStore *)self _addSavedAccount:v19 toCachedDictionaryForSavedAccountsWithPasskeysForGroupID:&stru_1F3064D08];

LABEL_73:
        v18 = v105;
        v21 = v106;
LABEL_74:
        if (!groupCopy)
        {
          [(WBSSavedAccountStore *)self _removeSavedAccount:v19 fromGroupID:queueCopy];
        }

        goto LABEL_86;
      }

      if (v75)
      {
        *buf = 0;
        _os_log_impl(&dword_1B8447000, v74, OS_LOG_TYPE_DEFAULT, "Moving shared passkey into Recently Deleted for personal keychain because there is already a more recently modified conflicting passkey in personal keychain.", buf, 2u);
      }

      v77 = [(WBSSavedAccountStore *)self _moveCredentialTypesToRecentlyDeletedOnInternalQueue:2 fromSavedAccount:v19];
      if (!v77)
      {
        v88 = WBS_LOG_CHANNEL_PREFIXPasswords(0, v76);
        if (!os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_82;
        }

        *buf = 138477827;
        v118 = queueCopy;
        v89 = v88;
        v90 = "Failed to move saved account with passkey back to personal keychain on exit from group %{private}@.";
LABEL_89:
        _os_log_error_impl(&dword_1B8447000, v89, OS_LOG_TYPE_ERROR, v90, buf, 0xCu);
        goto LABEL_82;
      }

      mEMORY[0x1E695AC50]4 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
      v79 = [mEMORY[0x1E695AC50]4 safari_copySavedAccountWithPasskeyToPersonalKeychain:v77];

      if (v79)
      {
        if (!groupCopy)
        {
          [(WBSSavedAccountStore *)self _removeSavedAccount:v77 fromGroupID:queueCopy];
        }

        v66 = v104;
        goto LABEL_83;
      }

      v91 = WBS_LOG_CHANNEL_PREFIXPasswords(v80, v81);
      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        *buf = 138477827;
        v118 = queueCopy;
        v89 = v91;
        v90 = "Failed to copy saved account with passkey back to personal keychain on exit from group %{private}@.";
        goto LABEL_89;
      }

LABEL_82:
      v66 = 0;
LABEL_83:

LABEL_84:
      v104 = v66;
LABEL_85:
      v18 = v105;
      v21 = v106;
LABEL_86:

      ++v18;
    }

    while (v18 != v16);
    v92 = [obj countByEnumeratingWithState:&v109 objects:v115 count:16];
    v16 = v92;
  }

  while (v92);
LABEL_93:

  self->_shouldIgnoreKeychainUpdates = 0;
  v93 = [obj count];
  if (v93)
  {
    [(WBSSavedAccountStore *)self reset];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __145__WBSSavedAccountStore__moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupIDOnInternalQueue_isForAlreadyExitedGroup___block_invoke_348;
    block[3] = &unk_1E7CF16E0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  if (groupCopy)
  {
    [(WBSSavedAccountStore *)self _recordGroupIdentifierForExitCleanup:queueCopy completionHandler:&__block_literal_global_351];
    v93 = [(WBSSavedAccountStore *)self _removeGroupID:queueCopy fromArrayForUserDefaultsKey:@"groupIdentifiersToMoveContributedCredentialsBackToPersonalKeychainFrom"];
  }

  v95 = WBS_LOG_CHANNEL_PREFIXPasswords(v93, v94);
  if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v118 = queueCopy;
    _os_log_impl(&dword_1B8447000, v95, OS_LOG_TYPE_DEFAULT, "Ended sweep to move contributed credentials back to personal keychain from groupID: %{private}@", buf, 0xCu);
  }

  return v104 & 1;
}

- (id)_groupIDArrayForUserDefaultsKey:(id)key
{
  v3 = MEMORY[0x1E695E000];
  keyCopy = key;
  safari_browserDefaults = [v3 safari_browserDefaults];
  v6 = [safari_browserDefaults valueForKey:keyCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_addGroupID:(id)d toArrayForUserDefaultsKey:(id)key
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  keyCopy = key;
  v8 = WBS_LOG_CHANNEL_PREFIXPasswords(keyCopy, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138478083;
    v14 = dCopy;
    v15 = 2112;
    v16 = keyCopy;
    _os_log_impl(&dword_1B8447000, v8, OS_LOG_TYPE_DEFAULT, "Logging groupID %{private}@ in user defaults list %@", &v13, 0x16u);
  }

  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v10 = [safari_browserDefaults valueForKey:keyCopy];
  array = [v10 mutableCopy];

  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
  }

  [array addObject:dCopy];
  safari_browserDefaults2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  [safari_browserDefaults2 setValue:array forKey:keyCopy];
}

- (void)_removeGroupID:(id)d fromArrayForUserDefaultsKey:(id)key
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  keyCopy = key;
  v8 = WBS_LOG_CHANNEL_PREFIXPasswords(keyCopy, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = dCopy;
    v15 = 2112;
    v16 = keyCopy;
    _os_log_impl(&dword_1B8447000, v8, OS_LOG_TYPE_DEFAULT, "Removing groupID %@ from user defaults list %@", &v13, 0x16u);
  }

  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v10 = [safari_browserDefaults valueForKey:keyCopy];
  v11 = [v10 mutableCopy];

  if (v11)
  {
    [v11 removeObject:dCopy];
    safari_browserDefaults2 = [MEMORY[0x1E695E000] safari_browserDefaults];
    [safari_browserDefaults2 setValue:v11 forKey:keyCopy];
  }
}

- (void)_addSavedAccount:(id)account toCachedDictionaryForSavedAccountsWithPasswordsForGroupID:(id)d
{
  accountCopy = account;
  dCopy = d;
  if ([dCopy length])
  {
    groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts;
    if (!groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v9 = self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts;
      self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts = dictionary;

      groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts;
    }

    v10 = [(NSMutableDictionary *)groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:dCopy];

    if (!v10)
    {
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      [(NSMutableDictionary *)self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts setObject:dictionary2 forKeyedSubscript:dCopy];
    }

    v12 = [(NSMutableDictionary *)self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:dCopy];
  }

  else
  {
    personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts;
    if (!personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts)
    {
      dictionary3 = [MEMORY[0x1E695DF90] dictionary];
      v15 = self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts;
      self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = dictionary3;

      personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts;
    }

    v12 = personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts;
  }

  v16 = v12;
  highLevelDomain = [accountCopy highLevelDomain];
  v18 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:highLevelDomain];

  if (!v18)
  {
    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    highLevelDomain2 = [accountCopy highLevelDomain];
    [(NSMutableDictionary *)v16 setObject:dictionary4 forKeyedSubscript:highLevelDomain2];
  }

  highLevelDomain3 = [accountCopy highLevelDomain];
  v22 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:highLevelDomain3];
  user = [accountCopy user];
  v24 = [v22 objectForKeyedSubscript:user];

  if (!v24)
  {
    dictionary5 = [MEMORY[0x1E695DF90] dictionary];
    highLevelDomain4 = [accountCopy highLevelDomain];
    v27 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:highLevelDomain4];
    user2 = [accountCopy user];
    [v27 setObject:dictionary5 forKeyedSubscript:user2];
  }

  highLevelDomain5 = [accountCopy highLevelDomain];
  v30 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:highLevelDomain5];
  user3 = [accountCopy user];
  v32 = [v30 objectForKeyedSubscript:user3];
  password = [accountCopy password];
  [v32 setObject:accountCopy forKeyedSubscript:password];
}

- (void)_removeSavedAccount:(id)account fromCachedDictionaryForSavedAccountsWithPasswordsForGroupID:(id)d
{
  dCopy = d;
  accountCopy = account;
  if ([dCopy length])
  {
    highLevelDomain2 = [(NSMutableDictionary *)self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:dCopy];
    highLevelDomain = [accountCopy highLevelDomain];
    user2 = [highLevelDomain2 objectForKeyedSubscript:highLevelDomain];
    user = [accountCopy user];
    v11 = [user2 objectForKeyedSubscript:user];
  }

  else
  {
    personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts;
    highLevelDomain2 = [accountCopy highLevelDomain];
    highLevelDomain = [(NSMutableDictionary *)personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:highLevelDomain2];
    user2 = [accountCopy user];
    v11 = [highLevelDomain objectForKeyedSubscript:user2];
  }

  password = [accountCopy password];

  [v11 removeObjectForKey:password];
}

- (void)_addSavedAccount:(id)account toCachedDictionaryForSavedAccountsWithPasskeysForGroupID:(id)d
{
  accountCopy = account;
  dCopy = d;
  if ([dCopy length])
  {
    groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys = self->_groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys;
    if (!groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v9 = self->_groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys;
      self->_groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys = dictionary;

      groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys = self->_groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys;
    }

    v10 = [(NSMutableDictionary *)groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys objectForKeyedSubscript:dCopy];

    if (!v10)
    {
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      [(NSMutableDictionary *)self->_groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys setObject:dictionary2 forKeyedSubscript:dCopy];
    }

    v12 = [(NSMutableDictionary *)self->_groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys objectForKeyedSubscript:dCopy];
  }

  else
  {
    personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys = self->_personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys;
    if (!personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys)
    {
      dictionary3 = [MEMORY[0x1E695DF90] dictionary];
      v15 = self->_personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys;
      self->_personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys = dictionary3;

      personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys = self->_personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys;
    }

    v12 = personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys;
  }

  v16 = v12;
  v17 = MEMORY[0x1E695AC58];
  passkeyRelyingPartyID = [accountCopy passkeyRelyingPartyID];
  v19 = [v17 safari_passkeySidecarProtectionSpaceForRelyingPartyIdentifier:passkeyRelyingPartyID];

  v20 = [WBSPair alloc];
  passkeyUserHandle = [accountCopy passkeyUserHandle];
  v22 = [(WBSPair *)v20 initWithFirst:passkeyUserHandle second:v19];

  array = [(NSMutableDictionary *)v16 objectForKeyedSubscript:v22];
  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
    [(NSMutableDictionary *)v16 setObject:array forKeyedSubscript:v22];
  }

  [array addObject:accountCopy];
}

- (void)_removeSavedAccount:(id)account fromCachedDictionaryForSavedAccountsWithPasskeysForGroupID:(id)d
{
  dCopy = d;
  v6 = MEMORY[0x1E695AC58];
  accountCopy = account;
  passkeyRelyingPartyID = [accountCopy passkeyRelyingPartyID];
  v9 = [v6 safari_passkeySidecarProtectionSpaceForRelyingPartyIdentifier:passkeyRelyingPartyID];

  v10 = [WBSPair alloc];
  passkeyUserHandle = [accountCopy passkeyUserHandle];

  v12 = [(WBSPair *)v10 initWithFirst:passkeyUserHandle second:v9];
  if ([dCopy length])
  {
    v13 = [(NSMutableDictionary *)self->_groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys objectForKeyedSubscript:dCopy];
  }

  else
  {
    v13 = self->_personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys;
  }

  v14 = v13;
  [(NSMutableDictionary *)v13 removeObjectForKey:v12];
}

- (id)_allInternetPasswordEntriesFromGroupID:(id)d
{
  v3 = MEMORY[0x1E695AC50];
  dCopy = d;
  sharedCredentialStorage = [v3 sharedCredentialStorage];
  v6 = [sharedCredentialStorage safari_allPasswordCredentialItemsFromGroupID:dCopy];

  return v6;
}

- (void)_addNewGroupToCachedSharingGroups:(id)groups
{
  groupsCopy = groups;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__WBSSavedAccountStore__addNewGroupToCachedSharingGroups___block_invoke;
  v7[3] = &unk_1E7CF1708;
  v7[4] = self;
  v8 = groupsCopy;
  v6 = groupsCopy;
  dispatch_sync(queue, v7);
}

void __58__WBSSavedAccountStore__addNewGroupToCachedSharingGroups___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 144);
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = *(a1 + 32);
    v5 = *(v4 + 144);
    *(v4 + 144) = v3;

    v2 = *(*(a1 + 32) + 144);
  }

  v6 = [v2 arrayByAddingObject:*(a1 + 40)];
  v7 = *(a1 + 32);
  v8 = *(v7 + 144);
  *(v7 + 144) = v6;

  v9 = *(a1 + 32);
  if (!*(v9 + 24))
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    v11 = *(a1 + 32);
    v12 = *(v11 + 24);
    *(v11 + 24) = v10;

    v9 = *(a1 + 32);
  }

  if (!*(v9 + 32))
  {
    v13 = [MEMORY[0x1E695DF90] dictionary];
    v14 = *(a1 + 32);
    v15 = *(v14 + 32);
    *(v14 + 32) = v13;
  }

  v19 = [*(a1 + 40) groupID];
  v16 = [MEMORY[0x1E695DF70] array];
  [*(*(a1 + 32) + 136) setObject:v16 forKeyedSubscript:v19];

  v17 = [MEMORY[0x1E695DF90] dictionary];
  [*(*(a1 + 32) + 24) setObject:v17 forKeyedSubscript:v19];

  v18 = [MEMORY[0x1E695DF90] dictionary];
  [*(*(a1 + 32) + 32) setObject:v18 forKeyedSubscript:v19];
}

- (void)_clearExpiredRecentlyDeletedNotificationDates
{
  v22 = *MEMORY[0x1E69E9840];
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [safari_browserDefaults dictionaryForKey:@"lastRecentlyDeletedNotificationDateDictionary"];
  v4 = [v3 mutableCopy];

  if (v4)
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v6 = [MEMORY[0x1E695DF00] now];
    v7 = [currentCalendar dateByAddingUnit:16 value:-30 toDate:v6 options:0];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    allKeys = [v4 allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [v4 objectForKeyedSubscript:v13];
          v15 = [v14 earlierDate:v7];
          v16 = [v15 isEqual:v14];

          if (v16)
          {
            [v4 removeObjectForKey:v13];
          }
        }

        v10 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }
}

- (NSArray)sharedSavedAccountsInRecentlyDeletedToNotifyUserAbout
{
  v42 = *MEMORY[0x1E69E9840];
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v4 = [safari_browserDefaults BOOLForKey:@"DebugIgnoreLastNotificationDateAndFiveDayGracePeriodForRecentlyDeletedNotifications"];

  if (v4)
  {
    safari_browserDefaults2 = [MEMORY[0x1E695E000] safari_browserDefaults];
    [safari_browserDefaults2 removeObjectForKey:@"DebugIgnoreLastNotificationDateAndFiveDayGracePeriodForRecentlyDeletedNotifications"];
  }

  array = [MEMORY[0x1E695DF70] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  selfCopy = self;
  allRecentlyDeletedSavedAccounts = [(WBSSavedAccountStore *)self allRecentlyDeletedSavedAccounts];
  v7 = [allRecentlyDeletedSavedAccounts countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    v35 = v4;
    v34 = allRecentlyDeletedSavedAccounts;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(allRecentlyDeletedSavedAccounts);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        if (([v11 isSavedInPersonalKeychain] & 1) == 0)
        {
          if ([v11 isCurrentUserOriginalContributor])
          {
            participantIDThatMovedSavedAccountToRecentlyDeleted = [v11 participantIDThatMovedSavedAccountToRecentlyDeleted];
            originalContributorParticipantID = [v11 originalContributorParticipantID];
            v14 = [participantIDThatMovedSavedAccountToRecentlyDeleted isEqual:originalContributorParticipantID];

            if ((v14 & 1) == 0)
            {
              v15 = [MEMORY[0x1E695DF00] now];
              currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
              lastModifiedDate = [v11 lastModifiedDate];
              v18 = [currentCalendar dateByAddingUnit:16 value:30 toDate:lastModifiedDate options:0];

              if (([v15 safari_numberOfDaysUntilDate:v18] & 0x8000000000000000) == 0)
              {
                if (v4)
                {
                  [array addObject:v11];
                }

                else
                {
                  currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
                  v20 = [currentCalendar2 dateByAddingUnit:16 value:-5 toDate:v15 options:0];

                  lastModifiedDate2 = [v11 lastModifiedDate];
                  v22 = [lastModifiedDate2 earlierDate:v20];
                  v23 = [v22 isEqual:v20];

                  if ((v23 & 1) == 0)
                  {
                    currentCalendar3 = [MEMORY[0x1E695DEE8] currentCalendar];
                    v25 = [currentCalendar3 dateByAddingUnit:16 value:-7 toDate:v15 options:0];

                    lastRecentlyDeletedNotificationDate = [v11 lastRecentlyDeletedNotificationDate];
                    if (!lastRecentlyDeletedNotificationDate || (v27 = lastRecentlyDeletedNotificationDate, [v11 lastRecentlyDeletedNotificationDate], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "earlierDate:", v25), v28 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v28, "isEqual:", v25), v28, v33, v27, (v32 & 1) == 0))
                    {
                      [array addObject:v11];
                      [v11 setLastRecentlyDeletedNotificationDate:v15];
                    }
                  }

                  v4 = v35;
                  allRecentlyDeletedSavedAccounts = v34;
                }
              }
            }
          }
        }
      }

      v8 = [allRecentlyDeletedSavedAccounts countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v8);
  }

  [(WBSSavedAccountStore *)selfCopy _clearExpiredRecentlyDeletedNotificationDates];
  v29 = [array copy];

  return v29;
}

- (void)_recordGroupIdentifierForMovingContributedCredentialsBackToPersonalKeychain:(id)keychain
{
  keychainCopy = keychain;
  if ([keychainCopy length])
  {
    [(WBSSavedAccountStore *)self _addGroupID:keychainCopy toArrayForUserDefaultsKey:@"groupIdentifiersToMoveContributedCredentialsBackToPersonalKeychainFrom"];
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXPasswords(0, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [WBSSavedAccountStore _recordGroupIdentifierForMovingContributedCredentialsBackToPersonalKeychain:];
    }
  }
}

- (void)_recordGroupIdentifierForExitCleanup:(id)cleanup completionHandler:(id)handler
{
  cleanupCopy = cleanup;
  handlerCopy = handler;
  if (![cleanupCopy length])
  {
    v9 = WBS_LOG_CHANNEL_PREFIXPasswords(0, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [WBSSavedAccountStore _recordGroupIdentifierForMovingContributedCredentialsBackToPersonalKeychain:];
      if (!handlerCopy)
      {
        goto LABEL_6;
      }
    }

    else if (!handlerCopy)
    {
      goto LABEL_6;
    }

    v10 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"com.apple.AuthenticationServices.CredentialSharingGroupsErrorDomain" code:1 privacyPreservingDescription:@"Failed find group with given group ID."];
    handlerCopy[2](handlerCopy, v10);

    goto LABEL_6;
  }

  [(WBSSavedAccountStore *)self _addGroupID:cleanupCopy toArrayForUserDefaultsKey:@"groupIdentifiersToDeleteAllItemsFrom"];
  [(WBSSavedAccountStore *)self _performCleanupForExitedGroupsIfNecessary:handlerCopy];
LABEL_6:
}

- (BOOL)_hasPersonWithParticipantID:(id)d contributedSavedAccountsToGroupWithID:(id)iD
{
  dCopy = d;
  v7 = [(WBSSavedAccountStore *)self savedAccountsForGroupID:iD];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__WBSSavedAccountStore__hasPersonWithParticipantID_contributedSavedAccountsToGroupWithID___block_invoke;
  v10[3] = &unk_1E7CF4788;
  v11 = dCopy;
  v8 = dCopy;
  LOBYTE(dCopy) = [v7 safari_containsObjectPassingTest:v10];

  return dCopy;
}

uint64_t __90__WBSSavedAccountStore__hasPersonWithParticipantID_contributedSavedAccountsToGroupWithID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 originalContributorParticipantID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __86__WBSSavedAccountStore__moveContributedSavedAccountsBackToPersonalKeychainIfNecessary__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 224) = 1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v15;
    *&v4 = 138412290;
    v12 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [*(a1 + 32) _moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupIDOnInternalQueue:v8 isForAlreadyExitedGroup:{1, v12}];
        if ((v9 & 1) == 0)
        {
          v11 = WBS_LOG_CHANNEL_PREFIXPasswords(v9, v10);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = v12;
            v19 = v8;
            _os_log_error_impl(&dword_1B8447000, v11, OS_LOG_TYPE_ERROR, "Failed to move contributed credentials back to personal keychain from group ID: %@", buf, 0xCu);
          }
        }

        [*(a1 + 32) _removeGroupID:v8 fromArrayForUserDefaultsKey:@"groupIdentifiersToMoveContributedCredentialsBackToPersonalKeychainFrom"];
      }

      v5 = [v2 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v5);
  }

  *(*(a1 + 32) + 224) = 0;
  [*(a1 + 32) reset];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__WBSSavedAccountStore__moveContributedSavedAccountsBackToPersonalKeychainIfNecessary__block_invoke_355;
  block[3] = &unk_1E7CF16E0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_performCleanupForExitedGroupsIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if ([(WBSSavedAccountStore *)self _canPerformMaintenanceTasks])
  {
    v5 = [(WBSSavedAccountStore *)self _groupIDArrayForUserDefaultsKey:@"groupIdentifiersToDeleteAllItemsFrom"];
    if ([v5 count])
    {
      v6 = +[WBSOngoingSharingGroupProvider sharedProvider];
      queue = self->_queue;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __66__WBSSavedAccountStore__performCleanupForExitedGroupsIfNecessary___block_invoke;
      v8[3] = &unk_1E7CF4D38;
      v10 = necessaryCopy;
      v8[4] = self;
      v9 = v5;
      [v6 performTaskOnQueueAfterFetchingGroups:queue task:v8];
    }

    else
    {
      (*(necessaryCopy + 2))(necessaryCopy, 0);
    }
  }

  else
  {
    (*(necessaryCopy + 2))(necessaryCopy, 0);
  }
}

void __66__WBSSavedAccountStore__performCleanupForExitedGroupsIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  if (!v3)
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = +[WBSOngoingSharingGroupProvider sharedProvider];
    v9 = [v8 cachedGroups];
    v10 = [v9 safari_mapObjectsUsingBlock:&__block_literal_global_359];
    v11 = [v7 setWithArray:v10];

    *(*(a1 + 32) + 224) = 1;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v12 = *(a1 + 40);
    v13 = [v12 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v13)
    {
      v15 = v13;
      v35 = a1;
      v34 = 0;
      v16 = 0;
      v17 = *v38;
      do
      {
        v18 = 0;
        do
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v37 + 1) + 8 * v18);
          v20 = WBS_LOG_CHANNEL_PREFIXPasswords(v13, v14);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138477827;
            v42 = v19;
            _os_log_impl(&dword_1B8447000, v20, OS_LOG_TYPE_DEFAULT, "Deleting all items for exited groupID: %{private}@", buf, 0xCu);
          }

          v21 = [v11 containsObject:v19];
          if (v21)
          {
            v23 = WBS_LOG_CHANNEL_PREFIXPasswords(v21, v22);
            v13 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
            if (v13)
            {
              *buf = 138543362;
              v42 = v19;
              _os_log_error_impl(&dword_1B8447000, v23, OS_LOG_TYPE_ERROR, "Skipping clean up for group that user still has access to: %{public}@", buf, 0xCu);
            }
          }

          else
          {
            v24 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
            v25 = [v24 safari_deleteAllItemsForGroupID:v19];

            if (v25)
            {
              v28 = [*(v35 + 32) _removeGroupID:v19 fromArrayForUserDefaultsKey:@"groupIdentifiersToDeleteAllItemsFrom"];
              v30 = WBS_LOG_CHANNEL_PREFIXPasswords(v28, v29);
              v13 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
              if (v13)
              {
                *buf = 138477827;
                v42 = v19;
                _os_log_impl(&dword_1B8447000, v30, OS_LOG_TYPE_DEFAULT, "Successfully deleted all items for exited groupID: %{private}@", buf, 0xCu);
              }

              v16 = 1;
            }

            else
            {
              v31 = WBS_LOG_CHANNEL_PREFIXPasswords(v26, v27);
              v13 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
              if (v13)
              {
                *buf = 138543362;
                v42 = v19;
                _os_log_error_impl(&dword_1B8447000, v31, OS_LOG_TYPE_ERROR, "Failed to delete all items from group with identifier: %{public}@", buf, 0xCu);
              }

              v34 = 1;
            }
          }

          ++v18;
        }

        while (v15 != v18);
        v13 = [v12 countByEnumeratingWithState:&v37 objects:v43 count:16];
        v15 = v13;
      }

      while (v13);

      a1 = v35;
      *(*(v35 + 32) + 224) = 0;
      if (v16)
      {
        [*(v35 + 32) reset];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __66__WBSSavedAccountStore__performCleanupForExitedGroupsIfNecessary___block_invoke_360;
        block[3] = &unk_1E7CF16E0;
        block[4] = *(v35 + 32);
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }

      v5 = 0;
      if (v34)
      {
        v32 = *(v35 + 48);
        v33 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"com.apple.AuthenticationServices.CredentialSharingGroupsErrorDomain" code:3 privacyPreservingDescription:0];
        (*(v32 + 16))(v32, v33);

LABEL_30:
        goto LABEL_31;
      }
    }

    else
    {

      *(*(a1 + 32) + 224) = 0;
    }

    (*(*(a1 + 48) + 16))();
    goto LABEL_30;
  }

  v6 = WBS_LOG_CHANNEL_PREFIXPasswords(v3, v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __66__WBSSavedAccountStore__performCleanupForExitedGroupsIfNecessary___block_invoke_cold_1(v6);
  }

  (*(*(a1 + 48) + 16))();
LABEL_31:
}

- (void)performTaskEnsuringAllAccountSourcesAreLoadedOnQueue:(id)queue task:(id)task
{
  queueCopy = queue;
  taskCopy = task;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__WBSSavedAccountStore_performTaskEnsuringAllAccountSourcesAreLoadedOnQueue_task___block_invoke;
  block[3] = &unk_1E7CF1908;
  block[4] = self;
  v12 = queueCopy;
  v13 = taskCopy;
  v9 = taskCopy;
  v10 = queueCopy;
  dispatch_async(queue, block);
}

void __82__WBSSavedAccountStore_performTaskEnsuringAllAccountSourcesAreLoadedOnQueue_task___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 144) && *(v2 + 72))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);

    dispatch_async(v3, v4);
  }

  else
  {
    v5 = +[WBSOngoingSharingGroupProvider sharedProvider];
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(v7 + 120);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__WBSSavedAccountStore_performTaskEnsuringAllAccountSourcesAreLoadedOnQueue_task___block_invoke_2;
    v9[3] = &unk_1E7CF4D60;
    v9[4] = v7;
    v10 = v6;
    v11 = *(a1 + 48);
    [v5 performTaskEnsuringGroupsAreLoadedOnQueue:v8 task:v9];
  }
}

void __82__WBSSavedAccountStore_performTaskEnsuringAllAccountSourcesAreLoadedOnQueue_task___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateCachedSharedAccountGroupsOnInternalQueue];
  v2 = [*(a1 + 32) _savedAccounts];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  dispatch_async(v3, v4);
}

- (void)setDontSaveMarkerForSavedAccountsWithProtectionSpace:(id)space
{
  spaceCopy = space;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__WBSSavedAccountStore_setDontSaveMarkerForSavedAccountsWithProtectionSpace___block_invoke;
  block[3] = &unk_1E7CF16E0;
  v8 = spaceCopy;
  v6 = spaceCopy;
  dispatch_async(queue, block);
}

void __77__WBSSavedAccountStore_setDontSaveMarkerForSavedAccountsWithProtectionSpace___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695AC48]);
  v3 = +[WBSDontSaveMarker dontSaveMarker];
  v5 = [v2 initWithUser:v3 password:@" " persistence:3];

  v4 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  [v4 safari_setDefaultCredential:v5 forHTMLFormProtectionSpace:*(a1 + 32)];
}

- (void)removeDontSaveMarkerForProtectionSpace:(id)space
{
  spaceCopy = space;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__WBSSavedAccountStore_removeDontSaveMarkerForProtectionSpace___block_invoke;
  block[3] = &unk_1E7CF16E0;
  v8 = spaceCopy;
  v6 = spaceCopy;
  dispatch_async(queue, block);
}

void __63__WBSSavedAccountStore_removeDontSaveMarkerForProtectionSpace___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  v3 = [v2 credentialsForProtectionSpace:*(a1 + 32)];
  v4 = [v3 copy];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__WBSSavedAccountStore_removeDontSaveMarkerForProtectionSpace___block_invoke_2;
  v6[3] = &unk_1E7CF4D88;
  v7 = v2;
  v8 = *(a1 + 32);
  v5 = v2;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __63__WBSSavedAccountStore_removeDontSaveMarkerForProtectionSpace___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 user];
  v6 = +[WBSDontSaveMarker dontSaveMarker];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11 = *MEMORY[0x1E695AB88];
    v12[0] = MEMORY[0x1E695E118];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v9 removeCredential:v4 forProtectionSpace:v8 options:v10];
  }
}

- (void)_updateLastOneTimeShareDateforSavedAccountIfNeeded:(id)needed
{
  neededCopy = needed;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__WBSSavedAccountStore__updateLastOneTimeShareDateforSavedAccountIfNeeded___block_invoke;
  v7[3] = &unk_1E7CF1708;
  v7[4] = self;
  v8 = neededCopy;
  v6 = neededCopy;
  dispatch_sync(queue, v7);
}

void __75__WBSSavedAccountStore__updateLastOneTimeShareDateforSavedAccountIfNeeded___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    v4 = MEMORY[0x1E695DF00];
    v5 = a3;
    v6 = [v4 date];
    [v5 setLastOneTimeShareDateForPasskey:v6];
  }
}

- (void)_moveCredentialTypesToRecentlyDeleted:(int64_t)deleted fromSavedAccount:(id)account completionHandler:(id)handler
{
  accountCopy = account;
  handlerCopy = handler;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __97__WBSSavedAccountStore__moveCredentialTypesToRecentlyDeleted_fromSavedAccount_completionHandler___block_invoke;
  v13[3] = &unk_1E7CF4948;
  v13[4] = self;
  v14 = accountCopy;
  v15 = handlerCopy;
  deletedCopy = deleted;
  v11 = handlerCopy;
  v12 = accountCopy;
  dispatch_async(queue, v13);
}

void __97__WBSSavedAccountStore__moveCredentialTypesToRecentlyDeleted_fromSavedAccount_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _moveCredentialTypesToRecentlyDeletedOnInternalQueue:*(a1 + 56) fromSavedAccount:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

- (id)_moveCredentialTypesToRecentlyDeletedOnInternalQueue:(int64_t)queue fromSavedAccount:(id)account
{
  accountCopy = account;
  [(WBSSavedAccountStore *)self _ensureNoRecentlyDeletedSavedAccountsConflictWithSavedAccount:accountCopy];
  mEMORY[0x1E695AC50] = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  v8 = [mEMORY[0x1E695AC50] safari_moveCredentialTypesToRecentlyDeleted:queue onSavedAccount:accountCopy];

  if (v8)
  {
    if ([accountCopy credentialTypes] == queue)
    {
      queueCopy = 3;
    }

    else
    {
      queueCopy = queue;
    }

    [accountCopy setLastRecentlyDeletedNotificationDate:0];
    v12 = accountCopy;
    v13 = v12;
    if (queueCopy > 3)
    {
      if ((queueCopy - 8) >= 2)
      {
        v15 = 0;
        if (queueCopy == 4)
        {
LABEL_25:

          goto LABEL_26;
        }

LABEL_20:
        if ([v13 isSavedInSharedGroup])
        {
          safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
          v20 = [safari_browserDefaults BOOLForKey:@"useOriginalContributorWorkaround"];

          if (v20)
          {
            v21 = dispatch_time(0, 1000000000);
            queue = self->_queue;
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __94__WBSSavedAccountStore__moveCredentialTypesToRecentlyDeletedOnInternalQueue_fromSavedAccount___block_invoke;
            block[3] = &unk_1E7CF16E0;
            v25 = v13;
            dispatch_after(v21, queue, block);
          }

          else
          {
            [v13 markParticipantIDThatMovedSavedAccountToRecentlyDeleted];
          }
        }

        v13 = v13;
        v15 = v13;
        goto LABEL_25;
      }
    }

    else if (queueCopy != 1)
    {
      if (queueCopy != 2)
      {
        if (queueCopy == 3)
        {
          [v12 setIsRecentlyDeleted:1];
          [(WBSSavedAccountStore *)self _removeSavedAccount:v13 fromCachedCollectionsForCredentialTypes:3];
          [(WBSSavedAccountStore *)self _addSavedAccountToRecentlyDeletedCachedCollections:v13];
        }

        goto LABEL_20;
      }

      _movePasskeyCredentialToNewSavedAccount = [v12 _movePasskeyCredentialToNewSavedAccount];
      [_movePasskeyCredentialToNewSavedAccount setIsRecentlyDeleted:1];
      goto LABEL_19;
    }

    _movePasskeyCredentialToNewSavedAccount = [v12 _movePasswordCredentialToNewSavedAccount];
    [_movePasskeyCredentialToNewSavedAccount setIsRecentlyDeleted:1];
    totpGenerators = [_movePasskeyCredentialToNewSavedAccount totpGenerators];
    v18 = [totpGenerators count];

    if (v18)
    {
      [v13 setTOTPGenerator:0];
    }

LABEL_19:
    [(WBSSavedAccountStore *)self _addSavedAccountToRecentlyDeletedCachedCollections:_movePasskeyCredentialToNewSavedAccount];

    v13 = _movePasskeyCredentialToNewSavedAccount;
    goto LABEL_20;
  }

  v14 = WBS_LOG_CHANNEL_PREFIXPasswords(v9, v10);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [WBSSavedAccountStore _moveCredentialTypesToRecentlyDeletedOnInternalQueue:fromSavedAccount:];
  }

  v15 = 0;
LABEL_26:

  return v15;
}

- (void)_ensureNoRecentlyDeletedSavedAccountsConflictWithSavedAccount:(id)account
{
  accountCopy = account;
  [(WBSSavedAccountStore *)self _ensureRecentlyDeletedSavedAccountsAreLoadedOnInternalQueue];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__WBSSavedAccountStore__ensureNoRecentlyDeletedSavedAccountsConflictWithSavedAccount___block_invoke;
  aBlock[3] = &unk_1E7CF4DB0;
  v5 = accountCopy;
  v19 = v5;
  selfCopy = self;
  v6 = _Block_copy(aBlock);
  if ([v5 isSavedInSharedGroup])
  {
    sharedGroupIdentifiersToRecentlyDeletedSavedAccounts = self->_sharedGroupIdentifiersToRecentlyDeletedSavedAccounts;
    sharedGroupID = [v5 sharedGroupID];
    v9 = [(NSMutableDictionary *)sharedGroupIdentifiersToRecentlyDeletedSavedAccounts objectForKeyedSubscript:sharedGroupID];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __86__WBSSavedAccountStore__ensureNoRecentlyDeletedSavedAccountsConflictWithSavedAccount___block_invoke_368;
    v16[3] = &unk_1E7CF4DD8;
    v10 = &v17;
    v17 = v6;
    v11 = v6;
    [v9 enumerateObjectsUsingBlock:v16];
  }

  else
  {
    recentlyDeletedSavedAccountsInPersonalKeychain = self->_recentlyDeletedSavedAccountsInPersonalKeychain;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __86__WBSSavedAccountStore__ensureNoRecentlyDeletedSavedAccountsConflictWithSavedAccount___block_invoke_2;
    v14[3] = &unk_1E7CF4DD8;
    v10 = &v15;
    v15 = v6;
    v13 = v6;
    [(NSMutableArray *)recentlyDeletedSavedAccountsInPersonalKeychain enumerateObjectsUsingBlock:v14];
  }
}

void __86__WBSSavedAccountStore__ensureNoRecentlyDeletedSavedAccountsConflictWithSavedAccount___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) shouldOverrideRecentlyDeletedSavedAccountWhenDeleted:v3];
  if (v4)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXPasswords(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [v3 user];
      v9 = [v3 highLevelDomain];
      v10 = 141558787;
      v11 = 1752392040;
      v12 = 2117;
      v13 = v8;
      v14 = 2160;
      v15 = 1752392040;
      v16 = 2117;
      v17 = v9;
      _os_log_impl(&dword_1B8447000, v7, OS_LOG_TYPE_DEFAULT, "Deleting account for %{sensitive, mask.hash}@ on %{sensitive, mask.hash}@ from recently deleted to make room for another account", &v10, 0x2Au);
    }

    [*(a1 + 40) _removeCredentialTypes:3 forSavedAccount:v3];
  }
}

- (void)_recoverRecentlyDeletedSavedAccount:(id)account completionHandler:(id)handler
{
  accountCopy = account;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__WBSSavedAccountStore__recoverRecentlyDeletedSavedAccount_completionHandler___block_invoke;
  block[3] = &unk_1E7CF1A28;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = accountCopy;
  v9 = handlerCopy;
  v10 = accountCopy;
  dispatch_async(queue, block);
}

uint64_t __78__WBSSavedAccountStore__recoverRecentlyDeletedSavedAccount_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isRecentlyDeleted];
  if ((v2 & 1) == 0)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXPasswords(v2, v3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __78__WBSSavedAccountStore__recoverRecentlyDeletedSavedAccount_completionHandler___block_invoke_cold_1();
    }

    return (*(*(a1 + 48) + 16))();
  }

  v4 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  v5 = [v4 safari_recoverSavedAccountFromRecentlyDeleted:*(a1 + 32)];

  if ((v5 & 1) == 0)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXPasswords(v6, v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __78__WBSSavedAccountStore__recoverRecentlyDeletedSavedAccount_completionHandler___block_invoke_cold_2();
    }

    return (*(*(a1 + 48) + 16))();
  }

  [*(a1 + 32) setIsRecentlyDeleted:0];
  [*(a1 + 40) _removeSavedAccountFromRecentlyDeletedCachedCollections:*(a1 + 32)];
  [*(a1 + 32) setLastRecentlyDeletedNotificationDate:0];
  if ([*(a1 + 32) isSavedInSharedGroup])
  {
    [*(a1 + 32) clearParticipantIDThatMovedSavedAccountToRecentlyDeleted];
  }

  v8 = *(*(a1 + 48) + 16);

  return v8();
}

- (void)savedAccountsMatchingCriteria:(id)criteria withCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  criteriaCopy = criteria;
  handlerCopy = handler;
  v9 = WBS_LOG_CHANNEL_PREFIXPasswords(handlerCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138739971;
    v17 = criteriaCopy;
    _os_log_impl(&dword_1B8447000, v9, OS_LOG_TYPE_DEFAULT, "Enqueueing asynchronous query for saved accounts matching criteria %{sensitive}@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__WBSSavedAccountStore_savedAccountsMatchingCriteria_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7CF2AA8;
  v14 = criteriaCopy;
  v15 = handlerCopy;
  block[4] = self;
  v11 = criteriaCopy;
  v12 = handlerCopy;
  dispatch_async(queue, block);
}

void __76__WBSSavedAccountStore_savedAccountsMatchingCriteria_withCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) _getSavedAccountsMatchingCriteriaOnInternalQueue:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

- (id)_getSavedAccountsMatchingCriteriaOnInternalQueue:(id)queue
{
  queueCopy = queue;
  v6 = WBS_LOG_CHANNEL_PREFIXPasswords(queueCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8447000, v6, OS_LOG_TYPE_DEFAULT, "Beginning query for saved accounts matching criteria", buf, 2u);
  }

  context = [queueCopy context];

  if (!context)
  {
    v8 = +[WBSSavedAccountContext defaultContext];
    [queueCopy setContext:v8];
  }

  if (!self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts)
  {
    _loadSavedAccounts = [(WBSSavedAccountStore *)self _loadSavedAccounts];
  }

  v10 = [(WBSSavedAccountStore *)self _fetchCurrentAutoFillPasskeysWithCriteria:queueCopy];
  first = [v10 first];
  second = [v10 second];
  passkeyCredentialIdentifier = [queueCopy passkeyCredentialIdentifier];
  v14 = [(WBSSavedAccountStore *)self _relyingPartyURLForPasskeyCredentialIdentifierOnInternalQueue:passkeyCredentialIdentifier credentialIdentifiersToAutoFillPasskeys:first];

  v15 = [(WBSSavedAccountStore *)self _getSavedAccountTreeMatchesWithCriteriaOnInternalQueue:queueCopy relyingPartyURL:v14];
  allValues = [first allValues];
  firstObject = [allValues firstObject];
  requestUsedNonEmptyAllowList = [firstObject requestUsedNonEmptyAllowList];

  allKeys = [first allKeys];
  [(WBSSavedAccountStore *)self _pruneSavedAccountTreeMatchesOnInternalQueue:v15 basedOnUsernameAndPasswordCriteria:queueCopy autoFillPasskeyIdentifiers:allKeys keepAllPasskeyMatches:requestUsedNonEmptyAllowList];

  v20 = [(WBSSavedAccountStore *)self _getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:v15 withCriteria:queueCopy mergingAutoFillPasskeys:first nearbyDeviceOptions:second];
  v22 = WBS_LOG_CHANNEL_PREFIXPasswords(v20, v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_1B8447000, v22, OS_LOG_TYPE_DEFAULT, "Finished query for saved accounts matching criteria", v24, 2u);
  }

  return v20;
}

- (void)getSavedAccountsMatchingCriteria:(id)criteria withSynchronousCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  criteriaCopy = criteria;
  handlerCopy = handler;
  v9 = WBS_LOG_CHANNEL_PREFIXPasswords(handlerCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138739971;
    *(&buf + 4) = criteriaCopy;
    _os_log_impl(&dword_1B8447000, v9, OS_LOG_TYPE_DEFAULT, "Enqueueing synchronous query for saved accounts matching criteria %{sensitive}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__16;
  v18 = __Block_byref_object_dispose__16;
  v19 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__WBSSavedAccountStore_getSavedAccountsMatchingCriteria_withSynchronousCompletionHandler___block_invoke;
  block[3] = &unk_1E7CF1730;
  p_buf = &buf;
  block[4] = self;
  v11 = criteriaCopy;
  v13 = v11;
  dispatch_sync(queue, block);
  handlerCopy[2](handlerCopy, *(*(&buf + 1) + 40));

  _Block_object_dispose(&buf, 8);
}

void __90__WBSSavedAccountStore_getSavedAccountsMatchingCriteria_withSynchronousCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getSavedAccountsMatchingCriteriaOnInternalQueue:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_relyingPartyURLForPasskeyCredentialIdentifierOnInternalQueue:(id)queue credentialIdentifiersToAutoFillPasskeys:(id)passkeys
{
  queueCopy = queue;
  passkeysCopy = passkeys;
  v8 = passkeysCopy;
  if (queueCopy)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__16;
    v33 = __Block_byref_object_dispose__16;
    v34 = 0;
    passkeysDataInPersonalKeychain = self->_passkeysDataInPersonalKeychain;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __126__WBSSavedAccountStore__relyingPartyURLForPasskeyCredentialIdentifierOnInternalQueue_credentialIdentifiersToAutoFillPasskeys___block_invoke;
    v27[3] = &unk_1E7CF4E00;
    v10 = queueCopy;
    v28 = v10;
    v11 = [(NSArray *)passkeysDataInPersonalKeychain safari_firstObjectPassingTest:v27];
    v12 = v30[5];
    v30[5] = v11;

    v13 = v30[5];
    if (v13 || (-[NSDictionary allValues](self->_groupIdentifiersToPasskeysData, "allValues"), v14 = objc_claimAutoreleasedReturnValue(), v24[0] = MEMORY[0x1E69E9820], v24[1] = 3221225472, v24[2] = __126__WBSSavedAccountStore__relyingPartyURLForPasskeyCredentialIdentifierOnInternalQueue_credentialIdentifiersToAutoFillPasskeys___block_invoke_2, v24[3] = &unk_1E7CF4E28, v26 = &v29, v25 = v10, [v14 enumerateObjectsUsingBlock:v24], v14, v25, (v13 = v30[5]) != 0))
    {
      v15 = MEMORY[0x1E695DFF8];
      v16 = [v13 objectForKeyedSubscript:@"CredentialRelyingPartyID"];
      v17 = [@"https://" stringByAppendingString:v16];
      v18 = [v15 URLWithString:v17];
    }

    else
    {
      v18 = 0;
    }

    _Block_object_dispose(&v29, 8);
  }

  else if ([passkeysCopy count])
  {
    v19 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v19 setScheme:@"https"];
    allValues = [v8 allValues];
    firstObject = [allValues firstObject];
    relyingPartyIdentifier = [firstObject relyingPartyIdentifier];
    [v19 setHost:relyingPartyIdentifier];

    v18 = [v19 URL];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t __126__WBSSavedAccountStore__relyingPartyURLForPasskeyCredentialIdentifierOnInternalQueue_credentialIdentifiersToAutoFillPasskeys___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"CredentialID"];
  v4 = [v3 isEqualToData:*(a1 + 32)];

  return v4;
}

void __126__WBSSavedAccountStore__relyingPartyURLForPasskeyCredentialIdentifierOnInternalQueue_credentialIdentifiersToAutoFillPasskeys___block_invoke_2(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __126__WBSSavedAccountStore__relyingPartyURLForPasskeyCredentialIdentifierOnInternalQueue_credentialIdentifiersToAutoFillPasskeys___block_invoke_3;
  v7[3] = &unk_1E7CF4E00;
  v8 = *(a1 + 32);
  v4 = [a2 safari_firstObjectPassingTest:v7];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t __126__WBSSavedAccountStore__relyingPartyURLForPasskeyCredentialIdentifierOnInternalQueue_credentialIdentifiersToAutoFillPasskeys___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"CredentialID"];
  v4 = [v3 isEqualToData:*(a1 + 32)];

  return v4;
}

- (id)_getSavedAccountTreeMatchesWithCriteriaOnInternalQueue:(id)queue relyingPartyURL:(id)l
{
  v87 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  lCopy = l;
  v9 = WBS_LOG_CHANNEL_PREFIXAutoFill(lCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8447000, v9, OS_LOG_TYPE_INFO, "Getting credential matches by looking through account store by high level domain.", buf, 2u);
  }

  if ([queueCopy queryShouldOnlyIncludePasswordsWithoutWebsites])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    obj = self->_savedAccountsWithPasswords;
    v11 = [(NSArray *)obj countByEnumeratingWithState:&v70 objects:v86 count:16];
    if (v11)
    {
      v12 = v11;
      v58 = lCopy;
      v60 = queueCopy;
      v13 = *v71;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v71 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v70 + 1) + 8 * i);
          if (([v15 hasValidWebsite] & 1) == 0)
          {
            user = [v15 user];
            v84 = user;
            v81 = v15;
            v82 = &unk_1F308E4E0;
            v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
            v83 = v17;
            v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
            v85 = v18;
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];

            v20 = [WBSSavedAccountTreeMatch alloc];
            highLevelDomain = [v15 highLevelDomain];
            v22 = [(WBSSavedAccountTreeMatch *)v20 initWithDomain:highLevelDomain savedAccountTree:v19 matchLevel:2];
            highLevelDomain2 = [v15 highLevelDomain];
            [dictionary setObject:v22 forKeyedSubscript:highLevelDomain2];
          }
        }

        v12 = [(NSArray *)obj countByEnumeratingWithState:&v70 objects:v86 count:16];
      }

      while (v12);
      lCopy = v58;
      queueCopy = v60;
    }
  }

  else
  {
    obj = [queueCopy URL];
    host = [(NSArray *)obj host];
    safari_highLevelDomainForPasswordManager = [host safari_highLevelDomainForPasswordManager];
    host2 = [lCopy host];
    safari_highLevelDomainForPasswordManager2 = [host2 safari_highLevelDomainForPasswordManager];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v28 = [(NSMutableDictionary *)self->_allSavedAccountsHighLevelDomainToUsernameToCredentialTypesToSavedAccounts objectForKeyedSubscript:safari_highLevelDomainForPasswordManager];
    if (v28)
    {
      v29 = [[WBSSavedAccountTreeMatch alloc] initWithDomain:host savedAccountTree:v28 matchLevel:4];
      [dictionary setObject:v29 forKeyedSubscript:safari_highLevelDomainForPasswordManager];
    }

    v30 = [(NSMutableDictionary *)self->_allSavedAccountsHighLevelDomainToUsernameToCredentialTypesToSavedAccounts objectForKeyedSubscript:safari_highLevelDomainForPasswordManager2];
    v56 = v30;
    if (v30)
    {
      v31 = [[WBSSavedAccountTreeMatch alloc] initWithDomain:host savedAccountTree:v30 matchLevel:4];
      [dictionary setObject:v31 forKeyedSubscript:safari_highLevelDomainForPasswordManager2];
    }

    associatedDomainsForURL = [queueCopy associatedDomainsForURL];
    queryShouldReturnSavedAccountsMatchingAssociatedDomains = [queueCopy queryShouldReturnSavedAccountsMatchingAssociatedDomains];
    v64 = v28;
    v57 = safari_highLevelDomainForPasswordManager2;
    if (queryShouldReturnSavedAccountsMatchingAssociatedDomains)
    {
      v54 = host2;
      v55 = host;
      v63 = safari_highLevelDomainForPasswordManager;
      v59 = lCopy;
      v61 = queueCopy;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v34 = associatedDomainsForURL;
      v35 = [v34 countByEnumeratingWithState:&v66 objects:v80 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v67;
        do
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v67 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = *(*(&v66 + 1) + 8 * j);
            safari_highLevelDomainForPasswordManager3 = [v39 safari_highLevelDomainForPasswordManager];
            v41 = [(NSMutableDictionary *)self->_allSavedAccountsHighLevelDomainToUsernameToCredentialTypesToSavedAccounts objectForKeyedSubscript:safari_highLevelDomainForPasswordManager3];
            if (v41)
            {
              v42 = [dictionary objectForKeyedSubscript:safari_highLevelDomainForPasswordManager3];

              if (v42)
              {
                v45 = WBS_LOG_CHANNEL_PREFIXAutoFill(v43, v44);
                v28 = v64;
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138739971;
                  v75 = v63;
                  _os_log_debug_impl(&dword_1B8447000, v45, OS_LOG_TYPE_DEBUG, "Associated domain with same high level domain as query URL: %{sensitive}@", buf, 0xCu);
                }
              }

              else
              {
                v46 = [[WBSSavedAccountTreeMatch alloc] initWithDomain:v39 savedAccountTree:v41 matchLevel:3];
                [dictionary setObject:v46 forKeyedSubscript:safari_highLevelDomainForPasswordManager3];

                v28 = v64;
              }
            }
          }

          v36 = [v34 countByEnumeratingWithState:&v66 objects:v80 count:16];
        }

        while (v36);
      }

      lCopy = v59;
      queueCopy = v61;
      host2 = v54;
      host = v55;
      safari_highLevelDomainForPasswordManager = v63;
      safari_highLevelDomainForPasswordManager2 = v57;
    }

    v47 = WBS_LOG_CHANNEL_PREFIXAutoFill(queryShouldReturnSavedAccountsMatchingAssociatedDomains, v33);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = v47;
      v49 = host2;
      v50 = [dictionary count];
      allObjects = [associatedDomainsForURL allObjects];
      v52 = [allObjects componentsJoinedByString:{@", "}];
      *buf = 134218499;
      v75 = v50;
      host2 = v49;
      v76 = 2117;
      v77 = safari_highLevelDomainForPasswordManager;
      v78 = 2117;
      v79 = v52;
      _os_log_impl(&dword_1B8447000, v48, OS_LOG_TYPE_DEFAULT, "Found %lu tree matches for %{sensitive}@ and associated domains: %{sensitive}@", buf, 0x20u);

      safari_highLevelDomainForPasswordManager2 = v57;
      v28 = v64;
    }
  }

  return dictionary;
}

- (id)_fetchCurrentAutoFillPasskeysWithCriteria:(id)criteria
{
  criteriaCopy = criteria;
  queryShouldOmitAutoFillPasskeyMatches = [criteriaCopy queryShouldOmitAutoFillPasskeyMatches];
  if (queryShouldOmitAutoFillPasskeyMatches)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXAutoFill(queryShouldOmitAutoFillPasskeyMatches, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8447000, v7, OS_LOG_TYPE_DEFAULT, "Omitting AutoFill passkey matches as requested by match criteria.", buf, 2u);
    }

    v8 = [WBSPair alloc];
    v9 = [(WBSPair *)v8 initWithFirst:MEMORY[0x1E695E0F8] second:0];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    *buf = 0;
    v29 = buf;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__16;
    v32 = __Block_byref_object_dispose__16;
    v33 = 0;
    v11 = dispatch_group_create();
    dispatch_group_enter(v11);
    authenticationServicesAgentProxy = self->_authenticationServicesAgentProxy;
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __66__WBSSavedAccountStore__fetchCurrentAutoFillPasskeysWithCriteria___block_invoke;
    v23 = &unk_1E7CF4E78;
    v24 = criteriaCopy;
    v15 = dictionary;
    v25 = v15;
    v27 = buf;
    v16 = v11;
    v26 = v16;
    [(WBSAuthenticationServicesAgentProxy *)authenticationServicesAgentProxy getPasskeysForRunningAssertionWithApplicationIdentifier:bundleIdentifier withCompletionHandler:&v20];

    v17 = dispatch_time(0, 3000000000);
    dispatch_group_wait(v16, v17);
    v18 = [WBSPair alloc];
    v9 = [(WBSPair *)v18 initWithFirst:v15 second:*(v29 + 5), v20, v21, v22, v23];

    _Block_object_dispose(buf, 8);
  }

  return v9;
}

void __66__WBSSavedAccountStore__fetchCurrentAutoFillPasskeysWithCriteria___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __66__WBSSavedAccountStore__fetchCurrentAutoFillPasskeysWithCriteria___block_invoke_2;
  v21[3] = &unk_1E7CF4E50;
  v22 = *(a1 + 32);
  v6 = [a2 safari_filterObjectsUsingBlock:v21];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = *(a1 + 40);
        v13 = [v11 identifier];
        [v12 setObject:v11 forKeyedSubscript:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v5;
  v16 = v5;

  dispatch_group_leave(*(a1 + 48));
}

BOOL __66__WBSSavedAccountStore__fetchCurrentAutoFillPasskeysWithCriteria___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) userNameQuery];
  v5 = [v4 matchingType];

  v6 = [*(a1 + 32) userNameQuery];
  v7 = [v6 string];

  if (v5 || [v7 length])
  {
    v8 = [v3 username];
    v9 = [*(a1 + 32) userNameQuery];
    v10 = [WBSSavedAccountTreeMatch userName:v8 matchesQuery:v9];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)_pruneSavedAccountTreeMatchesOnInternalQueue:(id)queue basedOnUsernameAndPasswordCriteria:(id)criteria autoFillPasskeyIdentifiers:(id)identifiers keepAllPasskeyMatches:(BOOL)matches
{
  matchesCopy = matches;
  v32 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  criteriaCopy = criteria;
  identifiersCopy = identifiers;
  queryShouldReturnSavedAccountsWithEmptyUsernames = [criteriaCopy queryShouldReturnSavedAccountsWithEmptyUsernames];
  queryShouldIncludePasskeyMatchesForNonAutoFillContext = [criteriaCopy queryShouldIncludePasskeyMatchesForNonAutoFillContext];
  queryShouldOmitAutoFillPasskeyMatches = [criteriaCopy queryShouldOmitAutoFillPasskeyMatches];
  queryShouldIncludeSavedAccountsWithDoNotSaveMarkers = [criteriaCopy queryShouldIncludeSavedAccountsWithDoNotSaveMarkers];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v24 = queueCopy;
  obj = [queueCopy allValues];
  v15 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    if (matchesCopy)
    {
      v18 = identifiersCopy;
    }

    else
    {
      v18 = MEMORY[0x1E695E0F0];
    }

    v19 = queryShouldIncludePasskeyMatchesForNonAutoFillContext | queryShouldOmitAutoFillPasskeyMatches;
    do
    {
      v20 = 0;
      do
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v27 + 1) + 8 * v20);
        if ((queryShouldIncludeSavedAccountsWithDoNotSaveMarkers & 1) == 0)
        {
          [*(*(&v27 + 1) + 8 * v20) pruneDontSaveTrees];
        }

        if (queryShouldReturnSavedAccountsWithEmptyUsernames)
        {
          [v21 pruneEmptyUsernameTrees];
        }

        userNameQuery = [criteriaCopy userNameQuery];
        [v21 pruneUsernameTreesNotMatchingUserNameQuery:userNameQuery orPasskeyIdentifiers:v18];

        titleQuery = [criteriaCopy titleQuery];
        if (titleQuery)
        {
          [v21 pruneUsernameTreesNotMatchingTitleQuery:titleQuery];
        }

        if ((v19 & 1) == 0)
        {
          [v21 pruneTreesWithoutPasswordOrMatchingPasskeyIdentifiers:identifiersCopy];
        }

        ++v20;
      }

      while (v16 != v20);
      v16 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v16);
  }
}

- (id)_getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:(id)queue withCriteria:(id)criteria mergingAutoFillPasskeys:(id)passkeys nearbyDeviceOptions:(id)options
{
  v230 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  criteriaCopy = criteria;
  passkeysCopy = passkeys;
  optionsCopy = options;
  queryShouldReturnSavedAccountsMatchingHighLevelAndSimplifiedDomains = [criteriaCopy queryShouldReturnSavedAccountsMatchingHighLevelAndSimplifiedDomains];
  v12 = [criteriaCopy URL];
  host = [v12 host];
  safari_highLevelDomainForPasswordManager = [host safari_highLevelDomainForPasswordManager];
  v183 = host;
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@", host];
  v175 = [v14 safari_simplifiedUserVisibleURLStringWithSimplifications:330 forDisplayOnly:0 simplifiedStringOffset:0];

  port = [v12 port];
  integerValue = [port integerValue];

  v152 = v12;
  scheme = [v12 scheme];
  passkeyCredentialIdentifier = [criteriaCopy passkeyCredentialIdentifier];
  v17 = [passkeyCredentialIdentifier base64EncodedStringWithOptions:0];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  array5 = [MEMORY[0x1E695DF70] array];
  v145 = passkeysCopy;
  v159 = [passkeysCopy safari_mapAndFilterKeysUsingBlock:&__block_literal_global_390];
  v210 = 0u;
  v211 = 0u;
  v212 = 0u;
  v213 = 0u;
  v146 = queueCopy;
  obj = [queueCopy allValues];
  v156 = v17;
  v149 = [obj countByEnumeratingWithState:&v210 objects:v229 count:16];
  if (v149)
  {
    v148 = *v211;
    v161 = criteriaCopy;
    v163 = array;
    do
    {
      for (i = 0; i != v149; ++i)
      {
        if (*v211 != v148)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v210 + 1) + 8 * i);
        flattenedSavedAccountsFromTree = [v20 flattenedSavedAccountsFromTree];
        if ([criteriaCopy queryShouldOnlyIncludePasswordsWithoutWebsites])
        {
          v150 = flattenedSavedAccountsFromTree;
          v151 = i;
          v208 = 0u;
          v209 = 0u;
          v206 = 0u;
          v207 = 0u;
          v22 = flattenedSavedAccountsFromTree;
          v23 = [v22 countByEnumeratingWithState:&v206 objects:v228 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v207;
            do
            {
              for (j = 0; j != v24; ++j)
              {
                if (*v207 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v206 + 1) + 8 * j);
                v28 = [WBSSavedAccountMatch alloc];
                context = [criteriaCopy context];
                v30 = [(WBSSavedAccountMatch *)v28 initWithSavedAccount:v27 protectionSpace:0 context:context matchLevel:1 autoFillPasskey:0];

                [array addObject:v30];
              }

              v24 = [v22 countByEnumeratingWithState:&v206 objects:v228 count:16];
            }

            while (v24);
          }

LABEL_91:
          flattenedSavedAccountsFromTree = v150;

          v17 = v156;
          i = v151;
          goto LABEL_92;
        }

        if ([v20 matchLevel] == 4)
        {
          v150 = flattenedSavedAccountsFromTree;
          v151 = i;
          v204 = 0u;
          v205 = 0u;
          v202 = 0u;
          v203 = 0u;
          v160 = flattenedSavedAccountsFromTree;
          v166 = [v160 countByEnumeratingWithState:&v202 objects:v227 count:16];
          if (!v166)
          {
            goto LABEL_91;
          }

          v165 = *v203;
          while (1)
          {
            v31 = 0;
            v32 = v156;
            v33 = array5;
            do
            {
              if (*v203 != v165)
              {
                objc_enumerationMutation(v160);
              }

              v171 = v31;
              v34 = *(*(&v202 + 1) + 8 * v31);
              v167 = [v34 isDefaultCredentialForFullyQualifiedHostname:v183];
              passkeyCredentialID = [v34 passkeyCredentialID];
              v36 = [passkeyCredentialID isEqualToString:v32];

              if (v36)
              {
                v37 = [WBSSavedAccountMatch alloc];
                context2 = [criteriaCopy context];
                v39 = [(WBSSavedAccountMatch *)v37 initWithSavedAccount:v34 protectionSpace:0 context:context2 matchLevel:1 autoFillPasskey:0];
                [v33 addObject:v39];
                v40 = v171;
                goto LABEL_64;
              }

              passkeyCredentialID2 = [v34 passkeyCredentialID];
              v42 = [v159 objectForKeyedSubscript:passkeyCredentialID2];

              v164 = v42;
              if (v42)
              {
                v43 = [WBSSavedAccountMatch alloc];
                context3 = [criteriaCopy context];
                v45 = [(WBSSavedAccountMatch *)v43 initWithSavedAccount:v34 protectionSpace:0 context:context3 matchLevel:1 autoFillPasskey:v42];
                v46 = v33;
              }

              else
              {
                if (![criteriaCopy queryShouldIncludePasskeyMatchesForNonAutoFillContext] || objc_msgSend(v34, "credentialTypes") != 2 || (objc_msgSend(v34, "passkeyRelyingPartyID"), v47 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend(v47, "isEqualToString:", v183), v47, !v48))
                {
                  protectionSpaces = [v34 protectionSpaces];
                  v157 = v34;
                  protectionSpacesForAdditionalSites = [v34 protectionSpacesForAdditionalSites];
                  v53 = [protectionSpaces arrayByAddingObjectsFromArray:protectionSpacesForAdditionalSites];

                  v200 = 0u;
                  v201 = 0u;
                  v198 = 0u;
                  v199 = 0u;
                  v54 = v53;
                  v55 = [v54 countByEnumeratingWithState:&v198 objects:v226 count:16];
                  v173 = v54;
                  if (v55)
                  {
                    v56 = v55;
                    v179 = 0;
                    v181 = 0;
                    context2 = 0;
                    v177 = *v199;
                    v57 = array3;
                    if (v167)
                    {
                      v57 = v33;
                    }

                    v168 = v57;
                    v169 = 0;
                    while (2)
                    {
                      for (k = 0; k != v56; ++k)
                      {
                        if (*v199 != v177)
                        {
                          objc_enumerationMutation(v173);
                        }

                        v59 = *(*(&v198 + 1) + 8 * k);
                        host2 = [v59 host];
                        v61 = [v59 port] != integerValue && (integerValue || (objc_msgSend(v59, "safari_hasDefaultPortForProtocol") & 1) == 0) && (integerValue != objc_msgSend(v59, "safari_defaultPortForProtocol") || objc_msgSend(v59, "port") != 0);
                        protocol = [v59 protocol];
                        v63 = [protocol isEqualToString:scheme];

                        safari_highLevelDomainForPasswordManager2 = [host2 safari_highLevelDomainForPasswordManager];
                        v65 = [safari_highLevelDomainForPasswordManager2 isEqualToString:safari_highLevelDomainForPasswordManager];

                        if (v65)
                        {
                          v66 = v59;

                          context2 = v66;
                        }

                        v67 = [host2 isEqualToString:v183];
                        if (!v61 && (v63 & 1) != 0 && v67)
                        {
                          v33 = array5;
                          v75 = v163;
                          if (v167)
                          {
                            v75 = array5;
                          }

                          v73 = v75;

                          v72 = v59;
                          v74 = 1;
                          goto LABEL_57;
                        }

                        v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@", host2];
                        v69 = [v68 safari_simplifiedUserVisibleURLStringWithSimplifications:330 forDisplayOnly:0 simplifiedStringOffset:0];

                        if ([v69 isEqualToString:v175])
                        {
                          v70 = v168;

                          v71 = v59;
                          v179 = v70;
                          v181 = v71;
                          v169 = 2;
                        }
                      }

                      v56 = [v173 countByEnumeratingWithState:&v198 objects:v226 count:16];
                      if (v56)
                      {
                        continue;
                      }

                      break;
                    }

                    v33 = array5;
                    v73 = v179;
                    v72 = v181;
                    v74 = v169;
                    if (!v169)
                    {
                      criteriaCopy = v161;
                      v32 = v156;
                      array = v163;
                      goto LABEL_59;
                    }

LABEL_57:
                    v76 = [WBSSavedAccountMatch alloc];
                    criteriaCopy = v161;
                    context4 = [v161 context];
                    v181 = v72;
                    v78 = [(WBSSavedAccountMatch *)v76 initWithSavedAccount:v157 protectionSpace:v72 context:context4 matchLevel:v74 autoFillPasskey:0];

                    v179 = v73;
                    [v73 addObject:v78];
                    v32 = v156;
                    array = v163;
LABEL_61:
                  }

                  else
                  {

                    context2 = 0;
                    v179 = 0;
                    v181 = 0;
LABEL_59:
                    if (queryShouldReturnSavedAccountsMatchingHighLevelAndSimplifiedDomains)
                    {
                      v79 = [WBSSavedAccountMatch alloc];
                      context5 = [criteriaCopy context];
                      v78 = [(WBSSavedAccountMatch *)v79 initWithSavedAccount:v157 protectionSpace:context2 context:context5 matchLevel:4 autoFillPasskey:0];

                      [array2 addObject:v78];
                      goto LABEL_61;
                    }
                  }

                  v40 = v171;

                  context3 = v173;
                  v45 = v181;
                  goto LABEL_63;
                }

                context3 = [MEMORY[0x1E695AC58] safari_HTMLFormProtectionSpaceForURL:v152];
                v49 = [WBSSavedAccountMatch alloc];
                context6 = [criteriaCopy context];
                v45 = [(WBSSavedAccountMatch *)v49 initWithSavedAccount:v34 protectionSpace:context3 context:context6 matchLevel:1];

                v46 = array;
              }

              [v46 addObject:v45];
              context2 = 0;
              v40 = v171;
LABEL_63:

              v39 = v164;
LABEL_64:

              v31 = v40 + 1;
            }

            while (v31 != v166);
            v166 = [v160 countByEnumeratingWithState:&v202 objects:v227 count:16];
            if (!v166)
            {
              goto LABEL_91;
            }
          }
        }

        if ([v20 matchLevel] == 3)
        {
          v150 = flattenedSavedAccountsFromTree;
          v151 = i;
          v196 = 0u;
          v197 = 0u;
          v194 = 0u;
          v195 = 0u;
          v170 = flattenedSavedAccountsFromTree;
          v178 = [v170 countByEnumeratingWithState:&v194 objects:v225 count:16];
          if (!v178)
          {
            goto LABEL_91;
          }

          v172 = *v195;
          v174 = v20;
          while (1)
          {
            v81 = 0;
            do
            {
              if (*v195 != v172)
              {
                objc_enumerationMutation(v170);
              }

              v182 = v81;
              v82 = *(*(&v194 + 1) + 8 * v81);
              domain = [v20 domain];
              protectionSpaces2 = [v82 protectionSpaces];
              v180 = v82;
              protectionSpacesForAdditionalSites2 = [v82 protectionSpacesForAdditionalSites];
              v86 = [protectionSpaces2 arrayByAddingObjectsFromArray:protectionSpacesForAdditionalSites2];

              v192 = 0u;
              v193 = 0u;
              v190 = 0u;
              v191 = 0u;
              v87 = v86;
              v88 = [v87 countByEnumeratingWithState:&v190 objects:v224 count:16];
              if (!v88)
              {
LABEL_83:

                goto LABEL_85;
              }

              v89 = v88;
              v90 = *v191;
LABEL_75:
              v91 = 0;
              while (1)
              {
                if (*v191 != v90)
                {
                  objc_enumerationMutation(v87);
                }

                v92 = *(*(&v190 + 1) + 8 * v91);
                host3 = [v92 host];
                if ([v92 port] == integerValue)
                {
                  protocol2 = [v92 protocol];
                  v95 = [protocol2 isEqualToString:scheme];

                  v96 = [host3 isEqualToString:domain];
                  if (v95)
                  {
                    if (v96)
                    {
                      break;
                    }
                  }
                }

                if (v89 == ++v91)
                {
                  v89 = [v87 countByEnumeratingWithState:&v190 objects:v224 count:16];
                  if (!v89)
                  {
                    goto LABEL_83;
                  }

                  goto LABEL_75;
                }
              }

              firstObject = v92;

              if (!firstObject)
              {
LABEL_85:
                firstObject = [v87 firstObject];
              }

              v98 = [WBSSavedAccountMatch alloc];
              criteriaCopy = v161;
              context7 = [v161 context];
              v100 = [(WBSSavedAccountMatch *)v98 initWithSavedAccount:v180 protectionSpace:firstObject context:context7 matchLevel:3];

              if ([v180 isDefaultCredentialForFullyQualifiedHostname:v183])
              {
                v101 = array5;
              }

              else
              {
                v101 = array4;
              }

              [v101 addObject:v100];

              v81 = v182 + 1;
              array = v163;
              v20 = v174;
            }

            while (v182 + 1 != v178);
            v178 = [v170 countByEnumeratingWithState:&v194 objects:v225 count:16];
            if (!v178)
            {
              goto LABEL_91;
            }
          }
        }

LABEL_92:
      }

      v149 = [obj countByEnumeratingWithState:&v210 objects:v229 count:16];
    }

    while (v149);
  }

  v104 = WBS_LOG_CHANNEL_PREFIXAutoFill(v102, v103);
  v105 = os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT);
  if (v105)
  {
    v107 = v104;
    host4 = [v152 host];
    userNameQuery = [criteriaCopy userNameQuery];
    string = [userNameQuery string];
    userNameQuery2 = [criteriaCopy userNameQuery];
    matchingTypeDescriptionString = [userNameQuery2 matchingTypeDescriptionString];
    *buf = 141559043;
    v215 = 1752392040;
    v216 = 2117;
    v217 = host4;
    v218 = 2160;
    v219 = 1752392040;
    v220 = 2117;
    v221 = string;
    v222 = 2112;
    v223 = matchingTypeDescriptionString;
    v17 = v156;
    _os_log_impl(&dword_1B8447000, v107, OS_LOG_TYPE_DEFAULT, "Executed query for host '%{sensitive, mask.hash}@' with partial username '%{sensitive, mask.hash}@', %@", buf, 0x34u);
  }

  v113 = WBS_LOG_CHANNEL_PREFIXAutoFill(v105, v106);
  v114 = os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG);
  v115 = v114;
  v117 = WBS_LOG_CHANNEL_PREFIXAutoFill(v114, v116);
  v118 = v117;
  if (v115)
  {
    v119 = os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG);
    v121 = array3;
    if (v119)
    {
      [WBSSavedAccountStore _getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:v118 withCriteria:? mergingAutoFillPasskeys:? nearbyDeviceOptions:?];
    }

    v122 = WBS_LOG_CHANNEL_PREFIXAutoFill(v119, v120);
    v123 = os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG);
    if (v123)
    {
      [WBSSavedAccountStore _getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:v122 withCriteria:? mergingAutoFillPasskeys:? nearbyDeviceOptions:?];
    }

    v125 = WBS_LOG_CHANNEL_PREFIXAutoFill(v123, v124);
    v126 = os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG);
    if (v126)
    {
      [WBSSavedAccountStore _getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:v125 withCriteria:? mergingAutoFillPasskeys:? nearbyDeviceOptions:?];
    }

    v128 = WBS_LOG_CHANNEL_PREFIXAutoFill(v126, v127);
    v129 = os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG);
    if (v129)
    {
      [WBSSavedAccountStore _getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:v128 withCriteria:? mergingAutoFillPasskeys:? nearbyDeviceOptions:?];
    }

    v131 = WBS_LOG_CHANNEL_PREFIXAutoFill(v129, v130);
    if (os_log_type_enabled(v131, OS_LOG_TYPE_DEBUG))
    {
      [WBSSavedAccountStore _getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:v131 withCriteria:? mergingAutoFillPasskeys:? nearbyDeviceOptions:?];
    }
  }

  else
  {
    v121 = array3;
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
    {
      v132 = v118;
      v133 = [array count];
      v134 = [array2 count] + v133;
      v135 = [array3 count];
      v136 = v134 + v135 + [array4 count];
      v137 = [array5 count];
      *buf = 67109120;
      LODWORD(v215) = v136 + v137;
      _os_log_impl(&dword_1B8447000, v132, OS_LOG_TYPE_DEFAULT, "Query returned %d matches", buf, 8u);
    }
  }

  if ([safari_highLevelDomainForPasswordManager isEqualToString:@"apple.com"])
  {
    v185[0] = MEMORY[0x1E69E9820];
    v185[1] = 3221225472;
    v185[2] = __147__WBSSavedAccountStore__getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue_withCriteria_mergingAutoFillPasskeys_nearbyDeviceOptions___block_invoke_395;
    v185[3] = &unk_1E7CF4F10;
    v186 = array;
    v187 = array5;
    v188 = array2;
    v189 = criteriaCopy;
    [v159 enumerateKeysAndObjectsUsingBlock:v185];
  }

  if ([v121 count])
  {
    if ([array count])
    {
      if (!queryShouldReturnSavedAccountsMatchingHighLevelAndSimplifiedDomains)
      {
        goto LABEL_117;
      }

      v138 = array2;
      [v121 addObjectsFromArray:array2];
      array2 = v121;
    }

    else
    {
      v138 = array;
      array = v121;
    }

    v139 = v121;
  }

LABEL_117:
  if ([array5 count])
  {
    [array5 addObjectsFromArray:array];
    v140 = array5;

    array = v140;
  }

  [array sortUsingSelector:sel_compare_];
  [array2 sortUsingSelector:sel_compare_];
  [array4 sortUsingSelector:sel_compare_];
  v141 = [[WBSSavedAccountMatchResult alloc] initWithExactMatches:array potentialMatches:array2 associatedDomainMatches:array4 nearbyDeviceOptions:optionsCopy];

  return v141;
}

void __147__WBSSavedAccountStore__getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue_withCriteria_mergingAutoFillPasskeys_nearbyDeviceOptions___block_invoke_395(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__16;
  v27 = __Block_byref_object_dispose__16;
  v28 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __147__WBSSavedAccountStore__getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue_withCriteria_mergingAutoFillPasskeys_nearbyDeviceOptions___block_invoke_2;
  v20 = &unk_1E7CF4EE8;
  v7 = v6;
  v21 = v7;
  v22 = &v23;
  v8 = _Block_copy(&v17);
  v8[2](v8, *(a1 + 32));
  v8[2](v8, *(a1 + 40));
  if (v24[5])
  {
    [*(a1 + 48) addObject:{v17, v18, v19, v20}];
  }

  v9 = [WBSSavedAccount alloc];
  v10 = [v7 relyingPartyIdentifier];
  v11 = [v7 username];
  v12 = [(WBSSavedAccount *)v9 _initWithPasskeyRelyingPartyID:v10 user:v11 passkeyUserHandle:&stru_1F3064D08 passkeyCredentialID:v5];

  v13 = *(a1 + 40);
  v14 = [WBSSavedAccountMatch alloc];
  v15 = [*(a1 + 56) context];
  v16 = [(WBSSavedAccountMatch *)v14 initWithSavedAccount:v12 protectionSpace:0 context:v15 matchLevel:1 autoFillPasskey:v7];
  [v13 addObject:v16];

  _Block_object_dispose(&v23, 8);
}

void __147__WBSSavedAccountStore__getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue_withCriteria_mergingAutoFillPasskeys_nearbyDeviceOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __147__WBSSavedAccountStore__getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue_withCriteria_mergingAutoFillPasskeys_nearbyDeviceOptions___block_invoke_3;
  v7[3] = &unk_1E7CF4EC0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v8 = v4;
  v6 = v3;
  [v6 enumerateObjectsUsingBlock:v7];
}

void __147__WBSSavedAccountStore__getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue_withCriteria_mergingAutoFillPasskeys_nearbyDeviceOptions___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 savedAccount];
  v6 = [v5 user];
  v7 = [*(a1 + 32) username];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v9 = [*(a1 + 40) objectAtIndexedSubscript:a3];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    v12 = *(a1 + 40);

    [v12 removeObjectAtIndex:a3];
  }
}

- (void)_verifyGroupsInSync
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __43__WBSSavedAccountStore__verifyGroupsInSync__block_invoke(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v6 = WBS_LOG_CHANNEL_PREFIXMissingPasswordGroups(v4, v5);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1B8447000, v7, OS_LOG_TYPE_DEFAULT, "Received reply from group sync verification. Groups were in sync.", v11, 2u);
    }
  }

  else
  {
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (v8)
    {
      __43__WBSSavedAccountStore__verifyGroupsInSync__block_invoke_cold_1();
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    else if (!v4)
    {
      goto LABEL_8;
    }

    v10 = WBS_LOG_CHANNEL_PREFIXMissingPasswordGroups(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __43__WBSSavedAccountStore__verifyGroupsInSync__block_invoke_cold_2(v10);
    }
  }

LABEL_8:
}

- (id)duplicateAccountsWithGroupID:(id)d
{
  v31 = *MEMORY[0x1E69E9840];
  dCopy = d;
  savedAccountsInPersonalKeychain = [(WBSSavedAccountStore *)self savedAccountsInPersonalKeychain];
  v19 = dCopy;
  v6 = [(WBSSavedAccountStore *)self savedAccountsForGroupID:dCopy];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = savedAccountsInPersonalKeychain;
  v8 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v13 = v6;
        v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v22;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v22 != v16)
              {
                objc_enumerationMutation(v13);
              }

              if ([v12 isEqualForSuggestingDuplicatesCleanup:*(*(&v21 + 1) + 8 * j)])
              {
                [v7 addObject:v12];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v15);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  return v7;
}

- (void)newPasskeysAvailableForApplicationIdentifier:(id)identifier
{
  v3 = [MEMORY[0x1E696AAE8] safari_isSafariFamilyBundleIdentifier:identifier];
  if (v3)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXAutoFill(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B8447000, v5, OS_LOG_TYPE_INFO, "Notifying that new passkeys are available.", v7, 2u);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"WBSSavedAccountStoreNewAutoFillablePasskeysAvailableNotification" object:0];
  }
}

- (id)persistentIdentifierForCredential:(id)credential protectionSpace:(id)space
{
  credentialCopy = credential;
  host = [space host];
  user = [credentialCopy user];

  v9 = [(WBSSavedAccountStore *)self _persistentIdentifierForUser:user host:host];

  return v9;
}

- (id)persistentIdentifierForSavedAccount:(id)account
{
  accountCopy = account;
  protectionSpaces = [accountCopy protectionSpaces];
  firstObject = [protectionSpaces firstObject];
  host = [firstObject host];

  user = [accountCopy user];

  v9 = [(WBSSavedAccountStore *)self _persistentIdentifierForUser:user host:host];

  return v9;
}

- (id)_persistentIdentifierForUser:(id)user host:(id)host
{
  v26[8] = *MEMORY[0x1E69E9840];
  userCopy = user;
  hostCopy = host;
  v8 = hostCopy;
  if (userCopy && hostCopy)
  {
    v24 = 0;
    v9 = *MEMORY[0x1E697B018];
    v10 = *MEMORY[0x1E697ABD0];
    v25[0] = *MEMORY[0x1E697AFF8];
    v25[1] = v10;
    v26[0] = v9;
    v26[1] = @"com.apple.cfnetwork";
    v11 = *MEMORY[0x1E697AEB8];
    v12 = *MEMORY[0x1E697AC50];
    v25[2] = *MEMORY[0x1E697AEB0];
    v25[3] = v12;
    v13 = *MEMORY[0x1E697AC60];
    v26[2] = v11;
    v26[3] = v13;
    v14 = *MEMORY[0x1E697B268];
    v15 = *MEMORY[0x1E697B320];
    v25[4] = *MEMORY[0x1E697B260];
    v25[5] = v15;
    v26[4] = v14;
    v26[5] = MEMORY[0x1E695E118];
    v16 = *MEMORY[0x1E697AC30];
    v25[6] = *MEMORY[0x1E697AE80];
    v25[7] = v16;
    v26[6] = hostCopy;
    v26[7] = userCopy;
    v17 = SecItemCopyMatching([MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:8], &v24);
    if (v17 != -25300)
    {
      if (!v17)
      {
        v19 = v24;
        firstObject = [v24 firstObject];

        goto LABEL_11;
      }

      v22 = WBS_LOG_CHANNEL_PREFIXAutoFill(v17, v18);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [WBSSavedAccountStore _persistentIdentifierForUser:host:];
      }
    }
  }

  else
  {
    v21 = WBS_LOG_CHANNEL_PREFIXAutoFill(hostCopy, v7);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [WBSSavedAccountStore _persistentIdentifierForUser:host:];
    }
  }

  firstObject = 0;
LABEL_11:

  return firstObject;
}

- (void)test_createPasskeyWithUserName:(id)name displayName:(id)displayName relyingPartyIdentifier:(id)identifier userHandle:(id)handle groupID:(id)d inRecentlyDeleted:(BOOL)deleted unsafeAllowRealKeychainAccess:(BOOL)access completionHandler:(id)self0
{
  deletedCopy = deleted;
  nameCopy = name;
  displayNameCopy = displayName;
  identifierCopy = identifier;
  handleCopy = handle;
  dCopy = d;
  handlerCopy = handler;
  if (!handleCopy)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    handleCopy = [uUIDString dataUsingEncoding:4];
  }

  LOBYTE(v23) = access;
  [(WBSPasskeyStore *)self->_passkeyStore test_createPasskeyWithName:nameCopy displayName:displayNameCopy relyingParty:identifierCopy userHandle:handleCopy groupID:dCopy inRecentlyDeleted:deletedCopy unsafeAllowRealKeychainAccess:v23 completionHandler:handlerCopy];
}

- (void)test_createLegacyWebAuthnCredentialWithUserName:(id)name displayName:(id)displayName relyingPartyIdentifier:(id)identifier userHandle:(id)handle completionHandler:(id)handler
{
  nameCopy = name;
  displayNameCopy = displayName;
  identifierCopy = identifier;
  handleCopy = handle;
  handlerCopy = handler;
  if (!handleCopy)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    handleCopy = [uUIDString dataUsingEncoding:4];
  }

  [(WBSPasskeyStore *)self->_passkeyStore test_createLegacyCredentialWithName:nameCopy displayName:displayNameCopy relyingParty:identifierCopy userHandle:handleCopy completionHandler:handlerCopy];
}

- (void)test_copyPasskeyWithCredentialID:(id)d toGroup:(id)group inRecentlyDeleted:(BOOL)deleted completionHandler:(id)handler
{
  deletedCopy = deleted;
  groupCopy = group;
  handlerCopy = handler;
  v11 = groupCopy;
  if (!groupCopy)
  {
    v11 = &stru_1F3064D08;
  }

  v16 = v11;
  v12 = MEMORY[0x1E695DEF0];
  dCopy = d;
  v14 = [[v12 alloc] initWithBase64EncodedString:dCopy options:0];

  if (v14)
  {
    [(WBSPasskeyStore *)self->_passkeyStore test_copyPasskeyWithCredentialID:v14 toGroup:v16 inRecentlyDeleted:deletedCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)test_setSharedAccountsGroups:(id)groups
{
  groupsCopy = groups;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__WBSSavedAccountStore_test_setSharedAccountsGroups___block_invoke;
  v7[3] = &unk_1E7CF1708;
  v7[4] = self;
  v8 = groupsCopy;
  v6 = groupsCopy;
  dispatch_sync(queue, v7);
}

- (void)test_reloadAllSavedAccounts
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__WBSSavedAccountStore_test_reloadAllSavedAccounts__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __51__WBSSavedAccountStore_test_reloadAllSavedAccounts__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resetOnInternalQueue];
  v2 = [*(a1 + 32) _savedAccounts];
  v3 = *(a1 + 32);

  return [v3 _loadRecentlyDeletedSavedAccounts];
}

+ (void)setShouldShowServiceNamesForPasswordAndPasskeyItems:(BOOL)items
{
  itemsCopy = items;
  pm_defaults = [MEMORY[0x1E695E000] pm_defaults];
  [pm_defaults setBool:itemsCopy forKey:@"ShowServiceNamesInPasswords"];
}

- (BOOL)shouldShowServiceNamesForPasswordAndPasskeyItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__WBSSavedAccountStore_shouldShowServiceNamesForPasswordAndPasskeyItems__block_invoke;
  v5[3] = &unk_1E7CF19B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setShouldShowServiceNamesForPasswordAndPasskeyItems:(BOOL)items
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__WBSSavedAccountStore_setShouldShowServiceNamesForPasswordAndPasskeyItems___block_invoke;
  v4[3] = &unk_1E7CF3D78;
  v4[4] = self;
  itemsCopy = items;
  dispatch_async(queue, v4);
}

void __76__WBSSavedAccountStore_setShouldShowServiceNamesForPasswordAndPasskeyItems___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(WBSScopeExitHandler);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__WBSSavedAccountStore_setShouldShowServiceNamesForPasswordAndPasskeyItems___block_invoke_2;
  v15[3] = &unk_1E7CF16E0;
  v15[4] = *(a1 + 32);
  [(WBSScopeExitHandler *)v2 setHandler:v15];
  v3 = *(a1 + 40);
  if (v3 != *(*(a1 + 32) + 256))
  {
    [objc_opt_class() setShouldShowServiceNamesForPasswordAndPasskeyItems:v3];
    v4 = *(a1 + 40);
    *(*(a1 + 32) + 256) = v4;
    if (v4 == 1)
    {
      v5 = *(a1 + 32);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = [*(a1 + 32) websiteNameProvider];
    v8 = objc_opt_respondsToSelector();

    v9 = [*(a1 + 32) websiteNameProvider];
    v10 = v9;
    if (v8)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __76__WBSSavedAccountStore_setShouldShowServiceNamesForPasswordAndPasskeyItems___block_invoke_3;
      v14[3] = &unk_1E7CF16E0;
      v14[4] = *(a1 + 32);
      [v9 setWebsiteNameConsumer:v6 completion:v14];
    }

    else
    {

      if (v10)
      {
        v13 = WBS_LOG_CHANNEL_PREFIXPasswords(v11, v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v17 = "[WBSSavedAccountStore setShouldShowServiceNamesForPasswordAndPasskeyItems:]_block_invoke";
          _os_log_impl(&dword_1B8447000, v13, OS_LOG_TYPE_INFO, "In %s, found websiteNameProvider that didn't respond to -setWebsiteNameConsumer:completion:, indicating that AuthenticationServices framework category wasn't loaded. Service names will not function properly.", buf, 0xCu);
        }
      }
    }
  }
}

void __76__WBSSavedAccountStore_setShouldShowServiceNamesForPasswordAndPasskeyItems___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 120);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__WBSSavedAccountStore_setShouldShowServiceNamesForPasswordAndPasskeyItems___block_invoke_4;
  block[3] = &unk_1E7CF16E0;
  block[4] = v1;
  dispatch_async(v2, block);
}

_BYTE *__76__WBSSavedAccountStore_setShouldShowServiceNamesForPasswordAndPasskeyItems___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[257] == 1)
  {
    [result _resetOnInternalQueue];
    v3 = [*(a1 + 32) _loadSavedAccounts];
    [*(a1 + 32) _loadRecentlyDeletedSavedAccounts];
    v4 = *(a1 + 32);

    return [v4 _notifyClientsAboutWebsiteNamesChanges];
  }

  return result;
}

- (BOOL)_applyServiceNamesToSavedAccounts:(id)accounts
{
  v28 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  websiteNameProvider = [(WBSSavedAccountStore *)self websiteNameProvider];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = accountsCopy;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_24;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v24;
  do
  {
    v10 = 0;
    do
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v23 + 1) + 8 * v10);
      if ([v11 hasValidWebsite] && (objc_msgSend(v11, "userIsNeverSaveMarker") & 1) == 0)
      {
        serviceName = [v11 serviceName];
        if (self->_shouldShowServiceNamesForPasswordAndPasskeyItems)
        {
          userVisibleDomain = [v11 userVisibleDomain];
          v14 = [websiteNameProvider knownWebsiteNameForDomain:userVisibleDomain];
          if ([v14 length])
          {
            if (![v11 shouldShowSpecificSubdomainForUserVisibleDomain] || objc_msgSend(userVisibleDomain, "safari_isCaseInsensitiveEqualToString:", v14))
            {
              v15 = v11;
              v16 = v14;
              goto LABEL_15;
            }

            v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", v14, userVisibleDomain];
            [v11 setServiceName:v21];
          }

          else
          {
            v15 = v11;
            v16 = 0;
LABEL_15:
            [v15 setServiceName:v16];
          }
        }

        else
        {
          [v11 setServiceName:0];
        }

        serviceName2 = [v11 serviceName];
        v18 = WBSIsEqual(serviceName, serviceName2);

        v8 |= v18 ^ 1;
      }

      ++v10;
    }

    while (v7 != v10);
    v19 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    v7 = v19;
  }

  while (v19);
LABEL_24:

  return v8 & 1;
}

- (void)knownWebsiteNamesDidChange
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__WBSSavedAccountStore_knownWebsiteNamesDidChange__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_async(queue, block);
}

_BYTE *__50__WBSSavedAccountStore_knownWebsiteNamesDidChange__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[256] == 1)
  {
    result = [result _reapplyServiceNamesFromProvider];
    if (result)
    {
      v3 = *(a1 + 32);

      return [v3 _notifyClientsAboutWebsiteNamesChanges];
    }
  }

  return result;
}

- (void)knownWebsiteNamesDidChangeOnDomains:(id)domains
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__WBSSavedAccountStore_knownWebsiteNamesDidChangeOnDomains___block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_async(queue, block);
}

_BYTE *__60__WBSSavedAccountStore_knownWebsiteNamesDidChangeOnDomains___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[256] == 1)
  {
    result = [result _reapplyServiceNamesFromProvider];
    if (result)
    {
      v3 = *(a1 + 32);

      return [v3 _notifyClientsAboutWebsiteNamesChanges];
    }
  }

  return result;
}

- (void)_notifyClientsAboutWebsiteNamesChanges
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__WBSSavedAccountStore__notifyClientsAboutWebsiteNamesChanges__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

+ (BOOL)userTypedTitleShouldBeTreatedAsAWebsiteWhenAddingNewAccount:(id)account
{
  accountCopy = account;
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  [accountCopy rangeOfCharacterFromSet:whitespaceCharacterSet];
  v6 = v5;

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v7 = [objc_opt_class() getProtectionSpaceAndHighLevelDomainForUserTypedSite:accountCopy protectionSpace:&v10 highLevelDomain:&v9];
  }

  return v7;
}

- (id)passkeyDataForPasskeyCredentialIDOnInternalQueue:(id)queue
{
  queueCopy = queue;
  selfCopy = self;
  v6 = sub_1B85659D8();
  v8 = v7;

  passkeyStore = [(WBSSavedAccountStore *)selfCopy passkeyStore];
  v12[2] = v6;
  v12[3] = v8;
  v12[4] = selfCopy;
  sub_1B8450D18(sub_1B8526968, v12, "SafariCore/WBSSavedAccountStore.swift", 37, 2, 60);

  sub_1B851D53C(v6, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A818, &qword_1B8576980);
  v10 = sub_1B8565FF8();

  return v10;
}

- (void)updateUserVisibleName:(NSString *)name forPasskeyWithIdentifier:(WBSPublicKeyCredentialIdentifier *)identifier completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = name;
  v13[3] = identifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1B8566108();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B8574720;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1B8574728;
  v16[5] = v15;
  nameCopy = name;
  identifierCopy = identifier;
  selfCopy = self;
  sub_1B8534B98(0, 0, v11, &unk_1B8574730, v16);
}

- (void)updateUserVisibleNameOnInternalQueue:(id)queue forPasskeyWithIdentifier:(id)identifier
{
  v6 = sub_1B8565DA8();
  v8 = v7;
  identifierCopy = identifier;
  selfCopy = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  v13.super.isa = identifierCopy;
  WBSSavedAccountStore.updateUserVisibleName(onInternalQueue:forPasskeyWith:)(v11, v13);
}

- (void)deletePasskeyWithIdentifier:(WBSPublicKeyCredentialIdentifier *)identifier completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1B8566108();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B8574710;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B8574428;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  sub_1B8534B98(0, 0, v9, &unk_1B8574430, v14);
}

- (void)deletePasskeyWithIdentifierOnInternalQueue:(id)queue
{
  queueCopy = queue;
  v7._credentialID = self;
  credentialID = v7._credentialID;
  v7.super.isa = queueCopy;
  WBSSavedAccountStore.deletePasskeyWithIdentifier(onInternalQueue:)(v7);
}

- (id)exportPasskeyCredentialWithIDOnInternalQueue:(id)queue
{
  v4 = sub_1B8565DA8();
  v6 = v5;
  selfCopy = self;
  passkeyStore = [(WBSSavedAccountStore *)selfCopy passkeyStore];
  v11[2] = v4;
  v11[3] = v6;
  v9 = sub_1B851FE7C(sub_1B8526998, v11, "SafariCore/WBSSavedAccountStore.swift", 37, 2, 136);

  return v9;
}

- (id)importPasskeyCredentialOnInternalQueue:(id)queue
{
  queueCopy = queue;
  selfCopy = self;
  passkeyStore = [(WBSSavedAccountStore *)selfCopy passkeyStore];
  v11[2] = queueCopy;
  sub_1B8520078(sub_1B8526950, v11, "SafariCore/WBSSavedAccountStore.swift", 37, 2, 160);
  v8 = v7;

  if (v8)
  {
    v9 = sub_1B8565D68();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)savedAccountsForGroupID:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_loadSavedAccountsWithPasswordsFromKeychainData:(_DWORD *)a1 forGroupID:(void *)a2 withDictionaryForSavedAccountsWithPasswords:(uint64_t)a3 fromRecentlyDeleted:(void *)a4 .cold.1(_DWORD *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = objc_opt_class();
  *a1 = 138412290;
  *a4 = v7;
  v8 = v7;
  OUTLINED_FUNCTION_14_0(&dword_1B8447000, v9, v10, "kSecAttrAccount value for keychain item was not of type string, got type: %@");
}

- (void)_loadSavedAccountsWithPasswordsFromKeychainData:forGroupID:withDictionaryForSavedAccountsWithPasswords:fromRecentlyDeleted:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __53__WBSSavedAccountStore__fetchSignInWithAppleAccounts__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_convertSignInWithAppleAccountsToSavedAccounts:(void *)a3 .cold.1(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 clientID];
  *a1 = 138412290;
  *a4 = v8;
  OUTLINED_FUNCTION_14_0(&dword_1B8447000, v9, v10, "Error, Sign in with Apple account missing app name for clientID: %@, unable to convert to savedAccount");
}

void __91__WBSSavedAccountStore__shareSignInWithAppleAccountWithContext_withGroupInfo_savedAccount___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __66__WBSSavedAccountStore__unshareSignInWithAppleAccountWithContext___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_loadSavedAccountsWithPasskeysFromPasskeyData:(os_log_t)log forGroupID:fromRecentlyDeleted:withDictionaryForSavedAccountsWithPasskeys:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_1B8447000, log, OS_LOG_TYPE_FAULT, "Found passkey with nil credentialID. Skipping.", buf, 2u);
}

- (void)_changeSavedAccountWithRequestOnInternalQueue:performPostUpdateActions:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __112__WBSSavedAccountStore_canSaveUser_password_forProtectionSpace_highLevelDomain_notes_customTitle_groupID_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __64__WBSSavedAccountStore__canMoveSavedAccountWithPasskey_toGroup___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_saveAccountOnInternalQueueWithUser:password:protectionSpace:highLevelDomain:groupID:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_saveAccountOnInternalQueueWithUser:password:protectionSpace:highLevelDomain:groupID:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_saveAccountOnInternalQueueWithUser:password:protectionSpace:highLevelDomain:groupID:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)clearSavedAccountHistory:withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_deleteSavedAccountsWithUnknownOriginalContributorParticipantIDsFromSavedAccounts:inGroup:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __126__WBSSavedAccountStore__cleanUpSharedSavedAccountsWithUnknownOriginalContributorParticipantIDsIfNecessaryFromRecentlyDeleted___block_invoke_cold_1(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingError];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0(&dword_1B8447000, v1, v4, "Aborting clean up for passwords with unmatchable contributor ID because of error fetching groups: %{private}@.", v5);
}

- (void)_mergeSavedAccountWithPassword:(os_log_t)log toSavedAccountWithPasskey:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1B8447000, log, OS_LOG_TYPE_ERROR, "Received unexpected sidecar type when merging password to passkey", buf, 2u);
}

- (void)_setSavedAccountAsDefaultOnInternalQueue:forProtectionSpace:context:associatedDomainsManager:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v4 = v3;
  [OUTLINED_FUNCTION_3() host];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_2_0() user];
  v6 = [v0 highLevelDomain];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x20u);
}

- (void)_setSavedAccountAsDefaultOnInternalQueue:forProtectionSpace:context:associatedDomainsManager:.cold.2()
{
  OUTLINED_FUNCTION_13();
  v3 = v2;
  [OUTLINED_FUNCTION_3() user];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_2_0() host];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)_setSavedAccountAsDefaultOnInternalQueue:forProtectionSpace:context:associatedDomainsManager:.cold.3()
{
  OUTLINED_FUNCTION_13();
  v3 = v2;
  [OUTLINED_FUNCTION_3() user];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_2_0() host];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)_setSavedAccountAsDefaultOnInternalQueue:forProtectionSpace:context:associatedDomainsManager:.cold.4()
{
  OUTLINED_FUNCTION_13();
  v3 = v2;
  [OUTLINED_FUNCTION_3() user];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_2_0() host];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)_shouldUpdateLastUsedDateForSavedAccount:(uint64_t)a3 forProtectionSpace:(uint64_t)a4 inContext:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = "is NOT";
  if (a1)
  {
    v8 = "is";
  }

  LODWORD(v9) = 136315138;
  HIDWORD(v9) = v8;
  OUTLINED_FUNCTION_10_0(&dword_1B8447000, a2, a3, "Saved account %s first match for criteria", a5, a6, a7, a8, v9, HIDWORD(v8));
}

void __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_cold_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 groupID];
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_copySavedAccount:toGroup:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_copySavedAccount:toGroup:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupIDOnInternalQueue:(NSObject *)a3 isForAlreadyExitedGroup:.cold.1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 134217984;
  *a2 = 10;
  OUTLINED_FUNCTION_7_0(&dword_1B8447000, a3, a3, "Failed to copy password back to personal keychain because there were %zu other passwords with the same username", a1);
}

- (void)_recordGroupIdentifierForMovingContributedCredentialsBackToPersonalKeychain:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __66__WBSSavedAccountStore__performCleanupForExitedGroupsIfNecessary___block_invoke_cold_1(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0(&dword_1B8447000, v1, v4, "Error fetching groups, skipping clean up for now: %{public}@", v5);
}

- (void)_moveCredentialTypesToRecentlyDeletedOnInternalQueue:fromSavedAccount:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __78__WBSSavedAccountStore__recoverRecentlyDeletedSavedAccount_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __78__WBSSavedAccountStore__recoverRecentlyDeletedSavedAccount_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:(void *)a1 withCriteria:mergingAutoFillPasskeys:nearbyDeviceOptions:.cold.1(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_2_0() count];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_0(&dword_1B8447000, v3, v4, "%d exact domain matches", v5, v6, v7, v8);
}

- (void)_getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:(void *)a1 withCriteria:mergingAutoFillPasskeys:nearbyDeviceOptions:.cold.2(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_2_0() count];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_0(&dword_1B8447000, v3, v4, "%d high-level domain matches", v5, v6, v7, v8);
}

- (void)_getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:(void *)a1 withCriteria:mergingAutoFillPasskeys:nearbyDeviceOptions:.cold.3(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_2_0() count];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_0(&dword_1B8447000, v3, v4, "%d simplified domain matches", v5, v6, v7, v8);
}

- (void)_getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:(void *)a1 withCriteria:mergingAutoFillPasskeys:nearbyDeviceOptions:.cold.4(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_2_0() count];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_0(&dword_1B8447000, v3, v4, "%d associated domain matches", v5, v6, v7, v8);
}

- (void)_getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:(void *)a1 withCriteria:mergingAutoFillPasskeys:nearbyDeviceOptions:.cold.5(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_2_0() count];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_0(&dword_1B8447000, v3, v4, "%d default matches", v5, v6, v7, v8);
}

void __43__WBSSavedAccountStore__verifyGroupsInSync__block_invoke_cold_2(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingError];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0(&dword_1B8447000, v1, v4, "Received error from group sync verification: %{private}@", v5);
}

- (void)_persistentIdentifierForUser:host:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end