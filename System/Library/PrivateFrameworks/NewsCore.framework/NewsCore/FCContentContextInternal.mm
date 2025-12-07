@interface FCContentContextInternal
- (FCAVAssetCacheType)avAssetCache;
- (FCAVAssetFactoryType)avAssetFactory;
- (FCAVAssetKeyCacheType)avAssetKeyCache;
- (FCArticleListRecordSource)articleListRecordSource;
- (FCArticleRecordSource)articleRecordSource;
- (FCAssetKeyCacheType)assetKeyCache;
- (FCAssetKeyManagerType)assetKeyManager;
- (FCAudioConfigRecordSource)audioConfigRecordSource;
- (FCCKContentDatabase)contentDatabase;
- (FCChannelMembershipController)channelMembershipController;
- (FCContentContextInternal)init;
- (FCForYouConfigRecordSource)forYouConfigRecordSource;
- (FCIssueListRecordSource)issueListRecordSource;
- (FCIssueRecordSource)issueRecordSource;
- (FCNotificationItemListRecordSource)notificationItemListRecordSource;
- (FCNotificationItemRecordSource)notificationItemRecordSource;
- (FCPurchaseLookupRecordSource)purchaseLookupRecordSource;
- (FCPuzzleRecordSource)puzzleRecordSource;
- (FCPuzzleTypeRecordSource)puzzleTypeRecordSource;
- (FCResourceRecordSource)resourceRecordSource;
- (FCTagListRecordSource)tagListRecordSource;
- (FCTagRecordSource)tagRecordSource;
- (FCWidgetSectionConfigRecordSource)widgetSectionConfigRecordSource;
- (NSArray)recordSources;
- (void)enableFlushingWithFlushingThreshold:(unint64_t)threshold;
@end

@implementation FCContentContextInternal

- (FCContentContextInternal)init
{
  v3.receiver = self;
  v3.super_class = FCContentContextInternal;
  return [(FCContentContextInternal *)&v3 init];
}

- (FCArticleRecordSource)articleRecordSource
{
  v14 = *MEMORY[0x1E69E9840];
  articleRecordSource = self->_articleRecordSource;
  if (!articleRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_articleRecordSource"];
      *buf = 136315906;
      v7 = "[FCContentContextInternal articleRecordSource]";
      v8 = 2080;
      v9 = "FCContentContext.m";
      v10 = 1024;
      v11 = 894;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      articleRecordSource = self->_articleRecordSource;
    }

    else
    {
      articleRecordSource = 0;
    }
  }

  return articleRecordSource;
}

- (FCCKContentDatabase)contentDatabase
{
  v14 = *MEMORY[0x1E69E9840];
  contentDatabase = self->_contentDatabase;
  if (!contentDatabase)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_contentDatabase"];
      *buf = 136315906;
      v7 = "[FCContentContextInternal contentDatabase]";
      v8 = 2080;
      v9 = "FCContentContext.m";
      v10 = 1024;
      v11 = 1014;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      contentDatabase = self->_contentDatabase;
    }

    else
    {
      contentDatabase = 0;
    }
  }

  return contentDatabase;
}

- (FCChannelMembershipController)channelMembershipController
{
  v14 = *MEMORY[0x1E69E9840];
  channelMembershipController = self->_channelMembershipController;
  if (!channelMembershipController)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_channelMembershipController"];
      *buf = 136315906;
      v7 = "[FCContentContextInternal channelMembershipController]";
      v8 = 2080;
      v9 = "FCContentContext.m";
      v10 = 1024;
      v11 = 912;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      channelMembershipController = self->_channelMembershipController;
    }

    else
    {
      channelMembershipController = 0;
    }
  }

  return channelMembershipController;
}

- (FCArticleListRecordSource)articleListRecordSource
{
  v14 = *MEMORY[0x1E69E9840];
  articleListRecordSource = self->_articleListRecordSource;
  if (!articleListRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_articleListRecordSource"];
      *buf = 136315906;
      v7 = "[FCContentContextInternal articleListRecordSource]";
      v8 = 2080;
      v9 = "FCContentContext.m";
      v10 = 1024;
      v11 = 924;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      articleListRecordSource = self->_articleListRecordSource;
    }

    else
    {
      articleListRecordSource = 0;
    }
  }

  return articleListRecordSource;
}

- (NSArray)recordSources
{
  v23[18] = *MEMORY[0x1E69E9840];
  articleRecordSource = [(FCContentContextInternal *)self articleRecordSource];
  v23[0] = articleRecordSource;
  articleListRecordSource = [(FCContentContextInternal *)self articleListRecordSource];
  v23[1] = articleListRecordSource;
  audioConfigRecordSource = [(FCContentContextInternal *)self audioConfigRecordSource];
  v23[2] = audioConfigRecordSource;
  forYouConfigRecordSource = [(FCContentContextInternal *)self forYouConfigRecordSource];
  v23[3] = forYouConfigRecordSource;
  issueRecordSource = [(FCContentContextInternal *)self issueRecordSource];
  v23[4] = issueRecordSource;
  issueListRecordSource = [(FCContentContextInternal *)self issueListRecordSource];
  v23[5] = issueListRecordSource;
  notificationItemRecordSource = [(FCContentContextInternal *)self notificationItemRecordSource];
  v23[6] = notificationItemRecordSource;
  notificationItemListRecordSource = [(FCContentContextInternal *)self notificationItemListRecordSource];
  v23[7] = notificationItemListRecordSource;
  purchaseLookupRecordSource = [(FCContentContextInternal *)self purchaseLookupRecordSource];
  v23[8] = purchaseLookupRecordSource;
  puzzleRecordSource = [(FCContentContextInternal *)self puzzleRecordSource];
  v23[9] = puzzleRecordSource;
  puzzleTypeRecordSource = [(FCContentContextInternal *)self puzzleTypeRecordSource];
  v23[10] = puzzleTypeRecordSource;
  resourceRecordSource = [(FCContentContextInternal *)self resourceRecordSource];
  v23[11] = resourceRecordSource;
  sportsEventRecordSource = [(FCContentContextInternal *)self sportsEventRecordSource];
  v23[12] = sportsEventRecordSource;
  recipeRecordSource = [(FCContentContextInternal *)self recipeRecordSource];
  v23[13] = recipeRecordSource;
  recipeListRecordSource = [(FCContentContextInternal *)self recipeListRecordSource];
  v23[14] = recipeListRecordSource;
  tagRecordSource = [(FCContentContextInternal *)self tagRecordSource];
  v23[15] = tagRecordSource;
  tagListRecordSource = [(FCContentContextInternal *)self tagListRecordSource];
  v23[16] = tagListRecordSource;
  widgetSectionConfigRecordSource = [(FCContentContextInternal *)self widgetSectionConfigRecordSource];
  v23[17] = widgetSectionConfigRecordSource;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:18];

  return v14;
}

- (FCForYouConfigRecordSource)forYouConfigRecordSource
{
  v14 = *MEMORY[0x1E69E9840];
  forYouConfigRecordSource = self->_forYouConfigRecordSource;
  if (!forYouConfigRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_forYouConfigRecordSource"];
      *buf = 136315906;
      v7 = "[FCContentContextInternal forYouConfigRecordSource]";
      v8 = 2080;
      v9 = "FCContentContext.m";
      v10 = 1024;
      v11 = 936;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      forYouConfigRecordSource = self->_forYouConfigRecordSource;
    }

    else
    {
      forYouConfigRecordSource = 0;
    }
  }

  return forYouConfigRecordSource;
}

- (FCIssueListRecordSource)issueListRecordSource
{
  v14 = *MEMORY[0x1E69E9840];
  issueListRecordSource = self->_issueListRecordSource;
  if (!issueListRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_issueListRecordSource"];
      *buf = 136315906;
      v7 = "[FCContentContextInternal issueListRecordSource]";
      v8 = 2080;
      v9 = "FCContentContext.m";
      v10 = 1024;
      v11 = 954;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      issueListRecordSource = self->_issueListRecordSource;
    }

    else
    {
      issueListRecordSource = 0;
    }
  }

  return issueListRecordSource;
}

- (FCNotificationItemListRecordSource)notificationItemListRecordSource
{
  v14 = *MEMORY[0x1E69E9840];
  notificationItemListRecordSource = self->_notificationItemListRecordSource;
  if (!notificationItemListRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_notificationItemListRecordSource"];
      *buf = 136315906;
      v7 = "[FCContentContextInternal notificationItemListRecordSource]";
      v8 = 2080;
      v9 = "FCContentContext.m";
      v10 = 1024;
      v11 = 984;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      notificationItemListRecordSource = self->_notificationItemListRecordSource;
    }

    else
    {
      notificationItemListRecordSource = 0;
    }
  }

  return notificationItemListRecordSource;
}

- (FCResourceRecordSource)resourceRecordSource
{
  v14 = *MEMORY[0x1E69E9840];
  resourceRecordSource = self->_resourceRecordSource;
  if (!resourceRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_resourceRecordSource"];
      *buf = 136315906;
      v7 = "[FCContentContextInternal resourceRecordSource]";
      v8 = 2080;
      v9 = "FCContentContext.m";
      v10 = 1024;
      v11 = 918;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      resourceRecordSource = self->_resourceRecordSource;
    }

    else
    {
      resourceRecordSource = 0;
    }
  }

  return resourceRecordSource;
}

- (FCTagRecordSource)tagRecordSource
{
  v14 = *MEMORY[0x1E69E9840];
  tagRecordSource = self->_tagRecordSource;
  if (!tagRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_tagRecordSource"];
      *buf = 136315906;
      v7 = "[FCContentContextInternal tagRecordSource]";
      v8 = 2080;
      v9 = "FCContentContext.m";
      v10 = 1024;
      v11 = 900;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      tagRecordSource = self->_tagRecordSource;
    }

    else
    {
      tagRecordSource = 0;
    }
  }

  return tagRecordSource;
}

- (FCAudioConfigRecordSource)audioConfigRecordSource
{
  v14 = *MEMORY[0x1E69E9840];
  audioConfigRecordSource = self->_audioConfigRecordSource;
  if (!audioConfigRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_audioConfigRecordSource"];
      *buf = 136315906;
      v7 = "[FCContentContextInternal audioConfigRecordSource]";
      v8 = 2080;
      v9 = "FCContentContext.m";
      v10 = 1024;
      v11 = 960;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      audioConfigRecordSource = self->_audioConfigRecordSource;
    }

    else
    {
      audioConfigRecordSource = 0;
    }
  }

  return audioConfigRecordSource;
}

- (FCIssueRecordSource)issueRecordSource
{
  v14 = *MEMORY[0x1E69E9840];
  issueRecordSource = self->_issueRecordSource;
  if (!issueRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_issueRecordSource"];
      *buf = 136315906;
      v7 = "[FCContentContextInternal issueRecordSource]";
      v8 = 2080;
      v9 = "FCContentContext.m";
      v10 = 1024;
      v11 = 948;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      issueRecordSource = self->_issueRecordSource;
    }

    else
    {
      issueRecordSource = 0;
    }
  }

  return issueRecordSource;
}

- (FCNotificationItemRecordSource)notificationItemRecordSource
{
  v14 = *MEMORY[0x1E69E9840];
  notificationItemRecordSource = self->_notificationItemRecordSource;
  if (!notificationItemRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_notificationItemRecordSource"];
      *buf = 136315906;
      v7 = "[FCContentContextInternal notificationItemRecordSource]";
      v8 = 2080;
      v9 = "FCContentContext.m";
      v10 = 1024;
      v11 = 978;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      notificationItemRecordSource = self->_notificationItemRecordSource;
    }

    else
    {
      notificationItemRecordSource = 0;
    }
  }

  return notificationItemRecordSource;
}

- (FCPurchaseLookupRecordSource)purchaseLookupRecordSource
{
  v14 = *MEMORY[0x1E69E9840];
  purchaseLookupRecordSource = self->_purchaseLookupRecordSource;
  if (!purchaseLookupRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_purchaseLookupRecordSource"];
      *buf = 136315906;
      v7 = "[FCContentContextInternal purchaseLookupRecordSource]";
      v8 = 2080;
      v9 = "FCContentContext.m";
      v10 = 1024;
      v11 = 930;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      purchaseLookupRecordSource = self->_purchaseLookupRecordSource;
    }

    else
    {
      purchaseLookupRecordSource = 0;
    }
  }

  return purchaseLookupRecordSource;
}

- (FCPuzzleRecordSource)puzzleRecordSource
{
  v14 = *MEMORY[0x1E69E9840];
  puzzleRecordSource = self->_puzzleRecordSource;
  if (!puzzleRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_puzzleRecordSource"];
      *buf = 136315906;
      v7 = "[FCContentContextInternal puzzleRecordSource]";
      v8 = 2080;
      v9 = "FCContentContext.m";
      v10 = 1024;
      v11 = 966;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      puzzleRecordSource = self->_puzzleRecordSource;
    }

    else
    {
      puzzleRecordSource = 0;
    }
  }

  return puzzleRecordSource;
}

- (FCPuzzleTypeRecordSource)puzzleTypeRecordSource
{
  v14 = *MEMORY[0x1E69E9840];
  puzzleTypeRecordSource = self->_puzzleTypeRecordSource;
  if (!puzzleTypeRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_puzzleTypeRecordSource"];
      *buf = 136315906;
      v7 = "[FCContentContextInternal puzzleTypeRecordSource]";
      v8 = 2080;
      v9 = "FCContentContext.m";
      v10 = 1024;
      v11 = 972;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      puzzleTypeRecordSource = self->_puzzleTypeRecordSource;
    }

    else
    {
      puzzleTypeRecordSource = 0;
    }
  }

  return puzzleTypeRecordSource;
}

- (FCTagListRecordSource)tagListRecordSource
{
  v14 = *MEMORY[0x1E69E9840];
  tagListRecordSource = self->_tagListRecordSource;
  if (!tagListRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_tagListRecordSource"];
      *buf = 136315906;
      v7 = "[FCContentContextInternal tagListRecordSource]";
      v8 = 2080;
      v9 = "FCContentContext.m";
      v10 = 1024;
      v11 = 906;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      tagListRecordSource = self->_tagListRecordSource;
    }

    else
    {
      tagListRecordSource = 0;
    }
  }

  return tagListRecordSource;
}

- (FCWidgetSectionConfigRecordSource)widgetSectionConfigRecordSource
{
  v14 = *MEMORY[0x1E69E9840];
  widgetSectionConfigRecordSource = self->_widgetSectionConfigRecordSource;
  if (!widgetSectionConfigRecordSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_widgetSectionConfigRecordSource"];
      *buf = 136315906;
      v7 = "[FCContentContextInternal widgetSectionConfigRecordSource]";
      v8 = 2080;
      v9 = "FCContentContext.m";
      v10 = 1024;
      v11 = 942;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      widgetSectionConfigRecordSource = self->_widgetSectionConfigRecordSource;
    }

    else
    {
      widgetSectionConfigRecordSource = 0;
    }
  }

  return widgetSectionConfigRecordSource;
}

- (FCAssetKeyCacheType)assetKeyCache
{
  v14 = *MEMORY[0x1E69E9840];
  assetKeyCache = self->_assetKeyCache;
  if (!assetKeyCache)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_assetKeyCache"];
      *buf = 136315906;
      v7 = "[FCContentContextInternal assetKeyCache]";
      v8 = 2080;
      v9 = "FCContentContext.m";
      v10 = 1024;
      v11 = 1020;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      assetKeyCache = self->_assetKeyCache;
    }

    else
    {
      assetKeyCache = 0;
    }
  }

  return assetKeyCache;
}

- (FCAssetKeyManagerType)assetKeyManager
{
  v14 = *MEMORY[0x1E69E9840];
  assetKeyManager = self->_assetKeyManager;
  if (!assetKeyManager)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_assetKeyManager"];
      *buf = 136315906;
      v7 = "[FCContentContextInternal assetKeyManager]";
      v8 = 2080;
      v9 = "FCContentContext.m";
      v10 = 1024;
      v11 = 1026;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      assetKeyManager = self->_assetKeyManager;
    }

    else
    {
      assetKeyManager = 0;
    }
  }

  return assetKeyManager;
}

- (FCAVAssetFactoryType)avAssetFactory
{
  v14 = *MEMORY[0x1E69E9840];
  avAssetFactory = self->_avAssetFactory;
  if (!avAssetFactory)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_avAssetFactory"];
      *buf = 136315906;
      v7 = "[FCContentContextInternal avAssetFactory]";
      v8 = 2080;
      v9 = "FCContentContext.m";
      v10 = 1024;
      v11 = 1032;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      avAssetFactory = self->_avAssetFactory;
    }

    else
    {
      avAssetFactory = 0;
    }
  }

  return avAssetFactory;
}

- (FCAVAssetCacheType)avAssetCache
{
  v14 = *MEMORY[0x1E69E9840];
  avAssetCache = self->_avAssetCache;
  if (!avAssetCache)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_avAssetCache"];
      *buf = 136315906;
      v7 = "[FCContentContextInternal avAssetCache]";
      v8 = 2080;
      v9 = "FCContentContext.m";
      v10 = 1024;
      v11 = 1038;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      avAssetCache = self->_avAssetCache;
    }

    else
    {
      avAssetCache = 0;
    }
  }

  return avAssetCache;
}

- (FCAVAssetKeyCacheType)avAssetKeyCache
{
  v14 = *MEMORY[0x1E69E9840];
  avAssetKeyCache = self->_avAssetKeyCache;
  if (!avAssetKeyCache)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_avAssetKeyCache"];
      *buf = 136315906;
      v7 = "[FCContentContextInternal avAssetKeyCache]";
      v8 = 2080;
      v9 = "FCContentContext.m";
      v10 = 1024;
      v11 = 1044;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      avAssetKeyCache = self->_avAssetKeyCache;
    }

    else
    {
      avAssetKeyCache = 0;
    }
  }

  return avAssetKeyCache;
}

- (void)enableFlushingWithFlushingThreshold:(unint64_t)threshold
{
  v15 = *MEMORY[0x1E69E9840];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__FCContentContextInternal_enableFlushingWithFlushingThreshold___block_invoke;
  v13[3] = &unk_1E7C36D40;
  v13[4] = self;
  v4 = [MEMORY[0x1E695DEC8] fc_array:v13];
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

        [*(*(&v9 + 1) + 8 * v8++) enableFlushingWithFlushingThreshold:threshold];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

void __64__FCContentContextInternal_enableFlushingWithFlushingThreshold___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 recordSources];
  [v3 addObjectsFromArray:v4];
}

@end