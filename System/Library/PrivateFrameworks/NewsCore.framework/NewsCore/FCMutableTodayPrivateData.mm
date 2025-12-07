@interface FCMutableTodayPrivateData
- (FCMutableTodayPrivateData)init;
- (FCMutableTodayPrivateData)initWithDictionary:(id)dictionary;
- (void)_deleteObjectsForOldKeys;
- (void)setAutoFavoriteTagIDs:(id)ds;
- (void)setBundleSubscription:(id)subscription;
- (void)setDerivedPersonalizationData:(id)data;
- (void)setGroupableTagIDs:(id)ds;
- (void)setLocalNewsTagID:(id)d;
- (void)setMutedTagIDs:(id)ds;
- (void)setPurchasedTagIDs:(id)ds;
- (void)setRankedAllSubscribedTagIDs:(id)ds;
- (void)setRankedAllSubscriptionDates:(id)dates;
- (void)setRecentlyReadHistoryItems:(id)items;
- (void)setRecentlySeenHistoryItems:(id)items;
- (void)setUserEmbeddingData:(id)data;
@end

@implementation FCMutableTodayPrivateData

- (void)_deleteObjectsForOldKeys
{
  v4[7] = *MEMORY[0x1E69E9840];
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v4[0] = @"FCTodayWidgetDropboxDataRecentlyReadArticlesDataDictionaryKey";
  v4[1] = @"FCTodayWidgetPrivateDataRecentlySeenArticlesDataDictionaryKey2";
  v4[2] = @"FCTodayWidgetPrivateDataRecentlyReadHistoryItemsDataDictionaryKey";
  v4[3] = @"FCTodayWidgetDropboxDataFeldsparIDDictionaryKey";
  v4[4] = @"FCTodayPrivateDataBundleSubscriptionStateDictionaryKey";
  v4[5] = @"FCTodayPrivateDataBundleIAPDictionaryKey";
  v4[6] = @"FCTodayPrivateDataAutoFavoriteTagIDsDataDictionaryKey";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:7];
  [dictionary removeObjectsForKeys:v3];
}

- (FCMutableTodayPrivateData)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCMutableTodayPrivateData init]";
    v10 = 2080;
    v11 = "FCFileCoordinatedTodayDropbox.m";
    v12 = 1024;
    v13 = 245;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCMutableTodayPrivateData init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCMutableTodayPrivateData)initWithDictionary:(id)dictionary
{
  v18 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (!dictionaryCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "dictionary"];
    *buf = 136315906;
    v11 = "[FCMutableTodayPrivateData initWithDictionary:]";
    v12 = 2080;
    v13 = "FCFileCoordinatedTodayDropbox.m";
    v14 = 1024;
    v15 = 250;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v9.receiver = self;
  v9.super_class = FCMutableTodayPrivateData;
  v5 = [(FCTodayPrivateData *)&v9 initWithDictionary:dictionaryCopy];
  v6 = v5;
  if (v5)
  {
    [(FCMutableTodayPrivateData *)v5 _deleteObjectsForOldKeys];
  }

  return v6;
}

- (void)setDerivedPersonalizationData:(id)data
{
  dataCopy = data;
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v5 = [dataCopy copy];

  [dictionary fc_safelySetObjectAllowingNil:v5 forKey:@"FCTodayWidgetDropboxDataDerivedPersonalizationDataDictionaryKey"];
}

- (void)setLocalNewsTagID:(id)d
{
  dCopy = d;
  dictionary = [(FCTodayPrivateData *)self dictionary];
  [dictionary fc_safelySetObjectAllowingNil:dCopy forKey:@"FCTodayPrivateDataLocalNewsTagIDDataDictionaryKey"];
}

- (void)setMutedTagIDs:(id)ds
{
  dsCopy = ds;
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v5 = [dsCopy copy];

  [dictionary fc_safelySetObjectAllowingNil:v5 forKey:@"FCTodayWidgetDropboxDataMutedTagIDsDataDictionaryKey"];
}

- (void)setAutoFavoriteTagIDs:(id)ds
{
  dsCopy = ds;
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v5 = [dsCopy copy];

  [dictionary fc_safelySetObjectAllowingNil:v5 forKey:@"FCTodayPrivateDataAutoFavoriteTagIDsDataDictionaryKey2"];
}

- (void)setGroupableTagIDs:(id)ds
{
  dsCopy = ds;
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v5 = [dsCopy copy];

  [dictionary fc_safelySetObjectAllowingNil:v5 forKey:@"FCTodayPrivateDataGroupableTagIDsDataDictionaryKey"];
}

- (void)setPurchasedTagIDs:(id)ds
{
  dsCopy = ds;
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v5 = [dsCopy copy];

  [dictionary fc_safelySetObjectAllowingNil:v5 forKey:@"FCTodayWidgetDropboxDataPurchasedTagIDsDataDictionaryKey"];
}

- (void)setRankedAllSubscribedTagIDs:(id)ds
{
  dsCopy = ds;
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v5 = [dsCopy copy];

  [dictionary fc_safelySetObjectAllowingNil:v5 forKey:@"FCTodayWidgetDropboxDataRankedSubscribedTagIDsDataDictionaryKey"];
}

- (void)setRankedAllSubscriptionDates:(id)dates
{
  datesCopy = dates;
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v5 = [datesCopy copy];

  [dictionary fc_safelySetObjectAllowingNil:v5 forKey:@"FCTodayPrivateDataRankedAllSubscriptionDatesDataDictionaryKey"];
}

- (void)setRecentlyReadHistoryItems:(id)items
{
  itemsCopy = items;
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v5 = [itemsCopy copy];

  [dictionary fc_safelySetObjectAllowingNil:v5 forKey:@"FCTodayWidgetPrivateDataRecentlyReadHistoryItemsDataDictionaryKey2"];
}

- (void)setRecentlySeenHistoryItems:(id)items
{
  itemsCopy = items;
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v5 = [itemsCopy copy];

  [dictionary fc_safelySetObjectAllowingNil:v5 forKey:@"FCTodayWidgetPrivateDataRecentlySeenHistoryItemsDataDictionaryKey"];
}

- (void)setBundleSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v5 = [subscriptionCopy copy];

  [dictionary setObject:v5 forKey:@"FCTodayPrivateDataBundleSubscriptionDataDictionaryKey"];
}

- (void)setUserEmbeddingData:(id)data
{
  dataCopy = data;
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v5 = [dataCopy copy];

  [dictionary fc_safelySetObjectAllowingNil:v5 forKey:@"FCTodayPrivateDataUserEmbeddingDataDictionaryKey"];
}

@end