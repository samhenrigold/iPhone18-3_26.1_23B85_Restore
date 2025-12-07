@interface NTPBFeedItem
@end

@implementation NTPBFeedItem

void __76__NTPBFeedItem_FCFeedItem__keysForFeedItemAndArticleRecordWithRecordSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69B6E30];
  v4 = a2;
  v5 = [v3 baseKeysForFeedItemRecord];
  [v4 addObjectsFromArray:v5];

  v6 = [MEMORY[0x1E69B6E30] baseKeysForArticleRecord];
  [v4 addObjectsFromArray:v6];

  v7 = [*(a1 + 32) engagementRecordKeys];
  [v4 addObjectsFromArray:v7];

  v8 = [*(a1 + 32) conversionRecordKeys];
  [v4 addObjectsFromArray:v8];

  v9 = [*(a1 + 32) topicFlagsRecordKeys];
  [v4 addObjectsFromArray:v9];

  v10 = [*(a1 + 32) articleTagMetadataRecordKeys];
  [v4 addObjectsFromArray:v10];

  v11 = [*(a1 + 32) embeddingRecordKeys];
  [v4 addObjectsFromArray:v11];
}

uint64_t __53__NTPBFeedItem_FCFeedItem__baseKeysForFeedItemRecord__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] fc_array:&__block_literal_global_9_0];
  v1 = _MergedGlobals_178;
  _MergedGlobals_178 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __53__NTPBFeedItem_FCFeedItem__baseKeysForFeedItemRecord__block_invoke_3(uint64_t a1, void *a2)
{
  v5[6] = *MEMORY[0x1E69E9840];
  v5[0] = @"tagID";
  v5[1] = @"articleID";
  v5[2] = @"order";
  v5[3] = @"userFeedback";
  v5[4] = @"publishDateMillis";
  v5[5] = @"tagHalfLifeMillis";
  v2 = MEMORY[0x1E695DEC8];
  v3 = a2;
  v4 = [v2 arrayWithObjects:v5 count:6];
  [v3 addObjectsFromArray:v4];
}

void __65__NTPBFeedItem_FCFeedItem__keysForArticleRecordWithRecordSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69B6E30];
  v4 = a2;
  v5 = [v3 baseKeysForArticleRecord];
  [v4 addObjectsFromArray:v5];

  v6 = [*(a1 + 32) engagementRecordKeys];
  [v4 addObjectsFromArray:v6];

  v7 = [*(a1 + 32) conversionRecordKeys];
  [v4 addObjectsFromArray:v7];

  v8 = [*(a1 + 32) topicFlagsRecordKeys];
  [v4 addObjectsFromArray:v8];

  v9 = [*(a1 + 32) articleTagMetadataRecordKeys];
  [v4 addObjectsFromArray:v9];

  v10 = [*(a1 + 32) embeddingRecordKeys];
  [v4 addObjectsFromArray:v10];
}

uint64_t __52__NTPBFeedItem_FCFeedItem__baseKeysForArticleRecord__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] fc_array:&__block_literal_global_15_0];
  v1 = qword_1EDB27608;
  qword_1EDB27608 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __52__NTPBFeedItem_FCFeedItem__baseKeysForArticleRecord__block_invoke_3(uint64_t a1, void *a2)
{
  v5[28] = *MEMORY[0x1E69E9840];
  v5[0] = @"allowedStorefrontIDs";
  v5[1] = @"backendArticleVersion";
  v5[2] = @"behaviorFlags";
  v5[3] = @"blockedStorefrontIDs";
  v5[4] = @"bodyTextLength";
  v5[5] = @"clusterID";
  v5[6] = @"contentType";
  v5[7] = @"halfLifeMillis";
  v5[8] = @"isBundlePaid";
  v5[9] = @"isFeature";
  v5[10] = @"isIssueOnly";
  v5[11] = @"isPaid";
  v5[12] = @"isSponsored";
  v5[13] = @"language";
  v5[14] = @"minNewsVersion";
  v5[15] = @"narrativeTrackFullURL";
  v5[16] = @"parentIssueID";
  v5[17] = @"primaryAudience";
  v5[18] = @"publishDate";
  v5[19] = @"publisherArticleVersion";
  v5[20] = @"role";
  v5[21] = @"scoresTopicTagIDs";
  v5[22] = @"sourceChannelTagID";
  v5[23] = @"storyType";
  v5[24] = @"thumbnailMetadata";
  v5[25] = @"thumbnailPerceptualHash";
  v5[26] = @"videoURL";
  v5[27] = @"expirationData";
  v2 = MEMORY[0x1E695DEC8];
  v3 = a2;
  v4 = [v2 arrayWithObjects:v5 count:28];
  [v3 addObjectsFromArray:v4];
}

uint64_t __75__NTPBFeedItem_FCFeedItem__feedItemFromCKRecord_storefrontID_recordSource___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"FeedItem must always have a valid articleID, record: %@", *(a1 + 32)];
    *buf = 136315906;
    v5 = "+[NTPBFeedItem(FCFeedItem) feedItemFromCKRecord:storefrontID:recordSource:]_block_invoke";
    v6 = 2080;
    v7 = "FCFeedItem.m";
    v8 = 1024;
    v9 = 201;
    v10 = 2114;
    v11 = v3;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  return 0;
}

void __59__NTPBFeedItem_FCFeedItem__enumerateTopicCohortsWithBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 tagID];
  v4 = [v3 cohorts];

  (*(v2 + 16))(v2, v5, v4);
}

void __67__NTPBFeedItem_FCFeedItem__enumerateTopicConversionStatsWithBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 tagID];
  v4 = [v3 conversionStats];

  (*(v2 + 16))(v2, v5, v4);
}

@end