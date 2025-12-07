@interface WBSProfileDataManager
- (WBSProfileDataManager)initWithProfileProvider:(id)provider;
- (void)didRemoveProfile:(id)profile;
- (void)didRemoveProfileWithServerID:(id)d profileIdentifier:(id)identifier;
- (void)ensureProfileDirectoriesExistForProfileWithServerID:(id)d profileIdentifier:(id)identifier;
@end

@implementation WBSProfileDataManager

- (WBSProfileDataManager)initWithProfileProvider:(id)provider
{
  providerCopy = provider;
  v10.receiver = self;
  v10.super_class = WBSProfileDataManager;
  v6 = [(WBSProfileDataManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profileProvider, provider);
    v8 = v7;
  }

  return v7;
}

- (void)ensureProfileDirectoriesExistForProfileWithServerID:(id)d profileIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [defaultManager safari_profileDirectoryURLWithID:identifierCopy createIfNeeded:1];

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [defaultManager2 safari_profileDirectoryURLWithID:dCopy createIfNeeded:1];
}

- (void)didRemoveProfileWithServerID:(id)d profileIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v9 = defaultManager;
  if (dCopy)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [defaultManager2 safari_profileDirectoryURLWithID:dCopy createIfNeeded:0];
    v22 = 0;
    [v9 removeItemAtURL:v11 error:&v22];
    v12 = v22;

    if (!v12)
    {
      if (identifierCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = WBS_LOG_CHANNEL_PREFIXProfiles(defaultManager, v8);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [(WBSProfileDataManager *)dCopy didRemoveProfileWithServerID:v16 profileIdentifier:v12];
  }

  if (identifierCopy)
  {
LABEL_4:
    defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
    v14 = [defaultManager3 safari_profileDirectoryURLWithID:identifierCopy createIfNeeded:0];
    v21 = 0;
    [v9 removeItemAtURL:v14 error:&v21];
    v15 = v21;

    if (!v15)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_10:
  v15 = 0;
LABEL_11:
  v17 = WBS_LOG_CHANNEL_PREFIXProfiles(defaultManager, v8);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [(WBSProfileDataManager *)identifierCopy didRemoveProfileWithServerID:v17 profileIdentifier:v15];
  }

LABEL_13:
  +[WBSParsecDSession clearAllParsecFeedbackAndEngagedCompletions];
  v18 = +[WBSSiriIntelligenceDonor sharedInstance];
  [v18 removeAllCoreSpotlightHistoryDataDonatedBySafariForProfileWithIdentifier:identifierCopy];

  v19 = +[WBSSiriIntelligenceDonor sharedInstance];
  [v19 removeAllCoreSpotlightTabDataDonatedBySafariForProfileWithIdentifier:identifierCopy];

  v20 = +[WBSIgnoredSiriSuggestedSitesController sharedController];
  [v20 removeIgnoredSiriSuggestedSitesInProfile:identifierCopy];
}

- (void)didRemoveProfile:(id)profile
{
  profileCopy = profile;
  serverID = [profileCopy serverID];
  identifier = [profileCopy identifier];

  [(WBSProfileDataManager *)self didRemoveProfileWithServerID:serverID profileIdentifier:identifier];
}

- (void)didRemoveProfileWithServerID:(void *)a3 profileIdentifier:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_4(&dword_1BB6F3000, v6, v7, "Failed to remove profile directory with server id %{public}@ with error %{public}@", v8, v9, v10, v11);
}

- (void)didRemoveProfileWithServerID:(void *)a3 profileIdentifier:.cold.2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_4(&dword_1BB6F3000, v6, v7, "Failed to remove profile directory with identifier %{public}@ with error %{public}@", v8, v9, v10, v11);
}

@end