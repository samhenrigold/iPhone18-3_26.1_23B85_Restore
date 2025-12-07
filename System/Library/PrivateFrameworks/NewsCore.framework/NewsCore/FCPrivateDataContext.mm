@interface FCPrivateDataContext
- (FCAudioPlaylist)audioPlaylist;
- (FCIssueReadingHistory)issueReadingHistory;
- (FCPersonalizationData)personalizationData;
- (FCPrivateChannelMembershipController)privateChannelMembershipController;
- (FCPrivateDataContext)init;
- (FCPrivateDataContext)initWithConfiguration:(id)configuration context:(id)context privateDataHostDirectory:(id)directory privateDataActionProvider:(id)provider encryptionDelegate:(id)delegate networkBehaviorMonitor:(id)monitor privateDataSyncingEnabled:(BOOL)enabled;
- (FCPrivateDataContext)initWithConfiguration:(id)configuration context:(id)context privateDatabase:(id)database privateDataDirectory:(id)directory privateDataActionProvider:(id)provider encryptionDelegate:(id)delegate networkBehaviorMonitor:(id)monitor privateDataSyncingEnabled:(BOOL)self0;
- (FCPrivateDataContextInternal)internalPrivateDataContext;
- (FCPushNotificationHandling)privatePushNotificationHandler;
- (FCPuzzleHistory)puzzleHistory;
- (FCReadingHistory)readingHistory;
- (FCReadingList)readingList;
- (FCShortcutCategoryList)shortcutCategoryList;
- (FCShortcutList)shortcutList;
- (FCSubscriptionList)subscriptionList;
- (FCUserEventHistory)userEventHistory;
- (FCUserInfo)userInfo;
- (NSString)privateDataDirectory;
- (id)_privateDataControllers;
- (id)privateStoreWithName:(id)name version:(unint64_t)version options:(unint64_t)options;
- (void)preparePrivateDataControllersForUse;
@end

@implementation FCPrivateDataContext

- (id)_privateDataControllers
{
  v19 = *MEMORY[0x1E69E9840];
  issueReadingHistory = self->_issueReadingHistory;
  personalizationData = self->_personalizationData;
  userEventHistory = self->_userEventHistory;
  v11[0] = self->_audioPlaylist;
  v11[1] = issueReadingHistory;
  privateChannelMembershipController = self->_privateChannelMembershipController;
  readingHistory = self->_readingHistory;
  userInfo = self->_userInfo;
  v11[2] = self->_subscriptionList;
  v11[3] = readingHistory;
  shortcutList = self->_shortcutList;
  v14 = privateChannelMembershipController;
  v15 = userInfo;
  v16 = personalizationData;
  v12 = *&self->_readingList;
  recipeUserEventHistory = self->_recipeUserEventHistory;
  v17 = userEventHistory;
  v18 = recipeUserEventHistory;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:12];

  return v9;
}

- (void)preparePrivateDataControllersForUse
{
  _privateDataControllers = [(FCPrivateDataContext *)self _privateDataControllers];
  [_privateDataControllers makeObjectsPerformSelector:sel_prepareForUse];
  [_privateDataControllers makeObjectsPerformSelector:sel_addStateObserver_ withObject:self];
  [_privateDataControllers makeObjectsPerformSelector:sel_assertReadyForUse];
}

- (FCPrivateDataContextInternal)internalPrivateDataContext
{
  v14 = *MEMORY[0x1E69E9840];
  internalPrivateDataContext = self->_internalPrivateDataContext;
  if (!internalPrivateDataContext)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_internalPrivateDataContext"];
      *buf = 136315906;
      v7 = "[FCPrivateDataContext internalPrivateDataContext]";
      v8 = 2080;
      v9 = "FCPrivateDataContext.m";
      v10 = 1024;
      v11 = 356;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      internalPrivateDataContext = self->_internalPrivateDataContext;
    }

    else
    {
      internalPrivateDataContext = 0;
    }
  }

  return internalPrivateDataContext;
}

- (NSString)privateDataDirectory
{
  v14 = *MEMORY[0x1E69E9840];
  privateDataDirectory = self->_privateDataDirectory;
  if (!privateDataDirectory)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_privateDataDirectory"];
      *buf = 136315906;
      v7 = "[FCPrivateDataContext privateDataDirectory]";
      v8 = 2080;
      v9 = "FCPrivateDataContext.m";
      v10 = 1024;
      v11 = 350;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      privateDataDirectory = self->_privateDataDirectory;
    }

    else
    {
      privateDataDirectory = 0;
    }
  }

  return privateDataDirectory;
}

- (FCUserInfo)userInfo
{
  v14 = *MEMORY[0x1E69E9840];
  userInfo = self->_userInfo;
  if (!userInfo)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_userInfo"];
      *buf = 136315906;
      v7 = "[FCPrivateDataContext userInfo]";
      v8 = 2080;
      v9 = "FCPrivateDataContext.m";
      v10 = 1024;
      v11 = 338;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      userInfo = self->_userInfo;
    }

    else
    {
      userInfo = 0;
    }
  }

  return userInfo;
}

- (FCPrivateChannelMembershipController)privateChannelMembershipController
{
  v14 = *MEMORY[0x1E69E9840];
  privateChannelMembershipController = self->_privateChannelMembershipController;
  if (!privateChannelMembershipController)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_privateChannelMembershipController"];
      *buf = 136315906;
      v7 = "[FCPrivateDataContext privateChannelMembershipController]";
      v8 = 2080;
      v9 = "FCPrivateDataContext.m";
      v10 = 1024;
      v11 = 284;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      privateChannelMembershipController = self->_privateChannelMembershipController;
    }

    else
    {
      privateChannelMembershipController = 0;
    }
  }

  return privateChannelMembershipController;
}

- (FCPersonalizationData)personalizationData
{
  v14 = *MEMORY[0x1E69E9840];
  personalizationData = self->_personalizationData;
  if (!personalizationData)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_personalizationData"];
      *buf = 136315906;
      v7 = "[FCPrivateDataContext personalizationData]";
      v8 = 2080;
      v9 = "FCPrivateDataContext.m";
      v10 = 1024;
      v11 = 279;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      personalizationData = self->_personalizationData;
    }

    else
    {
      personalizationData = 0;
    }
  }

  return personalizationData;
}

- (FCReadingHistory)readingHistory
{
  v14 = *MEMORY[0x1E69E9840];
  readingHistory = self->_readingHistory;
  if (!readingHistory)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_readingHistory"];
      *buf = 136315906;
      v7 = "[FCPrivateDataContext readingHistory]";
      v8 = 2080;
      v9 = "FCPrivateDataContext.m";
      v10 = 1024;
      v11 = 290;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      readingHistory = self->_readingHistory;
    }

    else
    {
      readingHistory = 0;
    }
  }

  return readingHistory;
}

- (FCUserEventHistory)userEventHistory
{
  v14 = *MEMORY[0x1E69E9840];
  userEventHistory = self->_userEventHistory;
  if (!userEventHistory)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_userEventHistory"];
      *buf = 136315906;
      v7 = "[FCPrivateDataContext userEventHistory]";
      v8 = 2080;
      v9 = "FCPrivateDataContext.m";
      v10 = 1024;
      v11 = 326;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      userEventHistory = self->_userEventHistory;
    }

    else
    {
      userEventHistory = 0;
    }
  }

  return userEventHistory;
}

- (FCSubscriptionList)subscriptionList
{
  v14 = *MEMORY[0x1E69E9840];
  subscriptionList = self->_subscriptionList;
  if (!subscriptionList)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_subscriptionList"];
      *buf = 136315906;
      v7 = "[FCPrivateDataContext subscriptionList]";
      v8 = 2080;
      v9 = "FCPrivateDataContext.m";
      v10 = 1024;
      v11 = 332;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      subscriptionList = self->_subscriptionList;
    }

    else
    {
      subscriptionList = 0;
    }
  }

  return subscriptionList;
}

- (FCPuzzleHistory)puzzleHistory
{
  v14 = *MEMORY[0x1E69E9840];
  puzzleHistory = self->_puzzleHistory;
  if (!puzzleHistory)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_puzzleHistory"];
      *buf = 136315906;
      v7 = "[FCPrivateDataContext puzzleHistory]";
      v8 = 2080;
      v9 = "FCPrivateDataContext.m";
      v10 = 1024;
      v11 = 302;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      puzzleHistory = self->_puzzleHistory;
    }

    else
    {
      puzzleHistory = 0;
    }
  }

  return puzzleHistory;
}

- (FCIssueReadingHistory)issueReadingHistory
{
  v14 = *MEMORY[0x1E69E9840];
  issueReadingHistory = self->_issueReadingHistory;
  if (!issueReadingHistory)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_issueReadingHistory"];
      *buf = 136315906;
      v7 = "[FCPrivateDataContext issueReadingHistory]";
      v8 = 2080;
      v9 = "FCPrivateDataContext.m";
      v10 = 1024;
      v11 = 274;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      issueReadingHistory = self->_issueReadingHistory;
    }

    else
    {
      issueReadingHistory = 0;
    }
  }

  return issueReadingHistory;
}

- (FCShortcutList)shortcutList
{
  v14 = *MEMORY[0x1E69E9840];
  shortcutList = self->_shortcutList;
  if (!shortcutList)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_shortcutList"];
      *buf = 136315906;
      v7 = "[FCPrivateDataContext shortcutList]";
      v8 = 2080;
      v9 = "FCPrivateDataContext.m";
      v10 = 1024;
      v11 = 308;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      shortcutList = self->_shortcutList;
    }

    else
    {
      shortcutList = 0;
    }
  }

  return shortcutList;
}

- (FCReadingList)readingList
{
  v14 = *MEMORY[0x1E69E9840];
  readingList = self->_readingList;
  if (!readingList)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_readingList"];
      *buf = 136315906;
      v7 = "[FCPrivateDataContext readingList]";
      v8 = 2080;
      v9 = "FCPrivateDataContext.m";
      v10 = 1024;
      v11 = 296;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      readingList = self->_readingList;
    }

    else
    {
      readingList = 0;
    }
  }

  return readingList;
}

- (FCAudioPlaylist)audioPlaylist
{
  v14 = *MEMORY[0x1E69E9840];
  audioPlaylist = self->_audioPlaylist;
  if (!audioPlaylist)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_audioPlaylist"];
      *buf = 136315906;
      v7 = "[FCPrivateDataContext audioPlaylist]";
      v8 = 2080;
      v9 = "FCPrivateDataContext.m";
      v10 = 1024;
      v11 = 320;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      audioPlaylist = self->_audioPlaylist;
    }

    else
    {
      audioPlaylist = 0;
    }
  }

  return audioPlaylist;
}

- (FCShortcutCategoryList)shortcutCategoryList
{
  v14 = *MEMORY[0x1E69E9840];
  shortcutCategoryList = self->_shortcutCategoryList;
  if (!shortcutCategoryList)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_shortcutCategoryList"];
      *buf = 136315906;
      v7 = "[FCPrivateDataContext shortcutCategoryList]";
      v8 = 2080;
      v9 = "FCPrivateDataContext.m";
      v10 = 1024;
      v11 = 314;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      shortcutCategoryList = self->_shortcutCategoryList;
    }

    else
    {
      shortcutCategoryList = 0;
    }
  }

  return shortcutCategoryList;
}

- (FCPrivateDataContext)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPrivateDataContext init]";
    v10 = 2080;
    v11 = "FCPrivateDataContext.m";
    v12 = 1024;
    v13 = 88;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPrivateDataContext init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPrivateDataContext)initWithConfiguration:(id)configuration context:(id)context privateDataHostDirectory:(id)directory privateDataActionProvider:(id)provider encryptionDelegate:(id)delegate networkBehaviorMonitor:(id)monitor privateDataSyncingEnabled:(BOOL)enabled
{
  v40 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  contextCopy = context;
  directoryCopy = directory;
  providerCopy = provider;
  delegateCopy = delegate;
  monitorCopy = monitor;
  if (!contextCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "context != nil"];
    *buf = 136315906;
    v33 = "[FCPrivateDataContext initWithConfiguration:context:privateDataHostDirectory:privateDataActionProvider:encryptionDelegate:networkBehaviorMonitor:privateDataSyncingEnabled:]";
    v34 = 2080;
    v35 = "FCPrivateDataContext.m";
    v36 = 1024;
    v37 = 99;
    v38 = 2114;
    v39 = v28;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (!directoryCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "privateDataHostDirectory != nil"];
    *buf = 136315906;
    v33 = "[FCPrivateDataContext initWithConfiguration:context:privateDataHostDirectory:privateDataActionProvider:encryptionDelegate:networkBehaviorMonitor:privateDataSyncingEnabled:]";
    v34 = 2080;
    v35 = "FCPrivateDataContext.m";
    v36 = 1024;
    v37 = 100;
    v38 = 2114;
    v39 = v29;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v20 = [FCCKPrivateDatabase alloc];
  privateDataContainerIdentifier = [configurationCopy privateDataContainerIdentifier];
  privateDataSecureContainerIdentifier = [configurationCopy privateDataSecureContainerIdentifier];
  v23 = -[FCCKPrivateDatabase initWithContainerIdentifier:secureContainerIdentifier:productionEnvironment:encryptionDelegate:networkBehaviorMonitor:privateDataSyncingEnabled:](v20, privateDataContainerIdentifier, privateDataSecureContainerIdentifier, [configurationCopy isProductionPrivateDataEnvironment], delegateCopy, monitorCopy, enabled);

  privateDataContainerCombinationIdentifier = [configurationCopy privateDataContainerCombinationIdentifier];
  v25 = [directoryCopy URLByAppendingPathComponent:privateDataContainerCombinationIdentifier isDirectory:1];

  LOBYTE(v30) = enabled;
  v26 = [(FCPrivateDataContext *)self initWithConfiguration:configurationCopy context:contextCopy privateDatabase:v23 privateDataDirectory:v25 privateDataActionProvider:providerCopy encryptionDelegate:delegateCopy networkBehaviorMonitor:monitorCopy privateDataSyncingEnabled:v30];

  return v26;
}

- (FCPrivateDataContext)initWithConfiguration:(id)configuration context:(id)context privateDatabase:(id)database privateDataDirectory:(id)directory privateDataActionProvider:(id)provider encryptionDelegate:(id)delegate networkBehaviorMonitor:(id)monitor privateDataSyncingEnabled:(BOOL)self0
{
  v95 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  contextCopy = context;
  databaseCopy = database;
  directoryCopy = directory;
  providerCopy = provider;
  delegateCopy = delegate;
  monitorCopy = monitor;
  if (!contextCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v67 = delegateCopy;
    v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "context != nil"];
    *buf = 136315906;
    v88 = "[FCPrivateDataContext initWithConfiguration:context:privateDatabase:privateDataDirectory:privateDataActionProvider:encryptionDelegate:networkBehaviorMonitor:privateDataSyncingEnabled:]";
    v89 = 2080;
    v90 = "FCPrivateDataContext.m";
    v91 = 1024;
    v92 = 130;
    v93 = 2114;
    v94 = v68;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    delegateCopy = v67;
  }

  v21 = databaseCopy;
  if (!databaseCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v69 = delegateCopy;
    v70 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "privateDatabase != nil"];
    *buf = 136315906;
    v88 = "[FCPrivateDataContext initWithConfiguration:context:privateDatabase:privateDataDirectory:privateDataActionProvider:encryptionDelegate:networkBehaviorMonitor:privateDataSyncingEnabled:]";
    v89 = 2080;
    v90 = "FCPrivateDataContext.m";
    v91 = 1024;
    v92 = 131;
    v93 = 2114;
    v94 = v70;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    delegateCopy = v69;
    if (directoryCopy)
    {
      goto LABEL_9;
    }
  }

  else if (directoryCopy)
  {
    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v71 = delegateCopy;
    v72 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "privateDataDirectory != nil"];
    *buf = 136315906;
    v88 = "[FCPrivateDataContext initWithConfiguration:context:privateDatabase:privateDataDirectory:privateDataActionProvider:encryptionDelegate:networkBehaviorMonitor:privateDataSyncingEnabled:]";
    v89 = 2080;
    v90 = "FCPrivateDataContext.m";
    v91 = 1024;
    v92 = 132;
    v93 = 2114;
    v94 = v72;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    delegateCopy = v71;
  }

LABEL_9:
  v85.receiver = self;
  v85.super_class = FCPrivateDataContext;
  v22 = [(FCPrivateDataContext *)&v85 init];
  v23 = v22;
  if (v22)
  {
    v79 = delegateCopy;
    v82 = configurationCopy;
    objc_storeStrong(&v22->_contentContext, context);
    v23->_privateDataSyncingEnabled = enabled;
    path = [directoryCopy path];
    v25 = [path copy];
    privateDataDirectory = v23->_privateDataDirectory;
    v23->_privateDataDirectory = v25;

    objc_storeStrong(&v23->_networkBehaviorMonitor, monitor);
    path2 = [directoryCopy path];
    v28 = [[FCPushNotificationCenter alloc] initWithPrivateDatabase:v21 storeDirectory:path2];
    objc_storeStrong(&v23->_privatePushNotificationHandler, v28);
    v29 = objc_opt_new();
    objc_storeStrong(&v23->_internalPrivateDataContext, v29);
    appActivityMonitor = [contextCopy appActivityMonitor];
    [v29 setAppActivityMonitor:appActivityMonitor];

    [v29 setPrivateDatabase:v21];
    v86[0] = @"AudioPlaylist";
    v86[1] = @"IssueReadingHistory";
    v86[2] = @"Subscriptions";
    v86[3] = @"Shortcuts";
    v86[4] = @"SensitiveSubscriptions";
    v86[5] = @"ReadingList";
    v86[6] = @"ReadingHistory";
    v86[7] = @"ChannelMemberships";
    v86[8] = @"UserInfo";
    v86[9] = @"UserEventHistory";
    v86[10] = @"PuzzleHistory";
    v86[11] = @"RecipeUserEventHistory";
    [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:12];
    v77 = v81 = v21;
    v31 = [[FCCKRecordZoneManager alloc] initWithDatabase:v21 recordZoneNames:v77];
    v78 = v29;
    [v29 setRecordZoneManager:v31];

    v32 = [[FCSubscriptionList alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2];
    subscriptionList = v23->_subscriptionList;
    v23->_subscriptionList = v32;

    v76 = [[FCIssueReadingHistory alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2];
    objc_storeStrong(&v23->_issueReadingHistory, v76);
    v75 = [[FCReadingHistory alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2];
    objc_storeStrong(&v23->_readingHistory, v75);
    v34 = [[FCReadingList alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2];
    readingList = v23->_readingList;
    v23->_readingList = v34;

    v36 = [[FCPuzzleHistory alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2];
    puzzleHistory = v23->_puzzleHistory;
    v23->_puzzleHistory = v36;

    v38 = [[FCShortcutList alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2];
    shortcutList = v23->_shortcutList;
    v23->_shortcutList = v38;

    v40 = [[FCShortcutCategoryList alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2];
    shortcutCategoryList = v23->_shortcutCategoryList;
    v23->_shortcutCategoryList = v40;

    v42 = [[FCAudioPlaylist alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2];
    audioPlaylist = v23->_audioPlaylist;
    v23->_audioPlaylist = v42;

    v44 = [directoryCopy URLByAppendingPathComponent:@"personalization-sessions" isDirectory:1];
    v45 = [FCUserEventHistoryStorage alloc];
    appConfigurationManager = [contextCopy appConfigurationManager];
    v74 = v44;
    v47 = [(FCUserEventHistoryStorage *)v45 initWithRootDirectory:v44 configurationManager:appConfigurationManager];

    v73 = v47;
    v48 = [[FCUserEventHistory alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2 sessionStorage:v47];
    userEventHistory = v23->_userEventHistory;
    v23->_userEventHistory = v48;

    v80 = directoryCopy;
    v50 = [directoryCopy URLByAppendingPathComponent:@"recipe-personalization-sessions" isDirectory:1];
    v51 = [FCUserEventHistoryStorage alloc];
    appConfigurationManager2 = [contextCopy appConfigurationManager];
    v53 = [(FCUserEventHistoryStorage *)v51 initWithRootDirectory:v50 configurationManager:appConfigurationManager2];

    v54 = [(FCUserEventHistory *)[FCRecipeUserEventHistory alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2 sessionStorage:v53];
    recipeUserEventHistory = v23->_recipeUserEventHistory;
    v23->_recipeUserEventHistory = v54;

    v56 = [[FCPrivateChannelMembershipController alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2];
    objc_storeStrong(&v23->_privateChannelMembershipController, v56);
    v57 = [[FCUserInfo alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2];
    objc_storeStrong(&v23->_userInfo, v57);
    tagSettings = [(FCUserInfo *)v23->_userInfo tagSettings];
    tagSettings = v23->_tagSettings;
    v23->_tagSettings = tagSettings;

    puzzleTypeSettings = [(FCUserInfo *)v23->_userInfo puzzleTypeSettings];
    puzzleTypeSettings = v23->_puzzleTypeSettings;
    v23->_puzzleTypeSettings = puzzleTypeSettings;

    v62 = [[FCPersonalizationData alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2];
    personalizationData = v23->_personalizationData;
    v23->_personalizationData = v62;

    _privateDataControllers = [(FCPrivateDataContext *)v23 _privateDataControllers];
    if (providerCopy)
    {
      v65 = [[FCNonDestructivePrivateDataMigrationHandler alloc] initWithPrivateDataActionProvider:providerCopy privateDataControllers:_privateDataControllers privateDataSyncingEnabled:enabled];
      [(FCNonDestructivePrivateDataMigrationHandler *)v65 handleMigrationWithPrivateDataDirectory:v23->_privateDataDirectory];
    }

    if (enabled)
    {
      [(FCPushNotificationCenter *)v28 enableSyncing];
    }

    else
    {
      [(FCPushNotificationCenter *)v28 disableSyncing];
    }

    [(FCCKPrivateDatabase *)v81 registerZoneRestorationSources:_privateDataControllers];
    [(FCCKPrivateDatabase *)v81 registerZonePruningAssistants:_privateDataControllers];

    v21 = v81;
    configurationCopy = v82;
    delegateCopy = v79;
    directoryCopy = v80;
  }

  return v23;
}

- (FCPushNotificationHandling)privatePushNotificationHandler
{
  v14 = *MEMORY[0x1E69E9840];
  privatePushNotificationHandler = self->_privatePushNotificationHandler;
  if (!privatePushNotificationHandler)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_privatePushNotificationHandler"];
      *buf = 136315906;
      v7 = "[FCPrivateDataContext privatePushNotificationHandler]";
      v8 = 2080;
      v9 = "FCPrivateDataContext.m";
      v10 = 1024;
      v11 = 344;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      privatePushNotificationHandler = self->_privatePushNotificationHandler;
    }

    else
    {
      privatePushNotificationHandler = 0;
    }
  }

  return privatePushNotificationHandler;
}

- (id)privateStoreWithName:(id)name version:(unint64_t)version options:(unint64_t)options
{
  nameCopy = name;
  v9 = [FCKeyValueStore alloc];
  privateDataDirectory = [(FCPrivateDataContext *)self privateDataDirectory];
  v11 = [(FCKeyValueStore *)v9 initWithName:nameCopy directory:privateDataDirectory version:version options:options classRegistry:0];

  return v11;
}

@end